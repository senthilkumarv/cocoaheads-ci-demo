//
//  TWResultViewController.m
//  Calculator
//
//  Created by Senthil Kumar on 31/05/13.
//  Copyright (c) 2013 ThoughtWorks. All rights reserved.
//

#import "TWResultViewController.h"

@interface TWResultViewController ()

@end

@implementation TWResultViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _resultToDisplay = 0;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _result.text = _resultToDisplay;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
