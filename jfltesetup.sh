# Run from root of source tree

root=`pwd`
cd $root

# In order to use pstest must be in build environment
. build/envsetup.sh >/dev/null 2>&1

cd build
pstest 7717/2
cd $root

cd device/samsung/jf-common
pstest 8589/5
cd $root


cd frameworks/opt/telephony
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_opt_telephony refs/changes/36/37936/32 && git cherry-pick FETCH_HEAD
cd $root

cd vendor/samsung
pstest 8208/3
pstest 8519/5
pstest 8566/2
pstest 8641/1
cd $root

cd vendor/aokp
pstest 8191/6
pstest 8521/5
cd $root

. build/envsetup.sh >/dev/null 2>&1
