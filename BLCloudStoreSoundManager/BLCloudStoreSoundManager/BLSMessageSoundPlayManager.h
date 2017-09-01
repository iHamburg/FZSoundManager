//
//  BLSMessageSoundPlayManager.h
//  BLCloudStoreSoundManager
//
//  Created by 张怡清 on 2017/8/16.
//  Copyright © 2017年 BLS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BLCategoryCloudStoreSoundManager/BLMediator+BLCloudStoreSoundManager.h>

@interface BLSMessageSoundPlayManager : NSObject
+ (instancetype)sharedInstance;

/*
 * 根据type播放语音文件
 */
-(void)playMessageSoundWithType:(BLSSoundPlayType)type;

@end
