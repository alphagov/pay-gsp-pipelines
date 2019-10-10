{{/*
Define the IAM role name for the Principal
*/}}
{{- define "principal-iam-role" -}}
{{- printf "svcop-%s-%s-%s-principal" .Values.global.cluster.name .Release.Namespace .Release.Name -}}
{{- end -}}

{{/*
Define frontend host
*/}}
{{- define "frontend.host" -}}
{{- default (printf "%s-frontend.%s" .Release.Name .Values.global.cluster.domain) .Values.frontend.host -}}
{{- end -}}

{{/*
Define direct-debit-frontend host
*/}}
{{- define "directDebit.frontend.host" -}}
{{- default (printf "%s-direct-debit-frontend.%s" .Release.Name .Values.global.cluster.domain) .Values.directDebit.frontend.host -}}
{{- end -}}

{{/*
Define products-ui host
*/}}
{{- define "products.ui.host" -}}
{{- default (printf "%s-products-ui.%s" .Release.Name .Values.global.cluster.domain) .Values.products.ui.host -}}
{{- end -}}

{{/*
Define public-api host
*/}}
{{- define "public.api.host" -}}
{{- default (printf "%s-public-api.%s" .Release.Name .Values.global.cluster.domain) .Values.public.api.host -}}
{{- end -}}

{{/*
Define self-service host
*/}}
{{- define "selfService.host" -}}
{{- default (printf "%s-self-service.%s" .Release.Name .Values.global.cluster.domain) .Values.selfService.host -}}
{{- end -}}

{{/*
Define demo-service host
*/}}
{{- define "demoService.host" -}}
{{- printf "%s-demo-service.%s" .Release.Name .Values.global.cluster.domain -}}
{{- end -}}

{{/*
Define list of public hosts
*/}}
{{- define "publicHosts" -}}
- {{ include "frontend.host" . }}
- {{ include "directDebit.frontend.host" . }}
- {{ include "products.ui.host" . }}
- {{ include "public.api.host" . }}
- {{ include "selfService.host" . }}
{{- if .Values.test.enabled -}}
- {{ include "demoService.host" . }}
{{- end -}}
{{- end -}}
