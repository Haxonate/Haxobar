#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>
#define CGRectSetY(rect, y) CGRectMake(rect.origin.x, y, rect.size.width, rect.size.height)

NSInteger statusBarStyle, screenRoundness, appswitcherRoundness;
BOOL enabled, wantsHomeBarSB, wantsHomeBarLS, wantsRoundedAppSwitcher, wantsReduceRows, wantsRoundedCorners, wantsXButtons;
BOOL wantsCCGrabber, wantsProudLock, wantsHideSBCC,wantsLSShortcuts, wantsBatteryPercent, wantsiPadDock;
BOOL wantsiPadMultitasking;


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBPressGestureRecognizer; @class CSTeachableMomentsContainerView; @class UITraitCollection; @class MTLumaDodgePillSettings; @class SBHomeHardwareButtonActions; @class SBLockHardwareButtonActions; @class SBHomeHardwareButton; @class SBClickGestureRecognizer; @class SBFHomeGrabberSettings; @class _UIStatusBarVisualProvider_Pad_ForcedCellular; @class SBLockHardwareButton; @class _UIStatusBarVisualProvider_RoundedPad_ForcedCellular; @class BSPlatform; @class CCUIHeaderPocketView; @class SBVolumeHardwareButton; @class _UIStatusBarVisualProvider_iOS; 
static NSInteger (*_logos_orig$_ungrouped$BSPlatform$homeButtonType)(_LOGOS_SELF_TYPE_NORMAL BSPlatform* _LOGOS_SELF_CONST, SEL); static NSInteger _logos_method$_ungrouped$BSPlatform$homeButtonType(_LOGOS_SELF_TYPE_NORMAL BSPlatform* _LOGOS_SELF_CONST, SEL); static Class (*_logos_meta_orig$_ungrouped$_UIStatusBarVisualProvider_iOS$class)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static Class _logos_meta_method$_ungrouped$_UIStatusBarVisualProvider_iOS$class(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CCUIHeaderPocketView$setFrame$)(_LOGOS_SELF_TYPE_NORMAL CCUIHeaderPocketView* _LOGOS_SELF_CONST, SEL, CGRect); static void _logos_method$_ungrouped$CCUIHeaderPocketView$setFrame$(_LOGOS_SELF_TYPE_NORMAL CCUIHeaderPocketView* _LOGOS_SELF_CONST, SEL, CGRect); static BOOL (*_logos_orig$_ungrouped$SBFHomeGrabberSettings$isEnabled)(_LOGOS_SELF_TYPE_NORMAL SBFHomeGrabberSettings* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBFHomeGrabberSettings$isEnabled(_LOGOS_SELF_TYPE_NORMAL SBFHomeGrabberSettings* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CSTeachableMomentsContainerView$setHomeAffordanceContainerView$)(_LOGOS_SELF_TYPE_NORMAL CSTeachableMomentsContainerView* _LOGOS_SELF_CONST, SEL, UIView *); static void _logos_method$_ungrouped$CSTeachableMomentsContainerView$setHomeAffordanceContainerView$(_LOGOS_SELF_TYPE_NORMAL CSTeachableMomentsContainerView* _LOGOS_SELF_CONST, SEL, UIView *); static void (*_logos_orig$_ungrouped$MTLumaDodgePillSettings$setHeight$)(_LOGOS_SELF_TYPE_NORMAL MTLumaDodgePillSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$MTLumaDodgePillSettings$setHeight$(_LOGOS_SELF_TYPE_NORMAL MTLumaDodgePillSettings* _LOGOS_SELF_CONST, SEL, double); static CGFloat (*_logos_orig$_ungrouped$UITraitCollection$displayCornerRadius)(_LOGOS_SELF_TYPE_NORMAL UITraitCollection* _LOGOS_SELF_CONST, SEL); static CGFloat _logos_method$_ungrouped$UITraitCollection$displayCornerRadius(_LOGOS_SELF_TYPE_NORMAL UITraitCollection* _LOGOS_SELF_CONST, SEL); static SBLockHardwareButtonActions* (*_logos_orig$_ungrouped$SBLockHardwareButtonActions$initWithHomeButtonType$proximitySensorManager$)(_LOGOS_SELF_TYPE_INIT SBLockHardwareButtonActions*, SEL, long long, id) _LOGOS_RETURN_RETAINED; static SBLockHardwareButtonActions* _logos_method$_ungrouped$SBLockHardwareButtonActions$initWithHomeButtonType$proximitySensorManager$(_LOGOS_SELF_TYPE_INIT SBLockHardwareButtonActions*, SEL, long long, id) _LOGOS_RETURN_RETAINED; static SBHomeHardwareButtonActions* (*_logos_orig$_ungrouped$SBHomeHardwareButtonActions$initWitHomeButtonType$)(_LOGOS_SELF_TYPE_INIT SBHomeHardwareButtonActions*, SEL, long long) _LOGOS_RETURN_RETAINED; static SBHomeHardwareButtonActions* _logos_method$_ungrouped$SBHomeHardwareButtonActions$initWitHomeButtonType$(_LOGOS_SELF_TYPE_INIT SBHomeHardwareButtonActions*, SEL, long long) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$SBPressGestureRecognizer$setAllowedPressTypes$)(_LOGOS_SELF_TYPE_NORMAL SBPressGestureRecognizer* _LOGOS_SELF_CONST, SEL, NSArray *); static void _logos_method$_ungrouped$SBPressGestureRecognizer$setAllowedPressTypes$(_LOGOS_SELF_TYPE_NORMAL SBPressGestureRecognizer* _LOGOS_SELF_CONST, SEL, NSArray *); static void (*_logos_orig$_ungrouped$SBClickGestureRecognizer$addShortcutWithPressTypes$)(_LOGOS_SELF_TYPE_NORMAL SBClickGestureRecognizer* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBClickGestureRecognizer$addShortcutWithPressTypes$(_LOGOS_SELF_TYPE_NORMAL SBClickGestureRecognizer* _LOGOS_SELF_CONST, SEL, id); static SBHomeHardwareButton* (*_logos_orig$_ungrouped$SBHomeHardwareButton$initWithScreenshotGestureRecognizer$homeButtonType$buttonActions$gestureRecognizerConfiguration$)(_LOGOS_SELF_TYPE_INIT SBHomeHardwareButton*, SEL, id, long long, id, id) _LOGOS_RETURN_RETAINED; static SBHomeHardwareButton* _logos_method$_ungrouped$SBHomeHardwareButton$initWithScreenshotGestureRecognizer$homeButtonType$buttonActions$gestureRecognizerConfiguration$(_LOGOS_SELF_TYPE_INIT SBHomeHardwareButton*, SEL, id, long long, id, id) _LOGOS_RETURN_RETAINED; static SBHomeHardwareButton* (*_logos_orig$_ungrouped$SBHomeHardwareButton$initWithScreenshotGestureRecognizer$homeButtonType$)(_LOGOS_SELF_TYPE_INIT SBHomeHardwareButton*, SEL, id, long long) _LOGOS_RETURN_RETAINED; static SBHomeHardwareButton* _logos_method$_ungrouped$SBHomeHardwareButton$initWithScreenshotGestureRecognizer$homeButtonType$(_LOGOS_SELF_TYPE_INIT SBHomeHardwareButton*, SEL, id, long long) _LOGOS_RETURN_RETAINED; static SBLockHardwareButton* (*_logos_orig$_ungrouped$SBLockHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$proximitySensorManager$homeHardwareButton$volumeHardwareButton$buttonActions$homeButtonType$createGestures$)(_LOGOS_SELF_TYPE_INIT SBLockHardwareButton*, SEL, id, id, id, id, id, id, long long, _Bool) _LOGOS_RETURN_RETAINED; static SBLockHardwareButton* _logos_method$_ungrouped$SBLockHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$proximitySensorManager$homeHardwareButton$volumeHardwareButton$buttonActions$homeButtonType$createGestures$(_LOGOS_SELF_TYPE_INIT SBLockHardwareButton*, SEL, id, id, id, id, id, id, long long, _Bool) _LOGOS_RETURN_RETAINED; static SBLockHardwareButton* (*_logos_orig$_ungrouped$SBLockHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$proximitySensorManager$homeHardwareButton$volumeHardwareButton$homeButtonType$)(_LOGOS_SELF_TYPE_INIT SBLockHardwareButton*, SEL, id, id, id, id, id, long long) _LOGOS_RETURN_RETAINED; static SBLockHardwareButton* _logos_method$_ungrouped$SBLockHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$proximitySensorManager$homeHardwareButton$volumeHardwareButton$homeButtonType$(_LOGOS_SELF_TYPE_INIT SBLockHardwareButton*, SEL, id, id, id, id, id, long long) _LOGOS_RETURN_RETAINED; static SBVolumeHardwareButton* (*_logos_orig$_ungrouped$SBVolumeHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$homeButtonType$)(_LOGOS_SELF_TYPE_INIT SBVolumeHardwareButton*, SEL, id, id, long long) _LOGOS_RETURN_RETAINED; static SBVolumeHardwareButton* _logos_method$_ungrouped$SBVolumeHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$homeButtonType$(_LOGOS_SELF_TYPE_INIT SBVolumeHardwareButton*, SEL, id, id, long long) _LOGOS_RETURN_RETAINED; 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$_UIStatusBarVisualProvider_Pad_ForcedCellular(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("_UIStatusBarVisualProvider_Pad_ForcedCellular"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$_UIStatusBarVisualProvider_RoundedPad_ForcedCellular(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("_UIStatusBarVisualProvider_RoundedPad_ForcedCellular"); } return _klass; }
#line 9 "Tweak.xm"

static NSInteger _logos_method$_ungrouped$BSPlatform$homeButtonType(_LOGOS_SELF_TYPE_NORMAL BSPlatform* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 2;
}



static Class _logos_meta_method$_ungrouped$_UIStatusBarVisualProvider_iOS$class(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (wantsRoundedCorners && screenRoundness > 15) return _logos_static_class_lookup$_UIStatusBarVisualProvider_RoundedPad_ForcedCellular();
    return _logos_static_class_lookup$_UIStatusBarVisualProvider_Pad_ForcedCellular();
}



static void _logos_method$_ungrouped$CCUIHeaderPocketView$setFrame$(_LOGOS_SELF_TYPE_NORMAL CCUIHeaderPocketView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGRect frame) {
    if (wantsRoundedCorners && screenRoundness > 15) _logos_orig$_ungrouped$CCUIHeaderPocketView$setFrame$(self, _cmd, CGRectSetY(frame, -20));
    else _logos_orig$_ungrouped$CCUIHeaderPocketView$setFrame$(self, _cmd, CGRectSetY(frame, -24));
}



static BOOL _logos_method$_ungrouped$SBFHomeGrabberSettings$isEnabled(_LOGOS_SELF_TYPE_NORMAL SBFHomeGrabberSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return wantsHomeBarSB;
}



static void _logos_method$_ungrouped$CSTeachableMomentsContainerView$setHomeAffordanceContainerView$(_LOGOS_SELF_TYPE_NORMAL CSTeachableMomentsContainerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIView * arg1){
    return;
}



static void _logos_method$_ungrouped$MTLumaDodgePillSettings$setHeight$(_LOGOS_SELF_TYPE_NORMAL MTLumaDodgePillSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$MTLumaDodgePillSettings$setHeight$(self, _cmd, arg1);
}



static CGFloat _logos_method$_ungrouped$UITraitCollection$displayCornerRadius(_LOGOS_SELF_TYPE_NORMAL UITraitCollection* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return appswitcherRoundness;
}



static SBLockHardwareButtonActions* _logos_method$_ungrouped$SBLockHardwareButtonActions$initWithHomeButtonType$proximitySensorManager$(_LOGOS_SELF_TYPE_INIT SBLockHardwareButtonActions* __unused self, SEL __unused _cmd, long long arg1, id arg2) _LOGOS_RETURN_RETAINED {
    return _logos_orig$_ungrouped$SBLockHardwareButtonActions$initWithHomeButtonType$proximitySensorManager$(self, _cmd, 1, arg2);
}



static SBHomeHardwareButtonActions* _logos_method$_ungrouped$SBHomeHardwareButtonActions$initWitHomeButtonType$(_LOGOS_SELF_TYPE_INIT SBHomeHardwareButtonActions* __unused self, SEL __unused _cmd, long long arg1) _LOGOS_RETURN_RETAINED {
    return _logos_orig$_ungrouped$SBHomeHardwareButtonActions$initWitHomeButtonType$(self, _cmd, 1);
}


int applicationDidFinishLaunching = 2;


static void _logos_method$_ungrouped$SBPressGestureRecognizer$setAllowedPressTypes$(_LOGOS_SELF_TYPE_NORMAL SBPressGestureRecognizer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSArray * arg1) {
    NSArray *lockHome = @[@104, @101];
    NSArray *lockVol = @[@104, @102, @103];
    if ([arg1 isEqual:lockVol] && applicationDidFinishLaunching == 2) {
        _logos_orig$_ungrouped$SBPressGestureRecognizer$setAllowedPressTypes$(self, _cmd, lockHome);
        applicationDidFinishLaunching--;
        return;
    }
    _logos_orig$_ungrouped$SBPressGestureRecognizer$setAllowedPressTypes$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SBClickGestureRecognizer$addShortcutWithPressTypes$(_LOGOS_SELF_TYPE_NORMAL SBClickGestureRecognizer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    if (applicationDidFinishLaunching == 1) {
        applicationDidFinishLaunching--;
        return;
    }
    _logos_orig$_ungrouped$SBClickGestureRecognizer$addShortcutWithPressTypes$(self, _cmd, arg1);
}



static SBHomeHardwareButton* _logos_method$_ungrouped$SBHomeHardwareButton$initWithScreenshotGestureRecognizer$homeButtonType$buttonActions$gestureRecognizerConfiguration$(_LOGOS_SELF_TYPE_INIT SBHomeHardwareButton* __unused self, SEL __unused _cmd, id arg1, long long arg2, id arg3, id arg4) _LOGOS_RETURN_RETAINED {
    return _logos_orig$_ungrouped$SBHomeHardwareButton$initWithScreenshotGestureRecognizer$homeButtonType$buttonActions$gestureRecognizerConfiguration$(self, _cmd, arg1,1,arg3,arg4);
}
static SBHomeHardwareButton* _logos_method$_ungrouped$SBHomeHardwareButton$initWithScreenshotGestureRecognizer$homeButtonType$(_LOGOS_SELF_TYPE_INIT SBHomeHardwareButton* __unused self, SEL __unused _cmd, id arg1, long long arg2) _LOGOS_RETURN_RETAINED {
    return _logos_orig$_ungrouped$SBHomeHardwareButton$initWithScreenshotGestureRecognizer$homeButtonType$(self, _cmd, arg1,1);
}



static SBLockHardwareButton* _logos_method$_ungrouped$SBLockHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$proximitySensorManager$homeHardwareButton$volumeHardwareButton$buttonActions$homeButtonType$createGestures$(_LOGOS_SELF_TYPE_INIT SBLockHardwareButton* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, id arg4, id arg5, id arg6, long long arg7, _Bool arg8) _LOGOS_RETURN_RETAINED {
    return _logos_orig$_ungrouped$SBLockHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$proximitySensorManager$homeHardwareButton$volumeHardwareButton$buttonActions$homeButtonType$createGestures$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,1,arg8);
}
static SBLockHardwareButton* _logos_method$_ungrouped$SBLockHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$proximitySensorManager$homeHardwareButton$volumeHardwareButton$homeButtonType$(_LOGOS_SELF_TYPE_INIT SBLockHardwareButton* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, id arg4, id arg5, long long arg6) _LOGOS_RETURN_RETAINED {
    return _logos_orig$_ungrouped$SBLockHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$proximitySensorManager$homeHardwareButton$volumeHardwareButton$homeButtonType$(self, _cmd, arg1,arg2,arg3,arg4,arg5,1);
}



static SBVolumeHardwareButton* _logos_method$_ungrouped$SBVolumeHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$homeButtonType$(_LOGOS_SELF_TYPE_INIT SBVolumeHardwareButton* __unused self, SEL __unused _cmd, id arg1, id arg2, long long arg3) _LOGOS_RETURN_RETAINED {
    return _logos_orig$_ungrouped$SBVolumeHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$homeButtonType$(self, _cmd, arg1,arg2,1);
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BSPlatform = objc_getClass("BSPlatform"); { MSHookMessageEx(_logos_class$_ungrouped$BSPlatform, @selector(homeButtonType), (IMP)&_logos_method$_ungrouped$BSPlatform$homeButtonType, (IMP*)&_logos_orig$_ungrouped$BSPlatform$homeButtonType);}Class _logos_class$_ungrouped$_UIStatusBarVisualProvider_iOS = objc_getClass("_UIStatusBarVisualProvider_iOS"); Class _logos_metaclass$_ungrouped$_UIStatusBarVisualProvider_iOS = object_getClass(_logos_class$_ungrouped$_UIStatusBarVisualProvider_iOS); { MSHookMessageEx(_logos_metaclass$_ungrouped$_UIStatusBarVisualProvider_iOS, @selector(class), (IMP)&_logos_meta_method$_ungrouped$_UIStatusBarVisualProvider_iOS$class, (IMP*)&_logos_meta_orig$_ungrouped$_UIStatusBarVisualProvider_iOS$class);}Class _logos_class$_ungrouped$CCUIHeaderPocketView = objc_getClass("CCUIHeaderPocketView"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIHeaderPocketView, @selector(setFrame:), (IMP)&_logos_method$_ungrouped$CCUIHeaderPocketView$setFrame$, (IMP*)&_logos_orig$_ungrouped$CCUIHeaderPocketView$setFrame$);}Class _logos_class$_ungrouped$SBFHomeGrabberSettings = objc_getClass("SBFHomeGrabberSettings"); { MSHookMessageEx(_logos_class$_ungrouped$SBFHomeGrabberSettings, @selector(isEnabled), (IMP)&_logos_method$_ungrouped$SBFHomeGrabberSettings$isEnabled, (IMP*)&_logos_orig$_ungrouped$SBFHomeGrabberSettings$isEnabled);}Class _logos_class$_ungrouped$CSTeachableMomentsContainerView = objc_getClass("CSTeachableMomentsContainerView"); { MSHookMessageEx(_logos_class$_ungrouped$CSTeachableMomentsContainerView, @selector(setHomeAffordanceContainerView:), (IMP)&_logos_method$_ungrouped$CSTeachableMomentsContainerView$setHomeAffordanceContainerView$, (IMP*)&_logos_orig$_ungrouped$CSTeachableMomentsContainerView$setHomeAffordanceContainerView$);}Class _logos_class$_ungrouped$MTLumaDodgePillSettings = objc_getClass("MTLumaDodgePillSettings"); { MSHookMessageEx(_logos_class$_ungrouped$MTLumaDodgePillSettings, @selector(setHeight:), (IMP)&_logos_method$_ungrouped$MTLumaDodgePillSettings$setHeight$, (IMP*)&_logos_orig$_ungrouped$MTLumaDodgePillSettings$setHeight$);}Class _logos_class$_ungrouped$UITraitCollection = objc_getClass("UITraitCollection"); { MSHookMessageEx(_logos_class$_ungrouped$UITraitCollection, @selector(displayCornerRadius), (IMP)&_logos_method$_ungrouped$UITraitCollection$displayCornerRadius, (IMP*)&_logos_orig$_ungrouped$UITraitCollection$displayCornerRadius);}Class _logos_class$_ungrouped$SBLockHardwareButtonActions = objc_getClass("SBLockHardwareButtonActions"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockHardwareButtonActions, @selector(initWithHomeButtonType:proximitySensorManager:), (IMP)&_logos_method$_ungrouped$SBLockHardwareButtonActions$initWithHomeButtonType$proximitySensorManager$, (IMP*)&_logos_orig$_ungrouped$SBLockHardwareButtonActions$initWithHomeButtonType$proximitySensorManager$);}Class _logos_class$_ungrouped$SBHomeHardwareButtonActions = objc_getClass("SBHomeHardwareButtonActions"); { MSHookMessageEx(_logos_class$_ungrouped$SBHomeHardwareButtonActions, @selector(initWitHomeButtonType:), (IMP)&_logos_method$_ungrouped$SBHomeHardwareButtonActions$initWitHomeButtonType$, (IMP*)&_logos_orig$_ungrouped$SBHomeHardwareButtonActions$initWitHomeButtonType$);}Class _logos_class$_ungrouped$SBPressGestureRecognizer = objc_getClass("SBPressGestureRecognizer"); { MSHookMessageEx(_logos_class$_ungrouped$SBPressGestureRecognizer, @selector(setAllowedPressTypes:), (IMP)&_logos_method$_ungrouped$SBPressGestureRecognizer$setAllowedPressTypes$, (IMP*)&_logos_orig$_ungrouped$SBPressGestureRecognizer$setAllowedPressTypes$);}Class _logos_class$_ungrouped$SBClickGestureRecognizer = objc_getClass("SBClickGestureRecognizer"); { MSHookMessageEx(_logos_class$_ungrouped$SBClickGestureRecognizer, @selector(addShortcutWithPressTypes:), (IMP)&_logos_method$_ungrouped$SBClickGestureRecognizer$addShortcutWithPressTypes$, (IMP*)&_logos_orig$_ungrouped$SBClickGestureRecognizer$addShortcutWithPressTypes$);}Class _logos_class$_ungrouped$SBHomeHardwareButton = objc_getClass("SBHomeHardwareButton"); { MSHookMessageEx(_logos_class$_ungrouped$SBHomeHardwareButton, @selector(initWithScreenshotGestureRecognizer:homeButtonType:buttonActions:gestureRecognizerConfiguration:), (IMP)&_logos_method$_ungrouped$SBHomeHardwareButton$initWithScreenshotGestureRecognizer$homeButtonType$buttonActions$gestureRecognizerConfiguration$, (IMP*)&_logos_orig$_ungrouped$SBHomeHardwareButton$initWithScreenshotGestureRecognizer$homeButtonType$buttonActions$gestureRecognizerConfiguration$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBHomeHardwareButton, @selector(initWithScreenshotGestureRecognizer:homeButtonType:), (IMP)&_logos_method$_ungrouped$SBHomeHardwareButton$initWithScreenshotGestureRecognizer$homeButtonType$, (IMP*)&_logos_orig$_ungrouped$SBHomeHardwareButton$initWithScreenshotGestureRecognizer$homeButtonType$);}Class _logos_class$_ungrouped$SBLockHardwareButton = objc_getClass("SBLockHardwareButton"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockHardwareButton, @selector(initWithScreenshotGestureRecognizer:shutdownGestureRecognizer:proximitySensorManager:homeHardwareButton:volumeHardwareButton:buttonActions:homeButtonType:createGestures:), (IMP)&_logos_method$_ungrouped$SBLockHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$proximitySensorManager$homeHardwareButton$volumeHardwareButton$buttonActions$homeButtonType$createGestures$, (IMP*)&_logos_orig$_ungrouped$SBLockHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$proximitySensorManager$homeHardwareButton$volumeHardwareButton$buttonActions$homeButtonType$createGestures$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBLockHardwareButton, @selector(initWithScreenshotGestureRecognizer:shutdownGestureRecognizer:proximitySensorManager:homeHardwareButton:volumeHardwareButton:homeButtonType:), (IMP)&_logos_method$_ungrouped$SBLockHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$proximitySensorManager$homeHardwareButton$volumeHardwareButton$homeButtonType$, (IMP*)&_logos_orig$_ungrouped$SBLockHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$proximitySensorManager$homeHardwareButton$volumeHardwareButton$homeButtonType$);}Class _logos_class$_ungrouped$SBVolumeHardwareButton = objc_getClass("SBVolumeHardwareButton"); { MSHookMessageEx(_logos_class$_ungrouped$SBVolumeHardwareButton, @selector(initWithScreenshotGestureRecognizer:shutdownGestureRecognizer:homeButtonType:), (IMP)&_logos_method$_ungrouped$SBVolumeHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$homeButtonType$, (IMP*)&_logos_orig$_ungrouped$SBVolumeHardwareButton$initWithScreenshotGestureRecognizer$shutdownGestureRecognizer$homeButtonType$);}} }
#line 114 "Tweak.xm"
