//
//  UMVisual.h
//
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UMVisual : NSObject

/** 设置是否不使用可视化功能，默认使用，如不使用可在初始化前设置为NO，请在初始化之前使用
 @param bFlag 默认YES(不输出log); 设置为NO, 则不使用可视化功能
 */
+ (void)setVisualEnabled:(BOOL)bFlag;

#pragma mark - sdk版本
+ (NSString *)libVersion;

//设置最小扫描时间，单位：毫秒 范围是200-1000之间，超出或不满默认是200ms
+ (void)setScanInterval:(int)interval;
@end

