//
//  ViewController.m
//  CoreArchive
//
//  Created by dev on 2018/6/14.
//  Copyright © 2018年 dev. All rights reserved.
//

#import "ViewController.h"

#import "SaveKeyName.h"
#import "CoreArchive.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [CoreArchive setObject:@"12345" forKey:SaveKeyName_obj];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"----obj:%@----",[CoreArchive objForKey:SaveKeyName_obj]);
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [CoreArchive removeObjForKey:SaveKeyName_obj];
        NSLog(@"----obj:%@----",[CoreArchive objForKey:SaveKeyName_obj]);
    });
    
    //存
    [CoreArchive setInteger:4 forKey:SaveKeyName_int];
    [CoreArchive setFloat:0.1234 forKey:SaveKeyName_float];
    [CoreArchive setDouble:12345.1234567 forKey:SaveKeyName_double];
    [CoreArchive setBool:YES forKey:SaveKeyName_bool];
    [CoreArchive setUrl:[NSURL URLWithString:@"https://www.google.cm/?gws_rd=ssl"] forKey:SaveKeyName_url];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //取
        NSLog(@"----int:%ld-------",[CoreArchive intForKey:SaveKeyName_int]);
        NSLog(@"----float:%f------",[CoreArchive floatForKey:SaveKeyName_float]);
        NSLog(@"----double:%f-----",[CoreArchive doubleForKey:SaveKeyName_double]);
        NSLog(@"----bool:%d-------",[CoreArchive boolForKey:SaveKeyName_bool]);
        NSLog(@"----url:%@--------",[CoreArchive urlForKey:SaveKeyName_url]);
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //删除
        [CoreArchive removeObjForKey:SaveKeyName_int];
        [CoreArchive removeObjForKey:SaveKeyName_float];
        [CoreArchive removeObjForKey:SaveKeyName_float];
        [CoreArchive removeObjForKey:SaveKeyName_bool];
        [CoreArchive removeObjForKey:SaveKeyName_url];
        
        NSLog(@"----int:%ld-------",[CoreArchive intForKey:SaveKeyName_int]);
        NSLog(@"----float:%f------",[CoreArchive floatForKey:SaveKeyName_float]);
        NSLog(@"----double:%lf-----",[CoreArchive doubleForKey:SaveKeyName_float]);
        NSLog(@"----bool:%d-------",[CoreArchive boolForKey:SaveKeyName_bool]);
        NSLog(@"----url:%@--------",[CoreArchive urlForKey:SaveKeyName_url]);
    });
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
