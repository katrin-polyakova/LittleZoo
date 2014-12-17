//
//  Animal.h
//  Little Zoo
//
//  Created by Kate Polyakova on 12/14/14.
//  Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Measurable.h"

@protocol Food;

@protocol Animal <Measurable>

-(BOOL)feed:(id<Food>)food;
-(BOOL)play:(id)toy;

@optional
-(BOOL)sleep;


@end
