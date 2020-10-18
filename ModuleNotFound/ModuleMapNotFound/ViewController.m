//
//  ViewController.m
//  ModuleMapNotFound
//
//  Created by Vadim Belotitskiy on 10/25/20.
//

#import "ApplicationProtocol.h"
#import "ModuleMapNotFound-Swift.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    ApplicationModel *model = [[ApplicationModel alloc] init];

    UILabel *label = [[UILabel alloc] init];
    label.translatesAutoresizingMaskIntoConstraints = NO;
    label.text = model.nameObject.name;

    [self.view addSubview:label];

    [NSLayoutConstraint activateConstraints:@[
        [label.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [label.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor],
    ]];
}


@end
