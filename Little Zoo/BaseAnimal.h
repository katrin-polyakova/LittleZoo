//
// Created by Kate Polyakova on 12/15/14.
// Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Food.h"
#import "Animal.h"

@class D3Size;

@interface BaseAnimal : NSObject<Animal, Food, NSCopying>

// Designated initializer
- (instancetype)initWithWeight:(NSNumber *)weight size:(D3Size *)size species:(NSString *)species name:(NSString *)name;
+ (instancetype)animalWithWeight:(NSNumber *)weight size:(D3Size *)size species:(NSString *)species name:(NSString *)name;

- (instancetype)initWithWeight:(NSNumber *)weight size:(D3Size *)size;
+ (instancetype)animalWithWeight:(NSNumber *)weight size:(D3Size *)size;

- (instancetype)initWithSpecies:(NSString *)species name:(NSString *)name;
+ (instancetype)animalWithSpecies:(NSString *)species name:(NSString *)name;

- (id)copyWithZone:(NSZone *)zone;
- (BOOL)isEqual:(id)other;
- (BOOL)isEqualToAnimal:(BaseAnimal *)animal;
- (NSUInteger)hash;

- (NSString *)description;

@end