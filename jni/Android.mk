LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include common.mk

LOCAL_MODULE := leveldb
LOCAL_C_INCLUDES := $(C_INCLUDES)
LOCAL_CPP_EXTENSION := .cc
LOCAL_CFLAGS := -DLEVELDB_PLATFORM_ANDROID -std=gnu++0x
LOCAL_SRC_FILES := $(SOURCES:%.cc=../%.cc)
LOCAL_LDLIBS +=  -llog -ldl


include $(BUILD_SHARED_LIBRARY)