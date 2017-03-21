//
//  svProgressView.m
//  
//
//  Created by 金波 on 2017/3/20.
//
//
#define SCREEN_Height [UIScreen mainScreen].bounds.size.height
#define SCREEN_Width  [UIScreen mainScreen].bounds.size.width
#define RGBA(red,gre,blu,alp) [UIColor colorWithRed:(red)/255.0 green:(gre)/255.0 blue:(blu)/255.0 alpha:alp]


#import "svProgressView.h"

@implementation svProgressView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+(void)showProgressView:(UIImage *)img
{
    dispatch_async(dispatch_get_main_queue(), ^{
        //progress_logo1
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        
        UIView *oldV = [window viewWithTag:9100];
        if(oldV==nil)
        {
            UIView *backV = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_Width, SCREEN_Height)];
            backV.backgroundColor = RGBA(0, 0, 0, 0.3);
            backV.tag = 9100;
            
            
            
            
            UIImageView *imageV = [[UIImageView alloc]initWithImage:img];
            imageV.frame = CGRectMake((SCREEN_Width-65)/2, (SCREEN_Height-65)/2, 65, 65);
            imageV.backgroundColor = RGBA(255, 255, 255, 0.3);
            imageV.layer.cornerRadius = 32;
            imageV.layer.masksToBounds = YES;
            
            CABasicAnimation* rotationAnimation;
            rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
            rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 ];
            rotationAnimation.duration = 0.9;
            rotationAnimation.cumulative = YES;
            rotationAnimation.repeatCount = HUGE_VALF;
            
            [imageV.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
            
            [backV addSubview:imageV];
            
            [window addSubview:backV];
        }
    });
}
+(void)removeProgressView
{
        dispatch_async(dispatch_get_main_queue(), ^{
            UIWindow *window = [UIApplication sharedApplication].keyWindow;
            UIView *backV = [window viewWithTag:9100];
            if(backV!=nil)
            {
                [backV removeFromSuperview];
            }
            
        });
}
@end
