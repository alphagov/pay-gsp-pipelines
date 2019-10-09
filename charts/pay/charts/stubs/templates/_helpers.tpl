{{/*
Define demo-service host
*/}}
{{- define "stubs.demoService.host" -}}
{{- printf "%s-demo-service.%s" .Release.Name .Values.global.cluster.domain -}}
{{- end -}}

{{/*
Define list of hosts
*/}}
{{- define "stubs.publicHosts" -}}
- {{- include "stubs.demoService.host" . -}}
{{- end -}}
