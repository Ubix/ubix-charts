# custom-dashboards

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

A Helm chart for deploying custom dashboards for Grafana

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalLabels.grafana_dashboard | string | `"1"` |  |
| dashboards.enabled[0] | string | `"vpa-recommender.json"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)