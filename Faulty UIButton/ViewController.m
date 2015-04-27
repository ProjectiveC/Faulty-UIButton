//
//  ViewController.m
//  Faulty UIButton
//
//  Projective-C
//

#import "ViewController.h"
#define buttonColor [UIColor colorWithRed:98.0f/255.0f green:146.0f/255.0f blue:134.0f/255.0f alpha:1.0f]
#define viewColor [UIColor colorWithRed:198.0f/255.0f green:136.0f/255.0f blue:134.0f/255.0f alpha:1.0f]
#define buttonFont [UIFont fontWithName:@"HelveticaNeue-Light" size:16]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self prepareUI];
}

-(void)prepareUI
{
    [self.view setBackgroundColor:viewColor];
    
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectInset(self.view.frame, 30, 30)];
    imageView.clipsToBounds = YES;
    [imageView setContentMode:UIViewContentModeScaleAspectFill];
    [imageView setImage:[UIImage imageNamed:@"product"]];
    [self.view addSubview:imageView];
    
    UIButton *button = [[UIButton alloc] initWithFrame: CGRectMake(CGRectGetMidX(imageView.bounds) - 75, CGRectGetHeight(imageView.frame) - 55, 150, 50)];
    [button setTitle: @"Order Now" forState: UIControlStateNormal];
    [button.titleLabel setFont:buttonFont];
    button.layer.cornerRadius = 20;
    [button addTarget:self action:@selector(buttonWasClicked:) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundColor:buttonColor];
    [imageView addSubview:button];
}

#pragma mark

-(IBAction)buttonWasClicked:(id)sender
{
    NSString * alertMessage = @"Order placed!";
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Success" message:alertMessage delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles: nil];
    [alert show];
}

#pragma mark

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end