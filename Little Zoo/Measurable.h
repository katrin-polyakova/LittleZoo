//
// Created by Kate Polyakova on 12/15/14.
// Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import <Foundation/Foundation.h>

@class D3Size;

@protocol Measurable <NSObject>

@property (nonatomic, strong) NSNumber* weight;
@property (nonatomic, copy) D3Size* size;

@end