{{/*
Define demo-service host
*/}}
{{- define "stubs.demoService.host" -}}
{{- default (printf "%s-demo-service.%s" .Release.Name .Values.global.cluster.domain) .Values.demoService.host -}}
{{- end -}}

{{/*
Define list of hosts
*/}}
{{- define "stubs.publicHosts" -}}
- {{- include "stubs.demoService.host" . -}}
{{- end -}}
