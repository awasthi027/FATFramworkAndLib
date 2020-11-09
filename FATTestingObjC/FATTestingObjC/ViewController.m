//
//  ViewController.m
//  FATTestingObjC
//
//  Created by Ashish Awasthi on 23/08/20.
//  Copyright © 2020 Ashish Awasthi. All rights reserved.
//

#import "ViewController.h"

#import <HCSConnectProxy/HCSConnectProxy.h>

@interface ViewController () <HCSServiceManagerProxyDataSource,HCSServiceManagerProxyDelegate>
@property(nonatomic, strong) HCSServiceManagerProxy *proxyObj; 
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor redColor]];
    self.proxyObj = [HCSServiceManagerProxy shared];
    NSDictionary *reqDict = @{@"appInfo":@{@"appIdentifier": @"Polaris",@"version":@"1.0",@"subVersion":@""},@"serviceInfo":@[@"com.storeforward.telemetrydata"]};
    [self.proxyObj invokeClassWithParmaDict:reqDict delegate:self dataSource:self];
   
    
}
- (ResultDict * _Nonnull)onQuery:(HCSServiceManagerProxy * _Nonnull)manager :(NSData * _Nonnull)reqData :(NSString * _Nonnull)reqContentType :(NSString * _Nonnull)serviceIdentifier  {
    id jsonDict = [NSJSONSerialization JSONObjectWithData:reqData options:NSJSONReadingAllowFragments error:nil];
    NSLog(@" Version:- (%@)",jsonDict);
    ResultDict *dict = [[ResultDict alloc] init];
    return dict;
}
- (void)onAsyncQuery:(HCSServiceManagerProxy * _Nonnull)manager :(NSData * _Nonnull)reqData :(NSString * _Nonnull)reqContentType :(NSString * _Nonnull)serviceIdentifier completionBlock:(void (^ _Nonnull)(ResultDict * _Nonnull))completion {
    
}
- (IBAction)didSelectSendUpdate:(id)sender {
    NSDictionary *reqDict = @{@"req":@"informFetchUpdatedUserSettings"};
    NSData *data = [NSJSONSerialization dataWithJSONObject:reqDict options:NSJSONWritingPrettyPrinted error:nil] ;
    [_proxyObj sendSyncRequestWithReq:data contentType:@"application/josn" serviceIdentifier:@"com.storeforward.telemetrydata"];
    
}

@end
