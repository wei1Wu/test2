//
//  people.h
//  cache
//
//  Created by davissonwu on 16/10/3.
//  Copyright © 2016年 davissonwu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface people : NSObject<NSCoding>
@property (nonatomic,strong) NSString *name;
@property (nonatomic,assign) int age;
@end
