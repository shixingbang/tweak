


#import "helper.h"

#define kYearInterval  31536000.0

%hook Userinfo

- (BOOL)isVip
{
return YES;
}

- (NSDate *)vipExpireDate
{
NSDate *date = [[NSDate date] dateByAddingTimeInterval:kYearInterval];
return date;
}

%end


%hook LoginHelper

+ (id)sharedInstance
{
LoginHelper *lh = %orig;

UserInfo *u = lh.userInfo;


NSDate *date = [[NSDate date] dateByAddingTimeInterval:kYearInterval];

[u setJifen:@"50000"];
u.level = 1;
u.paidId = 478217340;
[u setVipType:2];
[u setIsYearVip:YES];
[u setVipExpireDate: date];
return lh;

}

- (_Bool)isVip
{

return YES;
}

- (_Bool)logout:(_Bool)arg1
{

return %orig;
}

%end