$repoPath = "E:\restic-repo"
$SECRET = "C:\robin\keys\RESTIC-SECRET"
$exclusionsFile = "S:\documents\nextcloud\notes\tech\backups\restic\exclusions.txt"


restic --repo $repoPath `
  --password-file $SECRET `
  --verbose `
  backup --tag music 'S:\music'


restic --repo $repoPath `
  --password-file $SECRET `
  --verbose `
  backup --tag documents 'S:\documents' `
  --exclude-file=$exclusionsFile


restic --repo $repoPath `
  --password-file $SECRET `
  --verbose `
  backup --tag working 'D:\working' `
  --exclude-file=$exclusionsFile


restic --repo $repoPath `
  --password-file $SECRET `
  --verbose `
  forget --tag music --tag documents --tag working `
  --keep-last 3
