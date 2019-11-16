#
# Copyright (C) 2019 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := NX627J

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := NX627J
PRODUCT_NAME := omni_NX627J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := nubia Z20
PRODUCT_MANUFACTURER := nubia

PRODUCT_LOCALES := zh_CN

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31 \
    persist.sys.language=zh \
    persist.sys.country=CN \
    ro.product.locale.language=zh \
    ro.product.locale.region=CN \
    ro.build.version.release=9 \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.sf.lcd_density=480 \
    persist.sys.isUsbOtgEnabled=true \
    ro.carrier=unknown \
    persist.sys.timezone=Asia/Shanghai \
    ro.product.locale.region=CN \
    ro.treble.enabled=true \
    vendor.gatekeeper.disable_spu=true

TARGET_VENDOR_PRODUCT_NAME := NX627J
TARGET_VENDOR_DEVICE_NAME := NX627J
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=NX627J \
    BUILD_PRODUCT=NX627J \
    PRODUCT_NAME=NX627J


