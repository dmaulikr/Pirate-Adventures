//
//  ViewController.h
//  Pirate Adventures
//
//  Created by Felipe Andrés Lorca Gálvez on 10/1/14.
//  Copyright (c) 2014 uanaco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Character.h"
#import "Boss.h"

@interface ViewController : UIViewController

@property (nonatomic) CGPoint currentPoint;
@property (nonatomic, strong) NSArray *tiles;
@property (strong,nonatomic) Character *character;
@property (strong, nonatomic) Boss *boss;

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (weak, nonatomic) IBOutlet UILabel *storyLabel;
@property (weak, nonatomic) IBOutlet UILabel *healthLabel;
@property (weak, nonatomic) IBOutlet UILabel *damageLabel;
@property (weak, nonatomic) IBOutlet UILabel *weaponLabel;
@property (weak, nonatomic) IBOutlet UILabel *armorLabel;
@property (weak, nonatomic) IBOutlet UIButton *actionButton;
@property (weak, nonatomic) IBOutlet UIButton *northButton;
@property (weak, nonatomic) IBOutlet UIButton *eastButton;
@property (weak, nonatomic) IBOutlet UIButton *southButton;
@property (weak, nonatomic) IBOutlet UIButton *westButton;

//Actions
- (IBAction)actionButtonPressed:(UIButton *)sender;

- (IBAction)northButtonPressed:(UIButton *)sender;

- (IBAction)westButtonPressed:(UIButton *)sender;

- (IBAction)eastButtonPressed:(UIButton *)sender;

- (IBAction)southButtonPressed:(UIButton *)sender;

- (IBAction)resetButtonPressed:(UIButton *)sender;




@end

