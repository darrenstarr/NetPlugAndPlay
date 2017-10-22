<#
This code is written and maintained by Darren R. Starr from Conscia Norway AS.
License :
Copyright (c) 2017 Conscia Norway AS
Permission is hereby granted, free of charge, to any person obtaining a 
copy of this software and associated documentation files (the "Software"), 
to deal in the Software without restriction, including without limitation 
the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the Software 
is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in 
all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION 
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#>

Function Get-PnPNetworkDeviceType {
    Param(
        [Parameter()]
        [string] $PnPHost = 'localhost',        

        [Parameter()]
        [int] $HostPort = 80,
        
        [Parameter()]
        [Guid] $Id = [Guid]::Empty,

        [Parameter()]
        [string] $Name
    )

    $uri = ('http://' + $PnPHost + ':' + $HostPort.ToString() + $sitePrefix + '/api/v0/plugandplay/networkdevicetype')

    if($Id -ne [Guid]::Empty) {
        $uri += ('/' + $Id.ToString())
    }

    if(-not [string]::IsNullOrEmpty($Name)) {
        $uri += '?name=' + $Name
    }

    $requestSplat = @{
        UseBasicParsing = $true
        Uri = $uri 
        Method = 'Get'
        ContentType = 'application/json'
    }

    $result = Invoke-RestMethod @requestSplat

    return $result
}

Function Add-PnPNetworkDeviceType {
    Param(
        [Parameter()]
        [string] $PnPHost = 'localhost',        

        [Parameter()]
        [int] $HostPort = 80,

        [Parameter(Mandatory)]
        [string] $Name,

        [Parameter(Mandatory)]
        [string] $Manufacturer,

        [Parameter(Mandatory)]
        [string] $ProductId
    )

    $requestBody = @{
        name = $Name
        manufacturer = $Manufacturer
        productId = $ProductId
    }

    $uri = ('http://' + $PnPHost + ':' + $HostPort.ToString() + $sitePrefix + '/api/v0/plugandplay/networkdevicetype')

    $requestSplat = @{
        UseBasicParsing = $true
        Uri = $uri
        Method = 'Post'
        ContentType = 'application/json'
        Body = ($requestBody | ConvertTo-Json)
    }

    $result = Invoke-RestMethod @requestSplat

    return $result
}
