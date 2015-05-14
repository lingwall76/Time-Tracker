//
//  ListTableViewDataSource.m
//  Time-Tracker
//
//  Created by Sarah on 5/14/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTListTableViewDataSource.h"
#import "ProjectController.h"

@implementation TTListTableViewDataSource

//Set the number of rows using the projects array
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[ProjectController sharedInstance].projects count];
}

//Set the cells textLabel and detailTextLabel using the project classes properties
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"ListCell"];
    }
    
    Project *project = [ProjectController sharedInstance].projects[indexPath.row];
    
    cell.textLabel.text = project.title;
    cell.detailTextLabel.text = project.projectTime;
    
    return cell;
}

@end
