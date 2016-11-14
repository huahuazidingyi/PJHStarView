//
//  StarView.m
//  InvestApp
//
//  Created by PJH on 16/11/14.
//  Copyright © 2016年 PJH.com. All rights reserved.
//

#import "StarView.h"

@implementation StarView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}
-(void)creatStarViewProgress:(CGFloat)progress starWidth:(CGFloat)starWidth starNum:(NSInteger)starNum space:(CGFloat)space backColor:(UIColor *)backColor fillColor:(UIColor *)fillColor
{
    CGFloat f = progress*starNum;
    NSInteger spaceNum;
    spaceNum = (NSInteger)f;
    
    UIView *backView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, starWidth*starNum+ space*(starNum-1), starWidth)];
    backView.backgroundColor=backColor;
    [self addSubview:backView];
    
    CGFloat startX=backView.frame.origin.x;
    CGFloat startY=backView.frame.origin.y;
    
    UIView *secondBackView=[[UIView alloc]initWithFrame:CGRectMake(startX, startY, progress*starWidth*starNum+ space*spaceNum, starWidth)];
    secondBackView.backgroundColor=fillColor;
    [self addSubview:secondBackView];
    
    for (int i=0; i<starNum; i++) {
        
        UIView *scpaceView=[[UIView alloc]initWithFrame:CGRectMake(startX-space+ (starWidth+space )*(i+1), startY, space, starWidth)];
        scpaceView.backgroundColor=[UIColor whiteColor];
        [self addSubview:scpaceView];
        
        UIImageView *starImg=[[UIImageView alloc]initWithFrame:CGRectMake(startX+(starWidth+space)*i, startY, starWidth, starWidth)];
        starImg.image=[UIImage imageNamed:@"star"];
        [self addSubview:starImg];
    }

}
@end
