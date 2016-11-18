//
//  GYTabBarViewController.m
//  WangNews
//
//  Created by lanou3g on 16/11/18.
//  Copyright © 2016年 com.666it. All rights reserved.
//

#import "GYTabBarViewController.h"

#import "NewsViewController.h"
#import "DirectViewController.h"
#import "TalksViewController.h"
#import "UserViewController.h"

@interface GYTabBarViewController ()

@end

@implementation GYTabBarViewController

+ (void)load{
    
    UITabBarItem *item = [UITabBarItem appearance];
    
    NSMutableDictionary *attribute = [NSMutableDictionary dictionary];
    
    attribute[NSForegroundColorAttributeName] = [UIColor blackColor];
    attribute[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:attribute forState:UIControlStateNormal];
    
    NSMutableDictionary *attributeSele = [NSMutableDictionary dictionary];
    attributeSele[NSForegroundColorAttributeName] = [UIColor redColor];
    attributeSele[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:attributeSele forState:UIControlStateSelected];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupAllChildeViewController];
    
    
}

//初始化子控制器
- (void)setupAllChildeViewController{
    
    NewsViewController *news = [[NewsViewController alloc] init];
    UINavigationController *newNavigation = [[UINavigationController alloc] initWithRootViewController:news];
    newNavigation.tabBarItem.title = @"新闻";
    newNavigation.tabBarItem.image = [UIImage imageNamed:@"night_tabbar_icon_news_normal@2x"];
    newNavigation.tabBarItem.selectedImage = [self originalImage:@"night_tabbar_icon_news_highlight@2x"];
    [self addChildViewController:newNavigation];
    
    TalksViewController *talks = [[TalksViewController alloc] init];
    UINavigationController *talkNavigation = [[UINavigationController alloc] initWithRootViewController:talks];
    talkNavigation.tabBarItem.title = @"话题";
    talkNavigation.tabBarItem.image = [UIImage imageNamed:@"night_tabbar_icon_bar_normal@2x"];
    talkNavigation.tabBarItem.selectedImage = [self originalImage:@"night_tabbar_icon_bar_highlight@2x"];
    [self addChildViewController:talkNavigation];
    
    DirectViewController *direct = [[DirectViewController alloc] init];
    UINavigationController *directNavigation = [[UINavigationController alloc] initWithRootViewController:direct];
    directNavigation.tabBarItem.title = @"直播";
    directNavigation.tabBarItem.image = [UIImage imageNamed:@"night_tabbar_icon_media_normal@2x"];
    directNavigation.tabBarItem.selectedImage = [self originalImage:@"night_tabbar_icon_media_highlight@2x"];
    [self addChildViewController:directNavigation];
    
    UserViewController *user = [[UserViewController alloc] init];
    user.tabBarItem.title = @"我";
    user.tabBarItem.image = [UIImage imageNamed:@"night_tabbar_icon_me_normal@2x"];
    user.tabBarItem.selectedImage = [self originalImage:@"night_tabbar_icon_me_highlight@2x"];
    [self addChildViewController:user];
    
    
    
}

- (UIImage *)originalImage:(NSString *)imageName{
    
    UIImage *ima = [UIImage imageNamed:imageName];
    return [ima imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
}


@end
