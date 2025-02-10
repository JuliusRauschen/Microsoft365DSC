<#
This example is used to test new resources and showcase the usage of new resources being worked on.
It is not meant to use as a production baseline.
#>

Configuration Example
{
    param(
        [Parameter()]
        [System.String]
        $ApplicationId,

        [Parameter()]
        [System.String]
        $TenantId,

        [Parameter()]
        [System.String]
        $CertificateThumbprint
    )
    Import-DscResource -ModuleName Microsoft365DSC
    node localhost
    {
        Credential           = $Credscredential;
        GuestUserRoleId      = "10dae51f-b6af-4016-8d66-8c2a99b929b3";
        IsSingleInstance     = "Yes";
    }
}
