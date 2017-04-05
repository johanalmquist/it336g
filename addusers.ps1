$users =Import-CSV C:\Users\Administrator\Documents\users.csv

foreach ($user in $users) {
$path = "ou=$($user.Department),dc=a16johal,dc=local"
$password = "Syp9393" | ConvertTo-SecureString -AsPlainText -Force
 New-ADUser -Name $user.name -SamAccountName $user.login -Department $user.Department -EmailAddress $user.Email -Description $user.Description -Path $path -AccountPassword $password -Enabled $true -PasswordNeverExpires $true 
 }
