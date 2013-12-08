//
//  PLViewController.m
//  Blocks
//
//  Created by Peter Lehrer on 12/8/13.
//  Copyright (c) 2013 Peter Lehrer. All rights reserved.
//

#import "PLViewController.h"

@interface PLViewController ()

@end

@implementation PLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	__block int assignValue;
	
	int (^blockName)(int value1, float value2) = ^(int value1, float value2){
		assignValue = value1;
		NSLog(@"block evaulated with int %i and float %f", value1, value2);
		return assignValue;
	};
	
	int returnFromBlock = blockName(44, 0.5);
	NSLog(@"%i", returnFromBlock);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
