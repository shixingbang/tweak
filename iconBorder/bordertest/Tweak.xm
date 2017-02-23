%hook SBIconImageView

- (id)initWithFrame:(struct CGRect)arg1 {

 SBIconImageView *tmp = %orig(arg1);
CALayer *lay = [tmp layer];
lay.borderWidth = 3;
lay.cornerRadius = 10;
lay.borderColor = [[UIColor colorWithRed:0 green:0.75 blue: 1 alpha:0.5] CGColor];
return tmp;
}
%end