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
    
    // [self string];
    
    // [self ints];
    
    [self doubles];
}

- (void)doubles {
    double1 = 100.123;
    double2 = 200.1234;
    
    double score = double1 + double2;
    self.label.text = [NSString stringWithFormat:@"%.2f", score];
    
    int ceiledDouble = ceil(double1);
    NSLog(@"%d", ceiledDouble);
}

- (void)ints {
    int1 = 10;
    int2 = 100;
    
    int score = int1 + int2;
    
    self.label.text = [NSString stringWithFormat:@"%d", score];
    
    NSLog(@"%d, %d", int1, int2);
}

- (void)string {
    /**
     Const & Var
     */
    NSString *word1 = @"word1";
    NSString * const word2 = @"word2"; // Can't change
    NSLog(word2);
    
    word1 = @"new value";
    
    int int1 = 1;
    const int int2 = 2; // Can't change
    NSLog(@"%d", int2);
    
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
