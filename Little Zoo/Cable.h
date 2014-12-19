//
// Created by Kate Polyakova on 12/19/14.
// Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Food.h"

@class D3Size;


@interface Cable : NSObject<Food>
- (instancetype)initWithWeight:(NSNumber *)weight size:(D3Size *)size;

+ (instancetype)cableWithWeight:(NSNumber *)weight size:(D3Size *)size;

@end