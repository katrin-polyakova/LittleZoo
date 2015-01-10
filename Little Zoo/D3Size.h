//  D3Size.h
//  Little Zoo
//
//  Created by Kate Polyakova on 12/14/14.
//  Copyright (c) 2014 Kate Polyakova. All rights reserved.

#import <Foundation/Foundation.h>

@interface D3Size : NSObject <NSCopying>

@property (nonatomic, strong) NSNumber* height;
@property (nonatomic, strong) NSNumber* width;
@property (nonatomic, strong) NSNumber* length;

- (instancetype)initWithHeight:(NSNumber *)height width:(NSNumber *)width length:(NSNumber *)length;

+ (instancetype)sizeWithHeight:(NSNumber *)height width:(NSNumber *)width length:(NSNumber *)length;

-(NSNumber *)volume;

- (id)copyWithZone:(NSZone *)zone;
- (BOOL)isEqual:(id)other;
- (BOOL)isEqualToSize:(D3Size *)size;
- (NSUInteger)hash;

- (NSString *)description;

@end
