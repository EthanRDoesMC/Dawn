#import "DawnRootListController.h"
@implementation DawnRootListController

#pragma mark - Constants

+ (NSString *)hb_specifierPlist {
    return @"Root";
}

//+ (NSString *)hb_shareText {
//return @"Dawn";
//}

//+ (NSURL *)hb_shareURL {
//return [NSURL URLWithString:@"https://hbang.github.io/libcephei/"];
//}

-(void)loadView {
    [super loadView];
    UIImageView *dawnBackgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:@"/Library/PreferenceBundles/DawnSettings.bundle/dawnBackground.jpeg"]];
    [dawnBackgroundImageView setFrame:self.table.frame];
    dawnBackgroundImageView.alpha = 0.00;
    self.table.backgroundView = dawnBackgroundImageView;
    [UIView animateWithDuration:2.0f animations:^{
        dawnBackgroundImageView.alpha = 1.00;
    } completion:nil];
    if (@available(iOS 13, *)) {
        [self setOverrideUserInterfaceStyle:2];
        //[self.navigationController setOverrideUserInterfaceStyle:2];
    }
    if (@available(iOS 11, *)) {
      self.navigationController.navigationBar.prefersLargeTitles = false;
      self.navigationController.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeNever;
    }
    //[PSSegmentTableCell appearance].backgroundColor = [UIColor clearColor];
}

- (instancetype)init {
    self = [super init];

    if (self) {
        HBAppearanceSettings *dawnAppearanceSettings = [[HBAppearanceSettings alloc] init];
        dawnAppearanceSettings.navigationBarTintColor = [UIColor whiteColor];
        dawnAppearanceSettings.navigationBarTitleColor = [UIColor whiteColor];
        dawnAppearanceSettings.navigationBarBackgroundColor = [UIColor blackColor];
        dawnAppearanceSettings.statusBarTintColor = [UIColor whiteColor];
        dawnAppearanceSettings.translucentNavigationBar = YES;
        //dawnAppearanceSettings.largeTitleStyle = HBAppearanceSettingsLargeTitleStyleNever;
        self.hb_appearanceSettings = dawnAppearanceSettings;
    }

    return self;
}


-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    if (@available(iOS 13, *)) {
        [self setOverrideUserInterfaceStyle:0];
        //[self.navigationController setOverrideUserInterfaceStyle:2];
    }
    if (@available(iOS 11, *)) {
      self.navigationController.navigationBar.prefersLargeTitles = true;
      self.navigationController.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeAutomatic;
    }
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    if (@available(iOS 13, *)) {
        [self setOverrideUserInterfaceStyle:2];
        //[self.navigationController setOverrideUserInterfaceStyle:2];
    }
    if (@available(iOS 11, *)) {
      self.navigationController.navigationBar.prefersLargeTitles = false;
      self.navigationController.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeNever;
    }
}
@end


@implementation DawnSegmentTableCell

-(void)didMoveToWindow {
    [super didMoveToWindow];
    self.backgroundColor = [UIColor clearColor];
}

-(void)setBackgroundColor:(UIColor *)color {
    [super setBackgroundColor:[UIColor clearColor]];
}
@end
