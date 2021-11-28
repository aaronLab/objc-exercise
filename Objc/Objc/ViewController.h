//
//  ViewController.h
//  Objc
//
//  Created by Aaron Lee on 2021/11/28.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSString *name;
    
    int int1;
    int int2;
    
    double double1;
    double double2;
    
    BOOL bool1;
    BOOL bool2;
}

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;

@end

