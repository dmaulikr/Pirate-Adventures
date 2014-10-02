//
//  Tile.h
//  Pirate Adventures
//
//  Created by Felipe Andrés Lorca Gálvez on 10/1/14.
//  Copyright (c) 2014 uanaco. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Weapon.h"
#import "Armor.h"

@interface Tile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *background;
@property (strong, nonatomic) NSString *actionButtonNAme;
@property (strong, nonatomic) Weapon *weapon;
@property (strong, nonatomic) Armor *armor;
@property (nonatomic) int healthEffect;

@end
