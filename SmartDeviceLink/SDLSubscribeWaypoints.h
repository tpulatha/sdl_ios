//  SDLSubscribeWaypoints.h
//

#import "SDLRPCRequest.h"

/**
 * A SDLSubscribeWaypoints can be sent to subscribe
 * for any changes in waypoints/destinations
 *
 * @see SDLUnsubscribeWaypoints
 *
 */

NS_ASSUME_NONNULL_BEGIN

@interface SDLSubscribeWayPoints : SDLRPCRequest

@end

NS_ASSUME_NONNULL_END

NS_ASSUME_NONNULL_BEGIN

__deprecated_msg("Use SDLSubscribeWayPoints instead")
@interface SDLSubscribeWaypoints : SDLSubscribeWayPoints
@end

NS_ASSUME_NONNULL_END
