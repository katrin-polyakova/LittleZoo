//
// Created by Kate Polyakova on 12/15/14.
// Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import "BaseAnimal.h"
#import "D3Size.h"


@implementation BaseAnimal {

}
@synthesize weight = _weight;
@synthesize size = _size;
@synthesize species = _species;
@synthesize name = _name;

- (instancetype)initWithWeight:(NSNumber *)weight size:(D3Size *)size species:(NSString *)species name:(NSString *)name {
    self = [super init];
    if (self) {
        _weight = weight;
        _size = size;
        _species = species;
        _name = name;
    }
    return self;
}
+ (instancetype)animalWithWeight:(NSNumber *)weight size:(D3Size *)size species:(NSString *)species name:(NSString *)name {
    return [[self alloc] initWithWeight:weight size:[size copy] species:species name:name];
}

- (instancetype)initWithWeight:(NSNumber *)weight size:(D3Size *)size {
    return [self initWithWeight:weight size:size species:nil name:nil];
}
+ (instancetype)animalWithWeight:(NSNumber *)weight size:(D3Size *)size {
    return [[self alloc] initWithWeight:weight size:[size copy]];
}

- (instancetype)initWithSpecies:(NSString *)species name:(NSString *)name {
    return [self initWithWeight:@(60) size:[D3Size sizeWithHeight:@(150) width:@(30) length:@(120)] species:species name:name];
}
+ (instancetype)animalWithSpecies:(NSString *)species name:(NSString *)name {
    return [[self alloc] initWithSpecies:species name:name];
}

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

//- (void)prettyPrint{
//    for(id<Animal> animal in self.animals){
//
//    }
//
//}

- (NSString *)description
{
    NSMutableString *description = [NSMutableString stringWithFormat:@"\t< %@: ", NSStringFromClass([self class])];
    [description appendFormat:@"\n\tName: %@", self.name];
    [description appendFormat:@"\n\tSpecies: %@", self.species];
    [description appendFormat:@"\n\tweight: %@ kg", self.weight];
    [description appendFormat:@"\n\t%@ ", [self.size description]];
    [description appendString:@">"];
    return description;
}

- (id)copyWithZone:(NSZone *)zone {
    BaseAnimal *copy = [[[self class] allocWithZone:zone] init];

    if (copy != nil) {
        copy->_weight = _weight;
        copy->_size = _size;
        copy->_species = _species;
        copy->_name = _name;
    }

    return copy;
}

- (BOOL)isEqual:(id)other {
    if (other == self)
        return YES;
    if (!other || ![[other class] isEqual:[self class]])
        return NO;

    return [self isEqualToAnimal:other];
}

- (BOOL)isEqualToAnimal:(BaseAnimal *)animal {
    if (self == animal)
        return YES;
    if (animal == nil)
        return NO;
    if (_weight != animal->_weight && ![_weight isEqualToNumber:animal->_weight])
        return NO;
    if (_size != animal->_size && ![_size isEqualToSize:animal->_size])
        return NO;
    if (_species != animal->_species && ![_species isEqualToString:animal->_species])
        return NO;
    if (_name != animal->_name && ![_name isEqualToString:animal->_name])
        return NO;
    return YES;
}

- (NSUInteger)hash {
    NSUInteger hash = [_weight hash];
    hash = hash * 31u + [_size hash];
    hash = hash * 31u + [_species hash];
    hash = hash * 31u + [_name hash];
    return hash;
}


@end