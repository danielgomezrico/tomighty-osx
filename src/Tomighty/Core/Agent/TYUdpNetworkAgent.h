//
//  TYUdpNetworkAgent.h
//  Tomighty
//
//  Created by Daniel Gomez Rico on 8/15/14.
//  Copyright (c) 2014 Cuadru. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TYEventBus.h"
#import "AsyncUdpSocket.h"

@interface TYUdpNetworkAgent : NSObject

- (void)sendInResponseToEventsFrom:(id <TYEventBus>)eventBus;


@end
