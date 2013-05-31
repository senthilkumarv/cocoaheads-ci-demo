//
//  TWNumberValidator.m
//  Calculator
//
//  Created by Senthil Kumar on 31/05/13.
//  Copyright (c) 2013 ThoughtWorks. All rights reserved.
//

#import "TWNumberValidator.h"

@implementation TWNumberValidator

+(BOOL) validate: (NSString *) stringToValidate {
    for(int i=0; i<stringToValidate.length; i++) {
        if(!([stringToValidate characterAtIndex:i] >=48 && [stringToValidate characterAtIndex:i] <= 57)) {
            return NO;
        }        
    }
    return YES;
}

@end
