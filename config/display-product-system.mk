PRODUCT_PACKAGES += libdisplayconfig \
                    libqdMetaData \
                    libqdMetaData.system \
                    libgralloc.qti \
                    libdrm \
                    vendor.display.config@1.0 \
                    vendor.display.config@1.1 \
                    vendor.display.config@1.2 \
                    vendor.display.config@1.3 \
                    vendor.display.config@1.4 \
                    vendor.display.config@1.5 \
                    libsmomo.qti \
                    liblayerext.qti \
                    libsmomoconfig.qti \
                    libcomposerextn.qti \
                    libdisplayconfig.qti \
                    vendor.qti.hardware.display.config-V1-ndk \
                    vendor.qti.hardware.display.config-V2-ndk \
                    vendor.qti.hardware.display.config-V3-ndk \
                    vendor.qti.hardware.display.config-V4-ndk \
                    vendor.qti.hardware.display.config-V5-ndk \
                    vendor.qti.hardware.display.config-V6-ndk \
                    vendor.qti.hardware.display.config-V7-ndk \
                    vendor.qti.hardware.display.config-V8-ndk \
                    vendor.qti.hardware.display.config-V9-ndk \
                    vendor.qti.hardware.display.config-V10-ndk

SOONG_CONFIG_NAMESPACES += qtidisplaycommonsys
# Soong Keys
SOONG_CONFIG_qtidisplaycommonsys := displayconfig_enabled
# Soong Values
SOONG_CONFIG_qtidisplaycommonsys_displayconfig_enabled := false

ifeq ($(call is-vendor-board-platform,QCOM),true)
    SOONG_CONFIG_qtidisplaycommonsys_displayconfig_enabled := true
endif
