//
//  MenuItem.h
//  Obj-C Trainer App
//
//  Created by Brad Fallon on 10/16/14.
//  Copyright (c) 2014 com.bradfallon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuItem : NSObject

@property (strong, nonatomic) NSString *menuTitle;
@property (strong, nonatomic) NSString *menuIcon;
@property (nonatomic) int screenType;

@end
