MetaQR
======

MetaQR is for AVCaptureMetadataOutputObjectsDelegate new feature with iOS 7+ for scan QR Codes. From this MetaQR you can just drag &amp; drop MetaQR files to your project &amp; configure your project accordingly.

Add your MetaQR Frame size as you want & add it as a SubView.
Then the camera will appear & scan the QR Code. You can use the output from @property  *QRCode or use it as you want.

```html
MetaQR *metaQR = [[MetaQR alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
[self.view addSubview:metaQR];
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
