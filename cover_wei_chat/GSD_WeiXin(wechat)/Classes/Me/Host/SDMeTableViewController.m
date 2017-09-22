//
//  SDMeTableViewController.m
//  GSD_WeiXin(wechat)
//
//  Created by aier on 16/2/10.
//  Copyright © 2016年 GSD. All rights reserved.
//

/*
 
 *********************************************************************************
 *
 * GSD_WeiXin
 *
 * QQ交流群: 459274049
 * Email : gsdios@126.com
 * GitHub: https://github.com/gsdios/GSD_WeiXin
 * 新浪微博:GSD_iOS
 *
 * 此“高仿微信”用到了很高效方便的自动布局库SDAutoLayout（一行代码搞定自动布局）
 * SDAutoLayout地址：https://github.com/gsdios/SDAutoLayout
 * SDAutoLayout视频教程：http://www.letv.com/ptv/vplay/24038772.html
 * SDAutoLayout用法示例：https://github.com/gsdios/SDAutoLayout/blob/master/README.md
 *
 *********************************************************************************
 
 */

#import "SDMeTableViewController.h"
#import "BBBBBViewController.h"
#import <TestinDataAnalysis/TestinDataAnalysis.h>

@interface SDMeTableViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *walletLabel;

@end

@implementation SDMeTableViewController

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    return [[UIStoryboard storyboardWithName:@"SDMeTableViewController" bundle:nil] instantiateInitialViewController];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.iconView.layer.cornerRadius = 5;
    self.iconView.clipsToBounds = YES;
    
    self.tableView.tableFooterView = [UIView new];
    
    NSString *value = [TestinDataAnalysis getExperimentVariable:@"qian" defaultValue:@"qiaobao"];
    if ([value isEqualToString:@"qianqian"]) {
        _walletLabel.text = @"wallet";
    }
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 5;
}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//    
//    if (!cell) {
//        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
//    }
//    return cell;
//
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [TestinDataAnalysis tracker:@"StartTheApp"];
    if (indexPath.section == 3 && indexPath.row == 0) {
        [self presentViewController:[[BBBBBViewController alloc]init] animated:YES completion:nil];
    } else if (indexPath.section == 1 && indexPath.row == 2) {
        [TestinDataAnalysis tracker:@"btn1"];
    }
}

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com
