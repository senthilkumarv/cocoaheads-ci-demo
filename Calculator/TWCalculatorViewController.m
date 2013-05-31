//
//  TWCalculatorViewController.m
//  Calculator
//
//  Created by Senthil Kumar on 31/05/13.
//  Copyright (c) 2013 ThoughtWorks. All rights reserved.
//

#import "TWCalculatorViewController.h"
#import "TWNumberValidator.h"
#import "TWResultViewController.h"

@implementation TWCalculatorViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSString *resultString = [NSString stringWithFormat:@"%d",  [_firstNumber.text intValue] + [_secondNumber.text intValue]];
    [segue.destinationViewController setResultToDisplay: resultString];
}


- (IBAction)add:(id)sender {
    if([TWNumberValidator validate:_firstNumber.text] && [TWNumberValidator validate:_secondNumber.text]) {
        [self performSegueWithIdentifier:@"displayResult" sender: self];
        return;
    }
    [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Invalid Input" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
}

- (IBAction)clear:(id)sender {
    self.firstNumber.text = @"";
    self.secondNumber.text = @"";
}
@end
