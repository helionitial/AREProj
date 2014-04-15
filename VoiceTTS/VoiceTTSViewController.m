//
//  VoiceTTSViewController.m
//  VoiceTTS
//
//  Created by 朱克锋 on 12-11-15.
//  Copyright (c) 2012年 朱克锋. All rights reserved.
//

#import "VoiceTTSViewController.h"
#import "FliteTTS.h"
@interface VoiceTTSViewController ()

@end

@implementation VoiceTTSViewController
@synthesize speakText;
@synthesize fliteEngine;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.fliteEngine = [[FliteTTS alloc] init];
    //    cmu_us_kal
    //    cmu_us_kal16
    //    cmu_us_awb
    //    cmu_us_rms
    //    cmu_us_slt
    [fliteEngine setVoice:@"cmu_us_awb"];
}

-(IBAction)speakBtn:(id)sender
{
    [fliteEngine setPitch:125.0 variance:11.0 speed:1.2];
    if (self.speakText.text.length <= 0) {
        [fliteEngine speakText:@"please input something that you want to speak."];
    }
    else
    {
        [fliteEngine speakText:self.speakText.text];
    }
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.speakText resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
