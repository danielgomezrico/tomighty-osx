//
//  CRNotificationAgent.m
//  Tomighty
//
//  Created by Daniel Gomez Rico on 8/31/14.
//  Copyright (c) 2014 Cuadru. All rights reserved.
//

#import "CRNotificationAgent.h"

@implementation CRNotificationAgent

- (void)sendInResponseToEventsFrom:(id <TYEventBus>)eventBus
{
    [eventBus subscribeTo:TIMER_STOP subscriber:^(id eventData) {
        [self showNotification];
    }];
}

- (void)showNotification{
    NSUserNotification *notification = [[NSUserNotification alloc] init];
    notification.title = @"O_O!";
    notification.informativeText = @"Timer has stoped";
    notification.soundName = NSUserNotificationDefaultSoundName;
    
    [[NSUserNotificationCenter defaultUserNotificationCenter]
     deliverNotification:notification];
}



@end
