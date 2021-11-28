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
}

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

