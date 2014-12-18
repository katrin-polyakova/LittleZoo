//
// Created by Kate Polyakova on 12/14/14.
// Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Food.h"

@class D3Size;

@interface Vegetables : NSObject<Food>
- (instancetype)initWithWeight:(NSNumber *)weight size:(D3Size *)size;

+ (instancetype)vegetablesWithWeight:(NSNumber *)weight size:(D3Size *)size;


@end