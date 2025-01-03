package helpers

import (
	"context"

	"github.com/werf/3p-helm/pkg/chartutil"
	"github.com/werf/common-go/pkg/secrets"
)

type ChartExtenderValuesMerger struct{}

func (m *ChartExtenderValuesMerger) MergeValues(ctx context.Context, inputVals, serviceVals map[string]interface{}, secretsRuntimeData *secrets.SecretsRuntimeData) (map[string]interface{}, error) {
	vals := make(map[string]interface{})

	DebugPrintValues(ctx, "service", serviceVals)
	chartutil.CoalesceTables(vals, serviceVals) // NOTE: service values will not be saved into the marshalled release

	if secretsRuntimeData != nil {
		if DebugSecretValues() {
			DebugPrintValues(ctx, "secret", secretsRuntimeData.DecryptedSecretValues)
		}
		chartutil.CoalesceTables(vals, secretsRuntimeData.DecryptedSecretValues)
	}

	DebugPrintValues(ctx, "input", inputVals)
	chartutil.CoalesceTables(vals, inputVals)

	if DebugSecretValues() {
		// Only print all values with secrets when secret values debug enabled
		DebugPrintValues(ctx, "all", vals)
	}

	return vals, nil
}
