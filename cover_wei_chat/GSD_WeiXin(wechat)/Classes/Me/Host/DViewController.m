
//  DViewController.m
//  Testin_Demo
//
//  Created by wubo on 17/1/9.
//  Copyright © 2017年 cn.Testin. All rights reserved.
//

#import "DViewController.h"

//屏幕宽
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)

//屏幕高
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@interface DViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation DViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    
    UITableView *tab = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
    tab.dataSource = self;
    tab.delegate = self;
    [self.view addSubview:tab];
    // Do any additional setup after loading the view.
    UIButton *back = [UIButton buttonWithType:UIButtonTypeCustom];
    back.frame = CGRectMake(SCREEN_WIDTH - 50, 0, 50, 50);
    back.backgroundColor = [UIColor redColor];
    [back setTitle:@"back" forState:UIControlStateNormal];
    [back setTintColor:[UIColor whiteColor]];
    [back addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:back];
    
    
}

- (void)back
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellName = @"Cell";
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:cellName];
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
    }
    cell.textLabel.text = @"2";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"222");
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
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
