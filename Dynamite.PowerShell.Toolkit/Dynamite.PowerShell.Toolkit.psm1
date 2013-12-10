#
# Module 'Dynamite.PowerShell.Toolkit'
# Generated by: GSoft, Team Dynamite.
# Generated on: 10/24/2013
# > GSoft & Dynamite : http://www.gsoft.com
# > Dynamite Github : https://github.com/GSoft-SharePoint/Dynamite-PowerShell-Toolkit
# > Documentation : https://github.com/GSoft-SharePoint/Dynamite-PowerShell-Toolkit/wiki
#

#region Imports PowerShell Scripts
# Get the current Path
 $currentPath = split-path -parent $MyInvocation.MyCommand.Definition
 Get-ChildItem -Path $currentPath\*.ps1 | Foreach-Object{ . $_.FullName }
#endregion

<#
	.SYNOPSIS
		Get The Version of the Dynamite PowerShell Toolkit

	.DESCRIPTION
		Get The Version of the Dynamite PowerShell Toolkit
    
    --------------------------------------------------------------------------------------
    Module 'Dynamite.PowerShell.Toolkit'
    by: GSoft, Team Dynamite.
    > GSoft & Dynamite : http://www.gsoft.com
    > Dynamite Github : https://github.com/GSoft-SharePoint/Dynamite-PowerShell-Toolkit
    > Documentation : https://github.com/GSoft-SharePoint/Dynamite-PowerShell-Toolkit/wiki
    --------------------------------------------------------------------------------------
    
	.EXAMPLE
		PS C:\> Get-DSPVersion
		
	.OUTPUTS
		Name and Version Properties

	.NOTES
		The version should be incremented and the Changelog should be updated

#>
function Get-DSPVersion {
	return GetDSPModule | Select Name, Version
}

<#
	.SYNOPSIS
		Get The name of the Dynamite PowerShell Toolkit module

	.DESCRIPTION
		Get The name of the Dynamite PowerShell Toolkit module

    --------------------------------------------------------------------------------------
    Module 'Dynamite.PowerShell.Toolkit'
    by: GSoft, Team Dynamite.
    > GSoft & Dynamite : http://www.gsoft.com
    > Dynamite Github : https://github.com/GSoft-SharePoint/Dynamite-PowerShell-Toolkit
    > Documentation : https://github.com/GSoft-SharePoint/Dynamite-PowerShell-Toolkit/wiki
    --------------------------------------------------------------------------------------
    
	.EXAMPLE
		PS C:\> Get-DSPModuleName
		
	.OUTPUTS
		System.String

	.NOTES
		It's dynamic, the command is going to get the name from the imported module

#>
function Get-DSPModuleName {
	return $($MyInvocation.MyCommand.Module | Select-Object Name).Name
}

function GetDSPModule {
	return $MyInvocation.MyCommand.Module
}

#region Export-ModuleMember

# Dynamite PowerShell Toolkit function
Export-ModuleMember -Function Get-DSPVersion, Get-DSPModuleName

# Database
Export-ModuleMember -Function New-DSPContentDatabase

# PropertyBag
Export-ModuleMember -Function Get-DSPWebAppProperty, Set-DSPWebAppProperty

# Search - Managed Properties
Export-ModuleMember -Function Add-DSPMetadataManagedPropertiesByXml, Remove-DSPMetadataManagedPropertiesByKeyword, Add-DSPCrawlExtension

# SiteCollection - Structure
Export-ModuleMember -Function New-DSPStructure, Remove-DSPStructure

# Tokenizer
Export-ModuleMember -Function Update-DSPTokens

# Taxonomy
Export-ModuleMember -Function Get-DSPTaxonomySession, Get-DSPTermStore, Get-DSPTermSet, New-DSPTaxonomyField, Set-DSPTaxonomyField, Set-DSPTaxonomyTerms
#endregion

# Features
Export-ModuleMember Initialize-DSPSiteCollectionsFeatures, Initialize-DSPSiteAllWebsFeatures, Initialize-DSPWebFeatures

# Managed Paths
Export-ModuleMember New-DSPManagedPath

