#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


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

@class CCUIStatusBarStyleSnapshot; @class SBControlCenterController; @class CCSControlCenterDefaults; @class UIStatusBarForegroundView; @class CCUIOverlayStatusBarPresentationProvider; @class SBHomeGestureSettings; @class UITraitCollection; @class CCUIModularControlCenterViewController; @class CCUIModularControlCenterOverlayViewController; 
static bool (*_logos_orig$_ungrouped$CCUIStatusBarStyleSnapshot$isHidden)(_LOGOS_SELF_TYPE_NORMAL CCUIStatusBarStyleSnapshot* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CCUIStatusBarStyleSnapshot$isHidden(_LOGOS_SELF_TYPE_NORMAL CCUIStatusBarStyleSnapshot* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CCUIModularControlCenterOverlayViewController$dismissAnimated$withCompletionHandler$)(_LOGOS_SELF_TYPE_NORMAL CCUIModularControlCenterOverlayViewController* _LOGOS_SELF_CONST, SEL, bool, id); static void _logos_method$_ungrouped$CCUIModularControlCenterOverlayViewController$dismissAnimated$withCompletionHandler$(_LOGOS_SELF_TYPE_NORMAL CCUIModularControlCenterOverlayViewController* _LOGOS_SELF_CONST, SEL, bool, id); static void (*_logos_orig$_ungrouped$CCUIModularControlCenterOverlayViewController$setOverlayStatusBarHidden$)(_LOGOS_SELF_TYPE_NORMAL CCUIModularControlCenterOverlayViewController* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$CCUIModularControlCenterOverlayViewController$setOverlayStatusBarHidden$(_LOGOS_SELF_TYPE_NORMAL CCUIModularControlCenterOverlayViewController* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$SBControlCenterController$controlCenterViewController$wantsHostStatusBarHidden$)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL, id, bool); static void _logos_method$_ungrouped$SBControlCenterController$controlCenterViewController$wantsHostStatusBarHidden$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL, id, bool); static unsigned long long (*_logos_orig$_ungrouped$SBControlCenterController$presentingEdge)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$SBControlCenterController$presentingEdge(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$CCUIModularControlCenterViewController$_interfaceOrientation)(_LOGOS_SELF_TYPE_NORMAL CCUIModularControlCenterViewController* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$CCUIModularControlCenterViewController$_interfaceOrientation(_LOGOS_SELF_TYPE_NORMAL CCUIModularControlCenterViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBHomeGestureSettings$isHomeGestureEnabled)(_LOGOS_SELF_TYPE_NORMAL SBHomeGestureSettings* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBHomeGestureSettings$isHomeGestureEnabled(_LOGOS_SELF_TYPE_NORMAL SBHomeGestureSettings* _LOGOS_SELF_CONST, SEL); static unsigned long long (*_logos_orig$_ungrouped$CCSControlCenterDefaults$_defaultPresentationGesture)(_LOGOS_SELF_TYPE_NORMAL CCSControlCenterDefaults* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$CCSControlCenterDefaults$_defaultPresentationGesture(_LOGOS_SELF_TYPE_NORMAL CCSControlCenterDefaults* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CCUIOverlayStatusBarPresentationProvider$_addHeaderContentTransformAnimationToBatch$transitionState$)(_LOGOS_SELF_TYPE_NORMAL CCUIOverlayStatusBarPresentationProvider* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$CCUIOverlayStatusBarPresentationProvider$_addHeaderContentTransformAnimationToBatch$transitionState$(_LOGOS_SELF_TYPE_NORMAL CCUIOverlayStatusBarPresentationProvider* _LOGOS_SELF_CONST, SEL, id, id); static long long (*_logos_orig$_ungrouped$UITraitCollection$userInterfaceIdiom)(_LOGOS_SELF_TYPE_NORMAL UITraitCollection* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UITraitCollection$userInterfaceIdiom(_LOGOS_SELF_TYPE_NORMAL UITraitCollection* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$UITraitCollection$horizontalSizeClass)(_LOGOS_SELF_TYPE_NORMAL UITraitCollection* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UITraitCollection$horizontalSizeClass(_LOGOS_SELF_TYPE_NORMAL UITraitCollection* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$UITraitCollection$verticalSizeClass)(_LOGOS_SELF_TYPE_NORMAL UITraitCollection* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UITraitCollection$verticalSizeClass(_LOGOS_SELF_TYPE_NORMAL UITraitCollection* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$UIStatusBarForegroundView$idiom)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarForegroundView* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$UIStatusBarForegroundView$idiom(_LOGOS_SELF_TYPE_NORMAL UIStatusBarForegroundView* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$CCUIStatusBarStyleSnapshot$isHidden(_LOGOS_SELF_TYPE_NORMAL CCUIStatusBarStyleSnapshot* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static void _logos_method$_ungrouped$CCUIModularControlCenterOverlayViewController$dismissAnimated$withCompletionHandler$(_LOGOS_SELF_TYPE_NORMAL CCUIModularControlCenterOverlayViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, id arg2) {
    arg1 = 0;
    _logos_orig$_ungrouped$CCUIModularControlCenterOverlayViewController$dismissAnimated$withCompletionHandler$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$SBControlCenterController$controlCenterViewController$wantsHostStatusBarHidden$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, bool arg2) {
    arg2 = 0;
    _logos_orig$_ungrouped$SBControlCenterController$controlCenterViewController$wantsHostStatusBarHidden$(self, _cmd, arg1, arg2);
}



static long long _logos_method$_ungrouped$CCUIModularControlCenterViewController$_interfaceOrientation(_LOGOS_SELF_TYPE_NORMAL CCUIModularControlCenterViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_method$_ungrouped$SBHomeGestureSettings$isHomeGestureEnabled(_LOGOS_SELF_TYPE_NORMAL SBHomeGestureSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static unsigned long long _logos_method$_ungrouped$CCSControlCenterDefaults$_defaultPresentationGesture(_LOGOS_SELF_TYPE_NORMAL CCSControlCenterDefaults* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static void _logos_method$_ungrouped$CCUIModularControlCenterOverlayViewController$setOverlayStatusBarHidden$(_LOGOS_SELF_TYPE_NORMAL CCUIModularControlCenterOverlayViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 1;
    _logos_orig$_ungrouped$CCUIModularControlCenterOverlayViewController$setOverlayStatusBarHidden$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$CCUIOverlayStatusBarPresentationProvider$_addHeaderContentTransformAnimationToBatch$transitionState$(_LOGOS_SELF_TYPE_NORMAL CCUIOverlayStatusBarPresentationProvider* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
}



static unsigned long long _logos_method$_ungrouped$SBControlCenterController$presentingEdge(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static long long _logos_method$_ungrouped$UITraitCollection$userInterfaceIdiom(_LOGOS_SELF_TYPE_NORMAL UITraitCollection* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static long long _logos_method$_ungrouped$UIStatusBarForegroundView$idiom(_LOGOS_SELF_TYPE_NORMAL UIStatusBarForegroundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 2;
}



static long long _logos_method$_ungrouped$UITraitCollection$horizontalSizeClass(_LOGOS_SELF_TYPE_NORMAL UITraitCollection* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static long long _logos_method$_ungrouped$UITraitCollection$verticalSizeClass(_LOGOS_SELF_TYPE_NORMAL UITraitCollection* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CCUIStatusBarStyleSnapshot = objc_getClass("CCUIStatusBarStyleSnapshot"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIStatusBarStyleSnapshot, @selector(isHidden), (IMP)&_logos_method$_ungrouped$CCUIStatusBarStyleSnapshot$isHidden, (IMP*)&_logos_orig$_ungrouped$CCUIStatusBarStyleSnapshot$isHidden);}Class _logos_class$_ungrouped$CCUIModularControlCenterOverlayViewController = objc_getClass("CCUIModularControlCenterOverlayViewController"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIModularControlCenterOverlayViewController, @selector(dismissAnimated:withCompletionHandler:), (IMP)&_logos_method$_ungrouped$CCUIModularControlCenterOverlayViewController$dismissAnimated$withCompletionHandler$, (IMP*)&_logos_orig$_ungrouped$CCUIModularControlCenterOverlayViewController$dismissAnimated$withCompletionHandler$);}{ MSHookMessageEx(_logos_class$_ungrouped$CCUIModularControlCenterOverlayViewController, @selector(setOverlayStatusBarHidden:), (IMP)&_logos_method$_ungrouped$CCUIModularControlCenterOverlayViewController$setOverlayStatusBarHidden$, (IMP*)&_logos_orig$_ungrouped$CCUIModularControlCenterOverlayViewController$setOverlayStatusBarHidden$);}Class _logos_class$_ungrouped$SBControlCenterController = objc_getClass("SBControlCenterController"); { MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterController, @selector(controlCenterViewController:wantsHostStatusBarHidden:), (IMP)&_logos_method$_ungrouped$SBControlCenterController$controlCenterViewController$wantsHostStatusBarHidden$, (IMP*)&_logos_orig$_ungrouped$SBControlCenterController$controlCenterViewController$wantsHostStatusBarHidden$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterController, @selector(presentingEdge), (IMP)&_logos_method$_ungrouped$SBControlCenterController$presentingEdge, (IMP*)&_logos_orig$_ungrouped$SBControlCenterController$presentingEdge);}Class _logos_class$_ungrouped$CCUIModularControlCenterViewController = objc_getClass("CCUIModularControlCenterViewController"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIModularControlCenterViewController, @selector(_interfaceOrientation), (IMP)&_logos_method$_ungrouped$CCUIModularControlCenterViewController$_interfaceOrientation, (IMP*)&_logos_orig$_ungrouped$CCUIModularControlCenterViewController$_interfaceOrientation);}Class _logos_class$_ungrouped$SBHomeGestureSettings = objc_getClass("SBHomeGestureSettings"); { MSHookMessageEx(_logos_class$_ungrouped$SBHomeGestureSettings, @selector(isHomeGestureEnabled), (IMP)&_logos_method$_ungrouped$SBHomeGestureSettings$isHomeGestureEnabled, (IMP*)&_logos_orig$_ungrouped$SBHomeGestureSettings$isHomeGestureEnabled);}Class _logos_class$_ungrouped$CCSControlCenterDefaults = objc_getClass("CCSControlCenterDefaults"); { MSHookMessageEx(_logos_class$_ungrouped$CCSControlCenterDefaults, @selector(_defaultPresentationGesture), (IMP)&_logos_method$_ungrouped$CCSControlCenterDefaults$_defaultPresentationGesture, (IMP*)&_logos_orig$_ungrouped$CCSControlCenterDefaults$_defaultPresentationGesture);}Class _logos_class$_ungrouped$CCUIOverlayStatusBarPresentationProvider = objc_getClass("CCUIOverlayStatusBarPresentationProvider"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIOverlayStatusBarPresentationProvider, @selector(_addHeaderContentTransformAnimationToBatch:transitionState:), (IMP)&_logos_method$_ungrouped$CCUIOverlayStatusBarPresentationProvider$_addHeaderContentTransformAnimationToBatch$transitionState$, (IMP*)&_logos_orig$_ungrouped$CCUIOverlayStatusBarPresentationProvider$_addHeaderContentTransformAnimationToBatch$transitionState$);}Class _logos_class$_ungrouped$UITraitCollection = objc_getClass("UITraitCollection"); { MSHookMessageEx(_logos_class$_ungrouped$UITraitCollection, @selector(userInterfaceIdiom), (IMP)&_logos_method$_ungrouped$UITraitCollection$userInterfaceIdiom, (IMP*)&_logos_orig$_ungrouped$UITraitCollection$userInterfaceIdiom);}{ MSHookMessageEx(_logos_class$_ungrouped$UITraitCollection, @selector(horizontalSizeClass), (IMP)&_logos_method$_ungrouped$UITraitCollection$horizontalSizeClass, (IMP*)&_logos_orig$_ungrouped$UITraitCollection$horizontalSizeClass);}{ MSHookMessageEx(_logos_class$_ungrouped$UITraitCollection, @selector(verticalSizeClass), (IMP)&_logos_method$_ungrouped$UITraitCollection$verticalSizeClass, (IMP*)&_logos_orig$_ungrouped$UITraitCollection$verticalSizeClass);}Class _logos_class$_ungrouped$UIStatusBarForegroundView = objc_getClass("UIStatusBarForegroundView"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarForegroundView, @selector(idiom), (IMP)&_logos_method$_ungrouped$UIStatusBarForegroundView$idiom, (IMP*)&_logos_orig$_ungrouped$UIStatusBarForegroundView$idiom);}} }
#line 82 "Tweak.xm"
