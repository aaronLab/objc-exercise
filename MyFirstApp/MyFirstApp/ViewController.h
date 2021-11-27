//
//  ViewController.h
//  MyFirstApp
//
//  Created by Aaron Lee on 2021/11/27.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)buttonPressed:(id)sender;

@end

