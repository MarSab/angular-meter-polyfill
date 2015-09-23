angular-meter-polyfill
================================

[HTML5 &lt;meter&gt;](https://www.google.it/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0CCEQFjAAahUKEwjtlIryko3IAhVMvBQKHRCGAw8&url=http%3A%2F%2Fwww.w3schools.com%2Ftags%2Ftag_meter.asp&usg=AFQjCNERFtlyp_aQo-V1nWWCUtwp-NSD6Q&sig2=TuxhRdDtxlgU8N4PB_6nxA) polyfill for [AngularJS](https://angularjs.org/).


This plugin provides to your browser the feature of the tag <code>&lt;meter&gt;</code>. Behavior and style are taken by Google Chrome.

Usage
--------------------------------

Install with bower:

        bower install angular-meter-polyfill


Import Angular and  angular-meter-polyfill.min.js:

```html
<script src="bower_components/angular/angular.min.js"></script>
<script src="bower_components/angular-meter-polyfill/dist/angular-meter-polyfill.min.js"></script>
```
Import angular-meter-polyfill.min.css:

```html
<link rel="stylesheet" href="bower_components/angular-meter-polyfill/dist/angular-meter-polyfill.min.css">
```

Add the polyfill module to your app module:

```javascript
var app = angular.module('YourApp', ['angular-meter-polyfill']);
```

...that's all! Simply forgot the browser you are developing on!

The plugin checks if your browser is natively supporting the <code>&lt;meter&gt;</code> tag. If not, it attaches a directive for you.

Styling
-------------------------------
If you want to provide a custom style to your <code>&lt;meter&gt;</code>, it is better to include the content of <code>dist/angular-meter-polyfill.css</code> in your own CSS and to modify it directly.

Support
--------------------------------
Browsers that natively support <code>&lt;meter&gt;</code> ([more](http://caniuse.com/#feat=meter)):
* Google Chrome
* Firefox
* Opera
* Safari on Mac
* Android Browser 4.4.4+

Browsers currently supported by the polyfill:
* Internet Explorer 9+
* Safari on iOS 7+

> We are still testing on other browsers

Known issues
---------------------------------
In browser not supporting CSS3 gradients (IE9), the <code>&lt;meter&gt;</code> is styled with plain colors.
