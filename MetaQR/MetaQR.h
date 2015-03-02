//
//  MetaQR.h
//  MetaQR-Example
//
//  Created by DilumNavanjana on 4/5/14.
//  Copyright (c) 2014 DilumNavanjana. All rights reserved.
//

#import <UIKit/UIKit.h>
@import AVFoundation;

@protocol MetaQRDelegate <NSObject>
- (void)capturedMetaOutput:(AVCaptureOutput *)captureOutput
didOutputMetadataObjects:(NSArray *)metadataObjects
       fromConnection:(AVCaptureConnection *)connection;
@end

@interface MetaQR : UIView <AVCaptureMetadataOutputObjectsDelegate>

//Delegate
@property (nonatomic, weak) id <MetaQRDelegate> delegate; //Add this delegate to your Project

@end
