//
//  VoiceTTSViewController.h
//  VoiceTTS
//
//  Created by 朱克锋 on 12-11-15.
//  Copyright (c) 2012年 朱克锋. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FliteTTS;
@interface VoiceTTSViewController : UIViewController
{
    FliteTTS *fliteEngine;
    UITextField *speakText;
}
@property(nonatomic, retain) IBOutlet UITextField *speakText;
@property(nonatomic, retain) FliteTTS *fliteEngine;
@end
