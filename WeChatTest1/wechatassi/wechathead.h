@protocol MessageObserverDelegate
- (void)MessageReturn:(unsigned int)arg1 MessageInfo:(NSDictionary *)arg2 Event:(unsigned int)arg3;
@end

@interface MainFrameLogicController : NSObject
- (void)onNewMsgArriving:(id)arg1 NotifyFlag:(int)arg2;
@end

@interface MMMainTableView : NSObject

@end

@interface NewMainFrameViewController : NSObject<MessageObserverDelegate>
- (void)MessageReturn:(unsigned int)arg1 MessageInfo:(NSDictionary *)arg2 Event:(unsigned int)arg3;

@property (retain, nonatomic) MMMainTableView *m_tableView;
@property (retain, nonatomic) MainFrameLogicController *m_mainFrameLogicController;
- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2;
- (id)initWithNibName:(id)arg1 bundle:(id)arg2;

@end

@interface MMSessionInfo : NSObject
@property(nonatomic) _Bool m_bShowUnReadAsRedDot;
@property(nonatomic) unsigned int m_uUnReadCount;
@end

@interface BaseMsgContentViewController : NSObject
@property(retain, nonatomic) UINavigationController *navigationController;
- (void)AsyncSendMessage:(id)arg1;
@end

@interface CMessageMgr : NSObject
- (void)enterBackground;
- (void)onRevokeMsg:(id)arg1;
@end