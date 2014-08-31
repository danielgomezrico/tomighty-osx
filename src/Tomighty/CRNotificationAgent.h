//
//  CRNotificationAgent.h
//  Tomighty
//
//  Created by Daniel Gomez Rico on 8/31/14.
//  Copyright (c) 2014 Cuadru. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TYEventBus.h"

@interface CRNotificationAgent : NSObject

- (void)sendInResponseToEventsFrom:(id <TYEventBus>)eventBus;

@end
