//
//  AppController.h
//  App
//
//  Created by Jasper on 8/29/16.
//  Copyright © 2016 Jordan Jasper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppController : UIViewController
//Properties:

@property (nonatomic, retain) IBOutlet UIView *gameScreen ;
@property (nonatomic, retain) IBOutlet UIView *titleScreen ;




//Buttons
- (IBAction)titleScreenPlayGameButton:(id)sender;
- (IBAction)titleScreenOptiosnButton:(id)sender;
- (IBAction)titleScreenStatsButton:(id)sender;

@end
