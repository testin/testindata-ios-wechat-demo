//
//  CViewController.m
//  Testin_Demo
//
//  Created by wubo on 17/1/9.
//  Copyright © 2017年 cn.Testin. All rights reserved.
//

#import "CViewController.h"
#import "DViewController.h"

//屏幕宽
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)

//屏幕高
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@interface CViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
//    UITableView *tab = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
//    tab.dataSource = self;
//    tab.delegate = self;
//    [self.view addSubview:tab];
    
        //左返回
        UIButton *_leftView = [[UIButton alloc] initWithFrame:CGRectMake( 0, 0, 20, 20)];
        [_leftView setImage:[UIImage imageNamed:@"leftbackbutton_white"] forState:UIControlStateNormal];
        [_leftView setImage:[UIImage imageNamed:@"leftbackbutton_white_press"] forState:UIControlStateHighlighted];
        [_leftView addTarget:self action:@selector(backToBeforeView) forControlEvents:UIControlEventTouchUpInside];
        _leftView.backgroundColor = [UIColor clearColor];
    
        UIBarButtonItem *leftBtnBar = [[UIBarButtonItem alloc] initWithCustomView:_leftView];
        self.navigationItem.rightBarButtonItem = leftBtnBar;
    
    UIButton * b=[UIButton buttonWithType:UIButtonTypeCustom];
    b.frame=CGRectMake(100, 100, 50, 50);
    [b setTitle:@"跳转d" forState:UIControlStateNormal];
    [b addTarget:self action:@selector(clickMe:) forControlEvents:UIControlEventTouchUpInside];
//    // Do any additional setup after loading the view.
//    
//    
//    UILabel *label = [[UILabel alloc]init];
//    label.frame = CGRectMake(100, 300, 100, 100);
//    label.backgroundColor = [UIColor greenColor];
//    [self.view addSubview:label];
    
    
    [self.view addSubview:b];
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


- (void)backToBeforeView
{
    [self.navigationController pushViewController:[[DViewController alloc]init] animated:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellName = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
    }
    cell.textLabel.text = @"1";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"222");
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
//    NSLog(@"111111111%@",self.presentingViewController);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)clickMe:(UIButton*)sender
{

    DViewController* d=[[DViewController alloc]init];
//   [self.navigationController pushViewController:d animated:YES];
    [self presentViewController:d animated:YES completion:nil];
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
