// Dawn
// Project Taeao
// Created by EthanRDoesMC


#pragma mark - Extensions
@interface UIView (Dawn)
-(void)setOverrideUserInterfaceStyle:(NSInteger)style;
@end

@interface UIApplication (Dawn)
+(void)_setDebugUserInterfaceStyleOverride:(NSInteger)style;
@end

#pragma mark - Interfaces
@interface NCNotificationViewControllerView : UIView
-(void)updateTraitOverride;
@end

@interface NCNotificationLongLookView : UIView
-(void)updateTraitOverride;
@end

@interface SBDockView : UIView
-(void)updateTraitOverride;
@end

@interface SBFloatingDockView : UIView
-(void)updateTraitOverride;
@end

@interface WGWidgetPlatterView : UIView
-(void)updateTraitOverride;
@end

@interface WGWidgetHostingViewController : UIViewController
-(void)updateTraitOverride;
@end

@interface _WGWidgetRemoteViewController : UIViewController
-(void)updateTraitOverride;
@end

@interface NCToggleControl : UIView
-(void)updateTraitOverride;
@end

@interface NCNotificationListCellActionButtonsView : UIView
-(void)updateTraitOverride;
@end

@interface SBFolderIconImageView : UIView
-(void)updateTraitOverride;
@end

@interface SBFloatyFolderView : UIView
-(void)updateTraitOverride;
@end

@interface CSNotificationAdjunctListViewController : UIViewController
-(void)updateTraitOverride;
@end

@interface UIInterfaceActionGroupView : UIView
-(void)updateTraitOverride;
@end

@interface SBHIconViewContextMenuWrapperViewController : UIViewController
-(void)updateTraitOverride;
@end

//@interface LAUIAuthenticationView : UIView
//-(void)updateTraitOverride;
//@end

#pragma mark - Preferences
#import <Cephei/HBPreferences.h>
HBPreferences *preferences;
NSInteger banners;
NSInteger dock;
NSInteger widgets;
NSInteger nctoggles;
NSInteger folders;
NSInteger keyboard;
NSInteger player;
NSInteger hsquickactions;
//NSInteger faceid;
NSInteger apps;

#pragma mark - Notifications/Banners
//Banner
%hook NCNotificationViewControllerView
%new
-(void)updateTraitOverride {
    [self setOverrideUserInterfaceStyle:banners];
}
-(id)initWithFrame:(CGRect)arg1 {
    if ((self = %orig)) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(updateTraitOverride) name:@"com.ethanrdoesmc.dawn/override" object:nil];
        [self setOverrideUserInterfaceStyle:banners];
    }
    return self;
}
-(void)didMoveToWindow {
    if (banners > 0) {
        [self setOverrideUserInterfaceStyle:banners];
    }
    %orig;

}
%end
//Long Look
%hook NCNotificationLongLookView
%new
-(void)updateTraitOverride {
    [self setOverrideUserInterfaceStyle:banners];
}
-(id)initWithFrame:(CGRect)arg1 {
    if ((self = %orig)) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(updateTraitOverride) name:@"com.ethanrdoesmc.dawn/override" object:nil];
        [self setOverrideUserInterfaceStyle:banners];
    }
    return self;
}
-(void)didMoveToWindow {
    if (banners > 0) {
        [self setOverrideUserInterfaceStyle:banners];
    }
    %orig;

}
%end

#pragma mark - Dock
%hook SBDockView
%new
-(void)updateTraitOverride {
    [self setOverrideUserInterfaceStyle:dock];
}
-(id)initWithFrame:(CGRect)arg1 {
    if ((self = %orig)) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(updateTraitOverride) name:@"com.ethanrdoesmc.dawn/override" object:nil];
        [self setOverrideUserInterfaceStyle:dock];
    }
    return self;
}
-(void)didMoveToWindow {
    if (dock > 0) {
        [self setOverrideUserInterfaceStyle:dock];
    }
    %orig;
}
%end

//iPadOS
%hook SBFloatingDockView
%new
-(void)updateTraitOverride {
    [self setOverrideUserInterfaceStyle:dock];
}
-(id)initWithFrame:(CGRect)arg1 {
    if ((self = %orig)) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(updateTraitOverride) name:@"com.ethanrdoesmc.dawn/override" object:nil];
        [self setOverrideUserInterfaceStyle:dock];
    }
    return self;
}
-(void)didMoveToWindow {
    if (dock > 0) {
        [self setOverrideUserInterfaceStyle:dock];
    }
    %orig;
}
%end
#pragma mark - Widgets
%hook WGWidgetPlatterView
%new
-(void)updateTraitOverride {
    [self setOverrideUserInterfaceStyle:widgets];
}
-(id)initWithFrame:(CGRect)arg1 {
    if ((self = %orig)) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(updateTraitOverride) name:@"com.ethanrdoesmc.dawn/override" object:nil];
        [self setOverrideUserInterfaceStyle:widgets];
    }
    return self;
}
-(void)didMoveToWindow {
    if (widgets > 0) {
        [self setOverrideUserInterfaceStyle:widgets];
    }
    %orig;
}
%end

