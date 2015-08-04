param([Parameter(Mandatory=$True)][string]$msifile = $args[0])
if (!$msifile)
{
    Return
}
$cert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2((Get-Item $msifile).FullName)
if ($cert)
{
    $key = $cert.GetPublicKeyString()
    if ($key)
    {
        Write-Output $key
    }
    else
    {
        Write-Host "No public key"
    }
}
