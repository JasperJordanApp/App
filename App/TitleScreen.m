//
//  TitleScreen.m
//  App
//
//  Created by Jasper on 8/28/16.
//  Copyright © 2016 Jordan Jasper. All rights reserved.
//

#import "TitleScreen.h"
#import "GameScreen.h"

@interface TitleScreen ()

@end

@implementation TitleScreen

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.gameView = [GameScreen new] ;
    }
    return self ;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playGameButton:(id)sender {
    self.gameView = [[GameScreen alloc] initWithNibName:@"GameScreen" bundle:nil] ;
    
    [self.view addSubview: self.gameView.view] ;
}

- (IBAction)optionsButton:(id)sender {
}

- (IBAction)statsButton:(id)sender {
}
@end
