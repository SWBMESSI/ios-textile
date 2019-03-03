//
//  Flags.m
//  Textile
//
//  Created by Aaron Sutula on 3/1/19.
//  Copyright © 2019 Textile. All rights reserved.
//

#import "FlagsApi.h"

@implementation FlagsApi

- (NSString *)addFlag:(NSString *)blockId error:(NSError **)error {
  return [self.node addFlag:blockId error:error];
}

@end
