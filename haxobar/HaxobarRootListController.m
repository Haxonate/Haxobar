#import <Foundation/Foundation.h>
#import "HaxobarRootListController.h"

//static NSString *const HaxonateCoolTweak = @"/User/Library/Preferences/com.haxonate.haxobar.plist";

@implementation HaxobarRootListController

- (NSArray *)specifiers { // строка гласит, что настройки будут грузиться с Root.plist (находится в папке Resources)
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

- (id)readPreferenceValue:(PSSpecifier *)specifier // взял из первого колореда, т.к лень искать статью на iPhoneDevWiki (не суть)
{
    NSDictionary *prefs = [NSDictionary dictionaryWithContentsOfFile:HaxonateCoolTweak];
    if (!prefs[specifier.properties[@"key"]]) return specifier.properties[@"default"];
    return prefs[specifier.properties[@"key"]];
}


- (void)setPreferenceValue:(id)value specifier:(PSSpecifier *)specifier
{
    NSMutableDictionary *prefs = [NSMutableDictionary dictionary];
    [prefs addEntriesFromDictionary:[NSDictionary dictionaryWithContentsOfFile:HaxonateCoolTweak]];
    [prefs setObject:value forKey:specifier.properties[@"key"]];
    [prefs writeToFile:HaxonateCoolTweak atomically:YES];
    CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(), CFSTR("com.haxonate.haxobar/lolkek"), NULL, NULL, YES);
}

// тут вроде всё, пошли в Root.plist
@end
