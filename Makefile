ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = 0x00

#Add DobbyHook
$(TWEAK_NAME)_LDFLAGS = DobbyHookJB.a

$(TWEAK_NAME)_FILES = tweak.m

include $(THEOS_MAKE_PATH)/tweak.mk