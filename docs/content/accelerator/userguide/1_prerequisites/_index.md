---
title: Phase 1 - Prerequisites
geekdocCollapseSection: true
weight: 5
---

Phase 1 of the accelerator is to setup your prerequisites. Follow the steps below to do that.

## 1 - Tools and Internet Access

You'll need to install the following tools before getting started.

- PowerShell 7.4 (or newer): [Follow the instructions for your operating system](https://learn.microsoft.com/powershell/scripting/install/installing-powershell)
- Azure CLI 2.55.0 (or newer): [Follow the instructions for your operating system](https://learn.microsoft.com/cli/azure/install-azure-cli)
* Git (any supported version): [Follow the instructions for your opersating system](https://git-scm.com/downloads).

{{< hint type=note >}}
In all cases, ensure that the tools are available from a PowerShell core (pwsh) terminal. You may need to add them to your environment path if they are not.
{{< /hint >}}

You will also need open access to the internet to download tools, terraform providers and connect to Azure and your Version Control System.

We **DO NOT** explicitly support:

* Running behind a corporate proxy
* Running in Azure Cloud Shell

{{< hint type=tip >}}
If your local machine is behind a corporate proxy, consider spinning up a temporary VM in Azure to run the Accelerator from, then tear it down when you are done.
{{< /hint >}}

## 2 - Azure Subscriptions and Permissions

Follow the instructions in the [Platform Subscriptions and Permissions]({{< relref "platform-subscriptions" >}}) section.

## 3 - Version Control Systems

You'll need to decide if you are using GitHub, Azure DevOps or the Local File System and follow these steps:

### Azure DevOps

Follow the instructions in the [Azure DevOps]({{< relref "azuredevops" >}}) section.

### GitHub

Follow the instructions in the [GitHub]({{< relref "github" >}}) section.

### Local File System

You just need to ensure that you have a folder on your local file system that you can use to store the files, which your current session has access to.

## Next Steps

Now head to [Phase 2]({{< relref "2_start" >}}).
