# Import csv file that hold the new users
$users =Import-CSV C:\Users\Administrator\Documents\users.csv
#Add users to AD
foreach ($user in $users) {
#Set users path by with deperat from the csv file
$path = "ou=$($user.Department),dc=a16johal,dc=local"
#Set users password and convert it to a secure string
$password = "Syp9393" | ConvertTo-SecureString -AsPlainText -Force
#Add the new user
New-ADUser -Name $user.name -SamAccountName $user.login -Department $user.Department -EmailAddress $user.Email -Description $user.Description -Path $path -AccountPassword $password -Enabled $true -PasswordNeverExpires $true 
 }
