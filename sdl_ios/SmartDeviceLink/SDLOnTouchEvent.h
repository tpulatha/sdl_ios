//  SDLOnTouchEvent.h
//
//  Copyright (c) 2014 Ford Motor Company. All rights reserved.


#import "SDLRPCNotification.h"

#import "SDLTouchType.h"

@interface SDLOnTouchEvent : SDLRPCNotification {}

-(id) init;
-(id) initWithDictionary:(NSMutableDictionary*) dict;

@property(strong) SDLTouchType* type;
@property(strong) NSMutableArray* event;

@end
