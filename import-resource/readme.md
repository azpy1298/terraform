This folder includes

Importing azure resource into state and tf files








---------------------------------------------





	2. Import new resource from portal

Optional  : create a resource in portal

	1. Before importing make sure you have no changes in your infrastructure
	


	2. Get the resource ID from the newly created resource 
	3. Go to azure rm terraform page and move to matching resource page and get the all the required parameters for that resource






	4. Make changes to all the required values including name and resource group to match exactly same as in portal resource
	5. Get the resource ID from the newly created resource to exact match as documentation in azure rm
	
/subscriptions/7996db2d-42aa-4deb-b8ac-0c01cf0df187/resourceGroups/terraform-basics/providers/Microsoft.Web/serverFarms/ASP-spacegame

/subscriptions/7996db2d-42aa-4deb-b8ac-0c01cf0df187/resourceGroups/terraform-basics/providers/Microsoft.Web/serverfarms/ASP-spacegame

Error:



Above error is because when you copy resource ID from portal will be "serverFarms" instead of  "serverfarms" in azure rm docmentation.

After that it will be successful.




When exec tf plan it shows because you have not filled the required values in resource, whether it is right or wrong you need to mention in the resource config file but name and location should be exact match




After filled required fields it shows diff in tf plan cmd




Ignore the known after apply and null
And make all other changes in config according to tf plan diff
Untill you get no changes required




We have successfully imported resource to terraform, therefore hereafter terraform will maintain the resource imported any change to that will reflect in tf plan

Import one resource at a time in terraform 
azurerm_windows_web_app.winwebapp

$(tfconfigname) $(azresourceID)






![image](https://github.com/azpy1298/terraform/assets/133846787/0e587876-24c3-471e-9120-0cc54ec2c6aa)
