LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.nfc@1.0-impl
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := Nfc.cpp
LOCAL_SHARED_LIBRARIES := liblog libcutils libhardware libhwbinder libbase libcutils libutils libhidl android.hardware.nfc@1.0
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE := android.hardware.nfc@1.0-service
LOCAL_INIT_RC := android.hardware.nfc@1.0-service.rc
LOCAL_SRC_FILES := \
	service.cpp \

LOCAL_SHARED_LIBRARIES := \
	liblog \
	libcutils \
	libdl \
	libbase \
	libutils \
	libhardware_legacy \
	libhardware \

LOCAL_SHARED_LIBRARIES += \
	libhwbinder \
	libhidl \
	android.hardware.nfc@1.0 \

include $(BUILD_EXECUTABLE)