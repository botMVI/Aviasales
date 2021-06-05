//
//  ViewController.m
//  Aviasales
//
//  Created by Michael Iliouchkin on 05.06.2021.
//

#import "MainViewController.h"
#import "DataManager.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[DataManager sharedInstance] loadData];

    self.view.backgroundColor = [UIColor whiteColor];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loadDataComplete) name:kDataManagerLoadDataDidComplete object:nil];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:kDataManagerLoadDataDidComplete object:nil];
}

- (void)loadDataComplete
{
    self.view.backgroundColor = [UIColor yellowColor];
}

@end
