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

<#
    .SYNOPSIS
        Returns true if the string passed is a valid IPv4 network prefix
    .PARAMETER Prefix
        The string to test
#>
Function Get-NetworkFromNetworkPrefix {
    Param(
        [Parameter(Mandatory)]
        [string]$Prefix
    )

    $ipAddress,$prefixLength = (Get-NetworkPrefixParts -Prefix $Prefix)

    $ipAsUInt = Get-IPAsUInt32 -IPAddress $ipAddress

    $mask = [uint32]'0xFFFFFFFF' -shl (32 - $prefixLength)

    $networkAddressUInt32 = $ipAsUInt -band $mask

    $networkAddressBytes = @(
        [Convert]::ToByte($networkAddressUInt32 -shr 24),
        [Convert]::ToByte(($networkAddressUInt32 -shr 16) -band 0xFF),
        [Convert]::ToByte(($networkAddressUInt32 -shr 8) -band 0xFF),
        [Convert]::ToByte($networkAddressUInt32 -band 0xFF)
    )

    $networkAddress = [System.Net.IPAddress]::new(
        $networkAddressBytes
    )

    return $networkAddress.ToString() + '/' + $prefixLength.ToString()
}
