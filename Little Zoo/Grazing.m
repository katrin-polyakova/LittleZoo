//
// Created by Kate Polyakova on 12/14/14.
// Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import "Grazing.h"

@implementation Grazing{

}

@synthesize weight = _weight;
@synthesize size = _size;

- (BOOL)feed:(id <Food>)food {
    return NO;
}

- (BOOL)play:(id)toy {
    return NO;
}

@end