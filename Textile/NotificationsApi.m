//
//  NotificationsApi.m
//  Textile
//
//  Created by Aaron Sutula on 3/1/19.
//  Copyright © 2019 Textile. All rights reserved.
//

#import "NotificationsApi.h"

@implementation NotificationsApi

- (NotificationList *)notifications:(NSString *)offset limit:(long)limit error:(NSError *__autoreleasing *)error {
  NSData *data = [self.node notifications:offset limit:limit error:error];
  return [[NotificationList alloc] initWithData:data error:error];
}

- (long)countUnreadNotifications {
  return [self.node countUnreadNotifications];
}

- (void)readNotification:(NSString *)notificationId error:(NSError *__autoreleasing *)error  {
  [self.node readNotification:notificationId error:error];
}

- (void)readAllNotifications:(NSError *__autoreleasing *)error  {
  [self.node readAllNotifications:error];
}

- (NSString *)acceptInviteViaNotification:(NSString *)id_ error:(NSError *__autoreleasing *)error {
  return [self.node acceptInviteViaNotification:id_ error:error];
}

- (void)ignoreInviteViaNotification:(NSString *)id_ error:(NSError *__autoreleasing *)error {
  [self.node ignoreInviteViaNotification:id_ error:error];
}

@end
