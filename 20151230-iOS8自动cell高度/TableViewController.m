//
//  TableViewController.m
//  20151230-iOS8自动cell高度
//
//  Created by apple2 on 15/12/30.
//  Copyright © 2015年 shiyuwudi. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 44.f;
}
#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewCell *cell = [[[NSBundle mainBundle]loadNibNamed:@"TableViewCell" owner:nil options:nil]lastObject];
    if (indexPath.row == 0) {
        cell.title.text = @"one piece";
        cell.imageView1.image = [UIImage imageNamed:@"u=2162766932,244861494&fm=21&gp=0"];
        cell.content.text = @"this is one of my best loved animation";
    }else if (indexPath.row == 1){
        cell.title.text = @"one piece and death note and bakuman which is a nekketsu anime show the aspiration for us to become better";
        cell.imageView1.image = [UIImage imageNamed:@"u=2162766932,244861494&fm=21&gp=0"];
        cell.content.text = @"this is one of my best loved animationthis is one of my best loved animationthis is one of my best loved animationthis is one of my best loved animationthis is one of my best loved animation";
    }
    return cell;
}

@end
