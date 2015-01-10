//
//  main.m
//  Little Zoo
//
//  Created by Kate Polyakova on 12/14/14.
//  Copyright (c) 2014 Kate Polyakova. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "D3Size.h"
#import "BaseAnimal.h"
#import "Predator.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        D3Size *sizePredator = [[D3Size alloc] initWithHeight:@(5) width:@(7) length:@(18)];
        Predator *predator = [Predator animalWithWeight:@(10) size:sizePredator];
        
        BaseAnimal *bigAnimal = [[BaseAnimal alloc] init];
        bigAnimal.weight = @(21);
        bigAnimal.size = [D3Size sizeWithHeight:@(10) width:@(6) length:@(23)];
        float difr = [bigAnimal.size volume].floatValue/[predator.size volume].floatValue;
        NSLog(@"\n%d\n%d\n%g", [bigAnimal.size volume].intValue, [predator.size volume].intValue, difr);
        
        D3Size *size = [[D3Size alloc] initWithHeight:@(10) width:@(27) length:@(89)];
        NSLog(@"%@", [size description]);
        Predator *predator1 = [Predator animalWithWeight:@(100) size:size species:@("Tiger") name:@("Fluffy")];
        Predator *predator2 = [Predator animalWithWeight:@(100) size:size];
        
        predator1.size = size;
        size.height = @(155);
        predator2.size = size;
        
        NSLog(@"\npredator1 %@", predator1);
        NSLog(@"\npredator2 %@", predator2);
        
        return  UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
