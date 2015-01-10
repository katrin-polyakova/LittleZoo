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

- (id)copyWithZone:(NSZone *)zone {
    Grazing *copy = [[[self class] allocWithZone:zone] init];

    if (copy != nil) {
        copy.weight = self.weight;
        copy.size = self.size;
        copy.species = self.species;
        copy.name = self.name;}

    return copy;
}

- (BOOL)isEqual:(id)other {
    if (other == self)
        return YES;
    if (!other || ![[other class] isEqual:[self class]])
        return NO;

    return [self isEqualToGrazing:other];
}

- (BOOL)isEqualToGrazing:(Grazing *)grazing {
    if (self == grazing)
        return YES;
    return grazing != nil;
}

- (NSUInteger)hash {
    return [super hash];
}


@end