#import "CustomProgressView.h"

@interface CustomProgressView()

@property (nonatomic, strong) UIImageView *fillView;;

@end

static const int KCONTENT_OFFSET_X = 2;
static const int KCONTENT_OFFSET_TOP_Y = 1;
static const int KCONTENT_OFFSET_BOTTOM_Y = 3;

@implementation CustomProgressView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.autoresizesSubviews = YES;
        [self addTrack];
    }
    return self;
}

- (void) dealloc {
    
}

- (void) addTrack {
    
    UIImage *track = [UIImage imageNamed:@"progress-bar-bg"];
    
    if ([track respondsToSelector:
         @selector(resizableImageWithCapInsets:resizingMode:)]) {
        
        UIEdgeInsets trackInsets = (UIEdgeInsets) {10, 5, 9, 4};
        track = [track resizableImageWithCapInsets:trackInsets
                                      resizingMode:UIImageResizingModeTile];
        
    } else {
        
        CGSize trackStretchPoints = {4, 9};
        track = [track stretchableImageWithLeftCapWidth:trackStretchPoints.width
                                           topCapHeight:trackStretchPoints.height];
    }
    
    
    UIImageView *trackView = [[UIImageView alloc] initWithImage:track];
    trackView.frame = self.bounds;
    
    trackView.autoresizingMask = (UIViewAutoresizingFlexibleWidth
                                  | UIViewAutoresizingFlexibleHeight);
    trackView.opaque = YES;
    
    [self addSubview:trackView];
    
    UIImage *fill  = [UIImage imageNamed:@"progress-bar-fill"];
    
    if ([fill respondsToSelector:
         @selector(resizableImageWithCapInsets:resizingMode:)]) {
        
        UIEdgeInsets fillInsets = (UIEdgeInsets) {9, 4, 8, 3};
        fill = [fill resizableImageWithCapInsets:fillInsets
                                    resizingMode:UIImageResizingModeTile];
        
    } else {
        
        CGSize fillStretchPoints = {3, 8};
        fill = [fill stretchableImageWithLeftCapWidth:fillStretchPoints.width
                                         topCapHeight:fillStretchPoints.height];
    }
    
    _fillView = [[UIImageView alloc] initWithImage:fill];
    
    CGPoint origin = (CGPoint) {
        self.bounds.origin.x + KCONTENT_OFFSET_X,
        self.bounds.origin.y + KCONTENT_OFFSET_TOP_Y
    };
    
    
    CGSize size = [self sizeForProgressValue:0];
    
    _fillView.frame = (CGRect) {origin, size};
    _fillView.autoresizingMask = (UIViewAutoresizingFlexibleWidth
                                  | UIViewAutoresizingFlexibleHeight
                                  | UIViewAutoresizingFlexibleRightMargin);
    _fillView.opaque = YES;
    
    [self addSubview:_fillView];
}

- (void) setProgress:(CGFloat)progress animated:(BOOL) animated {
    if (animated) {
                
    } else {
        [self setProgress:progress];
    }
}

- (void) setProgress:(CGFloat)progress {
    if (progress > 0 && progress <= 1.0) {
        
        CGPoint origin = (CGPoint) {
            self.bounds.origin.x + KCONTENT_OFFSET_X,
            self.bounds.origin.y + KCONTENT_OFFSET_TOP_Y
        };
        
        NSInteger maxWidth = self.bounds.size.width - (2 * KCONTENT_OFFSET_X);
        NSInteger width = floor(progress * maxWidth);
        
        CGSize size = (CGSize) {
            width,
            self.bounds.size.height - KCONTENT_OFFSET_BOTTOM_Y
        };
        
        _fillView.frame = (CGRect) {origin, size};
    } else {
        if (progress == 0) {
            [_fillView setHidden:TRUE];
        }
    }
}

- (CGSize)sizeForProgressValue:(CGFloat)progress {
    NSInteger maxWidth = self.bounds.size.width - (2 * KCONTENT_OFFSET_X);
    CGFloat width = floor(progress * maxWidth);
    CGSize size = (CGSize) {
        width,
        self.bounds.size.height - KCONTENT_OFFSET_BOTTOM_Y
    };
    return size;
}


@end
