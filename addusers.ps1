$users =Import-CSV C:\Users\Administrator\Documents\users.csv

foreach ($user in $users) {
 New-ADUser -Name $user.name -SamAccountName $user.login -Department $user.Department -EmailAddress $user.Email -Description $user.Description 
}
