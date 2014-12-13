//
//  ViewController.m
//  Dizainier
//
//  Created by m2sar on 29/09/2014.
//  Copyright (c) 2014 m2sar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchHdAction:(id)sender {
    if([_switchHdName isOn]){
         [_numberLabel setText:[NSString stringWithFormat:@"%X", (int)[_strepperHgName value]]];
    }else{
        [_numberLabel setText:[NSString stringWithFormat:@"%d", (int)[_strepperHgName value]]];
    }
    
    
}

- (IBAction)stepperHgAction:(id)sender {
    
    [self changeInterfaceWithnumber:(int)[_strepperHgName value] ];

}

- (IBAction)segCtrlDizAction:(id)sender {

    [self changeInterfaceWithnumber:(int)[_segCtrlDizName selectedSegmentIndex]*10+(int)[_segCtrlUnitName selectedSegmentIndex]];
}

- (IBAction)segCtrlUnitAction:(id)sender {
 
    [self changeInterfaceWithnumber:(int)[_segCtrlDizName selectedSegmentIndex]*10+(int)[_segCtrlUnitName selectedSegmentIndex]];
    
}

- (IBAction)sliderAction:(id)sender {
    
    [self changeInterfaceWithnumber:(int)[_sliderName value]];

}

- (IBAction)razAction:(id)sender {

    [self changeInterfaceWithnumber:0];
}


-(void)changeInterfaceWithnumber:(int)valueNumber{
   
    if([_switchHdName isOn]){
    
      [_numberLabel setText:[NSString stringWithFormat:@"%X", (int)valueNumber]];
        
    }else {
        
        [_numberLabel setText:[NSString stringWithFormat:@"%d", (int)valueNumber]];
        
    }
    
    [_strepperHgName setValue:valueNumber];
    
    [_sliderName setValue:valueNumber];
    
    [_segCtrlDizName setSelectedSegmentIndex:valueNumber/10];
    
    [_segCtrlUnitName setSelectedSegmentIndex:valueNumber%10];
    

}

@end
