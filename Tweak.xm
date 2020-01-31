@interface SBUIFlashlightController : NSObject

+ (id)sharedInstance;

- (NSInteger)level;

@end

%hook SBLiftToWakeManager

- (void)liftToWakeController:(id)arg1 didObserveTransition:(long long)arg2 deviceOrientation:(long long)arg3 {
	if(!([[NSClassFromString(@"SBUIFlashlightController") sharedInstance] level] > 0)) {
		%orig;
	}
}

%end

%hook SBTapToWakeController

- (void)tapToWakeDidRecognize:(id)arg1 {
	if(!([[NSClassFromString(@"SBUIFlashlightController") sharedInstance] level] > 0)) {
		%orig;
	}
}
- (void)pencilToWakeDidRecognize:(id)arg1 {
	if(!([[NSClassFromString(@"SBUIFlashlightController") sharedInstance] level] > 0)) {
		%orig;
	}
}

%end