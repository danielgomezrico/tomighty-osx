//
//  TYUdpNetworkAgent.m
//  Tomighty
//
//  Created by Daniel Gomez Rico on 8/15/14.
//  Copyright (c) 2014 Cuadru. All rights reserved.
//

#import "CRUdpNetworkAgent.h"

#define kHost @"255.255.255.255"
#define kPort 8080

@implementation CRUdpNetworkAgent

- (void)sendInResponseToEventsFrom:(id <TYEventBus>)eventBus
{
    [eventBus subscribeTo:TIMER_STOP subscriber:^(id eventData) {
        
        [self sendBroadcastWithMessage:@"TIMER_STOPED"];
    }];
}

- (void)sendBroadcastWithMessage:(NSString*)message
{
    NSData *data = [message dataUsingEncoding:NSASCIIStringEncoding];
    
    // src = http://stackoverflow.com/a/7685204/273119
    AsyncUdpSocket *udpSocket = [[AsyncUdpSocket alloc] initWithDelegate:self];
    [udpSocket enableBroadcast:YES error:nil];
    
    [udpSocket sendData:data
                 toHost:kHost
                   port:kPort
            withTimeout:-1
                    tag:0];
}

@end
