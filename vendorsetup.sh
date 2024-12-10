# Audio
rm -rf hardware/qcom-caf/msm8998/audio
git clone --depth=1 https://github.com/lineageX00T/hardware_qcom-caf_msm8998_audio hardware/qcom-caf/msm8998/audio

# Kernel
rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/texascake/kernel_asus_sdm660 -b tom/hmp kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU/docs
rm -rf kernel/asus/sdm660/KernelSU/scripts
rm -rf kernel/asus/sdm660/KernelSU/userspace
rm -rf kernel/asus/sdm660/KernelSU/website

# Vendor
rm -rf vendor/asus
git clone --depth=1 https://github.com/Tiktodz/vendor_asus -b lineage-17.1 vendor/asus

# Vendor keys
rm -rf vendor/lineage-priv
git clone https://github.com/texascake/vendor -b 10 keymoment && cp -R keymoment/* vendor/ && rm -rf keymoment

cd vendor/qcom/opensource/commonsys/packages/apps/Bluetooth
git revert 77b2942935a58a36e00821eb0836f90fb02edee7 --no-edit
cd ../../../../../../..

cd vendor/qcom/opensource/commonsys/system/bt
git revert 70750edace71473e69cca83023972066e8233d2e --no-edit
cd ../../../../../..

cd system/bt
git revert 26c752cae91c2483bdbc16c49d5f62dffb4a784a --no-edit
cd ../..

cd packages/apps/Bluetooth
git revert f9b4d83aff0d3dac5d73676b251fd1e14c5bf682 --no-edit
cd ../../..

rm -rf frameworks/base
git clone --depth=1 https://github.com/texascake/android_frameworks_base -b lineage-17.1 frameworks/base

rm -rf vendor/lineage
git clone --depth=1 https://github.com/lineageX00T/android_vendor_lineage -b rev vendor/lineage

export TZ=Asia/Jakarta
