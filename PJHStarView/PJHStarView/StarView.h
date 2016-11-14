//
//  StarView.h
//  InvestApp
//
//  Created by PJH on 16/11/14.
//  Copyright © 2016年 PJH.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StarView : UIView

-(void)creatStarViewProgress:(CGFloat)progress starWidth:(CGFloat)starWidth starNum:(NSInteger)starNum space:(CGFloat)space backColor :(UIColor *)backColor fillColor:(UIColor *)fillColor;

@end
