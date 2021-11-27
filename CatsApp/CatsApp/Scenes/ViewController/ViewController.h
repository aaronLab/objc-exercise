//
//  ViewController.h
//  CatsApp
//
//  Created by Aaron Lee on 2021/11/27.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    
    SystemSoundID soundId;
    
}

@property (weak, nonatomic) NSTimer *timer;

@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)buttonPressed:(id)sender;

@end

