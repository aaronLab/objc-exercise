//
//  ViewController.m
//  CatsApp
//
//  Created by Aaron Lee on 2021/11/27.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configureView];
    [self configureSound];
}

- (void)dealloc {
    [self.timer invalidate];
}

- (void)configureView {
    [self configureButton];
    [self configureLabel];
}

- (void)configureButton {
    [[self.button imageView] setContentMode:UIViewContentModeScaleAspectFit];
    
    UIImage *btnImg = self.button.imageView.image;
    [self.button setImage:btnImg forState:UIControlStateHighlighted];
}

- (void)configureLabel {
    self.label.hidden = YES;
}

- (void)configureSound {
    NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundId);
}

- (IBAction)buttonPressed:(id)sender {
    self.label.hidden = NO;
    
    AudioServicesPlaySystemSound(soundId);
    
    [self.timer invalidate];
    self.timer = nil;
    
    self.timer = [NSTimer
                     scheduledTimerWithTimeInterval:3.0
                     target:self
                     selector:@selector(hideLabel)
                     userInfo:nil
                     repeats:NO];
}

- (void)hideLabel {
    
    self.label.hidden = YES;
    NSLog(@"Do something");
    
}

@end
