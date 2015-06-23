//
//  TestTableViewController.m
//  Tableview Label
//
//  Created by Allan Zhang on 6/23/15.
//  Copyright (c) 2015 daspianist. All rights reserved.
//

#import "TestTableViewController.h"
#import "TestTableViewCell.h"

@interface TestTableViewController ()

@property (strong, nonatomic) NSArray *totalMessages;

@end

@implementation TestTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.mainLabel.text = @"This text appears in TopAlignedLabel. While the text does top align, the ellipses occur when the text is too long.";
    cell.subheadingLabel.text = @"This text appears in the regular UILabel.";
    
    cell.mainLabel.numberOfLines = 0;
    cell.mainLabel.preferredMaxLayoutWidth = 280;
    
    return cell;
}



@end
