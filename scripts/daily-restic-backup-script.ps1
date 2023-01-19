$repoPath = "D:\OneDrive\OneDrive - TERSE DIGITAL\robin\restic-repo"
$SECRET = "C:\robin\keys\RESTIC-SECRET"
$exclusionsFile = "S:\documents\nextcloud\notes\tech\backups\restic\exclusions.txt"


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
