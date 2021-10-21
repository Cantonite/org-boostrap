# Organisation Bootstrap

## Bootstrap Steps

1. Add a GitHub VCS provider to Terraform Cloud - [TFE Version Contol Settings](https://app.terraform.io/app/Cantonite/settings/version-control/add)

2. Get the token ID

    ```curl
    curl -H "Authorization: Bearer $TFE_TOKEN" https://app.terraform.io/api/v2/organizations/Cantonite/oauth-tokens
    ```

3. Execute `terraform apply` and pass in the OAuth Token ID from step 2 when prompted
