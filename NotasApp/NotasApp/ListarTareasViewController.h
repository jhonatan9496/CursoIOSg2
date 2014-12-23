//
//  ListarTareasViewController.h
//  NotasApp
//
//  Created by JHONATAN ACELAS AREVALO on 17/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListarTareasViewController : UIViewController

@property (strong,nonatomic) NSMutableArray *listaTareas;

@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end
