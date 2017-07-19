//
//  MJCTools.m
//  MJCSegmentInterface
//
//  Created by mjc on 17/7/2.
//  Copyright © 2017年 MJC. All rights reserved.
//  有啥问题加我QQ: 292251588 一起交流,我是菜菜..求大神指教

#import "MJCInterfaceTools.h"

@implementation MJCInterfaceTools

+(NSString *)setupNSStringWithNumberCount:(NSInteger)count;
{
    NSString *numberString;
    if (count == 1) {
        numberString = @"一";
    }
    if (count == 2) {
        numberString = @"二";
    }
    if (count == 3) {
        numberString = @"三";
    }
    if (count == 4) {
        numberString = @"四";
    }
    if (count == 5) {
        numberString = @"五";
    }
    if (count == 6) {
        numberString = @"六";
    }
    if (count == 7) {
        numberString = @"七";
    }
    if (count == 8) {
        numberString = @"八";
    }
    if (count == 9) {
        numberString =  @"九";
    }
    if (count == 10) {
        numberString = @"十";
    }
    return numberString;
}

+(UIViewController *)setupViewControllersStr:(NSString *)vcStr;
{
    Class class = NSClassFromString(vcStr);
    return [class new];
}

/**
 *  图片转换成颜色的方法
 */
+(UIImage *)mjc_imageWithColor:(UIColor *)color;
{
    CGRect rect1 = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    
    UIGraphicsBeginImageContext(rect1.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect1);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIColor *)mjc_colorFromHexRGB:(NSString *)inColorString
{
    UIColor *result = nil;
    unsigned int colorCode = 0;
    unsigned char redByte, greenByte, blueByte;
    
    if (nil != inColorString)
    {
        NSScanner *scanner = [NSScanner scannerWithString:inColorString];
        (void) [scanner scanHexInt:&colorCode]; // ignore error
    }
    redByte = (unsigned char) (colorCode >> 16);
    greenByte = (unsigned char) (colorCode >> 8);
    blueByte = (unsigned char) (colorCode); // masks off high bits
    result = [UIColor
              colorWithRed: (float)redByte / 0xff
              green: (float)greenByte/ 0xff
              blue: (float)blueByte / 0xff
              alpha:1.0];
    return result;
}



@end
