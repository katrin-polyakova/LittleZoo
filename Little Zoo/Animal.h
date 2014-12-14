//
//  Animal.h
//  Little Zoo
//
//  Created by Kate Polyakova on 12/14/14.
//  Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import <Foundation/Foundation.h>

@class D3Size;
@protocol Food;

@protocol Animal <NSObject>

@property (nonatomic, strong) NSNumber* weight;
@property (nonatomic, strong) D3Size* size;

-(BOOL)feed:(id<Food>)food;
-(BOOL)play:(id)toy;

@optional
-(BOOL)sleep;


@end
