//
//  ViewController.h
//  Dizainier
//
//  Created by m2sar on 29/09/2014.
//  Copyright (c) 2014 m2sar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *segCtrlDizName;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segCtrlUnitName;
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (weak, nonatomic) IBOutlet UIStepper *strepperHgName;
@property (weak, nonatomic) IBOutlet UISwitch *switchHdName;
@property (weak, nonatomic) IBOutlet UISlider *sliderName;
- (IBAction)stepperHgAction:(id)sender;
- (IBAction)switchHdAction:(id)sender;
- (IBAction)segCtrlDizAction:(id)sender;
- (IBAction)segCtrlUnitAction:(id)sender;
- (IBAction)sliderAction:(id)sender;
- (IBAction)razAction:(id)sender;



@end

