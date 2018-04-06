LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := -DANDROID_NDK \
                -DDISABLE_IMPORTGL \
                -D__STDC_CONSTANT_MACROS \

LOCAL_SRC_FILES :=  amf.c \
                    hashswf.c \
                    log.c \
                    parseurl.c \
                    rtmp.c \
                    futil.c
					
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)
	
LOCAL_LDLIBS += -llog -landroid -lz -lm -ljnigraphics
#LOCAL_LDLIBS := -llog
LOCAL_MODULE    := libavrtmp

LOCAL_CPPFLAGS += -fexceptions

LOCAL_CPP_EXTENSION := .cc

include $(BUILD_SHARED_LIBRARY)
