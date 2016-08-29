//
//  TitleScreen.m
//  App
//
//  Created by Jasper on 8/29/16.
//  Copyright © 2016 Jordan Jasper. All rights reserved.
//

#import "TitleScreen.h"

@interface TitleScreen ()

@end

@implementation TitleScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startGameButton:(id)sender {
    [self.view addSubview:[[UIViewController alloc] initWithNibName:@"GameScreen" bundle:nil].view] ;
}
@end
