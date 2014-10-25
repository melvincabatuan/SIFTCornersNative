LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

OPENCV_LIB_TYPE:=STATIC
OPENCV_INSTALL_MODULES:=on

include /home/cobalt/Android/OpenCV-2.4.9-android-sdk/sdk/native/jni/OpenCV.mk

LOCAL_MODULE    := ImageProcessing
LOCAL_CFLAGS    := -Werror -O3 -ffast-math
LOCAL_LDLIBS +=  -llog -ldl
LOCAL_SRC_FILES := nonfree_init.cpp \
                    sift.cpp \
                    ImageProcessing.cpp
include $(BUILD_SHARED_LIBRARY)
