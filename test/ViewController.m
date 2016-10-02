//
//  ViewController.m
//  test
//
//  Created by Fanane, Bouchra on 16-09-28.
//  Copyright © 2016 Fanane, Bouchra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableViewEquipes.dataSource=self;
    self.tableViewEquipes.delegate=self;
    self.tableViewJoueurs.dataSource=self;
    self.tableViewJoueurs.delegate=self;
    
    self.ArrayEquipeHome=[NSMutableArray arrayWithObjects:@"4-David Labbé", @"8-Jhon McGuffin", @"10-Francis Cardinal", @"11-Joe Bleault", @"99-Yplak Labande", nil];
   // self.ArrayEquipeHome=[[NSMutableArray alloc] init];
    self.ArrayEquipeVisitors=[NSMutableArray arrayWithObjects:@"90-Bouchra Fanane", @"88-Michel Lafrance", @"1-Eric Brassard-Ferron", nil];
    
    self.tableViewEtoiles.delegate=self;
    self.tableViewEtoiles.dataSource=self;
    self.Etoiles=[NSMutableArray arrayWithObjects:@"4:David Labbé 3P", @"10:Francis Cardinal 1B 1P", @"1:Eric Brassard-Ferron 3B", nil];

    //[self.tableViewJoueurs reloadData];
    //[self.tableViewEquipes reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(tableView==self.tableViewJoueurs){
        return [self.ArrayEquipeVisitors count];
    }else if(tableView==self.tableViewEtoiles){
        return [self.Etoiles count];
    }else{
         return [self.ArrayEquipeHome count];
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CelluleIdentifier=@"CelluleId";
    UITableViewCell *cellule=[tableView dequeueReusableCellWithIdentifier:CelluleIdentifier ];
    if(cellule==nil){
        cellule=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CelluleIdentifier];
    }
    if(tableView==self.tableViewJoueurs){
        cellule.textLabel.text=[self.ArrayEquipeVisitors objectAtIndex:indexPath.row];
    }
    if(tableView==self.tableViewEquipes){
        cellule.textLabel.text=[self.ArrayEquipeHome objectAtIndex:indexPath.row];
    }
    if (tableView==self.tableViewEtoiles) {
        cellule.textLabel.text=[self.Etoiles objectAtIndex:indexPath.row];
    }
    return cellule;
    
}
- (IBAction)AddJoueur:(id)sender {
    NSString *joueur=self.textfieldAjouterJoueur.text;
    
    [self.ArrayEquipeVisitors addObject:joueur] ;
    [self.textfieldAjouterJoueur resignFirstResponder];
    [self.tableViewJoueurs reloadData];
    
}


- (IBAction)AddTeam:(id)sender {
    NSString *team=self.textFieldTeam.text;
    
    [self.ArrayEquipeHome addObject:team] ;
    [self.textFieldTeam resignFirstResponder];
    [self.tableViewEquipes reloadData];
}

- (IBAction)VisitorMoins:(id)sender {
    NSString *points = self.Visitorpoints.text;
    NSInteger moinsPoints = [points integerValue]-1;
    self.Visitorpoints.text = [NSString stringWithFormat: @"%ld", (long)moinsPoints];
}

- (IBAction)VisitorPlus:(id)sender {
    NSString *points = self.Visitorpoints.text;
    NSInteger ajoutPoints = [points integerValue]+1;
    self.Visitorpoints.text = [NSString stringWithFormat: @"%ld", (long)ajoutPoints];
    
}

- (IBAction)plusPeriode:(id)sender {
    NSString *periode = self.periodeChiffre.text;
    NSInteger plusPeriode = [periode integerValue]+1;
    self.periodeChiffre.text = [NSString stringWithFormat: @"%ld", (long)plusPeriode];
}

- (IBAction)moinsPeriode:(id)sender {
    NSString *periode = self.periodeChiffre.text;
    NSInteger moinsPeriode = [periode integerValue]-1;
    self.periodeChiffre.text = [NSString stringWithFormat: @"%ld", (long)moinsPeriode];
}

- (IBAction)HomePlus:(id)sender {
    NSString *points = self.HomePoints.text;
    NSInteger ajoutPoints = [points integerValue]+1;
    self.HomePoints.text = [NSString stringWithFormat: @"%ld", (long)ajoutPoints];
}

- (IBAction)HomeMoins:(id)sender {
    NSString *points = self.HomePoints.text;
    NSInteger moinsPoints = [points integerValue]-1;
    self.HomePoints.text = [NSString stringWithFormat: @"%ld", (long)moinsPoints];
}
- (IBAction)AddEtoile:(id)sender {
    [self.Etoiles addObject:self.textFieldEtoiles.text];
    [self.textFieldEtoiles resignFirstResponder];
    [self.tableViewEtoiles reloadData];
    
}
@end
