DEBUG=0
FINALPACKAGE=1
include $(THEOS)/makefiles/common.mk

export ARCHS = arm64 arm64e
TWEAK_NAME = gestures
gestures_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += gestues13
include $(THEOS_MAKE_PATH)/aggregate.mk
