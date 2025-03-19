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

In our example configuration file, you will find the `Management Resources` block setting.

To update the value, add the line log_analytics_workspace_retention_in_days

For example:

{{< highlight terraform "linenos=table" >}} 
management_resource_settings = 
{ location = ""$${starter_location_01}" 
log_analytics_workspace_retention_in_days = "365"   
log_analytics_workspace_name = "$${log_analytics_workspace_name}"
... } } 
{{< / highlight >}}
