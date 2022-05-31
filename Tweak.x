#import "Tweak.h" // создаём отдельный файл чтобы в дальнейшем главный код не был захламлён тем, что можно перекинуть в хеддеры, удаляем всё импорты кроме хеддера, ибо всё будет там

%hook BSPlatform
- (NSInteger)homeButtonType {
    if (enabled) { // наша переменная, которая включает/выключает твик 
    return 2;
    }
}
%end

%hook _UIStatusBarVisualProvider_iOS
+ (Class)class {
    if (enabled) {
    if (wantsRoundedCorners && screenRoundness > 15) return %c(_UIStatusBarVisualProvider_RoundedPad_ForcedCellular);
    return %c(_UIStatusBarVisualProvider_Pad_ForcedCellular);
    }
}
%end

%hook CCUIHeaderPocketView
- (void)setFrame:(CGRect)frame {
    if (enabled) {
    if (wantsRoundedCorners && screenRoundness > 15) %orig(CGRectSetY(frame, -20));
    else %orig(CGRectSetY(frame, -24));
    }
}
%end

%hook SBFHomeGrabberSettings
- (BOOL)isEnabled {
    if (enabled) {
    return wantsHomeBarSB;
    }
}
%end

%hook CSTeachableMomentsContainerView
-(void)setHomeAffordanceContainerView:(UIView *)arg1{
    if (enabled) {
    return;
    }
}
%end

%hook MTLumaDodgePillSettings
- (void)setHeight:(double)arg1 {
    if (enabled) {
    arg1 = 0;
    }
    %orig;
}
%end

%hook UITraitCollection
- (CGFloat)displayCornerRadius {
    if (enabled) {
    return appswitcherRoundness;
    }
}
%end

%hook SBLockHardwareButtonActions
- (id)initWithHomeButtonType:(long long)arg1 proximitySensorManager:(id)arg2 {
    if (enabled) {
    return %orig(1, arg2);
    }
}
%end

%hook SBHomeHardwareButtonActions
- (id)initWitHomeButtonType:(long long)arg1 {
    if (enabled) {
    return %orig(1);
    }
}
%end

int applicationDidFinishLaunching = 2;

%hook SBPressGestureRecognizer
- (void)setAllowedPressTypes:(NSArray *)arg1 {
    if (enabled) 
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
    if (enabled) 
    if (applicationDidFinishLaunching == 1) {
        applicationDidFinishLaunching--;
        return;
    }
    %orig;
}
%end

%hook SBHomeHardwareButton
- (id)initWithScreenshotGestureRecognizer:(id)arg1 homeButtonType:(long long)arg2 buttonActions:(id)arg3 gestureRecognizerConfiguration:(id)arg4 {
    if (enabled) {
    return %orig(arg1,1,arg3,arg4);
    }
}
- (id)initWithScreenshotGestureRecognizer:(id)arg1 homeButtonType:(long long)arg2 {
    return %orig(arg1,1);
}
%end

%hook SBLockHardwareButton
- (id)initWithScreenshotGestureRecognizer:(id)arg1 shutdownGestureRecognizer:(id)arg2 proximitySensorManager:(id)arg3 homeHardwareButton:(id)arg4 volumeHardwareButton:(id)arg5 buttonActions:(id)arg6 homeButtonType:(long long)arg7 createGestures:(_Bool)arg8 {
    if (enabled) {
    return %orig(arg1,arg2,arg3,arg4,arg5,arg6,1,arg8);
    }
}
- (id)initWithScreenshotGestureRecognizer:(id)arg1 shutdownGestureRecognizer:(id)arg2 proximitySensorManager:(id)arg3 homeHardwareButton:(id)arg4 volumeHardwareButton:(id)arg5 homeButtonType:(long long)arg6 {
    return %orig(arg1,arg2,arg3,arg4,arg5,1);
}
%end

%hook SBVolumeHardwareButton
- (id)initWithScreenshotGestureRecognizer:(id)arg1 shutdownGestureRecognizer:(id)arg2 homeButtonType:(long long)arg3 {
    if (enabled) {
    return %orig(arg1,arg2,1);
    }
}
%end

static void loadPrefs() {

NSDictionary *prefs = [NSDictionary dictionaryWithContentsOfFile:HaxonateCoolTweak]; // отсюда будут читаться настройки твика, позже укажем путь в Tweak.h с привязкой к ключу
 enabled = prefs[@"enabled"] ? [prefs[@"enabled"] boolValue] : YES;

}

%ctor { // конструктор кода, вызывается самый первый.

  loadPrefs(); // Добавляем PostNotification чтобы функции в твике применялись сразу и значения в плисте могли моментально обновляться (работает не со всеми функциями)
     
     CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL,
  								 (CFNotificationCallback)loadPrefs, CFSTR("com.haxonate.haxobar/lolkek"), NULL,
  								  CFNotificationSuspensionBehaviorDeliverImmediately // выше твику присваиваем отдельный ключ для PostNotification (указываем в Root, как отдельную единицу)
    );


}