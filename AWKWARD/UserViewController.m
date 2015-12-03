//
//  UserViewController.m
//  AWKWARD
//
//  Created by qingyun on 15/12/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "UserViewController.h"
#define kScreenW    [UIScreen mainScreen].bounds.size.width



@interface UserViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) NSArray *data1;
@property (nonatomic,strong) NSArray *data2;
@property (nonatomic,strong) NSArray *data3;
@property (nonatomic,strong) NSArray *data4;
@property (nonatomic,strong) NSArray *data5;


@end

@implementation UserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建TableView
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 200, kScreenW, 60) style:UITableViewStyleGrouped];
    
    //    tableView.userInteractionEnabled = NO;
    tableView.scrollEnabled = NO;
    
    [self.view addSubview:tableView];
    
    //设置数据源
    tableView.dataSource = self;
    
    //设置代理
    tableView.delegate = self;
    // Do any additional setup after loading the view.
}

//table组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


//行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            <#statements#>
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
