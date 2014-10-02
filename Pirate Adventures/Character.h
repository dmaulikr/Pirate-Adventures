//
//  Character.h
//  Pirate Adventures
//
//  Created by Felipe Andrés Lorca Gálvez on 10/1/14.
//  Copyright (c) 2014 uanaco. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weapon.h"
#import "Armor.h"

@interface Character : NSObject

@property (nonatomic) int health;
@property (nonatomic) int damage;
@property (strong, nonatomic) Weapon *weapon;
@property (strong, nonatomic) Armor *armor;

@end
