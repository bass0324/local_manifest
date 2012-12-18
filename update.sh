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

cd build
	aokp
        push jb-mr1
cd $root
cd frameworks/av
	cm
	push cm-10.1
cd $root
cd frameworks/base
	aokp
	push jb-mr1
cd $root
cd frameworks/native
	cm
	push cm-10.1
cd $root
cd frameworks/opt/telephony
	cm
	push cm-10.1
cd $root
cd hardware/qcom/display
	cm
	push cm-10.1
cd $root
cd kernel/samsung/d2
	cm
	push jb-mr1
cd $root
cd packages/apps/Camera
	aokp
	push jb-mr1
cd $root
cd packages/apps/Mms
	aokp
	push jb-mr1
cd $root
cd packages/apps/ROMControl
	aokp
	push jb-mr1
cd $root
cd system/core
	aokp
	push jb-mr1
cd $root
cd vendor/aokp
	aokp
	push jb-mr1
cd $root
cd vendor/samsung
	aokp
	push jb-mr1
cd $root
echo "All synced up"
exit
