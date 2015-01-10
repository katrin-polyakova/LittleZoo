//
//  CageTest.m
//  Little Zoo
//
//  Created by Kate Polyakova on 12/21/14.
//  Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Cage.h"
#import "Predator.h"
#import "D3Size.h"
#import "Grazing.h"

@interface CageTest : XCTestCase

@end

@implementation CageTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAddAnimal {
    Cage* cage = [[Cage alloc] init];
    D3Size *size = [D3Size sizeWithHeight:@(10) width:@(5) length:@(10)];
    Predator* predator = [[Predator alloc] initWithWeight:@(5) size:size];

    BOOL result = [cage addAnimal:predator];
    NSInteger count = [cage animalsCount];

    XCTAssertTrue(result, @"Animal can be added to cage");
    XCTAssertEqual(count, 1, @"After adding animal to empty cage, cage shouдd contain at least one animal ");
}

- (void)testIsAnimalInCage {
    Cage* cage = [[Cage alloc] init];
    D3Size *size = [D3Size sizeWithHeight:@(10) width:@(5) length:@(10)];
    id<Animal> predator = [[Predator alloc] initWithWeight:@(5) size:size];

    XCTAssertFalse([cage containAnimal:predator], @"It shoud not be possible to find something in empty cage");

    [cage addAnimal:predator];

    BOOL  result = [cage containAnimal:predator];

    XCTAssertTrue(result, @"It should be possible to find animal in the cage");
}

- (void)testFilterPredators {
    Cage* cage = [[Cage alloc] init];

    D3Size *size = [D3Size sizeWithHeight:@(10) width:@(5) length:@(10)];
    id<Animal> predator1 = [[Predator alloc] initWithWeight:@(55) size:size];
    id<Animal> predator2 = [[Predator alloc] initWithWeight:@(60) size:size];
    id<Animal> predator3 = [[Predator alloc] initWithWeight:@(70) size:size];
    id<Animal> grazing1 = [[Grazing alloc] initWithWeight:@(5) size:size];

    [@[predator1, grazing1, predator2, predator3] enumerateObjectsUsingBlock:^(id<Animal> obj, NSUInteger idx, BOOL *stop) {
        [cage addAnimal:obj];
    }];
    NSArray *predators = [cage filterPredators];

    XCTAssertFalse([predators containsObject:grazing1], @"Filtering of predators should return only predators");

}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
