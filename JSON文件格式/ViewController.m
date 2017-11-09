//
//  ViewController.m
//  JSON文件格式
//
//  Created by zh dk on 2017/8/29.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "ViewController.h"

//声明数组字典
static NSDictionary *dic;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //获取json文件在手机中的路径    参数一：文件的名字。  参数二：文件扩展名
    NSString *path = [[NSBundle mainBundle]pathForResource:@"" ofType:@"json"];
    //将文件读取出来，做为二进制存储在内存中
    NSData *dataJson = [NSData dataWithContentsOfFile:path];
    
    //将数据解析类。  参数一：二进制数据对象。  参数二：解析方式，默认解析方式解析   参数三：错误信息对象，可以传nil
    dic = [NSJSONSerialization JSONObjectWithData:dataJson options:NSJSONReadingMutableContainers error:nil];
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"dataJson = %@",dic);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
