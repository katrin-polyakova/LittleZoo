//
// Created by Kate Polyakova on 12/15/14.
// Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import "BaseAnimal.h"


@implementation BaseAnimal {

}
@synthesize weight = _weight;
@synthesize size = _size;

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