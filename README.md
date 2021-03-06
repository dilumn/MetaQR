MetaQR
======

MetaQR is for AVCaptureMetadataOutputObjectsDelegate new feature with iOS 7+ for scan QR Codes. From this MetaQR you can just drag &amp; drop MetaQR files to your project &amp; configure your project accordingly.

Add your MetaQR Frame size as you want & add it as a SubView.
Then the camera will appear & scan the QR Code. You can use the output from @property  *QRCode or use it as you want.

### Installation with CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like MetaQR in your projects.

#### Podfile

```ruby
platform :ios, '7.0'
pod "MetaQR"
```
### Usage

```html
MetaQR *metaQR = [[MetaQR alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
metaQR.delegate = self;
[self.view addSubview:metaQR];
```

Add this delegate method and this delegate method will fire when the QRCode is detected

```html
-(void)capturedMetaOutput:(AVCaptureOutput *)captureOutput didOutputMetadataObjects:(NSArray *)metadataObjects fromConnection:(AVCaptureConnection *)connection
```

<h1>

<h4>
Please note that this will not work on simulators because this uses the device camera
</h4>

<h1>
Credits
</h1>
MetaQR was originally created by Dilum Navanjana for iOS.

<h1>
Contact
</h1>

Follow MetaQR on Blog (http://bcdilumonline.blogspot.com)

<h1>
License
</h1>
MetaQR is available under the MIT license. See the LICENSE file for more info.
