%hook SpringBoard

- (void)applicationDidFinishLaunching:(id)application
{
%orig;

UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"I'm SXB" message: @"And You're silly B" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
[alert show];
[alert release];
}

%end