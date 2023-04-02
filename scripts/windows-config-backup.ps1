# This script is to bring various folders together into one folder that I can back up to github
#

$dest = "F:\Documents\windows-backup"
$farray = "F:\Documents\scripts","C:\Users\dirtb\AppData\Local\nvim"

rm "F:\Documents\windows-backup\*" -Recurse
for ($i=0; $i -lt $farray.Length; $i++)
{
    cp $($farray[$i]) $($dest) -Recurse
  }

cd $($dest)
git add -A
$message = Read-Host "Please enter your commit message"
git commit -m $($message)
git push -u origin main
