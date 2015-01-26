//  SDLTouchType.h
//
//  Copyright (c) 2014 Ford Motor Company. All rights reserved.


#import "SDLEnum.h"

@interface SDLTouchType : SDLEnum {}

+(SDLTouchType*) valueOf:(NSString*) value;
+(NSMutableArray*) values;

+(SDLTouchType*) BEGIN;
+(SDLTouchType*) MOVE;
+(SDLTouchType*) END;

@end
