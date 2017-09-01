//
//  BLMediator+BLCloudStoreSoundManager.m
//  BLCategoryCloudStoreSoundManager
//
//  Created by 张怡清 on 2017/8/16.
//  Copyright © 2017年 BLS. All rights reserved.
//

#import "BLMediator+BLCloudStoreSoundManager.h"

@implementation BLMediator (BLCloudStoreSoundManager)

- (void)CloudStoreSoundManager_playSoundWithType:(BLSSoundPlayType)type
{
    [self performTarget:@"CloudStoreSoundManager"
                 action:@"playIMMessageSound"
                 params:@{@"type":@(type)}
      shouldCacheTarget:NO];
}

@end
