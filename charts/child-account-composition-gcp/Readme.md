
The present helm chart renders only the composition and defintion resources that are going to be used for the ChildAccount provisioning.

Once this composition has been deployed in the Cluster, you can create child accounts by applying the following yaml.

````
apiVersion: gcp.ubix.io/v1alpha1
kind: ChildAccountClaim
metadata:
  name: crossplane-t23
  labels:
    provider: gcp-jet
    name: childaccount
spec:
  id: crossplane-t23
  # compositionSelector:
  #   matchLabels:
  #     provider: aws-jet
  #     name: childaccount
  parameters:
    name: crossplane-t23
    region: us-east4
    providerconfig: root-gcp #root-gcp-dev/root-gcp-stg/root-gcp-prod
  gke:
    version: "1.29.0-gke.1381000"
````
