---
title: 15 - Change the Log Analytics workspace retention
geekdocCollapseSection: true
weight: 15
---

You can change the retention period for a Log Analytics workspace from the default 30 days to a set number of days: 

- 30
- 31
- 60
- 90
- 120
- 180
- 270
- 365
- 550
- 730


`DoNotEnforce` or `Disabled` for any policy assignment. This is useful if you want to disable a policy assignment for a specific management group.

To do this, you need to add the policy assignment to the `policy_assignments_to_modify` section of the `management_group_settings` configuration.

First you need to identify the policy assignment name:

1. Find the policy assignment you wish to modify in the [library](https://github.com/Azure/Azure-Landing-Zones-Library/tree/main/platform/alz/policy_assignments)
1. Open the policy assignment file and find the `name` property and take a note of it.

Next, you need to identify the archetype(s) (management group definitions) that the policy assignment is applied to:

1. Find the archetype in the [library](https://github.com/Azure/Azure-Landing-Zones-Library/tree/main/platform/alz/archetype_definitions)
1. Open the archetype file and check the `policy_assignments` property. If the policy assignment is there, then and take a note of the archetype `name` property.
1. Open the [alz.alz_architecture_definition.json](https://github.com/Azure/Azure-Landing-Zones-Library/blob/main/platform/alz/architecture_definitions/alz.alz_architecture_definition.json) file find the archetype name from the previous step in the `archetypes` property. Take note of the management group `name` property.

    {{< hint type=warning >}}
If you have updated any management group IDs, then you need to open your customized `alz.alz_architecture_definition.json` file instead to find the correct management group name.
    {{< /hint >}}

Now you have the policy assignment name and the management group name, so you can construct the config you need to add. The configuration is structured as follows:

{{< highlight terraform "linenos=table" >}}
"<management-group-name>" = {
  policy_assignments = {
    "<policy-assignment-name>" = {
      enforcement_mode = "<enforcement-mode>"
    }
  }
}
{{< / highlight >}}

* `<management-group-name>` is the name of the management assigned the archetype you identified earlier.
* `<policy-assignment-name>` is the name of the policy assignment you identified earlier.
* `<enforcement-mode>` is the enforcement mode you want to set. This could be `DoNotEnforce` or `Disabled`.

For example, to set the enforcement mode of DDOS protection plan on the `connectivity` management group add the following section to `management_group_settings` > `policy_assignments_to_modify` block setting:

{{< highlight terraform "linenos=table" >}}
management_group_settings = {
  ...
  policy_assignments_to_modify = {
    "connectivity" = {
      policy_assignments = {
        "Enable-DDoS-VNET" = {
          enforcement_mode = "DoNotEnforce"
        }
      }
    }
  }
}
{{< / highlight >}}
