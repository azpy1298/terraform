Handling changes to the resource

1. Handling Changes that has been made to the resource via portal
2. Handling Changes that has been made to the resource via config files

comparing cmd:
State-remote  => tf plan -refresh-only
Config-remote => tf plan

-----------------------------------------

1. Handling Changes that has been made to the resource via portal

Run tf plan

Diff will be displayed,

When changes to need to reflect in config file:
  ( + )  field removed in portal:
		can be removed in config file > no need to run apply because changes has been reverted, state file remains the same
		Can be added in portal > go to portal add the field > run tf plan should be ok

  ( - ) Field added in portal:
		can be added in config file > add in the config file > run tf plan > tf apply to apply config to state file 
		Can be removed in portal > go to portal remove the field > run tf plan should be ok > no need to run apply because changes has been reverted, state file remains the same

2. Handling Changes that has been made to the resource via config files
Normal flow

Run tf plan
Run tf apply





