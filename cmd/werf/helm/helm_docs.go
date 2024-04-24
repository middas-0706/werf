package helm

import "github.com/werf/werf/v2/cmd/werf/docs/structs"

func GetGetAutogeneratedValuesDocs() structs.DocsStruct {
	var docs structs.DocsStruct

	docs.Long = `Get service values generated by werf for Helm chart during deploy.

These values includes project name, Docker images IDs and other.`

	docs.LongMD = "Get service values generated by werf for Helm chart during deploy.\n\n" +
		"These values includes project name, Docker images IDs and other."

	return docs
}
