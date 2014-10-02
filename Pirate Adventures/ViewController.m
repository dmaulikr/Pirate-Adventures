//
//  ViewController.m
//  Pirate Adventures
//
//  Created by Felipe Andrés Lorca Gálvez on 10/1/14.
//  Copyright (c) 2014 uanaco. All rights reserved.
//

#import "ViewController.h"
#import "Factory.h"
#import "Tile.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Factory * factory = [[Factory alloc] init];
    self.tiles = [factory tiles];
    self.character = [factory character];
    self.boss = [factory boss];
    [self updateCharacterStatsForArmor:nil withWeapons:nil withHealthEffects:0];
    self.currentPoint = CGPointMake(0, 0);
    [self updateTiles];
    [self updateButtons];
    
}

#pragma mark - Helpers
-(void)updateTiles
{
    Tile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tileModel.story;
    self.backgroundImage.image = tileModel.background;
    self.healthLabel.text = [NSString stringWithFormat:@"%i", self.character.health];
    self.damageLabel.text = [NSString stringWithFormat:@"%i", self.character.damage];
    self.weaponLabel.text = self.character.weapon.name;
    self.armorLabel.text = self.character.armor.name;
    [self.actionButton setTitle:tileModel.actionButtonNAme forState:UIControlStateNormal];
    
    
}
-(void)updateCharacterStatsForArmor:(Armor *)armor withWeapons:(Weapon *)weapon withHealthEffects:(int)healthEffect
{
    if (armor != nil) {
        self.character.health = self.character.health - self.character.armor.health + armor.health;
        self.character.armor = armor;
    }
    else if (weapon != nil){
    
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
    }
    else if (healthEffect != 0){
    
        self.character.health = self.character.health + healthEffect;
    }
    else{
    
        self.character.health = self.character.health + self.character.armor.health;
        self.character.damage = self.character.damage + self.character.weapon.damage;
    
    }
    
}

-(void)updateButtons
{
    self.westButton.hidden = [self tilesExistAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    self.eastButton.hidden = [self tilesExistAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    self.northButton.hidden = [self tilesExistAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    self.southButton.hidden  = [self tilesExistAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y -1)];
                              
}

-(BOOL)tilesExistAtPoint:(CGPoint)point
{
    if (point.x >= 0 && point.y >=0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count]) {
        return NO;
    }
    else return YES;
}


#pragma mark - IBActions

- (IBAction)actionButtonPressed:(UIButton *)sender
{
    
    Tile *tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    
    if (tile.healthEffect == -15) {
        self.boss.health = self.boss.health - self.character.damage;
    }
    [self updateCharacterStatsForArmor:tile.armor withWeapons:tile.weapon withHealthEffects:tile.healthEffect];
    
    if (self.character.health <= 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Dead Message"
                                                        message:@"Morisiste Washo :/"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles: nil];
        [alert show];
    }
    else if (self.boss.health <=0){
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Winner Message"
                                                            message:@"Mataste al boss"
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                otherButtonTitles: nil];
        [alertView show];
    
    }
    
    [self updateTiles];
    
}

- (IBAction)northButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    [self updateButtons];
    [self updateTiles];
}

- (IBAction)westButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTiles];
}

- (IBAction)eastButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTiles];
}

- (IBAction)southButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x , self.currentPoint.y - 1);
    [self updateButtons];
    [self updateTiles];
}

- (IBAction)resetButtonPressed:(UIButton *)sender
{
    self.character = nil;
    self.boss = nil;
    [self viewDidLoad];
}

@end
