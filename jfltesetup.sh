# Run from root of source tree

root=`pwd`
cd $root

# In order to use pstest must be in build environment
. build/envsetup.sh >/dev/null 2>&1

cd frameworks/opt/telephony
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_opt_telephony refs/changes/36/37936/28 && git cherry-pick FETCH_HEAD
cd $root

cd vendor/samsung
pstest 8208/1
cd $root

cd vendor/aokp
pstest 8191/2
cd $root
