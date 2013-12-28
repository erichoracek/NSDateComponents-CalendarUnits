//
//  NSDateComponents+CalendarUnits.m
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

#import "NSDateComponents+CalendarUnits.h"

@implementation NSDateComponents (CalendarUnits)

- (NSInteger)componentForCalendarUnit:(NSCalendarUnit)calendarUnit
{
    return [[self valueForKey:[self keyForCalendarUnit:calendarUnit]] integerValue];
}

- (void)setComponent:(NSInteger)component forCalendarUnit:(NSCalendarUnit)calendarUnit
{
    [self setValue:@(component) forKeyPath:[self keyForCalendarUnit:calendarUnit]];
}

- (NSString *)keyForCalendarUnit:(NSCalendarUnit)calendarUnit
{
    NSAssert1(((calendarUnit & (calendarUnit - 1)) == 0), @"calendarUnit (%@) must not be a masked value", @(calendarUnit));
    switch (calendarUnit) {
        case NSCalendarUnitEra:
            return @"era";
        case NSCalendarUnitYear:
            return @"year";
        case NSCalendarUnitMonth:
            return @"month";
        case NSCalendarUnitDay:
            return @"day";
        case NSCalendarUnitHour:
            return @"hour";
        case NSCalendarUnitMinute:
            return @"minute";
        case NSCalendarUnitSecond:
            return @"second";
        case NSCalendarUnitWeekday:
            return @"weekday";
        case NSCalendarUnitWeekdayOrdinal:
            return @"weekdayOrdinal";
        case NSQuarterCalendarUnit:
            return @"quarter";
        case NSWeekOfMonthCalendarUnit:
            return @"weekOfMonth";
        case NSCalendarUnitWeekOfYear:
            return @"weekOfYear";
        case NSCalendarUnitYearForWeekOfYear:
            return @"yearForWeekOfYear";
#if __MAC_OS_X_VERSION_MAX_ALLOWED >= 1070 || __NSCALENDAR_COND_IOS_5_0
        case NSCalendarUnitNanosecond:
            return @"nanosecond";
#endif
        case NSCalendarUnitCalendar:
            return @"calendar";
        case NSCalendarUnitTimeZone:
            return @"timeZone";
        default:
            NSAssert1(NO, @"Invalid Calendar Unit: %@", @(calendarUnit));
            return nil;
    }
}

@end
