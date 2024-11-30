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
#rm -rf vendor/lineage-priv
#git clone https://github.com/texascake/vendor -b 10 keymoment && cp -R keymoment/* vendor/ && rm -rf keymoment
