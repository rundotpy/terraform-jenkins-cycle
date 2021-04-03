# Automate Terraform deployments with a Jenkins Multi-branch pipeline.

## Initial Setup:
- Jenkins was installed and configured on this server : [AccessURL](http://rundotpyjenkins.eastus.cloudapp.azure.com:8080)
- A Jenkins global scope credential `rundotpy_github_global_scope` was created to access this Repo.
- Jenkins global con
- Multi-branch pipeline created : `tf-builds-pipeline`
    - Branch source : https://github.com/rundotpy/terraform-jenkins-cycle.git
    - Dicsover branches with regex : ^main|development|feature$
- Setup Githib webhook - http://rundotpyjenkins.eastus.cloudapp.azure.com:8080/github-webhook/
- updated
- updated 2
- updated 3
- updated 4
- UPDATED AGAIN
- Updated again again