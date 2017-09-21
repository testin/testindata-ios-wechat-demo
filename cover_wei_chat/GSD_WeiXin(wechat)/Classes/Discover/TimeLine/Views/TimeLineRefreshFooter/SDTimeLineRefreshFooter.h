//
//  SDTimeLineRefreshFooter.h
//  GSD_WeiXin(wechat)
//
//  Created by aier on 16/3/6.
//  Copyright © 2016年 GSD. All rights reserved.
//

#import "SDBaseRefreshView.h"

@interface SDTimeLineRefreshFooter : SDBaseRefreshView

+ (instancetype)refreshFooterWithRefreshingText:(NSString *)text;

- (void)addToScrollView:(UIScrollView *)scrollView refreshOpration:(void(^)())refrsh;

@property (nonatomic, strong) UILabel *indicatorLabel;
@property (nonatomic, strong) UIActivityIndicatorView *indicator;

@property (nonatomic, copy) void (^refreshBlock)();

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com