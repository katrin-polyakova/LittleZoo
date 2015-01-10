//
// Created by Kate Polyakova on 12/19/14.
// Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import "Cable.h"
#import "D3Size.h"


@implementation Cable {

}

@synthesize weight = _weight;
@synthesize size = _size;

- (instancetype)initWithWeight:(NSNumber *)weight size:(D3Size *)size {
    self = [super init];
    if (self) {
        _weight = weight;
        _size = size;
    }

    return self;
}

+ (instancetype)cableWithWeight:(NSNumber *)weight size:(D3Size *)size {
    return [[self alloc] initWithWeight:weight size:size];
}

- (FoodType)type {
    return FoodType_Other;
}

@end