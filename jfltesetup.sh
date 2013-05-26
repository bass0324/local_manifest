# Run from root of source tree

root=`pwd`
cd $root

# In order to use pstest must be in build environment
. build/envsetup.sh >/dev/null 2>&1

cd build
pstest 7717/2
pstest 8557/9
cd $root

cd device/samsung/jf-common
pstest 8577/1
cd $root

cd device/samsung/msm8960-common
pstest 8579/1
patest 8580/1
cd $root

cd frameworks/opt/telephony
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_opt_telephony refs/changes/36/37936/31 && git cherry-pick FETCH_HEAD
cd $root

cd vendor/samsung
pstest 8208/1
pstest 8519/4
pstest 8566/1
cd $root

cd vendor/aokp
pstest 8191/2
pstest 8521/5
pstest 8567/1
cd $root
