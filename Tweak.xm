@interface SBDashBoardTeachableMomentsContainerView : NSObject
@property (nonatomic, assign, readwrite) BOOL hidden;
@end

%hook SBDashBoardTeachableMomentsContainerView

-(void)layoutSubviews {
    %orig;
    //BOOL hidden = MSHookIvar<BOOL *>(self, "_hidden");
    self.hidden = YES;
}

%end
