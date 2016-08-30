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

- (IBAction)turretsButton:(id)sender forEvent:(UIEvent *)event {
    NSSet *touches = [event touchesForView:sender];
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:sender];
    //the turret number (0-4)
    int turretNumber = floor((double)point.x/(self.view.bounds.size.height/numberOfTurrets)) ;
    
    
}

- (IBAction)titleScreenPlayButton:(id)sender {
    [self.view addSubview:self.gameView] ;UIView *turrets = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, self.view.bounds.size.height)] ;
    turrets.backgroundColor = [UIColor redColor] ;
    for(int i = 0 ; i < numberOfTurrets ; i += 1){
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"StarterTurret"]] ;
        imageView.frame = CGRectMake(0, i*(self.view.bounds.size.height/numberOfTurrets), <#CGFloat width#>, <#CGFloat height#>)
        
    }
    
    
    [self.view addSubview:turrets] ;
}

- (IBAction)titleScreenOptionsButton:(id)sender {
}

- (IBAction)titleScreenStatsButton:(id)sender {
}

- (IBAction)turretZeroButton:(id)sender {
}

- (IBAction)turretOneButton:(id)sender {
}

- (IBAction)turretTwoButton:(id)sender {
}

- (IBAction)turretThreeButton:(id)sender {
}

- (IBAction)turretFourButton:(id)sender {
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