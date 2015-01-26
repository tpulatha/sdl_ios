//  SDLRPCResponse.m
//
//  Copyright (c) 2014 Ford Motor Company. All rights reserved.

#import "SDLRPCResponse.h"

#import "SDLNames.h"

@implementation SDLRPCResponse

-(NSNumber*) correlationID {
	return [function objectForKey:NAMES_correlationID];
}

-(void) setCorrelationID:(NSNumber *)corrID {
    if (corrID != nil) {
        [function setObject:corrID forKey:NAMES_correlationID];
    } else {
        [function removeObjectForKey:NAMES_correlationID];
    }
}

-(void) setSuccess:(NSNumber*) success {
    if (success != nil) {
        [parameters setObject:success forKey:NAMES_success];
    } else {
        [parameters removeObjectForKey:NAMES_success];
    }
}

-(NSNumber*) success {
    return [parameters objectForKey:NAMES_success];
}

-(void) setResultCode:(SDLResult*) resultCode {
    if (resultCode != nil) {
        [parameters setObject:resultCode forKey:NAMES_resultCode];
    } else {
        [parameters removeObjectForKey:NAMES_resultCode];
    }
}

-(SDLResult*) resultCode {
    NSObject* obj = [parameters objectForKey:NAMES_resultCode];
    if ([obj isKindOfClass:SDLResult.class]) {
        return (SDLResult*)obj;
    } else { 
        return [SDLResult valueOf:(NSString*)obj];
    }
}

-(void) setInfo:(NSString*) info {
    if (info != nil) {
        [parameters setObject:info forKey:NAMES_info];
    } else {
        [parameters removeObjectForKey:NAMES_info];
    }
}

-(NSString*) info {
    return [parameters objectForKey:NAMES_info];
}

@end
