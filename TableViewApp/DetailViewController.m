//
//  DetailViewController.m
//  TableViewApp
//
//  Created by Jason Williams on 2016-02-05.
//  Copyright © 2016 Screaming Goat. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.detailTitle.text = _detailModule[0];
    self.detailDescription.text = _detailModule[1];
    self.detailImageView.image = [UIImage imageNamed:_detailModule[2]];
    
    self.navigationItem.title = _detailModule[0];

    
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

@end
