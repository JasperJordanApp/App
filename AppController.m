//
//  AppController.m
//  App
//
//  Created by Jasper on 8/29/16.
//  Copyright © 2016 Jordan Jasper. All rights reserved.
//

#import "AppController.h"

@interface AppController ()

@end

@implementation AppController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateCredits:0 level:0 score:0] ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)titleScreenPlayButton:(id)sender {
    [self.view addSubview:self.gameView] ;
}

- (IBAction)titleScreenOptionsButton:(id)sender {
}

- (IBAction)titleScreenStatsButton:(id)sender {
}
- (IBAction)turretZeroButton:(id)sender {
}

- (IBAction)turrentOneButton:(id)sender {
}

- (IBAction)turrentTwoButton:(id)sender {
}

- (IBAction)turrentThreeButton:(id)sender {
}

- (IBAction)turrentFourButton:(id)sender {
}

- (void)updateCredits:(int)dummy level:(int)dummy1 score:(int)dummy2{
    creditCount = dummy ;
    levelCount = dummy1 ;
    score = dummy2 ;
    self.creditsOutlet.text = [NSString stringWithFormat:@"Credits: %i",creditCount] ;
    self.levelOutlet.text = [NSString stringWithFormat:@"Level: %i",levelCount] ;
    self.scoreOutlet.text = [NSString stringWithFormat:@"Score: %i",score] ;
}

@end