%hook WGWidgetHostingViewController
%new
-(void)updateTraitOverride {
    if (@available(iOS 13, *)) {
        [self setOverrideUserInterfaceStyle:widgets];
    }
}
-(id)init {
    if ((self = %orig)) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(updateTraitOverride) name:@"com.ethanrdoesmc.dawn/override" object:nil];
        if (@available(iOS 13, *)) {
            [self setOverrideUserInterfaceStyle:widgets];
        }
    }
    return self;
}
-(void)viewDidLoad {
    if (widgets > 0) {
        if (@available(iOS 13, *)) {
            [self setOverrideUserInterfaceStyle:widgets];
        }
    }
    %orig;
}
%end

%hook _WGWidgetRemoteViewController
%new
-(void)updateTraitOverride {
    if (@available(iOS 13, *)) {
        [self setOverrideUserInterfaceStyle:widgets];
    }
}
-(id)init {
    if ((self = %orig)) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(updateTraitOverride) name:@"com.ethanrdoesmc.dawn/override" object:nil];
        if (@available(iOS 13, *)) {
            [self setOverrideUserInterfaceStyle:widgets];
        }
    }
    return self;
}
-(void)viewDidLoad {
    if (widgets > 0) {
        if (@available(iOS 13, *)) {
            [self setOverrideUserInterfaceStyle:widgets];
        }
    }
    %orig;
}
%end

#pragma mark - NC Buttons
//Small Buttons
%hook NCToggleControl
%new
-(void)updateTraitOverride {
    [self setOverrideUserInterfaceStyle:nctoggles];
}
-(id)initWithFrame:(CGRect)arg1 {
    if ((self = %orig)) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(updateTraitOverride) name:@"com.ethanrdoesmc.dawn/override" object:nil];
        [self setOverrideUserInterfaceStyle:nctoggles];
    }
    return self;
}
-(void)didMoveToWindow {
    if (nctoggles > 0) {
        [self setOverrideUserInterfaceStyle:nctoggles];
    }
    %orig;
}
%end
//Notification Buttons
%hook NCNotificationListCellActionButtonsView
%new
-(void)updateTraitOverride {
    [self setOverrideUserInterfaceStyle:nctoggles];
}
-(id)initWithFrame:(CGRect)arg1 {
    if ((self = %orig)) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(updateTraitOverride) name:@"com.ethanrdoesmc.dawn/override" object:nil];
        [self setOverrideUserInterfaceStyle:nctoggles];
    }
    return self;
}
-(void)didMoveToWindow {
    if (nctoggles > 0) {
        [self setOverrideUserInterfaceStyle:nctoggles];
    }
    %orig;
}
%end

#pragma mark - Folders
//Icon
%hook SBFolderIconImageView
%new
-(void)updateTraitOverride {
    [self setOverrideUserInterfaceStyle:folders];
}
-(id)initWithFrame:(CGRect)arg1 {
    if ((self = %orig)) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(updateTraitOverride) name:@"com.ethanrdoesmc.dawn/override" object:nil];
        [self setOverrideUserInterfaceStyle:folders];
    }
    return self;
}
-(void)didMoveToWindow {
    if (folders > 0) {
        [self setOverrideUserInterfaceStyle:folders];
    }
    %orig;
}
%end
//Fullscreen
%hook SBFloatyFolderView
%new
-(void)updateTraitOverride {
    [self setOverrideUserInterfaceStyle:folders];
}
-(id)initWithFrame:(CGRect)arg1 {
    if ((self = %orig)) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(updateTraitOverride) name:@"com.ethanrdoesmc.dawn/override" object:nil];
        [self setOverrideUserInterfaceStyle:folders];
    }
    return self;
}
-(void)didMoveToWindow {
    if (folders > 0) {
        [self setOverrideUserInterfaceStyle:folders];
    }
    %orig;
}
%end

#pragma mark - Keyboard
%hook UITextInputTraits
- (long long)keyboardAppearance {
    if ( keyboard > 0 ) {
        return keyboard;
    }
    return %orig;
}
%end

#pragma mark - Music Player
%hook CSNotificationAdjunctListViewController
%new
-(void)updateTraitOverride {
    if (@available(iOS 13, *)) {
        [self setOverrideUserInterfaceStyle:player];
    }
}
-(id)init {
    if ((self = %orig)) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(updateTraitOverride) name:@"com.ethanrdoesmc.dawn/override" object:nil];
        if (@available(iOS 13, *)) {
            [self setOverrideUserInterfaceStyle:player];
        }
    }
    return self;
}
-(void)viewDidLoad {
    if (player > 0) {
        if (@available(iOS 13, *)) {
            [self setOverrideUserInterfaceStyle:player];
        }
    }
    %orig;
}
%end

