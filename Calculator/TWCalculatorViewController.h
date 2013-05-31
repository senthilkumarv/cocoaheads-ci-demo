//
//  TWCalculatorViewController.h
//  Calculator
//
//  Created by Senthil Kumar on 31/05/13.
//  Copyright (c) 2013 ThoughtWorks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TWCalculatorViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *firstNumber;
@property (weak, nonatomic) IBOutlet UITextField *secondNumber;

- (IBAction)add:(id)sender;
- (IBAction)clear:(id)sender;

@end
