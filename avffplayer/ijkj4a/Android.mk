LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CFLAGS += -std=c99

LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(realpath $(LOCAL_PATH))

LOCAL_SRC_FILES += j4a/j4a_allclasses.c
LOCAL_SRC_FILES += j4a/j4a_base.c
LOCAL_SRC_FILES += j4a/class/android/media/AudioTrack.c
LOCAL_SRC_FILES += j4a/class/android/media/MediaCodec.c
LOCAL_SRC_FILES += j4a/class/android/media/MediaFormat.c
LOCAL_SRC_FILES += j4a/class/android/media/PlaybackParams.c
LOCAL_SRC_FILES += j4a/class/android/os/Build.c
LOCAL_SRC_FILES += j4a/class/android/os/Bundle.c
LOCAL_SRC_FILES += j4a/class/java/nio/Buffer.c
LOCAL_SRC_FILES += j4a/class/java/nio/ByteBuffer.c
LOCAL_SRC_FILES += j4a/class/java/util/ArrayList.c
LOCAL_SRC_FILES += j4a/class/tv/danmaku/ijk/media/player/misc/IMediaDataSource.c
LOCAL_SRC_FILES += j4a/class/tv/danmaku/ijk/media/player/IjkMediaPlayer.c

LOCAL_SRC_FILES += j4au/class/android/media/AudioTrack.util.c
LOCAL_SRC_FILES += j4au/class/java/nio/ByteBuffer.util.c

LOCAL_MODULE := ijkj4a
include $(BUILD_STATIC_LIBRARY)

$(call import-module,android/cpufeatures)
