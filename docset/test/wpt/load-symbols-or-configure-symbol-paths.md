---
title: Load Symbols or Configure Symbol Paths
description: Load Symbols or Configure Symbol Paths
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1f29aadf-a323-4c24-8d46-3eae3e0c2b76
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Load Symbols or Configure Symbol Paths


In Windows Performance Analyzer (WPA), you can set a recording to load symbols or change symbol paths.

**To set a recording to load symbols**

-   On the **Trace** menu, click **Load Symbols**.

**Note**  
When you click **Load Symbols**, a progress bar (along with a count of the symbols found) above the Graph Explorer windows and the Analysis tab. In addition, on the graph itself, the data areas become grayed-out and a progress bar displays in each data area.

 

**To change symbol paths**

1.  On the **Trace** menu, click **Configure Symbol Paths**. By default, the dialog opens on the Paths tab

2.  Enter or select the desired paths, and then click **OK**.

**To cache symbol files to a SymCache folder**

1.  On the **Trace** menu, click **Configure Symbol Paths**. By default, the dialog opens on the Paths tab.

2.  Click **SymCache**. All stored files (with their corresponding paths) display in the body of the SymCache tab, which you can scroll to find specific SymCache file paths.

    **Note**  
    Invalid paths display in red.

     

3.  Select SymCache generation folder and then click the **Browse for Folder** icon to search for the location where your SymCache files are stored, and then click **OK** on the Browse for Folder dialog.

4.  Select each SymCache path to save to the SymCache generation folder specified in the previous steps, and then click **OK**.

5.  Select each SymCache path to save to the SymCache generation folder specified in the previous steps, and then click **OK**.

**To change load settings when configuring symbols**

1.  On the **Trace** menu, click **Configure Symbol Paths**. By default, the dialog opens on the Paths tab.

2.  Click **Load Settings**.

3.  Select how you want to load symbols based on the following options:

    -   Load symbols after load
    -   Load symbols per the following restrictions:

    **Note**  
    When selecting the **Load symbols per the following restrictions:** option, you can specify whether you want to load symbols for specifi processes or you can choose to not load symbols for specific images. You can opt to specify restrictions for both processes and images.

     

4.  Click **OK**.

## Related topics


[WPA Common Scenarios](windows-performance-analyzer-common-scenarios.md)

[Loading Symbols](loading-symbols.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Load%20Symbols%20or%20Configure%20Symbol%20Paths%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





