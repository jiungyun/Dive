//
//  CunddDiveEffectColorValueTransformer.m
//  Dive
//
//  Created by Daniel Corn on 03.06.10.
//
//    Copyright © 2010-2012 Corn Daniel
//
//    This file is part of Dive.
//
//    Dive is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    Foobar is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with Foobar.  If not, see <http://www.gnu.org/licenses/>.
//
//

#import "CunddDiveEffectColorValueTransformer.h"


@implementation CunddDiveEffectColorValueTransformer

+(Class) transformedValueClass{
	return [NSString class];
}
+(BOOL) allowsReverseTransformation{
	return YES;
}

//		display -> value
-(id) reverseTransformedValue:(id)value{
	if(!value) return nil;
	if(![value isKindOfClass:[NSColor class]]) return nil;
	
	return [CunddColorConverter numberStringFromNSColor:value];
}

//		value -> display
-(id) transformedValue:(id)value{
	if(!value) return nil;
	if(![value isKindOfClass:[NSString class]]) return nil;
	
	return [CunddColorConverter NSColorFromNumberString:value];
}

@end
