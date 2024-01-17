{{- define "includedNamespaces" -}}
includedNamespaces:
- {{ .Release.Namespace }}
{{- end -}}

{{- define "labelSelector" -}}
labelSelector:
  matchLabels:
    app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "schedule.name" -}}
{{- printf "%s-pvc-bkp-schedule" .Release.Name | trunc 63 -}}
{{- end -}}

{{- define "aux" -}}
{{- end -}}
