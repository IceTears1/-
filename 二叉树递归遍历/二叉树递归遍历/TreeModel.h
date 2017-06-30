//
//  TreeModel.h
//  BLView
//
//  Created by 冰泪 on 2017/6/30.
//  Copyright © 2017年 冰泪. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface TreeModel : NSObject
@property (nonatomic,strong)TreeModel *lChild;
@property (nonatomic,strong)TreeModel *rChild;
@property (nonatomic,copy)NSString *data;
@end

