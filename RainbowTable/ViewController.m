//
//  ViewController.m
//  RainbowTable
//
//  Created by miganbec on 11/11/14.
//  Copyright (c) 2014 miganbec. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property NSArray *colorsArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.colorsArray = [NSArray arrayWithObjects:[UIColor redColor], [UIColor orangeColor], [UIColor yellowColor], [UIColor greenColor], [UIColor blueColor], [UIColor colorWithRed:(75.0/255.0) green:(0.0/255.0) blue:(130.0/255.0) alpha:(1)], [UIColor purpleColor], nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.colorsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"colorCellId" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"fila %li", (long)indexPath.row];
//    if (indexPath.row == 0) {
//        cell.backgroundColor = [UIColor redColor];
//    } else if (indexPath.row == 1) {
//        cell.backgroundColor = [UIColor orangeColor];
//    } else if (indexPath.row == 2) {
//        cell.backgroundColor = [UIColor yellowColor];
//    } else {
//        NSLog(@"Indice invalido");
//    }
    cell.backgroundColor = [self.colorsArray objectAtIndex:indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
