//#import "helper.h"

%hook VideoAlbum

- (BOOL)canBeDownLoaded
{
return YES;
}

- (_Bool)hasCopyRight
{
return NO;
}

- (_Bool)isValidVideoAlbum
{
return NO;
}

%end

%hook LongVideoDetailHeaderViewModel

- (long long) downloadStatus
{
return 0;
}

- (void) setDownloadStatus:(id)arg1
{
return %orig(0);
}

%end

%hook LongVideoDetailViewController

- (VideoAlbum*)videoAlbum
{
VideoAlbum *al = %orig;

//[al setCanBeDownLoaded:YES];

return al;
}

%end