//
//  ViewController.m
//  VarConst
//
//  Created by Aaron Lee on 2021/11/27.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString *word1 = @"Word1";
    
    NSString * const word2 = @"Word2";
    
    word1 = @"New word1";
    
    // word2 = @"New word2"; => Err bc it's const.
    
    int int1 = 1;
    int1 += 1;
    
    const int int2 = 2;
    // int2 += 1; => Err bc it's const.
}


@end
