//
//  ViewController.m
//  MyFirstApp
//
//  Created by Aaron Lee on 2021/11/27.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int numOfClicks = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.text = @"Hello";
    
    [self.button setTitle:@"Click Me!" forState:UIControlStateNormal];
}


- (IBAction)buttonPressed:(id)sender {
    numOfClicks += 1;
    
    NSString * labelText = [NSString stringWithFormat:@"You pressed %d times!", numOfClicks];
    self.label.text = labelText;
}

@end
