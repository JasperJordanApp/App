//
//  AppController.m
//  App
//
//  Created by Jasper on 8/29/16.
//  Copyright © 2016 Jordan Jasper. All rights reserved.
//

#import "AppController.h"

@implementation AppController

//Title Screen
- (IBAction)titleScreenPlayGameButton:(id)sender{
    [self.titleScreen addSubview:self.gameScreen] ;
    //self.titleScreen = self.gameScreen ;
    //[self.view addSubview:self.gameScreen] ;
}

- (IBAction)titleScreenOptiosnButton:(id)sender {
    
}

- (IBAction)titleScreenStatsButton:(id)sender {
    
}





- (void)viewDidLoad {
    NSLog(@"Loaded") ;
    UIView *test = [[[NSBundle mainBundle] loadNibNamed:@"TitleScreen" owner:nil options:nil] lastObject] ;
    [self.view addSubview:test] ;
    //self.titleScreen = [UIView new] ;
    //[[[NSBundle mainBundle] loadNibNamed:@"TitleScreen" owner:self options:nil] ;
    
    //[self.view addSubview:self.titleScreen] ;
    [super viewDidLoad];
}
- (void)didReceiveMemoryWarning {[super didReceiveMemoryWarning];}
@end
