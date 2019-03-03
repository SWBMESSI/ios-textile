//
//  LogsApi.m
//  Textile
//
//  Created by Aaron Sutula on 3/1/19.
//  Copyright © 2019 Textile. All rights reserved.
//

#import "LogsApi.h"

@implementation LogsApi

- (void)setLogLevel:(LogLevel *)level error:(NSError *__autoreleasing *)error {
  [self.node setLogLevel:level.data error:error];
}

@end
