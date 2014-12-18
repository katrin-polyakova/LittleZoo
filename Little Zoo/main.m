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
        NSLog(@"\n%d\n%d", [bigAnimal.size volume].intValue, [predator.size volume].intValue);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
