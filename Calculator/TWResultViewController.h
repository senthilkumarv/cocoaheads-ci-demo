//
//  TWResultViewController.h
//  Calculator
//
//  Created by Senthil Kumar on 31/05/13.
//  Copyright (c) 2013 ThoughtWorks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TWResultViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *result;
@property (strong, nonatomic) NSString *resultToDisplay;

@end
