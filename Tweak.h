#import <UIKit/UIKit.h>

#define CGRectSetY(rect, y) CGRectMake(rect.origin.x, y, rect.size.width, rect.size.height)

static NSString *const HaxonateCoolTweak = @"/User/Library/Preferences/com.haxonate.haxobar.plist"; // собственно вот наши префы и читаются, но это ещё не всё.
//#define HaxonateCoolTweak = @"/User/Library/Preferences/com.haxonate.haxobar.plist"; // просто чтобы не указывать в двух местах NSString
static BOOL enabled; // объявляем её в хеддерах

NSInteger statusBarStyle, screenRoundness, appswitcherRoundness;
BOOL enabled, wantsHomeBarSB, wantsHomeBarLS, wantsRoundedAppSwitcher, wantsReduceRows, wantsRoundedCorners, wantsXButtons;
BOOL wantsCCGrabber, wantsProudLock, wantsHideSBCC,wantsLSShortcuts, wantsBatteryPercent, wantsiPadDock;
BOOL wantsiPadMultitasking;