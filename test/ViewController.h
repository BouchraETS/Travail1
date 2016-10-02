//
//  ViewController.h
//  test
//
//  Created by Fanane, Bouchra on 16-09-28.
//  Copyright © 2016 Fanane, Bouchra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Joueur.h"

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableViewJoueurs;
@property (weak, nonatomic) IBOutlet UITableView *tableViewEquipes;
@property (nonatomic,weak) IBOutlet UITableView *tableViewEtoiles;
@property (nonatomic, strong) NSMutableArray *Etoiles;
@property (nonatomic, strong) NSMutableArray *ArrayEquipeVisitors;
@property (nonatomic, strong) NSMutableArray *ArrayEquipeHome;



- (IBAction)AddJoueur:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *textfieldAjouterJoueur;

- (IBAction)AddTeam:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTeam;

- (IBAction)VisitorMoins:(id)sender;
- (IBAction)VisitorPlus:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *Visitorpoints;

- (IBAction)plusPeriode:(id)sender;
- (IBAction)moinsPeriode:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *periodeChiffre;

- (IBAction)HomePlus:(id)sender;
- (IBAction)HomeMoins:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *HomePoints;


- (IBAction)AddEtoile:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textFieldEtoiles;

@end

