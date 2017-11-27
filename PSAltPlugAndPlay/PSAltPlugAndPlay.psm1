#$sitePrefix = '/NetPlugAndPlay'
$sitePrefix = [string]::Empty

. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/HelperScripts/Get-SubnetMaskFromPrefixLength.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/HelperScripts/Get-SubnetMaskFromNetworkPrefix.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/HelperScripts/Get-NetworkPrefixParts.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/HelperScripts/Get-IPAddressFromNetworkPrefix.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/HelperScripts/Get-IPAsUInt32.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/HelperScripts/Get-NetworkFromNetworkPrefix.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/HelperScripts/Test-IsIP.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/HelperScripts/Test-IsNetworkPrefix.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/HelperScripts/Test-StringsEqual.ps1')

. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/NetPlugAndPlay/NetworkDevice.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/NetPlugAndPlay/NetworkDeviceType.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/NetPlugAndPlay/NetworkDeviceLink.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/NetPlugAndPlay/NetworkInterface.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/NetPlugAndPlay/Template.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/NetPlugAndPlay/TemplateConfiguration.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/NetPlugAndPlay/TemplateProperty.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/NetPlugAndPlay/TFTPFiles.ps1')

. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/ConfigTool/Get-ChangedTemplateParameters.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/ConfigTool/Invoke-PnPProcessConnection.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/ConfigTool/Invoke-PnPProcessConnections.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/ConfigTool/Invoke-PnPProcessDevicesSection.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/ConfigTool/Invoke-PnPProcessTemplatesSection.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/ConfigTool/Invoke-ProcessPnPDevice.ps1')
. (Join-Path -Path $PSScriptRoot -ChildPath 'Sources/ConfigTool/Set-PnPProcessTemplate.ps1')
