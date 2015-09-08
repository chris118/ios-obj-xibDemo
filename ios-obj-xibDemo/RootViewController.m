//
//  RootViewController.m
//  ios-obj-xibDemo
//
//  Created by wang xiaopeng on 9/6/15.
//  Copyright (c) 2015 Triton. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"

@interface RootViewController (){
    SecondViewController* mSec;
    ThreeViewController* mThree;
    FourViewController* mFour;
    
    UINavigationController *mNaviController;
}

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)nextClicked:(id)sender {
    
    if(mSec == nil){
        mSec = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    }
    [self presentViewController:mSec animated:YES completion:nil];
}

- (IBAction)threeClick:(id)sender {
    
    mThree = [ThreeViewController alloc];
    
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"ThreeViewController" owner:mThree options:nil];
    UIView *root = views[0];
    [root setBackgroundColor:[UIColor blueColor]];
     [self presentViewController:mThree animated:YES completion:nil];
}

- (IBAction)pushClicked:(id)sender {
    
    if(mFour == nil){
        mFour = [[FourViewController alloc] initWithNibName:@"FourViewController" bundle:nil];
    }
    if(mNaviController == nil){
        mNaviController = [[UINavigationController alloc] initWithRootViewController:mFour];
    }
    [self.view addSubview:mNaviController.view];
}

@end
