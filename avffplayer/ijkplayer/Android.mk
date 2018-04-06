LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
LOCAL_CFLAGS += -mfloat-abi=soft
endif

LOCAL_CFLAGS += -std=c99
LOCAL_LDLIBS += -llog -landroid -lOpenSLES -lEGL -lGLESv2

LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(realpath $(LOCAL_PATH)/..)
LOCAL_C_INCLUDES += $(MY_APP_FFMPEG_INCLUDE_PATH)
LOCAL_C_INCLUDES += $(realpath $(LOCAL_PATH)/../ijkyuv/include)
LOCAL_C_INCLUDES += $(realpath $(LOCAL_PATH)/../ijkj4a)
LOCAL_SRC_FILES += ff_cmdutils.c
LOCAL_SRC_FILES += ff_ffplay.c
LOCAL_SRC_FILES += ff_ffpipeline.c
LOCAL_SRC_FILES += ff_ffpipenode.c
LOCAL_SRC_FILES += ijkmeta.c
LOCAL_SRC_FILES += ijkplayer.c
LOCAL_SRC_FILES += pipeline/ffpipeline_ffplay.c
LOCAL_SRC_FILES += pipeline/ffpipenode_ffplay_vdec.c
LOCAL_SRC_FILES += android/ffmpeg_api_jni.c
LOCAL_SRC_FILES += android/ijkplayer_android.c
LOCAL_SRC_FILES += android/ijkplayer_jni.c
LOCAL_SRC_FILES += android/pipeline/ffpipeline_android.c
LOCAL_SRC_FILES += android/pipeline/ffpipenode_android_mediacodec_vdec.c
LOCAL_SRC_FILES += ijkavformat/allformats.c
LOCAL_SRC_FILES += ijkavformat/ijklivehook.c
LOCAL_SRC_FILES += ijkavformat/ijkmediadatasource.c
LOCAL_SRC_FILES  += ijkavformat/ijkasync.c
LOCAL_SRC_FILES  += ijkavformat/ijkurlhook.c
LOCAL_SRC_FILES  += ijkavformat/ijklongurl.c
LOCAL_SRC_FILES  += ijkavformat/ijksegment.c
LOCAL_SRC_FILES += ../ijksdl/ijksdl_aout.c
LOCAL_SRC_FILES += ../ijksdl/ijksdl_audio.c
LOCAL_SRC_FILES += ../ijksdl/ijksdl_egl.c
LOCAL_SRC_FILES += ../ijksdl/ijksdl_error.c
LOCAL_SRC_FILES += ../ijksdl/ijksdl_mutex.c
LOCAL_SRC_FILES += ../ijksdl/ijksdl_stdinc.c
LOCAL_SRC_FILES += ../ijksdl/ijksdl_thread.c
LOCAL_SRC_FILES += ../ijksdl/ijksdl_timer.c
LOCAL_SRC_FILES += ../ijksdl/ijksdl_vout.c
LOCAL_SRC_FILES += ../ijksdl/gles2/color.c
LOCAL_SRC_FILES += ../ijksdl/gles2/common.c
LOCAL_SRC_FILES += ../ijksdl/gles2/renderer.c
LOCAL_SRC_FILES += ../ijksdl/gles2/renderer_rgb.c
LOCAL_SRC_FILES += ../ijksdl/gles2/renderer_yuv420p.c
LOCAL_SRC_FILES += ../ijksdl/gles2/renderer_yuv444p10le.c
LOCAL_SRC_FILES += ../ijksdl/gles2/shader.c
LOCAL_SRC_FILES += ../ijksdl/gles2/fsh/rgb.fsh.c
LOCAL_SRC_FILES += ../ijksdl/gles2/fsh/yuv420p.fsh.c
LOCAL_SRC_FILES += ../ijksdl/gles2/fsh/yuv444p10le.fsh.c
LOCAL_SRC_FILES += ../ijksdl/gles2/vsh/mvp.vsh.c
LOCAL_SRC_FILES += ../ijksdl/dummy/ijksdl_vout_dummy.c
LOCAL_SRC_FILES += ../ijksdl/ffmpeg/ijksdl_vout_overlay_ffmpeg.c
LOCAL_SRC_FILES += ../ijksdl/ffmpeg/abi_all/image_convert.c
LOCAL_SRC_FILES += ../ijksdl/android/android_audiotrack.c
LOCAL_SRC_FILES += ../ijksdl/android/android_nativewindow.c
LOCAL_SRC_FILES += ../ijksdl/android/ijksdl_android_jni.c
LOCAL_SRC_FILES += ../ijksdl/android/ijksdl_aout_android_audiotrack.c
LOCAL_SRC_FILES += ../ijksdl/android/ijksdl_aout_android_opensles.c
LOCAL_SRC_FILES += ../ijksdl/android/ijksdl_codec_android_mediacodec_dummy.c
LOCAL_SRC_FILES += ../ijksdl/android/ijksdl_codec_android_mediacodec_internal.c
LOCAL_SRC_FILES += ../ijksdl/android/ijksdl_codec_android_mediacodec_java.c
LOCAL_SRC_FILES += ../ijksdl/android/ijksdl_codec_android_mediacodec.c
LOCAL_SRC_FILES += ../ijksdl/android/ijksdl_codec_android_mediadef.c
LOCAL_SRC_FILES += ../ijksdl/android/ijksdl_codec_android_mediaformat_java.c
LOCAL_SRC_FILES += ../ijksdl/android/ijksdl_codec_android_mediaformat.c
LOCAL_SRC_FILES += ../ijksdl/android/ijksdl_vout_android_nativewindow.c
LOCAL_SRC_FILES += ../ijksdl/android/ijksdl_vout_android_surface.c
LOCAL_SRC_FILES += ../ijksdl/android/ijksdl_vout_overlay_android_mediacodec.c


LOCAL_SHARED_LIBRARIES := avffcore ijkj4a
LOCAL_STATIC_LIBRARIES := cpufeatures yuv_static

LOCAL_MODULE := avffplayer

#VERSION_SH  = $(LOCAL_PATH)/version.sh
#VERSION_H   = ijkversion.h
#$(info $(shell ($(VERSION_SH) $(LOCAL_PATH) $(VERSION_H))))

include $(BUILD_SHARED_LIBRARY)
$(call import-module,android/cpufeatures)