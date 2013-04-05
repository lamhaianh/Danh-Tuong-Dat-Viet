//
//  CommonCss.m
//  DTDV
//
//  Created by Vu Ngoc Bang on 4/3/13.
//  Copyright (c) 2013 Green Global. All rights reserved.
//

#import "CommonCss.h"

@implementation CommonCss

+ (UIColor*) getTintColor{
    return [UIColor colorWithRed:79.0/255.0 green:55.0/255.0 blue:10.0/255.0 alpha:1.0];
}

+ (UIImageView*) setImageBackgroundView{
    return [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bgHome.jpg"]];
}

@end
