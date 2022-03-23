//
//  AppDelegate.h
//  change_language
//
//  Created by John on 2022/3/22.
//

#import <UIKit/UIKit.h>
#import "Model/LanguageModel.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) LanguageModel *languageModel;
-(void) initLanguage: (NSString*) selectLanguage;
-(NSString*) getStringForKey:(NSString*)key withTable:(NSString*)table;
@end

