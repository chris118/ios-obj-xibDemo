//
//  FourViewController.m
//  ios-obj-xibDemo
//
//  Created by wang xiaopeng on 9/6/15.
//  Copyright (c) 2015 Triton. All rights reserved.
//

#import "FourViewController.h"
#import "FiveViewController.h"

@interface FourViewController (){

    FiveViewController *mFive;
}

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self setTitle:@"Root"];
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
    
    if(mFive == nil){
        mFive = [[FiveViewController alloc] initWithNibName:@"FiveViewController" bundle:nil];
    }
    
    [self.navigationController pushViewController:mFive animated:YES];
}
@end
