$cert = Get-ChildItem -Path Cert:\CurrentUser\My -CodeSigningCert
Set-AuthenticodeSignature -FilePath C:\Shared\6.2.ps1 -Certificate $cert
