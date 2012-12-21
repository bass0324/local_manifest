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

## Devices will go here once merged

cd frameworks/av
    aokp
    push jb-mr1
cd $root
cd frameworks/native
    aokp
    push jb-mr1
cd $root
cd kernel/samsung/d2
    cm
    push jb-mr1
cd $root
cd vendor/samsung
    aokp
    push jb-mr1
cd $root
cd vendor/aokp
    aokp
    push jb-mr1
cd $root

echo "All synced up"
exit
