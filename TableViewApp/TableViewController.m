//
//  TableViewController.m
//  TableViewApp
//
//  Created by Jason Williams on 2016-02-03.
//  Copyright © 2016 Screaming Goat. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "DetailViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    title = @[@"Burj Khalifa",
              @"Eiffel Tower",
              @"Empire State Building",
              @"Kingdom Tower",
              @"Taipei 101",];
    
    description = @[@"Dubai, UAE",
                    @"Paris, France",
                    @"New York, USA",
                    @"Jeddah, Saudi Arabia",
                    @"Taipei, Taiwan",];
    
    image = @[@"burj.jpg",
              @"Eiffel.jpg",
              @"Empire.jpg",
              @"kingdomtower.jpg",
              @"Taipei.jpg",];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return title.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    int row = (int)[indexPath row];
    
    cell.cellTitle.text = title[row];
    cell.cellDescription.text = description[row];
    cell.CellImageView.image = [UIImage imageNamed:image[row]];
    
    return cell;
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"ShowDetails"]) {
        DetailViewController *detailView = [segue destinationViewController];
        NSIndexPath *myindexpath = [self.tableView indexPathForSelectedRow];
        
        int row = (int)[myindexpath row];
        detailView.detailModule = @[title[row], description[row], image[row]];
    }
    
}


@end
