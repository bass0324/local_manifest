# symlinked from local_manifest repo
# Run from root of source tree
# runs pick script from external platform_manifest repo from UnicornButter

# check if at root
if [ -e build/envsetup.sh ]; then
  buildtop=`pwd`
  cd $buildtop
  #run all picks
  all
else
  curdir=`pwd`
fi

# Pull in linaro changes on gerrit
# if using the pub manifest
if [ -e platform_manifest/pick.sh ]; then
  cd platform_manifest
  ./pick.sh
fi

if [ $curdir = "frameworks/av" ]; then
  fw_av
elif [ $curdir = "frameworks/base" ]; then
  fw_base
#elif [ $curdir = "frameworks/opt/telephony" ]; then
#  fw_opt_telephony
elif [ $curdir = "packages/apps/Mms" ]; then
  mms
elif [ $curdir = "packages/apps/ROMControl" ]; then
  romcontrol
elif [ $curdir = "packages/apps/Settings" ]; then
  settings
else
  echo " Not in a pickable repository..."
  echo " exiting..."
  exit
fi


# Pick functions

# ALL
all() {
  cd $buildtop
  cd frameworks/av
  fw_av
  cd $buildtop
  cd frameworks/base
  fw_base
  cd $buildtop
  cd frameworks/opt/telephony
  fw_opt_telephony
  cd $buildtop
  cd packages/apps/Mms
  mms
  cd $buildtop
  cd packages/apps/ROMControl
  romcontrol
  cd $buildtop
  cd packages/apps/Settings
  settings
  cd $buildtop
  echo " picks complete...check for conflicts above and fix as neccessary.
}

# Individuals

fw_av() {
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_av refs/changes/34/4834/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_av refs/changes/35/4835/1 && git cherry-pick FETCH_HEAD
}

fw_base() {
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/24/4724/3 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/38/4838/2 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/79/4779/22 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/64/4864/4 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/68/4868/3 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/69/4869/4 && git cherry-pick FETCH_HEAD
}

fw_opt_telephony() {
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_opt_telephony refs/changes/00/29100/1 && git cherry-pick FETCH_HEAD
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_opt_telephony refs/changes/06/29306/2 && git cherry-pick FETCH_HEAD
}

mms() {
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Mms refs/changes/60/4560/10 && git cherry-pick FETCH_HEAD
}

romcontrol() {
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/25/4725/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/75/4775/2 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/87/4787/1 && git cherry-pick FETCH_HEAD
}

settings() {
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_Settings refs/changes/65/4865/1 && git cherry-pick FETCH_HEAD
}
