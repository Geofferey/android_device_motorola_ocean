LOCAL_PATH := $(call my-dir)

# Init scripts

include $(CLEAR_VARS)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.mmi.hab.sh
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.mmi.hab.sh
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := bootdebi
LOCAL_MODULE_TAGS  := optional eng
$(shell mkdir -p $(TARGET_OUT_ETC)/bootdebi/)
#LOCAL_MODULE_CLASS := ETC
$(shell cp -rf $(LOCAL_PATH)/etc/bootdebi/* $(TARGET_OUT_ETC)/bootdebi)
$(shell chmod -R 0755 $(TARGET_OUT_ETC)/bootdebi/scripts/)
$(shell mkdir -p $(TARGET_OUT)/xbin)
$(shell cp $(LOCAL_PATH)/etc/busybox $(TARGET_OUT)/xbin)
$(shell ln -sf /system/etc/bootdebi/scripts/bootdebi $(TARGET_OUT)/xbin/bootdebi)
$(shell ln -sf /system/etc/bootdebi/scripts/bootdebi_login $(TARGET_OUT)/xbin/login)
$(shell ln -sf /system/etc/bootdebi/scripts/bootdebi-config $(TARGET_OUT)/xbin/bootdebi-config)
#LOCAL_SRC_FILES    := etc/bootdebi
#include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := S999bootdebi
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/S999bootdebi
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/init.d
include $(BUILD_PREBUILT)
