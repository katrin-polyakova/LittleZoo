//
// Created by Kate Polyakova on 12/21/14.
// Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Animal;

@interface Cage : NSObject

- (BOOL)addAnimal:(id <Animal>)animal;
- (NSInteger)animalsCount;

- (BOOL)containAnimal:(id <Animal>)animal;

- (NSArray*)filterPredators;
@end