//  SDLTCPTransport.h
//
//  Copyright (c) 2014 Ford Motor Company. All rights reserved.


#import "SDLAbstractTransport.h"

@interface SDLTCPTransport : SDLAbstractTransport {
	CFSocketRef socket;
}

@end
