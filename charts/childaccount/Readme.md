
The present helm chart renders only the composition and defintion resources that are going to be used for the ChildAccount provisioning.

Once this composition has been deployed in the Cluster, you can create child accounts by applying the folowing yaml.

apiVersion: cloudspace.resources/v1alpha1
kind: ChildAccountClaim
metadata:
  name: crossplane-t18
  labels:
    provider: aws-jet
    name: childaccount
spec:
  id: crossplane-t18
  compositionSelector:
    matchLabels:
      provider: aws-jet
      name: childaccount
  parameters:
    email: awsaccountadmin+crossplane.crossplane-t18@ubixlabs.com
    name: crossplane-t18
    parentId: ou-8jat-sv0412tm
    region: us-east-1
  eks:
    version: "1.23"
    nodeSize: small
    minNodeCount: 1
    maxNodeCount: 3
    desiredNodeCount: 3
    diskSize: 20