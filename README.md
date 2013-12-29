# Introduction

**NSDateComponents-CalendarUnits** was written by **[Eric Horacek](https://twitter.com/erichoracek)**.

NSDateComponents-CalendarUnits is a `NSDateComponents` category for getting and setting date components via `NSCalendarUnit` values.

These methods were intended to be exposed as an API in iOS7 by Apple, but didn't make it in for the final release. See lines `473-507` of `NSCalendar.h` and note that the magical `NS_ENABLE_CALENDAR_NEW_API` is not defined.

# Documentation

## CocoaDocs

Documentation for `NSDateComponents-CalendarUnits` is available online via [CocoaDocs](http://cocoadocs.org/docsets/NSDateComponents-CalendarUnits/).

## Xcode

If you would like to install the `NSDateComponents-CalendarUnits` documentation into Xcode, you can do so by first installing [Appledoc](https://github.com/tomaz/appledoc/) (`$ brew install appledoc`), and then by running the `Documentation` target in the `NSDateComponents-CalendarUnits.xcodeproj` in the root of repository.

# Contributing

Forks, patches and other feedback are welcome.

# License

```
Copyright (c) 2013-2014 Eric Horacek. All rights reserved.

This code is distributed under the terms and conditions of the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
