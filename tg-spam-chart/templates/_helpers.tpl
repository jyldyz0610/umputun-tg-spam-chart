{{/* Helm helpers for tg-spam */}}

{{- define "tg-spam.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "tg-spam.fullname" -}}
{{ printf "%s-%s" (include "tg-spam.name" .) .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{- define "tg-spam.labels" -}}
app.kubernetes.io/name: {{ include "tg-spam.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end -}}
