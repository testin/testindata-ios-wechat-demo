//
//  BBBBBViewController.m
//  Testin_Demo
//
//  Created by wubo on 16/10/20.
//  Copyright © 2016年 cn.Testin. All rights reserved.
//

#import "BBBBBViewController.h"
#import "CViewController.h"

//屏幕宽
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)

//屏幕高
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@interface BBBBBViewController ()

@end

@implementation BBBBBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
   
    UILabel* lable=[[UILabel alloc]init];
//    lable.text=@"sssssss";
    lable.frame=CGRectMake(0, 0, 100, 50);
    lable.backgroundColor=[UIColor greenColor];
//    lable.restorationIdentifier=@"";
    
//    lable.tag=1000;
    [self.view addSubview:lable];
    
    UILabel* la=[[UILabel alloc]initWithFrame:CGRectMake(100, 0, 100, 80)];
    lable.backgroundColor=[UIColor purpleColor];
    
    UIView* lable2=[[UIView
                     alloc]init];
//    lable2.text=@"sssssss";
    lable2.frame=CGRectMake(100, 0, 100, 50);
    lable2.backgroundColor=[UIColor yellowColor];
    [la addSubview:lable2];
    [self.view addSubview:la];
    
//    NSMutableArray * nu=[self getLocation:lable2];
    UIButton* btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor=[UIColor grayColor];
//    [btn setTitle:@"ddddd" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    
//    btn.titleLabel.text=@"sdsds";
    btn.frame=CGRectMake(50, 50, 80, 80);
    [self.view addSubview:btn];
    
    
    UIButton* btn2=[UIButton buttonWithType:UIButtonTypeCustom];
    btn2.backgroundColor=[UIColor purpleColor];
//    [btn2 setTitle:@"ddddd" forState:UIControlStateNormal];
//    btn2.titleLabel.text=@"sdsds";
    btn2.frame=CGRectMake(50, 50 + 50, 80, 80);
    [self.view addSubview:btn2];

    
    
    UIImageView * image=[[UIImageView alloc]initWithFrame:CGRectMake(100, 300, 200, 200)];
    image.backgroundColor=[UIColor blueColor];
    [self.view addSubview:image];
    self.view.backgroundColor=[UIColor whiteColor];
    // Do any additional setup after loading the view.
    self.tabBarItem.title=@"BBBBBBBBB";
    
    
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

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
     UIViewController* view=  self.presentedViewController;
      NSLog(@"view-------%@",view);

}
-(NSMutableArray*)getLocation:(UIView*)v
{
    NSMutableArray* mu=[[NSMutableArray alloc]init];
    
    while ([v superview])
    {
        UIView* view= [v superview];
       NSInteger i= [[view subviews]indexOfObject:v];
//        NSString* str= NSStringFromClass([view class]);
        
        [mu addObject:[NSNumber numberWithInteger:i]];
        v=view;
    }
    
    return mu;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"111111111%@",self.presentingViewController);
}

-(void)click:(UIButton*)sender
{
//    UILabel* v=[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 50)];
//    v.textColor=[UIColor redColor];
//    v.backgroundColor=[UIColor whiteColor];
//    v.text=@"测测尺寸";
//    [[UIApplication sharedApplication].keyWindow addSubview:v];

    CViewController* c = [[CViewController alloc]init];
//    [self.navigationController pushViewController:c animated:YES];
//  self.navigationController pushViewController:(nonnull UIViewController *) animated:(BOOL)
   [self presentViewController:c animated:YES completion:nil];
 
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
