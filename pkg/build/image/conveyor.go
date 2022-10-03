package image

import (
	"sync"

	"github.com/werf/werf/pkg/build/stage"
	"github.com/werf/werf/pkg/container_backend"
	"github.com/werf/werf/pkg/git_repo"
)

type Conveyor interface {
	stage.Conveyor

	GetImage(name string) *Image
	GetOrCreateStageImage(fromImage *container_backend.LegacyStageImage, name string) *stage.StageImage

	IsBaseImagesRepoIdsCacheExist(key string) bool
	GetBaseImagesRepoIdsCache(key string) string
	SetBaseImagesRepoIdsCache(key, value string)

	IsBaseImagesRepoErrCacheExist(key string) bool
	GetBaseImagesRepoErrCache(key string) error
	SetBaseImagesRepoErrCache(key string, err error)

	GetServiceRWMutex(service string) *sync.RWMutex

	SetRemoteGitRepo(key string, repo *git_repo.Remote)
	GetRemoteGitRepo(key string) *git_repo.Remote
}