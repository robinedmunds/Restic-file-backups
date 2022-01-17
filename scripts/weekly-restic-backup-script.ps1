$repoPath = "D:\OneDrive\OneDrive - TERSE DIGITAL\robin\restic-repo"
$SECRET = "S:\documents\notes\tech\backups\restic\SECRET"
$exclusionsFile = "S:\documents\notes\tech\backups\restic\exclusions.txt"


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
