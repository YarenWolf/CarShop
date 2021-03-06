//
//  Dh_RentalCarModel.m
//  DHCarForUser
//
//  Created by 陈斌 on 15/11/3.
//  Copyright © 2015年 lucaslu. All rights reserved.
//

#import "Dh_RentalCarModel.h"

@implementation Dh_RentalCarModel

DEF_FACTORY(Dh_RentalCarModel);

DEF_MODEL(rentalImageViewStr);
DEF_MODEL(discountStr);
DEF_MODEL(carName);
DEF_MODEL(originalPrice);
DEF_MODEL(presentPrice);

-(void)parseDataDic:(NSDictionary *)str
{
    NSDictionary* tempDic = str;
    if (tempDic!=nil) {
        self.rentalImageViewStr = [tempDic hasItemAndBack:@"sms_code"];
        self.discountStr = [tempDic hasItemAndBack:@"sms_state"];
    }
}
@end
