package file_reader

import (
	"fmt"
	"path/filepath"
	"strings"

	"github.com/werf/werf/pkg/giterminism_manager/errors"
)

type UncommittedFilesError struct {
	error
}
type FileNotAcceptedError struct {
	error
}
type FileNotFoundInProjectDirectoryError struct {
	error
}
type FileNotFoundInProjectRepositoryError struct {
	error
}

func IsFileNotFoundInProjectDirectoryError(err error) bool {
	switch err.(type) {
	case FileNotFoundInProjectDirectoryError:
		return true
	default:
		return false
	}
}

func (r FileReader) NewFileNotFoundInProjectDirectoryError(relPath string) error {
	return FileNotFoundInProjectDirectoryError{errors.NewError(fmt.Sprintf("the file %q not found in the project directory", filepath.ToSlash(relPath)))}
}

func (r FileReader) NewFileNotFoundInProjectRepositoryError(relPath string) error {
	return FileNotFoundInProjectRepositoryError{errors.NewError(fmt.Sprintf("the file %q not found in the project git repository", filepath.ToSlash(relPath)))}
}

func (r FileReader) NewSymlinkResolveFailedError(link string, resolveErr error) error {
	return errors.NewError(fmt.Sprintf("accepted symlink %q check failed: %s", filepath.ToSlash(link), resolveErr))
}

func (r FileReader) NewUncommittedFilesError(relPaths ...string) error {
	expectedAction := "must be committed"
	if r.sharedOptions.Dev() {
		expectedAction = "must be staged"
	}

	var errorMsg string
	if len(relPaths) == 1 {
		errorMsg = fmt.Sprintf("the file %q %s", filepath.ToSlash(relPaths[0]), expectedAction)
	} else if len(relPaths) > 1 {
		errorMsg = fmt.Sprintf("the following files %s:\n\n%s", expectedAction, prepareListOfFilesString(relPaths))
	} else {
		panic("unexpected condition")
	}

	if r.sharedOptions.Dev() {
		errorMsg = fmt.Sprintf(`%s

To stage the changes use the following command: "git add %s".`, errorMsg, strings.Join(formatFilePathList(relPaths), " "))
	} else {
		errorMsg = fmt.Sprintf(`%s

You might also be interested in developer mode (activated with --dev option) that allows you to work with staged changes without doing redundant commits. Just use "git add <file>..." to include the changes that should be used.`, errorMsg)
	}

	return UncommittedFilesError{errors.NewError(errorMsg)}
}

func prepareListOfFilesString(paths []string) string {
	return " - " + strings.Join(formatFilePathList(paths), "\n - ")
}

func formatFilePathList(paths []string) []string {
	var result []string
	for _, path := range paths {
		result = append(result, filepath.ToSlash(path))
	}

	return result
}
