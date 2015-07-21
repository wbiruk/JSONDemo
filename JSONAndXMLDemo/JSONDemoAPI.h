//
//  JSONDemoAPI.h
//  JSONAndXMLDemo
//
//  Created by Wiktor Biruk on 21/07/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

#import <Foundation/Foundation.h>

#warning Set your Geonames username in the kUsername constant.
static NSString *const kUsername = @"wbiruk";

@interface JSONDemoAPI : NSObject


+ (NSString *)getUsername;

+ (void)downloadDataFromURL:(NSURL *)url withCompletionHandler:(void(^)(NSData *data))completionHandler;

@end
