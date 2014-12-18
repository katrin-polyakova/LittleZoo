//
// Created by Kate Polyakova on 12/15/14.
// Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Food.h"
#import "Animal.h"

@class D3Size;

@interface BaseAnimal : NSObject<Animal, Food>
- (instancetype)initWithWeight:(NSNumber *)weight size:(D3Size *)size;

+ (instancetype)animalWithWeight:(NSNumber *)weight size:(D3Size *)size;

@end