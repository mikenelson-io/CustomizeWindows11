function Set-ExplorerShowHidden {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Show Hidden

    .DESCRIPTION
    The Set-ExplorerShowHidden cmdlet is used to enable or disable the Explorer Show Hidden

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerShowHidden -Enable

    Enables the Explorer Show Hidden

    .EXAMPLE
    Set-ExplorerShowHidden -Disable -Verbose

    Disables the Explorer Show Hidden while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Show Hidden')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Show Hidden')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}