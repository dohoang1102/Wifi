//
//  SOLStumbler.h
//  StumblerIOS5
//
//  Created by Guvener Gokce on 11/5/11.
//  Copyright (c) 2011 RIA/Cocoa Developer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#include <dlfcn.h>
@interface SOLStumbler : NSObject {
	NSMutableDictionary *networks; //Key: MAC Address (BSSID)
	
	void *libHandle;
	void *airportHandle;    
	int (*apple80211Open)(void *);
	int (*apple80211Bind)(void *, NSString *);
	int (*apple80211Close)(void *);
	int (*associate)(void *, NSDictionary*, NSString*);
	int (*apple80211Scan)(void *, NSArray **, void *);
}
- (NSDictionary *)networks;                                                             //returns all 802.11 scanned network(s)
- (NSDictionary *)network:(NSString *) BSSID;                   //return specific 802.11 network by BSSID (MAC Address)
- (void)scanNetworks;
- (int)numberOfNetworks;
@end
