//
//  ViewController.m
//  Objc
//
//  Created by Aaron Lee on 2021/11/28.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     Const & Var
     */
    NSString *word1 = @"word1";
    NSString * const word2 = @"word2"; // Can't change
    
    word1 = @"new value";
    
    int int1 = 1;
    const int int2 = 2; // Can't change
    
    int1 += 1;
    
    /**
     Strings
     */
    name = @"Aaron";
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.text = name;
    self.label.font = [UIFont systemFontOfSize:20.0 weight:UIFontWeightBold];
    
    // Locally in a function
    NSString *word = @"Hello";
    self.label.text = word;
    
    // String Interpolation
    self.label.text = [NSString stringWithFormat:@"%@, %@", word, name];
}


@end
