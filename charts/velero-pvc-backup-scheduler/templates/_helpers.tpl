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

{{- define "restore.name" -}}
{{- printf "%s-restore-%s" .Release.Name (now | unixEpoch) | trunc 63 -}}
{{- end -}}

{{- define "restore.jobs.cleanup" -}}
{{- printf "%s-cleanup-restore-%s" .Release.Name (now | unixEpoch) | trunc 63 -}}
{{- end -}}

{{- define "restore.jobs.wait" -}}
{{- printf "%s-wait-restore-%s" .Release.Name (now | unixEpoch) | trunc 63 -}}
{{- end -}}
