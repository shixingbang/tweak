#import "wechathead.h"

static MMSessionInfo *sessionInfo;

%hook MainFrameLogicController

- (void)onNewMsgArriving:(id)arg1 NotifyFlag:(int)arg2
{
if([arg1 isKindOfClass:NSClassFromString(@"MMSessionInfo")]){
sessionInfo = arg1;
sessionInfo.m_bShowUnReadAsRedDot = false;
sessionInfo.m_uUnReadCount = 0;
}

%orig(sessionInfo, arg2);
}

%end

%hook BaseMsgContentViewController

- (void)MessageReturn:(unsigned int)arg1 MessageInfo:(NSDictionary *)arg2 Event:(unsigned int)arg3
{
%orig;

//[self AsyncSendMessage:@"你骗人"];
}

%end

%hook CMessageMgr

- (void)onRevokeMsg:(id)arg1
{

return;
}

%end

%hook WCDeviceStepObject

-(unsigned int) m7StepCount {
return 77777;
}

%end
