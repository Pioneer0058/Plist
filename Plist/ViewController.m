//
//  ViewController.m
//  Plist
//
//  Created by DC017 on 15/12/21.
//  Copyright © 2015年 DC017. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self layout];
   // NSArray * array=@[@1,@2,@3];
    
    
    //创建plist            //存放
  //  [array writeToFile:@"/Users/dc017/desktop/sss.plist" atomically:YES];
    //获取plist 文件
    NSArray * arrayI=[NSArray arrayWithContentsOfFile:@"/Users/dc017/desktop/sss.plist"];
    NSLog(@"%@",arrayI);
   
    
    
    
}
-(void)layout{
    _tableview=[[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    _tableview.dataSource=self;
    _tableview.delegate=self;
    [self.view addSubview:_tableview];
    
    
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell * )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString * Cell=@"cell";
    UITableViewCell * cell=[tableView dequeueReusableCellWithIdentifier:Cell];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Cell];
        
    }
    cell.textLabel.text=@"sdsfsd";
    return cell;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
