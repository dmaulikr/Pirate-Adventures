//
//  Factory.m
//  Pirate Adventures
//
//  Created by Felipe Andrés Lorca Gálvez on 10/1/14.
//  Copyright (c) 2014 uanaco. All rights reserved.
//

#import "Factory.h"
#import "Tile.h"

@implementation Factory

-(NSArray *)tiles
{
    Tile *tile1 = [[Tile alloc] init];
    tile1.story = @"Capitan, necesitamos un lider fuerte y pulento como tú, para navegar en estos mares mareadores. Necesitamos que tú destruyas al malvado pirata Crane para liberarnos del mal. ¿Te gustaría tener una espada gigante de hierro poderosa para empezar?";
    tile1.background = [UIImage imageNamed:@"PirateStart.jpg"];
    
    Weapon *espadaHierro = [[Weapon alloc]init];
    espadaHierro.name = @"Espada de Hierro";
    espadaHierro.damage = 12;
    tile1.weapon = espadaHierro;
    tile1.actionButtonNAme = @"Toma la espada!";
    
    Tile *tile2 = [[Tile alloc] init];
    tile2.story = @"Has venido desde la armería. ¿Te gustaría agrandar tu combo de armadura?";
    tile2.background = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    
    Armor *steelArmor = [[Armor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 10;
    tile2.armor = steelArmor;
    tile2.actionButtonNAme = @"Tomá la armor loco!";
    
    Tile *tile3 = [[Tile alloc] init];
    tile3.story = @"Capitán, un misterioso dock aparece en el horizonte. ¿Deberíamos parar y pedir indicaciones?";
    tile3.background = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonNAme = @"Pará el dock";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc]initWithObjects:tile1, tile2, tile3, nil];
    
    Tile *tile4 = [[Tile alloc] init];
    tile4.story = @"Has encontrado un loro. Este puede ser usado en tu armadura. Los loros son buenos defensores y leales animales con su capitan.";
    tile4.background = [UIImage imageNamed:@"PirateParrot.jpg"];
    Armor *parrotArmor = [[Armor alloc]init];
    parrotArmor.health = 20;
    parrotArmor.name = @"ParrotArmor";
    tile4.actionButtonNAme = @"Adoptá el loro";

    
    Tile *tile5 = [[Tile alloc] init];
    tile5.story = @"Te has estamblecido con no se que cosas de piratas. ¿Te gustaría actualizar tu arma?";
    tile5.background = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    Weapon *cristalWeapon = [[Weapon alloc]init];
    cristalWeapon.name = @"Cristal Weapon";
    cristalWeapon.damage = 17;
    tile5.actionButtonNAme = @"Usá pistola";
    
    Tile *tile6 = [[Tile alloc] init];
    tile6.story = @"Has sido caputado por piratas y te han ordenado a que camines por la borda :(";
    tile6.background = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -20;
    tile6.actionButtonNAme = @"Show no fear";
    
     NSMutableArray *secondColumn = [[NSMutableArray alloc]initWithObjects:tile4, tile5, tile6, nil];
    
    Tile *tile7 = [[Tile alloc] init];
    tile7.story = @"Hay una pelea de piratas a lo lejos. ¿Intervenimos?";
    tile7.background = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    tile7.actionButtonNAme = @"Fight Scumb";
    
    Tile *tile8 = [[Tile alloc] init];
    tile8.story = @"La leyenda del oceano. The Myghty kraken appears";
    tile8.background = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -18;
    tile8.actionButtonNAme = @"Abandona el barco";
    
    Tile *tile9 = [[Tile alloc] init];
    tile9.story = @"You tienes no se que cosa escondida en una cueva pirata. ¿Es un tesoro?";
    tile9.background = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 10;
    tile9.actionButtonNAme = @"Toma el tesoro";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc]initWithObjects:tile7, tile8, tile9, nil];
    
    
    Tile *tile10 = [[Tile alloc] init];
    tile10.story = @"Un grupo de piratas intenta abordar tu nave.";
    tile10.background = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -7;
    tile10.actionButtonNAme = @"Repeler invasión";
    
    Tile *tile11 = [[Tile alloc] init];
    tile11.story = @"En lo mas hondo del oceano, muchas cosas pueden vivi y pueden ser encontradas. Esta furtuna te puede traer a la banca rota...";
    tile11.healthEffect = -11;
    tile11.background = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.actionButtonNAme = @"Nada como loco";
    
    Tile *tile12 = [[Tile alloc] init];
    tile12.story = @"Te has encontrado con un feroz pirata enemigo y gil!!";
    tile12.background = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonNAme = @"Pelea!!!";
    
     NSMutableArray *fourthColumn = [[NSMutableArray alloc]initWithObjects:tile10, tile11, tile12, nil];
    
    NSArray *tiles = [[NSArray alloc]initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
    
}

-(Boss *)boss
{

    Boss *boss = [[Boss alloc]init];
    
    boss.health = 60;
    
    return  boss;

}

-(Character *)character
{
    Character *character = [[Character alloc] init];
    
    character.health = 100;
    Armor *armor = [[Armor alloc]init];
    armor.name = @"Cloak";
    armor.health = 5;
    
    character.armor = armor;
    
    Weapon *weapon = [[Weapon alloc] init];
    weapon.name = @"Fist";
    weapon.damage = 10;
    
    character.weapon = weapon;
    
    return  character;
}


@end
