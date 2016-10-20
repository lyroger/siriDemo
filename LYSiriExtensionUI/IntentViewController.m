//
//  IntentViewController.m
//  LYSiriExtensionUI
//
//  Created by luoyan on 16/10/19.
//  Copyright © 2016年 lysoft. All rights reserved.
//

#import "IntentViewController.h"
#import "SiriTestViewController.h"

// As an example, this extension's Info.plist has been configured to handle interactions for INSendMessageIntent.
// You will want to replace this or add other intents as appropriate.
// The intents whose interactions you wish to handle must be declared in the extension's Info.plist.

// You can test this example integration by saying things to Siri like:
// "Send a message using <myApp>"

@interface IntentViewController ()

@end

@implementation IntentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UILabel *labelTips = [[UILabel alloc] init];
//    labelTips.frame = CGRectMake(10, 10, 80, 40);
//    labelTips.text = @"发送";
//    
//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(sendAction)];
//    [labelTips addGestureRecognizer:tap];
//    
//    [self.view addSubview:labelTips];
    
    
    
    // Do any additional setup after loading the view.
}

- (void)sendAction
{
    SiriTestViewController *vc = [[SiriTestViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - INUIHostedViewControlling

// Prepare your view controller for the interaction to handle.
- (void)configureWithInteraction:(INInteraction *)interaction context:(INUIHostedViewContext)context completion:(void (^)(CGSize))completion {
    // Do configuration here, including preparing views and calculating a desired size for presentation.
    
    if (completion) {
        completion([self desiredSize]);
    }
}

- (CGSize)desiredSize {
    return [self extensionContext].hostedViewMaximumAllowedSize;
}

@end
