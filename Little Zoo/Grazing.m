//
// Created by Kate Polyakova on 12/14/14.
// Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import "Grazing.h"
#import "D3Size.h"


@implementation Grazing{
}

- (BOOL)feed:(id <Food>)food {
    BOOL result = NO;
    float ratioWeights = food.weight.floatValue / self.weight.floatValue;

    if (food.type == FoodType_Grass){
        if (ratioWeights<=0.5f)
            result = YES;
    }

    if (food.type == FoodType_Other) {
        if (ratioWeights <= 0.05f){
            if (self.weight.floatValue>=100 & [self.size volume].floatValue>=100)
                result = YES;
        }
        else if (ratioWeights <= 0.2f){
            if (self.weight.floatValue<100 & [self.size volume].floatValue<100)
                result = YES;
            }
    }
    return result;
}

- (BOOL)play:(id)toy {
    return NO;
}

@end