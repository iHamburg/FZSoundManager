//
//  BLMediator+BLCloudStoreSoundManager.h
//  BLCategoryCloudStoreSoundManager
//
//  Created by 张怡清 on 2017/8/16.
//  Copyright © 2017年 BLS. All rights reserved.
//

#import <BLMediator/BLMediator.h>


typedef  NS_ENUM(NSUInteger,BLSSoundPlayType){
    BLSSoundPlayIMMassage
};


@interface BLMediator (BLCloudStoreSoundManager)

- (void)CloudStoreSoundManager_playSoundWithType:(BLSSoundPlayType)type;

@end
