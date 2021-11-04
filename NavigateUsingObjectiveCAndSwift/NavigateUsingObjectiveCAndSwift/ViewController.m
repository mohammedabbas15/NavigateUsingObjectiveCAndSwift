//
//  ViewController.m
//  NavigateUsingObjectiveCAndSwift
//
//  Created by Field Employee on 11/4/21.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITableView *myTableViewObj;

@end

@implementation ViewController

NSArray *myArray = @[@"Mohammed", @"Ali", @"Abbas", @"32524", @"Regents Blvd", @"Union City", @"California", @"94587"];


- (void)viewDidLoad {
    [super viewDidLoad];
    self.myTableViewObj.delegate = self;
    self.myTableViewObj.dataSource = self;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return myArray.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *XuLi = [storyboard instantiateViewControllerWithIdentifier:@"NextCell"];
    XuLi.title = myArray[indexPath.row];
    [self.navigationController pushViewController:XuLi animated:true];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [
        [UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"
    ];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    NSArray *array = myArray[indexPath.row];
    cell.textLabel.text = array;
    
    return cell;
}

@end
