//
// Created by Kate Polyakova on 12/14/14.
// Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Measurable.h"

typedef NS_ENUM(int, FoodType){
    FoodType_Grass,
    FoodType_Meat,
    FoodType_Other,
};

@protocol Food <Measurable>

@property(nonatomic, readonly) FoodType type;
//@property(nonatomic) size;

@end