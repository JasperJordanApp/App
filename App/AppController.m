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
    [super viewDidLoad];

    //self.view.backgroundColor = [UIColor blueColor] ;
    UIView *test = [UIView alloc] initWithFrame:<#(CGRect)#>
    self.titleScreen = [[UIView alloc] initWithFrame:self.view.bounds] ;
    [self.view addSubview:self.titleScreen] ;
    //[self.view addSubview: ] ;

    //self.titleScreen = [UIView new] ;
    //[[[NSBundle mainBundle] loadNibNamed:@"TitleScreen" owner:self options:nil] ;
    
    //[self.view addSubview:self.titleScreen] ;
}
- (void)didReceiveMemoryWarning {[super didReceiveMemoryWarning];}
@end
