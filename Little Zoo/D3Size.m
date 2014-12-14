//
//  D3Size.m
//  Little Zoo
//
//  Created by Kate Polyakova on 12/14/14.
//  Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import "D3Size.h"
#import "Food.h"

@implementation D3Size
- (instancetype)initWithHeight:(NSNumber *)height width:(NSNumber *)width lenght:(NSNumber *)lenght {
    self = [super init];
    if (self) {
        self.height = height;
        self.width = width;
        self.lenght = lenght;
    }

    return self;
}

+ (instancetype)sizeWithHeight:(NSNumber *)height width:(NSNumber *)width lenght:(NSNumber *)lenght {
    return [[self alloc] initWithHeight:height width:width lenght:lenght];
}

- (NSNumber *)volume {

    NSNumber *result = @(self.height.intValue * self.lenght.intValue * self.width.intValue);
    return result;
}

- (id)copyWithZone:(NSZone *)zone {
    D3Size *copy = [[[self class] allocWithZone:zone] init];

    if (copy != nil) {
        copy.height = self.height;
        copy.width = self.width;
        copy.lenght = self.lenght;
    }

    return copy;
}


@end
