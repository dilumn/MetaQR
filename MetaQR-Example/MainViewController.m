//
//  MainViewController.m
//  MetaQR-Example
//
//  Created by DilumNavanjana on 4/5/14.
//  Copyright (c) 2014 DilumNavanjana. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark : MetaQR Delegate

-(void)capturedMetaOutput:(AVCaptureOutput *)captureOutput didOutputMetadataObjects:(NSArray *)metadataObjects fromConnection:(AVCaptureConnection *)connection
{
    for (AVMetadataObject *metadata in metadataObjects) {
        if ([metadata.type isEqualToString:AVMetadataObjectTypeQRCode]) {
            
            NSString *qrCode = [(AVMetadataMachineReadableCodeObject *)metadata stringValue];
            NSLog(@"%@",qrCode);
            break;
        }
    }
}

- (IBAction)scanButton:(id)sender {
    MetaQR *metaQR = [[MetaQR alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    metaQR.delegate = self;
    [self.view addSubview:metaQR];
}


@end
