//
//  cacheManeger.h
//  FileCacheDemo
//
//  Created by 鑫鑫 on 16/4/23.
//  Copyright © 2016年 heima. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^GetDataCompletion)(NSData *data);
// 响应的 etag
@interface cacheManeger : NSObject
+(cacheManeger *)getInstance;

- (void)getData:(GetDataCompletion)completion imageUrl:(NSURL *)url;
@end
