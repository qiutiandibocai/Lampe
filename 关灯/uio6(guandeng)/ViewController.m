//
//  ViewController.m
//  uio6(guandeng)
//
//  Created by Ibokan2 on 16/5/31.
//  Copyright © 2016年 ibokan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIButton *button;
    int k ;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    for (int i = 0;i < 9; i++) {
        for (int j = 0; j < 9; j++) {
            button = [[UIButton alloc]initWithFrame:CGRectMake(20+(40*j), 20+(40*i), 30, 30)];
            button.backgroundColor =[UIColor greenColor];
            button.layer.borderWidth =0.75;
            button.layer.cornerRadius =15;
            button.layer.masksToBounds = YES;
//            [button setImage:[UIImage imageNamed:@"屏幕快照 2016-05-26 下午3.45.12"] forState:UIControlStateNormal];
//            [button setImage:[UIImage imageNamed:@"屏幕快照 2016-05-26 下午3.45.19"] forState:UIControlStateSelected];
            [button setTitle:@"亮" forState:UIControlStateNormal];
            [button setTitle:@"灭" forState:UIControlStateSelected];
            
           [button setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
            
    [button addTarget:self action:@selector(aSb:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:button];
            button.tag = 666+213*i+j;
        }
    }
}
-(void)aSb:(UIButton *)sender{
    
    k += 1;
    if (k < 100) {
        NSLog(@"第%d步了!",k);
    }else{
        NSLog(@"通关不了!");
    }
   
    
    sender.backgroundColor=sender.selected?[UIColor greenColor]:[UIColor orangeColor];
    sender.selected =!sender.selected;
    
    UIButton *left =[self.view viewWithTag:sender.tag-1];
    left.backgroundColor = left.selected?[UIColor greenColor]:[UIColor orangeColor];
    left.selected = !left.selected;
   
    UIButton *right =[self.view viewWithTag:sender.tag+1];
    right.backgroundColor = right.selected?[UIColor greenColor]:[UIColor orangeColor];
    right.selected = !right.selected;
   
    UIButton *up = [self.view viewWithTag:sender.tag-213];
    up.backgroundColor = up.selected?[UIColor greenColor]:[UIColor orangeColor];
    up.selected = !up.selected;
    
    UIButton *down = [self.view viewWithTag:sender.tag+213];
    down.backgroundColor = down.selected?[UIColor greenColor]:[UIColor orangeColor];
    down.selected = !down.selected;
   
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
