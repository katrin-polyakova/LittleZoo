//
// Created by Kate Polyakova on 12/15/14.
// Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import "BaseAnimal.h"
#import "D3Size.h"


@implementation BaseAnimal {

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

+ (instancetype)animalWithWeight:(NSNumber *)weight size:(D3Size *)size {
    return [[self alloc] initWithWeight:weight size:size];
}

- (FoodType)type {
    return FoodType_Meat;
}

- (BOOL)feed:(id <Food>)food {
    if (food != self)
        return YES;
    return NO;
}

- (BOOL)play:(id)toy {
    return NO;
}

@end