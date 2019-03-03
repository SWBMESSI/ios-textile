//
//  IpfsApi.m
//  Textile
//
//  Created by Aaron Sutula on 3/1/19.
//  Copyright © 2019 Textile. All rights reserved.
//

#import "IpfsApi.h"

@implementation IpfsApi

- (NSString *)peerId:(NSError *__autoreleasing *)error {
  return [self.node peerId:error];
}

@end
