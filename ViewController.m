#import "ViewController.h"

#import "CustomProgressView.h"

@interface ViewController ()
@property (nonatomic, strong) CustomProgressView *customProgressViewWithoutAnimation1;
@property (nonatomic, strong) CustomProgressView *customProgressViewWithoutAnimation2;
@property (nonatomic, strong) CustomProgressView *customProgressViewWithoutAnimation3;
@property (nonatomic, strong) CustomProgressView *customProgressViewWithoutAnimation4;
@property (nonatomic, strong) CustomProgressView *customProgressViewWithoutAnimation5;
@end

static const int KPROGRESSVIEW_HEIGHT = 21;
static const int KPROGRESSVIEW_MARGIN_LEFT = 10;
static const int KPROGRESSVIEW_MARGIN_RIGHT = 10;

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self addCustomProgressViewWithoutAnimation1];
    [self addCustomProgressViewWithoutAnimation2];
    [self addCustomProgressViewWithoutAnimation3];
    [self addCustomProgressViewWithoutAnimation4];
    [self addCustomProgressViewWithoutAnimation5];
}

- (void) addCustomProgressViewWithoutAnimation1 {
    CGFloat width = self.view.bounds.size.width - KPROGRESSVIEW_MARGIN_LEFT - KPROGRESSVIEW_MARGIN_RIGHT;
    CGRect frame = (CGRect) {{10, 10}, {width, KPROGRESSVIEW_HEIGHT}};
    
    self.customProgressViewWithoutAnimation1 = [[CustomProgressView alloc] initWithFrame:frame];
    
    [_customProgressViewWithoutAnimation1 setProgress:0 animated:FALSE];
    
    _customProgressViewWithoutAnimation1.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:_customProgressViewWithoutAnimation1];
}

- (void) addCustomProgressViewWithoutAnimation2 {
    CGFloat width = self.view.bounds.size.width - KPROGRESSVIEW_MARGIN_LEFT - KPROGRESSVIEW_MARGIN_RIGHT;
    CGRect frame = (CGRect) {{10, 35}, {width, KPROGRESSVIEW_HEIGHT}};
    
    self.customProgressViewWithoutAnimation2 = [[CustomProgressView alloc] initWithFrame:frame];
    
    [_customProgressViewWithoutAnimation2 setProgress:0.25 animated:FALSE];
    
    _customProgressViewWithoutAnimation2.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:_customProgressViewWithoutAnimation2];
}

- (void) addCustomProgressViewWithoutAnimation3 {
    CGFloat width = self.view.bounds.size.width - KPROGRESSVIEW_MARGIN_LEFT - KPROGRESSVIEW_MARGIN_RIGHT;
    CGRect frame = (CGRect) {{10, 60}, {width, KPROGRESSVIEW_HEIGHT}};
    
    self.customProgressViewWithoutAnimation3 = [[CustomProgressView alloc] initWithFrame:frame];
    
    [_customProgressViewWithoutAnimation3 setProgress:0.5 animated:FALSE];
    
    _customProgressViewWithoutAnimation3.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:_customProgressViewWithoutAnimation3];
}

- (void) addCustomProgressViewWithoutAnimation4 {
    CGFloat width = self.view.bounds.size.width - KPROGRESSVIEW_MARGIN_LEFT - KPROGRESSVIEW_MARGIN_RIGHT;
    CGRect frame = (CGRect) {{10, 85}, {width, KPROGRESSVIEW_HEIGHT}};
    
    self.customProgressViewWithoutAnimation4 = [[CustomProgressView alloc] initWithFrame:frame];
    
    [_customProgressViewWithoutAnimation4 setProgress:0.75 animated:FALSE];
    
    _customProgressViewWithoutAnimation4.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:_customProgressViewWithoutAnimation4];
}

- (void) addCustomProgressViewWithoutAnimation5 {
    CGFloat width = self.view.bounds.size.width - KPROGRESSVIEW_MARGIN_LEFT - KPROGRESSVIEW_MARGIN_RIGHT;
    CGRect frame = (CGRect) {{10, 110}, {width, KPROGRESSVIEW_HEIGHT}};
    
    self.customProgressViewWithoutAnimation5 = [[CustomProgressView alloc] initWithFrame:frame];
    
    [_customProgressViewWithoutAnimation5 setProgress:1 animated:FALSE];
    
    _customProgressViewWithoutAnimation5.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:_customProgressViewWithoutAnimation5];
}

@end
