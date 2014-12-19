//
//  GrazingTest.m
//  Little Zoo
//
//  Created by Kate Polyakova on 12/18/14.
//  Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "D3Size.h"
#import "Grazing.h"
#import "Vegetables.h"
#import "Rabbit.h"
#import "Cable.h"

@interface GrazingTest : XCTestCase

@end

@implementation GrazingTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFeed {
    D3Size *sizeAnimal = [D3Size sizeWithHeight:@(15) width:@(10) length:@(50)];
    Grazing *grazing = [[Grazing alloc] initWithWeight:@(1000) size:sizeAnimal];

    Vegetables *carrot = [[Vegetables alloc] init];

    BOOL result = [grazing feed:carrot];

    XCTAssert(result, @"Grazing eats grass");

    Cable *cable = [[Cable alloc] init];

    result = [grazing feed:cable];

    XCTAssert(result, @"Sometimes grazing eats something strange");

    Rabbit *food = [[Rabbit alloc] init];

    result = [grazing feed:food];

    XCTAssertFalse(result, @"Grazing doesn't eat meat");
}

- (void)testFeed_grassTooBig {
    D3Size *sizeAnimal = [D3Size sizeWithHeight:@(15) width:@(10) length:@(50)];
    Grazing *grazing = [[Grazing alloc] initWithWeight:@(100) size:sizeAnimal];

    Vegetables *grass = [[Vegetables alloc] init];
    grass.weight = @(600);
    grass.size = [D3Size sizeWithHeight:@(20) width:@(20) length:@(15)];

    BOOL result = [grazing feed:grass];

    XCTAssertFalse(result, @"Food is too big for animal");
}

- (void)testFeed_somethingOtherTooBig {
    D3Size *sizeAnimal = [D3Size sizeWithHeight:@(4) width:@(2) length:@(5)];
    Grazing *grazing = [[Grazing alloc] initWithWeight:@(110) size:sizeAnimal];

    Cable *cable = [[Cable alloc] init];
    cable.weight = @(20);
    cable.size = [D3Size sizeWithHeight:@(1) width:@(1) length:@(10)];

    BOOL result = [grazing feed:cable];

    XCTAssertFalse(result, @"Cables are too big for animal");
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
