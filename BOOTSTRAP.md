# Bootstrap Guide

1. Create remote state storage accounts
   - rg-tfstate-dev / sttfstatedev
   - rg-tfstate-prod / sttfstateprod

2. Configure Azure OIDC App Registration
   - Federated credential for GitHub repo (main branch)
   - Contributor role at subscription scope

3. Configure GitHub secrets:
   AZURE_CLIENT_ID
   AZURE_TENANT_ID
   AZURE_SUBSCRIPTION_ID
   ARM_ACCESS_KEY_DEV
   ARM_ACCESS_KEY_PROD
