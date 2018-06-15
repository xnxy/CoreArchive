//
//  CoreArchive.h
//  CoreArchive
//
//  Created by dev on 2018/6/14.
//  Copyright © 2018年 dev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CoreArchive : NSObject

+ (nullable id)objForKey:(NSString *)key;
+ (void)setObject:(nullable id)value forKey:(NSString *)key;
+ (void)removeObjForKey:(NSString *)key;

#pragma mark ---
#pragma mark --- 取 ----
+ (NSInteger)intForKey:(NSString *)key;
+ (CGFloat)floatForKey:(NSString *)key;
+ (double)doubleForKey:(NSString *)key;
+ (BOOL)boolForKey:(NSString *)key;
+ (nullable NSURL *)urlForKey:(NSString *)key API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));

#pragma mark ---
#pragma mark --- 存 ---
+ (void)setInteger:(NSInteger)value forKey:(NSString *)key;
+ (void)setFloat:(CGFloat)value forKey:(NSString *)key;
+ (void)setDouble:(double)value forKey:(NSString *)key;
+ (void)setBool:(BOOL)value forKey:(NSString *)key;
+ (void)setUrl:(nullable NSURL *)url forKey:(NSString *)key API_AVAILABLE(macos(10.6), ios(4.0), watchos(2.0), tvos(9.0));

@end
