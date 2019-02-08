//
//  NFXLoader.m
//  netfox
//
//  Copyright © 2017 kasketis. All rights reserved.
//

#import "NFXLoader.h"

@implementation NFXLoader

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        SEL implementNetfoxSelector = NSSelectorFromString(@"implementNetfox");
        if ([NSURLSessionConfiguration respondsToSelector:implementNetfoxSelector])
        {
            [NSURLSessionConfiguration performSelector:implementNetfoxSelector];
        }
    });
}

@end
