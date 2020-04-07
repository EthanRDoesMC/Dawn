include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = DawnSettings

DawnSettings_FILES = DawnRootListController.m DawnTranslationListController.m
DawnSettings_INSTALL_PATH = /Library/PreferenceBundles
DawnSettings_FRAMEWORKS = UIKit
DawnSettings_PRIVATE_FRAMEWORKS = Preferences
DawnSettings_EXTRA_FRAMEWORKS += Cephei CepheiPrefs
DawnSettings_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/DawnSettings.plist$(ECHO_END)
