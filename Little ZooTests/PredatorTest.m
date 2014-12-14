//
//  PredatorTest.m
//  Little Zoo
//
//  Created by Kate Polyakova on 12/14/14.
//  Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Predator.h"
#import "D3Size.h"
#import "Rabbit.h"
#import "Vegetables.h"

@interface PredatorTest : XCTestCase

@end

@implementation PredatorTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFeed {
    D3Size *size = [[D3Size alloc] initWithHeight:@(10) width:@(27) lenght:@(89)];
    Predator *predator = [Predator predatorWithWeight:@(100) size:size];

    Rabbit *food = [[Rabbit alloc] init];
    food.weight = @(3);
    food.size = [D3Size sizeWithHeight:@(30) width:@(20) lenght:@(50)];

    BOOL result = [predator feed:food];

    XCTAssert(result, @"Predator eat meat");

    Vegetables *carrot = [[Vegetables alloc] init];
    result = [predator feed:carrot];

    XCTAssertFalse(result, @"Predator not eating vegetables");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
