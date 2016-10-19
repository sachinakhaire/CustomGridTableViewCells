//
//  customGridTableViewCell.h
//  GridTableView
//  SachinKhaire
//  Created by Mac on 18/10/16.
//  Copyright © 2016 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customGridTableViewCell : UITableViewCell
{
    UIColor *lineColor;
    BOOL topCell;

    UILabel *cell1;
    UILabel *cell2;
    UILabel *cell3;
}

@property (nonatomic, retain) UIColor* lineColor;
@property (nonatomic) BOOL topCell;
@property (readonly) UILabel* cell1;
@property (readonly) UILabel* cell2;
@property (readonly) UILabel* cell3;
@end
