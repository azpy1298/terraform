This folder includes

1. Include secrets in keyvault with library and integration with azure pipelines.
2. Terraform backend config as azure storage.
3. Create resource group in main.tf

-------------------------------------

Create service principal for ms hosted agents to authenticate to azure

Assign contributor role to the service principal at subcriptions level (otherwise u will get no subcription available for sp)

------------------------------------

Using secret in azure pipelines:

use ARM_CLIENT_SECRET as environment variable in linux and windows in script;
refer azure-pipelines-tf-git.yml

variables:
 - name: ARM_CLIENT_SECRET
   value: $(ARM-CLIENT-SECRET)

export ARM_CLIENT_SECRET=$(ARM-CLIENT-SECRET)


variables:

![image](https://github.com/azpy1298/terraform/assets/133846787/e31f8dcb-213d-424a-96c8-f560444aba28)


![image](https://github.com/azpy1298/terraform/assets/133846787/f99edbb6-25c8-412f-bb19-95dc72a45e28)