#pragma mark - Quick Actions
%hook UIInterfaceActionGroupView
%new
-(void)updateTraitOverride {
    [self setOverrideUserInterfaceStyle:hsquickactions];
}
-(id)initWithFrame:(CGRect)arg1 {
    if ((self = %orig)) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(updateTraitOverride) name:@"com.ethanrdoesmc.dawn/override" object:nil];
        [self setOverrideUserInterfaceStyle:hsquickactions];
    }
    return self;
}
-(void)didMoveToWindow {
    if (hsquickactions > 0) {
        [self setOverrideUserInterfaceStyle:hsquickactions];
    }
    %orig;
}
%end

%hook SBHIconViewContextMenuWrapperViewController
%new
-(void)updateTraitOverride {
    if (@available(iOS 13, *)) {
        [self setOverrideUserInterfaceStyle:hsquickactions];
    }
}
-(id)init {
    if ((self = %orig)) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(updateTraitOverride) name:@"com.ethanrdoesmc.dawn/override" object:nil];
        if (@available(iOS 13, *)) {
            [self setOverrideUserInterfaceStyle:hsquickactions];
        }
    }
    return self;
}
-(void)viewDidLoad {
    if (hsquickactions > 0) {
        if (@available(iOS 13, *)) {
            [self setOverrideUserInterfaceStyle:hsquickactions];
        }
    }
    %orig;
}
%end

#pragma mark - Face ID | On Hold
//%hook LAUIAuthenticationView
//%new
//-(void)updateTraitOverride {
//    [self setOverrideUserInterfaceStyle:faceid];
//}
//-(id)initWithFrame:(CGRect)arg1 {
//    if ((self = %orig)) {
//        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(updateTraitOverride) name:@"com.ethanrdoesmc.dawn/override" object:nil];
//        [self setOverrideUserInterfaceStyle:faceid];
//    }
//    return self;
//}
//-(void)didMoveToWindow {
//    if (faceid > 0) {
//        [self setOverrideUserInterfaceStyle:faceid];
//    }
//    %orig;
//}
//%end

#pragma mark - Applications
%hook UIApplication
%new
-(void)updateTraitOverride {
    if (@available(iOS 13, *)) {
        [UIApplication _setDebugUserInterfaceStyleOverride:apps];
    }
}
-(id)init {
    if ((self = %orig)) {
        NSArray *args = [[NSClassFromString(@"NSProcessInfo") processInfo] arguments];
        if (args.count != 0) {
            NSString *execPath = args[0];
            if (execPath && [execPath rangeOfString:@"Application"].location != NSNotFound) {
                [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(updateTraitOverride) name:@"com.ethanrdoesmc.dawn/override" object:nil];
                if (@available(iOS 13, *)) {
                    [UIApplication _setDebugUserInterfaceStyleOverride:apps];
                }
            }
        }
    }
    return self;
}
%end

#pragma mark - Settings Manager
void settingsChanged() {

    [preferences registerInteger:&banners default:0 forKey:@"banners"];

    [preferences registerInteger:&dock default:0 forKey:@"dock"];

    [preferences registerInteger:&widgets default:0 forKey:@"widgets"];

    [preferences registerInteger:&nctoggles default:0 forKey:@"nctoggles"];

    [preferences registerInteger:&folders default:0 forKey:@"folders"];

    [preferences registerInteger:&keyboard default:0 forKey:@"keyboard"];

    [preferences registerInteger:&player default:0 forKey:@"player"];

    [preferences registerInteger:&hsquickactions default:0 forKey:@"hsquickactions"];

    //[preferences registerInteger:&faceid default:0 forKey:@"faceid"];

    [preferences registerInteger:&apps default:0 forKey:@"apps"];

    [NSNotificationCenter.defaultCenter postNotificationName:@"com.ethanrdoesmc.dawn/override" object:nil];
}

#pragma mark - Constructor
%ctor {
    if ([[[[NSProcessInfo processInfo] arguments] objectAtIndex:0] containsString:@"/Application"] || [[[[NSProcessInfo processInfo] arguments] objectAtIndex:0] containsString:@"SpringBoard.app"]) {
        preferences = [[HBPreferences alloc] initWithIdentifier:@"com.ethanrdoesmc.dawn"];
        settingsChanged();
        CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)settingsChanged, CFSTR("com.ethanrdoesmc.dawn/settingsChanged"), NULL, kNilOptions);
        %init;
    }
}
