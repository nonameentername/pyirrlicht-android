LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := pyirrlicht
LOCAL_MODULE_FILENAME := irrlicht
LOCAL_SRC_FILES := irrlicht_c.cpp
LOCAL_SHARED_LIBRARIES := irrlicht
LOCAL_LDLIBS := -lGLESv1_CM -ldl -llog
LOCAL_CFLAGS := -g -O0 -fno-inline -DANDROID_NDK -DDISABLE_IMPORTGL
include $(BUILD_SHARED_LIBRARY)

$(call import-module,irrlicht)
