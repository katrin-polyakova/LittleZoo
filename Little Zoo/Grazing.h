//
// Created by Kate Polyakova on 12/14/14.
// Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseAnimal.h"


@interface Grazing : BaseAnimal <NSCopying>
- (id)copyWithZone:(NSZone *)zone;

- (BOOL)isEqual:(id)other;

- (BOOL)isEqualToGrazing:(Grazing *)grazing;

- (NSUInteger)hash;

@end