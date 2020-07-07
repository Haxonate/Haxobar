#import <UIKit/UIKit.h>

%hook CCUIStatusBarStyleSnapshot
- (bool)isHidden {
    return 1;
}
%end

%hook CCUIModularControlCenterOverlayViewController
- (void)dismissAnimated:(bool)arg1 withCompletionHandler:(id)arg2 {
    arg1 = 0;
    %orig;
}
%end

%hook SBControlCenterController
- (void)controlCenterViewController:(id)arg1 wantsHostStatusBarHidden:(bool)arg2 {
    arg2 = 0;
    %orig;
}
%end

%hook CCUIModularControlCenterViewController
- (long long)_interfaceOrientation {
    return 0;
}
%end

%hook SBHomeGestureSettings
- (bool)isHomeGestureEnabled {
    return 1;
}
%end

%hook CCSControlCenterDefaults
- (unsigned long long)_defaultPresentationGesture {
    return 1;
}
%end

%hook CCUIModularControlCenterOverlayViewController
- (void)setOverlayStatusBarHidden:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook CCUIOverlayStatusBarPresentationProvider
- (void)_addHeaderContentTransformAnimationToBatch:(id)arg1 transitionState:(id)arg2 {
}
%end

%hook SBControlCenterController
- (unsigned long long)presentingEdge {
    return 1;
}
%end

%hook UITraitCollection
- (long long)userInterfaceIdiom {
    return 1;
}
%end

%hook UIStatusBarForegroundView
- (long long)idiom {
    return 2;
}
%end

%hook UITraitCollection
- (long long)horizontalSizeClass {
    return 1;
}
%end

%hook UITraitCollection
- (long long)verticalSizeClass {
    return 1;
}
%end
