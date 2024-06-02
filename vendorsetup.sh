echo 'Starting to clone stuffs needed to build for marble'

# Device Common Tree
echo 'Cloning Device Common Tree'
git clone https://github.com/poco-f5-mable/device_xiaomi_sm8450-common.git -b Rising-14 device/xiaomi/sm8450-common

# Vendor
echo 'Cloning Vendor Tree'
git clone https://github.com/poco-f5-mable/vendor_xiaomi_marble.git -b lineage-21 vendor/xiaomi/marble

echo 'Cloning Vendor Common Tree'
git clone https://github.com/poco-f5-mable/vendor_xiaomi_sm8450-common.git -b lineage-21 vendor/xiaomi/sm8450-common

# Kernel
echo 'Cloning Kernel Tree'
git clone --depth=1 --recursive https://github.com/poco-f5-mable/android_kernel_xiaomi_sm8450 -b lineage-21 kernel/xiaomi/sm8450
git clone --depth=1 --recursive https://github.com/poco-f5-mable/android_kernel_xiaomi_sm8450-modules.git -b lineage-21 kernel/xiaomi/sm8450-modules
git clone --depth=1 --recursive https://github.com/poco-f5-mable/android_kernel_xiaomi_sm8450-devicetrees -b lineage-21 kernel/xiaomi/sm8450-devicetrees

# Xiaomi hardware
echo 'Cloning hardware xiaomi'
rm -rf hardware/xiaomi && git clone https://github.com/poco-f5-mable/hardware_xiaomi -b lineage-21 hardware/xiaomi

# Display
echo 'Cloning Hardware Display Tree'
rm -rf hardware/qcom-caf/sm8450/display && git clone https://github.com/poco-f5-mable/hardware_qcom_display -b lineage-21 hardware/qcom-caf/sm8450/display


# Camera
echo 'Cloning MemeCamera Tree'
git clone https://gitlab.com/marble9121630/android_device_xiaomi_miuicamera-marble.git -b ursa device/xiaomi/miuicamera-marble
git clone https://gitlab.com/marble9121630/android_vendor_xiaomi_miuicamera-marble.git -b ursa vendor/xiaomi/miuicamera-marble

# BCR
git clone --depth=1 https://github.com/kenway214/vendor_bcr.git -b main vendor/bcr

# Signature Keys
git clone --depth=1 https://github.com/poco-f5/priv_keys.git vendor/xiaomi/priv-keys

echo 'delete vendorsetup.sh from device tree once this is done'