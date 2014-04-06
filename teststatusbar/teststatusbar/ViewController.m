//
//  ViewController.m
//  teststatusbar
//
//  Created by Roy Wong on 6/4/14.
//  Copyright (c) 2014 Roy Wong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
        [self.tableView setContentInset:UIEdgeInsetsMake(20, 0, 0, 0)];
    } else {
        [self.toolBar setHidden:YES];
    }
	// Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *MyIdentifer = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifer];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyIdentifer];
    }
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
