//
//  Country.h
//  Aviasales
//
//  Created by Michael Iliouchkin on 05.06.2021.
//

#import <UIKit/UIKit.h>

@interface Country : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *currency;
@property (nonatomic, strong) NSDictionary *translations;
@property (nonatomic, strong) NSString *code;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
