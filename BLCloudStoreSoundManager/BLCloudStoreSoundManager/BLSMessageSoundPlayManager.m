//
//  BLSMessageSoundPlayManager.m
//  CloudMerchant
//
//  Created by 周奇 on 2017/6/30.
//  Copyright © 2017年 BL. All rights reserved.
//

#import "BLSMessageSoundPlayManager.h"
#import <AVFoundation/AVFoundation.h>

@interface BLSMessageSoundPlayManager()<AVAudioPlayerDelegate>
@property(nonatomic, strong) AVAudioPlayer *player;
@property(nonatomic) BOOL isPlaying;

@end


@implementation BLSMessageSoundPlayManager


+ (instancetype)sharedInstance {
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[[self class] alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(void)playMessageSoundWithType:(BLSSoundPlayType)type{
    
    NSLog(@"BLCloudStoreSoundManager is playing");
    
    NSData *soundData;
    switch (type) {
        case BLSSoundPlayIMMassage:
            soundData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"消息提示音.m4a" ofType:nil]];
            break;
            
        default:
            soundData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"消息提示音.m4a" ofType:nil]];
            break;
    }
    if (self.isPlaying) {
        [self.player stop];
    }
    NSError *error;
    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithData:soundData error:&error];
    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryPlayback error:nil];
    //    kBLSLog(@"开始播放完成 -- %d -- %@",soundData.length,error);
    self.player = player;
    self.player.delegate = self;
    self.isPlaying = YES;
    self.player.volume = 1.0;
    
    // 如果是模拟器不播放
#if TARGET_IPHONE_SIMULATOR
    
#else
    [self.player prepareToPlay];
    [self.player play];
#endif
    
    
}

-(void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag{
    NSLog(@"播放完成");
    self.isPlaying = NO;
}




@end
