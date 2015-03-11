//
//  main.m
//  BrowreOtisHW3
//
//  Created by Otis Brower on 3/9/15.
//  Copyright (c) 2015 Otis Brower. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Automobile.h"

int randomValueBetween(int min, int max)
{
    return (int)(min + arc4random_uniform(max - min +1));
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Create 2 cars, Maserati & Honda, race with random speed method
        Automobile *car1;
        Automobile *car2;
        
//        Details for each car
        car1 = [Automobile create:@"Maserati" createModel:@"Grand Turismo" createDoors:2];
        car2 = [Automobile create:@"Honda" createModel:@"Accord" createDoors:4];
        
//        Print description of cars
        [car1 description];
        [car2 description];
        
//        Loop to race cars
        for (int i = 0; i < 20; ++i){
            [car1 accelerate:randomValueBetween(0, 16)];
            [car2 accelerate:randomValueBetween(0, 16)];
        }
        
//        Print results of race
        if(car1.speed > car2.speed){
            NSLog(@"Final Speed for %@: %d", car1.model, car1.speed);
            NSLog(@"Final Speed for %@: %d", car2.model, car2.speed);
            NSLog(@"%@ %@ won!", car1.make, car1.model);
        }else if(car1.speed < car2.speed){
            NSLog(@"Final Speed for %@: %d", car1.model, car1.speed);
            NSLog(@"Final Speed for %@: %d", car2.model, car2.speed);
            NSLog(@"%@ %@ won!", car2.make, car2.model);
        }else{
            NSLog(@"Final Speed for %@: %d", car1.model, car1.speed);
            NSLog(@"Final Speed for %@: %d", car2.model, car2.speed);
            NSLog(@"It was a tie!");
        }
    }
    return 0;
}
