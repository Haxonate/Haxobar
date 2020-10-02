#import <UIKit/UIKit.h>
#define CGRectSetY(rect, y) CGRectMake(rect.origin.x, y, rect.size.width, rect.size.height)

NSInteger statusBarStyle, screenRoundness, appswitcherRoundness;
BOOL enabled, wantsHomeBarSB, wantsHomeBarLS, wantsRoundedAppSwitcher, wantsReduceRows, wantsRoundedCorners, wantsXButtons;
BOOL wantsCCGrabber, wantsProudLock, wantsHideSBCC,wantsLSShortcuts, wantsBatteryPercent, wantsiPadDock;
BOOL wantsiPadMultitasking;

%hook BSPlatform
- (NSInteger)homeButtonType {
    return 2;
}
%end

%hook _UIStatusBarVisualProvider_iOS
+ (Class)class {
    if (wantsRoundedCorners && screenRoundness > 15) return %c(_UIStatusBarVisualProvider_RoundedPad_ForcedCellular);
    return %c(_UIStatusBarVisualProvider_Pad_ForcedCellular);
}
%end

%hook CCUIHeaderPocketView
- (void)setFrame:(CGRect)frame {
    if (wantsRoundedCorners && screenRoundness > 15) %orig(CGRectSetY(frame, -20));
    else %orig(CGRectSetY(frame, -24));
}
%end

%hook SBFHomeGrabberSettings
- (BOOL)isEnabled {
    return wantsHomeBarSB;
}
%end

%hook CSTeachableMomentsContainerView
-(void)setHomeAffordanceContainerView:(UIView *)arg1{
    return;
}
%end

%hook MTLumaDodgePillSettings
- (void)setHeight:(double)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook UITraitCollection
- (CGFloat)displayCornerRadius {
    return appswitcherRoundness;
}
%end

%hook SBLockHardwareButtonActions
- (id)initWithHomeButtonType:(long long)arg1 proximitySensorManager:(id)arg2 {
    return %orig(1, arg2);
}
%end

%hook SBHomeHardwareButtonActions
- (id)initWitHomeButtonType:(long long)arg1 {
    return %orig(1);
}
%end

int applicationDidFinishLaunching = 2;

%hook SBPressGestureRecognizer
- (void)setAllowedPressTypes:(NSArray *)arg1 {
    NSArray *lockHome = @[@104, @101];
    NSArray *lockVol = @[@104, @102, @103];
    if ([arg1 isEqual:lockVol] && applicationDidFinishLaunching == 2) {
        %orig(lockHome);
        applicationDidFinishLaunching--;
        return;
    }
    %orig;
}
%end

%hook SBClickGestureRecognizer
- (void)addShortcutWithPressTypes:(id)arg1 {
    if (applicationDidFinishLaunching == 1) {
        applicationDidFinishLaunching--;
        return;
    }
    %orig;
}
%end

%hook SBHomeHardwareButton
- (id)initWithScreenshotGestureRecognizer:(id)arg1 homeButtonType:(long long)arg2 buttonActions:(id)arg3 gestureRecognizerConfiguration:(id)arg4 {
    return %orig(arg1,1,arg3,arg4);
}
- (id)initWithScreenshotGestureRecognizer:(id)arg1 homeButtonType:(long long)arg2 {
    return %orig(arg1,1);
}
%end

%hook SBLockHardwareButton
- (id)initWithScreenshotGestureRecognizer:(id)arg1 shutdownGestureRecognizer:(id)arg2 proximitySensorManager:(id)arg3 homeHardwareButton:(id)arg4 volumeHardwareButton:(id)arg5 buttonActions:(id)arg6 homeButtonType:(long long)arg7 createGestures:(_Bool)arg8 {
    return %orig(arg1,arg2,arg3,arg4,arg5,arg6,1,arg8);
}
- (id)initWithScreenshotGestureRecognizer:(id)arg1 shutdownGestureRecognizer:(id)arg2 proximitySensorManager:(id)arg3 homeHardwareButton:(id)arg4 volumeHardwareButton:(id)arg5 homeButtonType:(long long)arg6 {
    return %orig(arg1,arg2,arg3,arg4,arg5,1);
}
%end

%hook SBVolumeHardwareButton
- (id)initWithScreenshotGestureRecognizer:(id)arg1 shutdownGestureRecognizer:(id)arg2 homeButtonType:(long long)arg3 {
    return %orig(arg1,arg2,1);
}
%end
