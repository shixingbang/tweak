
%hook SBScreenFlash
- (void)flashColor:(id)arg1 withCompletion:(id)arg2
{
%orig([UIColor purpleColor], arg2);
}

%end