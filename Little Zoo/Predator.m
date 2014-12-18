//
// Created by Kate Polyakova on 12/14/14.
// Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import "Predator.h"
#import "D3Size.h"

@implementation Predator {
}

- (BOOL)feed:(id <Food>)food {
    BOOL result = NO;
    if ([super feed:food]){
        if (food.type == FoodType_Meat){
            if ([food.size volume].intValue/[self.size volume].intValue<2){
                result = YES;
            }
        }
    }
    return result;
}

- (BOOL)play:(id)toy {
    return NO;
}

@end