//
//  AppController.m
//  App
//
//  Created by Jasper on 8/29/16.
//  Copyright © 2016 Jordan Jasper. All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (void)viewDidLoad {
    [super viewDidLoad];
    widthOfTurret = 100 ;
    numberOfTurrets = 5 ;
    [self updateCredits:100 level:0 score:0] ;
    
}

- (void)updateTurretText:(NSMutableArray*)list{
    for(int i = 0 ; i < 5 ; i += 1){
        
        if([list objectAtIndex:i]){
            
        }
        else{
            
        }
    }
}

- (void)turretsButton:(id)sender forEvent:(UIEvent *)event{
    NSSet *touches = [event touchesForView:sender];
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:sender];
    //the turret number (0-4)
    int turretNumber = floor(point.y/(self.view.bounds.size.height/numberOfTurrets)) ;
    NSLog(@"%i",turretNumber) ;
    
    
    
}

- (IBAction)titleScreenPlayButton:(id)sender{   //laods everything in gameView Screen
    [self.view addSubview:self.gameView] ;
    
    UIView *turrets = [[UIView alloc] initWithFrame:CGRectMake(0, 0, widthOfTurret, self.view.bounds.size.height)] ;
    for(int i = 0 ; i < numberOfTurrets ; i += 1){
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"StarterTurret"]] ;
        imageView.frame = CGRectMake(0, i*(self.view.bounds.size.height/numberOfTurrets), widthOfTurret, (self.view.bounds.size.height/numberOfTurrets)) ;
        [turrets addSubview:imageView] ;
    }
    UIButton *turretsButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, widthOfTurret, self.view.bounds.size.height)] ;
    [turretsButton addTarget:self action:@selector(turretsButton:forEvent:) forControlEvents:UIControlEventTouchUpInside] ;
    
    [self.gameView addSubview:turrets] ;
    [self.gameView addSubview:turretsButton] ;
    [self.gameView bringSubviewToFront:turretsButton] ;
}

- (IBAction)titleScreenOptionsButton:(id)sender {
}

- (IBAction)titleScreenStatsButton:(id)sender {
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