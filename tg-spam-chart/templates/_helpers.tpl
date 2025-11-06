{{- define "tg-spam.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "tg-spam.fullname" -}}
{{ include "tg-spam.name" . }}-{{ .Release.Name }}
{{- end -}}
