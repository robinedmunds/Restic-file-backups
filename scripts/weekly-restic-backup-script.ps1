$repoPath = "D:\OneDrive\OneDrive - TERSE DIGITAL\robin\restic-repo"
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
  forget --tag music --tag documents `
  --keep-last 3
