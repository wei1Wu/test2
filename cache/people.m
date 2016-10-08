//
//  people.m
//  cache
//
//  Created by davissonwu on 16/10/3.
//  Copyright © 2016年 davissonwu. All rights reserved.
//

#import "people.h"

@implementation people
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = super.init;
    self.name = [coder decodeObjectForKey:@"name"];
    self.age = [coder decodeIntForKey:@"age"];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.name forKey:@"name"];
    [coder encodeInt:self.age forKey:@"age"];
}

@end
