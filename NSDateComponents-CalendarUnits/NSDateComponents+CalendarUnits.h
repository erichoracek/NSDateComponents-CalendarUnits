//
//  NSDateComponents+CalendarUnits.h
//  NSDateComponents-CalendarUnits
//
//  Created by Eric Horacek on 11/30/13.
//  Copyright (c) 2013-2014 Eric Horacek. All rights reserved.
//
//  This code is distributed under the terms and conditions of the MIT license.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

/**
 `NSDateComponents` category for getting and setting date components via `NSCalendarUnit` values.
*/
@interface NSDateComponents (CalendarUnits)

/**
 Returns the date component for the specified `NSCalendarUnit`.
 
 Requires that the specified `NSCalendarUnit` is not a masked value.
 
 @param calendarUnit The `NSCalendarUnit` that the date component should be returned for.
 */
- (NSInteger)componentForCalendarUnit:(NSCalendarUnit)calendarUnit;

/**
 Sets a date component as specified by a `NSCalendarUnit`.
 
 Requires that the specified `NSCalendarUnit` is not a masked value.
 
 @param component The component to be set on the `NSDateComponents` instance.
 @param calendarUnit The calendar unit that the component should be set for.
 */
- (void)setComponent:(NSInteger)component forCalendarUnit:(NSCalendarUnit)calendarUnit;

@end
