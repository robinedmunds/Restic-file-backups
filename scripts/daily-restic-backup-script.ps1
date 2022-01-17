$repoPath = "D:\OneDrive\OneDrive - TERSE DIGITAL\robin\restic-repo"
$SECRET = "S:\documents\notes\tech\backups\restic\SECRET"
$exclusionsFile = "S:\documents\notes\tech\backups\restic\exclusions.txt"


restic --repo $repoPath `
  --password-file $SECRET `
  --verbose `
  backup --tag working 'D:\working' `
  --exclude-file=$exclusionsFile


restic --repo $repoPath `
  --password-file $SECRET `
  --verbose `
  forget --tag working `
  --keep-last 6
