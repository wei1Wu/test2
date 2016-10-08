//
//  AppDelegate.m
//  cache
//
//  Created by davissonwu on 16/10/3.
//  Copyright © 2016年 davissonwu. All rights reserved.
//

#import "AppDelegate.h"
#import "people.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    people *wuwei = [[people alloc]init];
    wuwei.name = @"david";
    wuwei.age = 26;
    
    NSMutableData *data = [[NSMutableData alloc]init];
    NSKeyedArchiver *archer = [[NSKeyedArchiver alloc]initForWritingWithMutableData:data];
    [archer encodeObject:wuwei];
    [archer finishEncoding];
    
    [data writeToFile:@"/Users/davissonwu/Downloads/wuwei" atomically:false];
//    NSData *data = [NSData dataWithContentsOfFile:@"/Users/davissonwu/Downloads/wuwei"];
//     NSKeyedUnarchiver *archier = [[NSKeyedUnarchiver alloc]initForReadingWithData:data];
//   people *wuwei = [archier decodeObject];
    
    NSLog(@"wuwei 名字：%@ 年龄: %d",wuwei.name,wuwei.age);
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
