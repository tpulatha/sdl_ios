//  SDLParameterPermissions.h
//
//  Copyright (c) 2014 Ford Motor Company. All rights reserved.


#import "SDLRPCMessage.h"

@interface SDLParameterPermissions : SDLRPCStruct {}

-(id) init;
-(id) initWithDictionary:(NSMutableDictionary*) dict;

@property(strong) NSMutableArray* allowed;
@property(strong) NSMutableArray* userDisallowed;

@end
