//  SDLVehicleDataNotificationStatus.m
//
//  Copyright (c) 2014 Ford Motor Company. All rights reserved.

#import "SDLVehicleDataNotificationStatus.h"

SDLVehicleDataNotificationStatus* SDLVehicleDataNotificationStatus_NOT_SUPPORTED = nil;
SDLVehicleDataNotificationStatus* SDLVehicleDataNotificationStatus_NORMAL = nil;
SDLVehicleDataNotificationStatus* SDLVehicleDataNotificationStatus_ACTIVE = nil;
SDLVehicleDataNotificationStatus* SDLVehicleDataNotificationStatus_NOT_USED = nil;

NSMutableArray* SDLVehicleDataNotificationStatus_values = nil;

@implementation SDLVehicleDataNotificationStatus

+(SDLVehicleDataNotificationStatus*) valueOf:(NSString*) value {
    for (SDLVehicleDataNotificationStatus* item in SDLVehicleDataNotificationStatus.values) {
        if ([item.value isEqualToString:value]) {
            return item;
        }
    }
    return nil;
}

+(NSMutableArray*) values {
    if (SDLVehicleDataNotificationStatus_values == nil) {
        SDLVehicleDataNotificationStatus_values = [[NSMutableArray alloc] initWithObjects:
                SDLVehicleDataNotificationStatus.NOT_SUPPORTED,
                SDLVehicleDataNotificationStatus.NORMAL,
                SDLVehicleDataNotificationStatus.ACTIVE,
                SDLVehicleDataNotificationStatus.NOT_USED,
                nil];
    }
    return SDLVehicleDataNotificationStatus_values;
}

+(SDLVehicleDataNotificationStatus*) NOT_SUPPORTED {
    if (SDLVehicleDataNotificationStatus_NOT_SUPPORTED == nil) {
        SDLVehicleDataNotificationStatus_NOT_SUPPORTED = [[SDLVehicleDataNotificationStatus alloc] initWithValue:@"NOT_SUPPORTED"];
    }
    return SDLVehicleDataNotificationStatus_NOT_SUPPORTED;
}

+(SDLVehicleDataNotificationStatus*) NORMAL {
    if (SDLVehicleDataNotificationStatus_NORMAL == nil) {
        SDLVehicleDataNotificationStatus_NORMAL = [[SDLVehicleDataNotificationStatus alloc] initWithValue:@"NORMAL"];
    }
    return SDLVehicleDataNotificationStatus_NORMAL;
}

+(SDLVehicleDataNotificationStatus*) ACTIVE {
    if (SDLVehicleDataNotificationStatus_ACTIVE == nil) {
        SDLVehicleDataNotificationStatus_ACTIVE = [[SDLVehicleDataNotificationStatus alloc] initWithValue:@"ACTIVE"];
    }
    return SDLVehicleDataNotificationStatus_ACTIVE;
}

+(SDLVehicleDataNotificationStatus*) NOT_USED {
    if (SDLVehicleDataNotificationStatus_NOT_USED == nil) {
        SDLVehicleDataNotificationStatus_NOT_USED = [[SDLVehicleDataNotificationStatus alloc] initWithValue:@"NOT_USED"];
    }
    return SDLVehicleDataNotificationStatus_NOT_USED;
}

@end
