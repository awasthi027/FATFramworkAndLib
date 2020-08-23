//
//  ViewController.m
//  FATTestingObjC
//
//  Created by Ashish Awasthi on 23/08/20.
//  Copyright © 2020 Ashish Awasthi. All rights reserved.
//

#import "ViewController.h"
#import <TestFramework/TestFramework.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor redColor]];
    TODOClass *obj = [[TODOClass alloc] init];
    NSString *str = [obj takeSwiftStaticLibAction];
    NSLog(@" Version:- (%@)",str);
    NSLog(@" Content:- (%@)",[obj doSothingWithResultDict].contentType);
 
}


@end
