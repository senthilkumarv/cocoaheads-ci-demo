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

@interface TWCalculatorViewController ()

@end

@implementation TWCalculatorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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
