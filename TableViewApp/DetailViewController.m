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

    if ([self.detailTitle.text isEqualToString:@"Burj Khalifa"]) {
        self.yearBuilt.text = @"Year Built: 30 December, 2009";
        self.height.text = @"Height: 2722 ft";
        self.cost.text = @"Cost: $1.5 billion";
        self.record.text = @"Record: Since 2010";
    }
    if ([self.detailTitle.text isEqualToString:@"Eiffel Tower"]) {
        self.yearBuilt.text = @"Year Built: 15 March 1889";
        self.height.text = @"Height: 985 ft";
        self.cost.text = @"Cost: $1.5 million";
        self.record.text = @"Record: 1889 to 1930";
    }
    if ([self.detailTitle.text isEqualToString:@"Empire State Building"]) {
        self.yearBuilt.text = @"Year Built: April 11, 1931";
        self.height.text = @"Height: 1,454ft";
        self.cost.text = @"Cost: $40.9 million";
        self.record.text = @"Record: 1931 to 1970";
    }
    if ([self.detailTitle.text isEqualToString:@"Kingdom Tower"]) {
        self.yearBuilt.text = @"Year Built: est 2019";
        self.height.text = @"Height: 3,304ft";
        self.cost.text = @"Cost: $1.23 billion";
        self.record.text = @"Record: N/A";
    }
    if ([self.detailTitle.text isEqualToString:@"Taipei 101"]) {
        self.yearBuilt.text = @"Year Built: 31 December, 2004";
        self.height.text = @"Height: 1,671ft";
        self.cost.text = @"Cost: $1.934 billion";
        self.record.text = @"Record: 2004 to 2009";
    }
    
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
