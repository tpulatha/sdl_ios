//  SDLGetWaypoints.h
//

#import "SDLRPCRequest.h"

#import "SDLWaypointType.h"

NS_ASSUME_NONNULL_BEGIN

@interface SDLGetWayPoints : SDLRPCRequest

- (instancetype)initWithType:(SDLWaypointType)type;

/**
 * To request for either the destination
 * only or for all waypoints including destination
 *
 * Required
 */
@property (strong, nonatomic) SDLWaypointType waypointType;

@end

NS_ASSUME_NONNULL_END

NS_ASSUME_NONNULL_BEGIN

__deprecated_msg("Use SDLGetWayPoints instead")
    @interface SDLGetWaypoints : SDLGetWayPoints
@end

NS_ASSUME_NONNULL_END
