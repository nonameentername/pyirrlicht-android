LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := pyirrlicht
LOCAL_SRC_FILES := irrlicht_c.cpp
LOCAL_SHARED_LIBRARIES := libpython2.7-prebuilt irrlicht
LOCAL_LDLIBS := -ldl -llog
LOCAL_CFLAGS := -g -O0 -fno-inline -DANDROID_NDK -DDISABLE_IMPORTGL
include $(BUILD_SHARED_LIBRARY)

$(call import-module,python)
$(call import-module,irrlicht)
