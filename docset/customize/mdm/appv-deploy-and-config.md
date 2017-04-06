---
title: App-V App deployment and configuration via MDM
description: App-V App deployment and configuration via MDM
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
---

# App-V App deployment and configuration via MDM

## Executive Summary

<p>App-V Apps have typically been configured, deployed and managed through on-premise group policies via SCCM or App-V server.  With the new build of Windows 10 Creators Update, App-V apps can be configured, deployed and managed through MDM matching their on-premise counterparts.</p>

## Architectural Overview

<p>MDM Service will replace SCCM and App-V Server for cloud and hybrid based deployments.  All capabilities such as App-V enablement, configuration, and publishing can be completed using MDM.</p>

<p>Please note that these are preliminary architecture diagrams and examples - actual schemas may vary upon release.</p>

<!-- INSERT diagram here -->

<p align="center">Fig 1. App-V deployment with Enterprise MDM Server</p>

<p>The node structure for the EnterpriseAppVManagement CSP</p>

<p>(./User/Vendor/MSFT/EnterpriseAppVManagement) contains the following subnodes:</p>

<p><b>AppVPackageManagement</b> - Primarily read-only AppV package inventory data for MDM servers to query current packages.</p>

<!-- INSERT screencap here -->

<p>App-V attributes added. Otherwise identical to the App management CSP on MDM</p>

<p><b>AppVPublishing</b> - An exec action node, which contains the AppV publishing configuration for a given MDM device (applied globally to all users for that device) or a specific MDM user.</p>

