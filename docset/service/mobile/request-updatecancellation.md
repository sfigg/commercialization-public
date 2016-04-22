---
author: kpacquer
Description: 'Request-UpdateCancellation cmdlet'
ms.assetid: a01ab740-d6a2-4c9e-bfb6-ee3fabb3799a
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Request-UpdateCancellation cmdlet'
---

# <span id="p_phupdate.request-updatecancellation"></span>Request-UpdateCancellation cmdlet


Request a cancellation of a firmware submission request using the **Request-UpdateCancellation** cmdlet.

You can cancel either OEM/mixed updates sent through the [New-RequestForUpdate cmdlet](new-requestforupdate-cmdlet.md). You cannot cancel a request for update (RFU) sent to Microsoft Update after the has been approved to ship Live.

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


``` syntax
    Request-UpdateCancellation [-RequestForUpdateTicketId] <String> 
    [-ServiceUri <Uri>] [-ServiceAccessControlNamespace <String>] 
    [-CertificateStoreLocation <StoreLocation>] [-CertificateStoreName 
    <StoreName>] [-ClientCertificateThumbprint <String>] 
    [-EncryptionCertificateThumbprint <String>] [<CommonParameters>]
```

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


Typically, the only parameter that is specified in this cmdlet is the firmware submission Ticket ID.

``` syntax
Request-UpdateCancellation -RequestForUpdateTicketId 
    TKT-RFU-PROD-ABCD56-1
```

## <span id="Help_documentation_from_PowerShell"></span><span id="help_documentation_from_powershell"></span><span id="HELP_DOCUMENTATION_FROM_POWERSHELL"></span>Help documentation from PowerShell


The following is the help documentation for the **New-FirmwareSubmission** cmdlet from Windows PowerShell.

``` syntax
NAME
    Request-UpdateCancellation
    
SYNOPSIS
    Requests cancellation for the specified ticket.
    
SYNTAX
    Request-UpdateCancellation [-RequestForUpdateTicketId] <String> 
    [-ServiceUri <Uri>] [-ServiceAccessControlNamespace <String>] 
    [-CertificateStoreLocation <StoreLocation>] [-CertificateStoreName 
    <StoreName>] [-ClientCertificateThumbprint <String>] 
    [-EncryptionCertificateThumbprint <String>] [<CommonParameters>]
    
    
DESCRIPTION
    Requests cancellation for the specified update request. The request could 
    be for a MicrosoftOemMixed or MicrosoftAKOnly update.
    

PARAMETERS
    -RequestForUpdateTicketId <String>
        The request for update ticket id.
        
        Required?                    true
        Position?                    2
        Default value                
        Accept pipeline input?       true (ByValue, ByPropertyName)
        Accept wildcard characters?  false
        
    -ServiceUri <Uri>
        The service URI. The default value for this parameter is read from the 
        configuration file.
        
        Required?                    false
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -ServiceAccessControlNamespace <String>
        The namespace for Partner Services Access Control. The default value 
        for this parameter is read from the configuration file. Should only be 
        modified if instructed by the system administrator or Microsoft.
        
        Required?                    false
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -CertificateStoreLocation <StoreLocation>
        The certificate store location. The default value for this parameter 
        is read from the configuration file.
        
        Required?                    false
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -CertificateStoreName <StoreName>
        The certificate store name. The default value for this parameter is 
        read from the configuration file.
        
        Required?                    false
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -ClientCertificateThumbprint <String>
        The client certificate thumbprint. The default value for this 
        parameter is read from the configuration file.
        
        Required?                    false
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    -EncryptionCertificateThumbprint <String>
        The encryption certificate thumbprint. The default value for this 
        parameter is read from the configuration file.
        
        Required?                    false
        Position?                    named
        Default value                
        Accept pipeline input?       false
        Accept wildcard characters?  false
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, 
    see 
        about_CommonParameters 
    (http://go.microsoft.com/fwlink/p/?linkid=113216). 
    
INPUTS
    
        
        
    
     
    
OUTPUTS
    
        
        
    
     
    
NOTES
    
    
        
    
    --------------  Example 1 --------------
    
    C:\PS>Request-UpdateCancellation -RequestForUpdateTicketId 
    TKT-RFU-PROD-ABCD56-1
    
    
    Requests cancellation for a given RequestForUpdateTicketId
    
    
    
    
    
    
RELATED LINKS
```

## <span id="Requirements"></span><span id="requirements"></span><span id="REQUIREMENTS"></span>Requirements


**Header:** None

## <span id="related_topics"></span>Related topics


[Submit binaries to be retail signed](https://msdn.microsoft.com/library/windows/hardware/dn789223)

[New-RequestForUpdate cmdlet](new-requestforupdate-cmdlet.md)

[New-RequestForMicrosoftUpdate cmdlet](new-requestformicrosoftupdate-cmdlet.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phUpdate\p_phUpdate%5D:%20Request-UpdateCancellation%20cmdlet%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




