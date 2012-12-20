# Simple cd'er and git pull/push script to ease maintaining multiple forks
# Place at root of tree
root=`pwd`

aokp() {
git pull aokp jb-mr1
}

push() {
revision=$1
git push gh $revision
}

## Devices will go here once merged
echo "All synced up"
exit
