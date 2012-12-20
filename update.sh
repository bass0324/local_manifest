# Simple cd'er and git pull/push script to ease maintaining multiple forks
# Place at root of tree
root=`pwd`

aokp() {
git pull aokp jb-mr1
}

cm() {
git pull cm cm-10.1
}

push() {
revision=$1
git push gh $revision
}

cd kernel/samsung/d2
    cm
    push jb-mr1
cd $root

## Devices will go here once merged
echo "All synced up"
exit
