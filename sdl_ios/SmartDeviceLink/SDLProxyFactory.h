//  SDLSyncProxyFactory.h
//
//  Copyright (c) 2014 Ford Motor Company. All rights reserved.


#import "SDLProxy.h"

@interface SDLProxyFactory : NSObject {}

+(SDLProxy*) buildSDLProxyWithListener:(NSObject<SDLProxyListener>*) listener;

+(SDLProxy*) buildSDLProxyWithListener:(NSObject<SDLProxyListener>*) listener
                              tcpIPAddress: (NSString*) ipaddress
                                   tcpPort: (NSString*) port;
@end
