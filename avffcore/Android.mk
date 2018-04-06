LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := avffcore

 ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
                      LOCAL_SRC_FILES := lib/libsffcore.so
                    else ifeq ($(TARGET_ARCH_ABI),arm64-v8a)
                       LOCAL_SRC_FILES := lib/arm64/libsffcore.so
                    endif



include $(PREBUILT_SHARED_LIBRARY)