@interface UserInfo : NSObject
@property(nonatomic) _Bool isTrialVip; // @synthesize isTrialVip=_isTrialVip;
@property(nonatomic) _Bool isYearVip; // @synthesize isYearVip=_isYearVip;
@property(retain, nonatomic) NSString *jifen; // @synthesize jifen=_jifen;
@property(copy, nonatomic) NSString *jumpKey; // @synthesize jumpKey=_jumpKey;
@property(nonatomic) long long level; // @synthesize level=_level;
@property(retain, nonatomic) NSString *md5Password; // @synthesize md5Password=_md5Password;
@property(retain, nonatomic) NSString *nickName; // @synthesize nickName=_nickName;
@property(nonatomic) long long paidId; // @synthesize paidId=_paidId;
@property(retain, nonatomic) NSDate *vipExpireDate;
@property(nonatomic) int vipType;
+ (id)curUser;
- (_Bool)isVip;
- (_Bool)getIsVip;
- (void)setIsTrialVip:(_Bool)arg1;
- (void)setIsYearVip:(_Bool)arg1;
@end





@interface LoginHelper : NSObject
@property(retain, nonatomic) UserInfo *userInfo;
- (_Bool)isVip;
- (_Bool)logout:(_Bool)arg1;
+ (id)sharedInstance;

@end