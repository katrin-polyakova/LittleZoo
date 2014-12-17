//
// Created by Kate Polyakova on 12/15/14.
// Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Food.h"
#import "Animal.h"


@interface BaseAnimal : NSObject<Animal, Food>

@end