# symlinked from local_manifest repo
# runs pick script from external platform_manifest repo from UnicornButter

root=`pwd`

#Pull in linaro changes on gerrit
if [ -e platform_manifest/pick.sh ]; then
  cd platform_manifest
  ./pick.sh
fi

cd $root

#Pull in non-device cherries
cd frameworks/av
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_av refs/changes/34/4834/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_av refs/changes/35/4835/1 && git cherry-pick FETCH_HEAD
cd $root
cd frameworks/base
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/24/4724/3 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/38/4838/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/79/4779/20 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/frameworks_base refs/changes/59/4759/2 && git cherry-pick FETCH_HEAD
cd $root
cd frameworks/opt/telephony
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_opt_telephony refs/changes/00/29100/1 && git cherry-pick FETCH_HEAD
cd $root
cd packages/apps/ROMControl
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/25/4725/1 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/60/4760/3 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/75/4775/2 && git cherry-pick FETCH_HEAD
git fetch http://gerrit.sudoservers.com/AOKP/packages_apps_ROMControl refs/changes/87/4787/1 && git cherry-pick FETCH_HEAD
cd $root
