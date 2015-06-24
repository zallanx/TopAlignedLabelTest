//
//  TestTableViewController.m
//  Tableview Label
//
//  Created by Allan Zhang on 6/23/15.
//  Copyright (c) 2015 daspianist. All rights reserved.
//

#import "TestTableViewController.h"
#import "TestTableViewCell.h"

NSString * const TestSuperLongString = @"This text appears in TopAlignedLabel. While the text does top align, the ellipses occur when the text is too long.";

@interface TestTableViewController ()

@property (strong, nonatomic) NSArray *totalMessages;

@end

@implementation TestTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //generate random parts of our main string so that we can actually test the label
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 100; ++i) {
        [array addObject:[TestSuperLongString substringToIndex:MAX(10,arc4random_uniform((uint32_t)TestSuperLongString.length))]];
    }
    self.totalMessages = [array copy];
    self.tableView.rowHeight = 100;
    
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.totalMessages.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.mainLabel.text = self.totalMessages[indexPath.row];
    cell.mainLabel.layer.borderWidth = 1;
    cell.mainLabel.layer.borderColor = [UIColor blackColor].CGColor;
    cell.subheadingLabel.text = @"This text appears in the regular UILabel.";
    
    cell.mainLabel.numberOfLines = 0;
    cell.mainLabel.preferredMaxLayoutWidth = 280;
    
    return cell;
}



@end
