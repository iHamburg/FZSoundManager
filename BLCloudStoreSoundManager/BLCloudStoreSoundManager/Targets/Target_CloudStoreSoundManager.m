//
//  Target_CloudStoreSoundManager.m
//  BLCloudStoreSoundManager
//
//  Created by 张怡清 on 2017/8/16.
//  Copyright © 2017年 BLS. All rights reserved.
//

#import "Target_CloudStoreSoundManager.h"
#import "BLSMessageSoundPlayManager.h"

@implementation Target_CloudStoreSoundManager

- (void)Action_playIMMessageSound:(NSDictionary *)params
{
    NSLog(@"hello");
    NSLog(@"Action_playIMMessageSound # %@", params);
    [[BLSMessageSoundPlayManager sharedInstance] playMessageSoundWithType:[[params objectForKey:@"type"] integerValue]];
}

@end
