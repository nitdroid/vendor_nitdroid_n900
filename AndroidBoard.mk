LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := omap_twl4030keypad.kcm
include $(BUILD_KEY_CHAR_MAP)

file := $(TARGET_OUT_KEYLAYOUT)/omap_twl4030keypad.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/omap_twl4030keypad.kl | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_OUT_KEYLAYOUT)/triton2-pwrbutton.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/triton2-pwrbutton.kl | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.rc | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.nokia.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.nokia.rc | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/system/etc/vold.conf
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/etc/vold.conf | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/system/etc/asound.conf
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/etc/asound.conf | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/system/etc/init.nokia.sh
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/etc/init.nokia.sh | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/system/etc/dhcpcd/dhcpcd.conf
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/etc/dhcpcd/dhcpcd.conf | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/system/etc/wifi/wpa_supplicant.conf
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/etc/wifi/wpa_supplicant.conf | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/system/bin/load_modules.sh
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/load_modules.sh | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/system/bin/batt_mon
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/batt_mon | $(ACP)
	$(transform-prebuilt-to-target)

#file := $(TARGET_ROOT_OUT)/system/lib/modules/tsc2005.ko
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/tsc2005.ko | $(ACP)
#	$(transform-prebuilt-to-target)

#file := $(TARGET_ROOT_OUT)/system/lib/modules/wl12xx.ko
#ALL_PREBUILT += $(file)
#$(file) : $(LOCAL_PATH)/wl12xx.ko | $(ACP)
#	$(transform-prebuilt-to-target)