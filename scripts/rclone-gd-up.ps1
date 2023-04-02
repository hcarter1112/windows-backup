# This script is to be able to copy the information from the defined directories from gdrive to my local computer.
#
# We will start by defining variables that can be easily changed should the need arise

$localdir = "F:\Documents\rclone\"
$dirna = "Obsidian","HmT-Mats","obs-media","peruvian-taxes"

for($i=0; $i -lt $dirna.Length; $i++)
{
    rclone copy --update --transfers 30 --checkers 8 "$($localdir)$($dirna[$i])" "gdrive:$($dirna[$i])"
  }