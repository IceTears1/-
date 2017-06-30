//
//  ViewController.m
//  BLView
//
//  Created by 冰泪 on 2017/6/22.
//  Copyright © 2017年 冰泪. All rights reserved.
//

#import "ViewController.h"
#import "TreeModel.h"

@interface ViewController ()
{
    TreeModel *m1;
    
    TreeModel *AA;
    NSString *resultStr;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *bb = [[UIButton alloc]initWithFrame:CGRectMake(20, 50, 170, 20)];
    [bb setTitle:@"前序遍历" forState:UIControlStateNormal];
    [self.view addSubview:bb];
    
    UIButton *bb2 = [[UIButton alloc]initWithFrame:CGRectMake(20, 100, 170, 20)];
    [bb2 setTitle:@"中序遍历" forState:UIControlStateNormal];
    [self.view addSubview:bb2];
    
    UIButton *bb3 = [[UIButton alloc]initWithFrame:CGRectMake(20, 150, 170, 20)];
    [bb3 setTitle:@"后序遍历" forState:UIControlStateNormal];
    [self.view addSubview:bb3];
    
    
    
    
    [bb addTarget:self  action:@selector(beforeEvent) forControlEvents:UIControlEventTouchUpInside];
    [bb2 addTarget:self  action:@selector(middleEvent) forControlEvents:UIControlEventTouchUpInside];
    [bb3 addTarget:self  action:@selector(afterEvent) forControlEvents:UIControlEventTouchUpInside];
    
    bb2.backgroundColor = [UIColor redColor];
    bb.backgroundColor = [UIColor redColor];
    bb3.backgroundColor = [UIColor redColor];
    
    m1 = [[TreeModel alloc]init];
    TreeModel *m2 = [[TreeModel alloc]init];
    TreeModel *m3 = [[TreeModel alloc]init];
    TreeModel *m4 = [[TreeModel alloc]init];
    TreeModel *m5 = [[TreeModel alloc]init];
    TreeModel *m6 = [[TreeModel alloc]init];
    TreeModel *m7 = [[TreeModel alloc]init];
    TreeModel *m8 = [[TreeModel alloc]init];
    TreeModel *m9 = [[TreeModel alloc]init];
    m1.data = @"1";
    m2.data = @"2";
    m3.data = @"3";
    m4.data = @"4";
    m5.data = @"5";
    m6.data = @"6";
    m7.data = @"7";
    m8.data = @"8";
    m9.data = @"9";
    
    m7.rChild = m9;
    
    m5.lChild = m7;
    
    m4.lChild = m6;
    
    m3.lChild = m4;
    m3.rChild = m5;
    
    m2.rChild = m8;
    
    m1.lChild = m3;
    m1.rChild = m2;
    
    
    NSLog(@"%@",m1);
    
    
    
    AA = [[TreeModel alloc]init];
    TreeModel *BB = [[TreeModel alloc]init];
    TreeModel *CC = [[TreeModel alloc]init];
    TreeModel *DD = [[TreeModel alloc]init];
    TreeModel *EE = [[TreeModel alloc]init];
    TreeModel *FF = [[TreeModel alloc]init];
    TreeModel *GG = [[TreeModel alloc]init];
    TreeModel *HH = [[TreeModel alloc]init];
    TreeModel *II = [[TreeModel alloc]init];
    TreeModel *JJ = [[TreeModel alloc]init];
    TreeModel *KK  = [[TreeModel alloc]init];
    TreeModel *LL = [[TreeModel alloc]init];
    TreeModel *MM = [[TreeModel alloc]init];
    TreeModel *NN = [[TreeModel alloc]init];
    TreeModel *OO = [[TreeModel alloc]init];
    
    AA.data = @"A";
    BB.data = @"B";
    CC.data = @"C";
    DD.data = @"D";
    EE.data = @"E";
    FF.data = @"F";
    GG.data = @"G";
    HH.data = @"H";
    II.data = @"I";
    JJ.data = @"J";
    KK.data = @"K";
    LL.data = @"L";
    MM.data = @"M";
    NN.data = @"N";
    OO.data = @"O";
    
    AA.lChild = BB;
    AA.rChild = CC;
    
    BB.lChild = DD;
    BB.rChild = EE;
    
    CC.lChild = FF;
    CC.rChild = GG;
    
    DD.lChild = HH;
    DD.rChild = II;
    
    EE.lChild = JJ;
    EE.rChild = KK;
    
    FF.lChild = LL;
    FF.rChild = MM;
    
    GG.lChild = NN;
    GG.rChild = OO;
    
    
    
}
- (void)beforeEvent{
    NSLog(@"前序遍历");
    resultStr = @"";
    [self beforeSequenceTraversal:AA];
    
    NSLog(@"结果 ：%@",resultStr);
}
- (void)middleEvent{
    NSLog(@"中序遍历");
    resultStr = @"";
    [self middleSequenceTraversal:AA];
    NSLog(@"结果 ：%@",resultStr);
}
- (void)afterEvent{
    NSLog(@"后序遍历");
    resultStr = @"";
    [self afterSequenceTraversal:AA];
    NSLog(@"结果 ：%@",resultStr);
}


- (void)beforeSequenceTraversal:(TreeModel *)model{
    //    NSLog(@"-----%@",model.data);
    resultStr = [resultStr stringByAppendingString:model.data];
    if(model.lChild){
        [self beforeSequenceTraversal:model.lChild];
    }
    
    if(model.rChild){
        [self beforeSequenceTraversal:model.rChild];
    }
}
- (void)middleSequenceTraversal:(TreeModel *)model{
    
    if (!model.lChild&&!model.rChild) {
        //        NSLog(@"-----%@",model.data);
        resultStr = [resultStr stringByAppendingString:model.data];
        return;
    }
    
    
    
    if(model.lChild){
        [self middleSequenceTraversal:model.lChild];
        
    }
    
    
    if(model.rChild){
        //        NSLog(@"-----%@",model.data);
        resultStr = [resultStr stringByAppendingString:model.data];
        [self middleSequenceTraversal:model.rChild];
        return;
    }else{
        //        NSLog(@"-----%@",model.data);
        resultStr = [resultStr stringByAppendingString:model.data];
        
    }
    
}
- (void)afterSequenceTraversal:(TreeModel *)model{
    
    if (!model.lChild&&!model.rChild) {
        //        NSLog(@"-----%@",model.data);
        resultStr = [resultStr stringByAppendingString:model.data];
        return;
    }
    if(model.lChild){
        [self afterSequenceTraversal:model.lChild];
        
    }
    
    if(model.rChild){
        
        [self afterSequenceTraversal:model.rChild];
        //        NSLog(@"-----%@",model.data);
        resultStr = [resultStr stringByAppendingString:model.data];
        return;
    }else{
        //        NSLog(@"-----%@",model.data);
        resultStr = [resultStr stringByAppendingString:model.data];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
