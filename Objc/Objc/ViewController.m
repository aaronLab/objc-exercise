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
    
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.font = [UIFont systemFontOfSize:20.0 weight:UIFontWeightBold];
    
    [self string];
    
    [self ints];
    
    [self doubles];
    
    [self booleans];
    
    [self arrays];
    
    [self statement];
    
    [self loop];
}

- (void)loop {
    
    int number = 10;
    
    for (number = 10; number > 0; number -= 1) {
        if (number < 5) {
            continue;
        }
        NSLog(@"%i", number);
    }
    
    NSLog(@"%s", "=====");
    
    number = 0;
    while (number < 10) {
        NSLog(@"%i", number);
        number += 1;
        
        if (number > 5) {
            break;
        }
    }
    
}

- (void)statement {
    
    BOOL state = false;
    
    if (state == true) {
        self.label.text = @"Allow";
    } else {
        self.label.text = @"Deny";
    }
    
    NSString *name1 = @"Aaron";
    NSString *name2 = @"Syeda";
    
    if ([name1 isEqualToString:@"Aaron"] && [name2 isEqualToString:@"Syeda"] ) {
        [self.button setTitle:@"Aaron And Syeda" forState:UIControlStateNormal];
    }
    
    if ([name1 isEqualToString:@"Somebody"] || [name2 isEqualToString:@"Nobody"] ) {
        [self.mySwitch setOn:false];
    } else if (![name1 isEqualToString:@"Somebody"] || ![name2 isEqualToString:@"Nobody"] ) {
        [self.mySwitch setOn:true];
    }
    
}

- (void)arrays {
    
    NSArray *array = @[@"Apple", @"Banana", @"Orange"];
    NSUInteger randomIndex = arc4random() % array.count;
    self.label.text = array[randomIndex];
    
    NSMutableArray *array2 = [[NSMutableArray alloc] initWithObjects:@"Apple", @"Banana", @"Orange", nil];
    [array2 addObject:@"Melon"];
    [array2 insertObject:@"Mango" atIndex:0];
    [array2 removeObjectAtIndex:2];
    
    NSString *count = [NSString stringWithFormat:@"%lu", array2.count];
    [self.button setTitle:count forState:UIControlStateNormal];
    NSLog(@"%@", array2);
}

- (void)booleans {
    
    bool1 = YES;
    bool2 = false;
    
    [self.mySwitch setOn:bool1];
    [self.button setEnabled:bool2];
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
