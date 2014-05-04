//
//  MetaQR.h
//  MetaQR-Example
//
//  Created by DilumNavanjana on 4/5/14.
//  Copyright (c) 2014 DilumNavanjana. All rights reserved.
//

#import <UIKit/UIKit.h>
@import AVFoundation;

@interface MetaQR : UIView <AVCaptureMetadataOutputObjectsDelegate>

@property (strong,nonatomic) NSString *QRCode;

@end
