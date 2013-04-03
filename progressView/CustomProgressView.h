#import <UIKit/UIKit.h>

@interface CustomProgressView : UIView

@property (nonatomic, assign) CGFloat finalProgressValue;

- (void) setProgress:(CGFloat)progress animated:(BOOL) animated;

@end
