//
//  CunddDiveEffectPullDownCell.h
//  Dive
//
//  Created by Daniel Corn on 05.05.10.
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

#import <Cocoa/Cocoa.h>
#import "CunddDiveEffectMenuItem.h"
#import "CunddDiveEffectMenuSeparator.h"



@interface CunddDiveEffectPullDownCell : NSPopUpButtonCell {
	CunddDiveEffectMenuSeparator * separatorPrototype;
	CunddDiveEffectMenuItem * menuItemPrototype;
	NSArray * sortedObjects;
}

-(void)setup;
@property (retain) CunddDiveEffectMenuSeparator * separatorPrototype;
@property (retain) CunddDiveMenuItem * menuItemPrototype;
@property (retain) NSArray * sortedObjects;
@end
