//
//  LanguageModel.m
//  change_language
//
//  Created by John on 2022/3/23.
//

#import <Foundation/Foundation.h>
#import "LanguageModel.h"
@implementation LanguageModel

-(void) initLanguage: (NSString*) selectLanguage {
    NSString *localeLanguageCode = [[[NSBundle mainBundle] preferredLocalizations] firstObject];
    NSLog(@"localeLanguageCode-> %@",localeLanguageCode);
    
    if([selectLanguage  isEqual: @"en"]) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"en" ofType:@"lproj"];
        bundle_language = [NSBundle bundleWithPath:path];
    } else if([selectLanguage  isEqual: @"zh"]) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"zh-Hant" ofType:@"lproj"];
        bundle_language = [NSBundle bundleWithPath:path];
    }
}

-(NSString*) getStringForKey:(NSString*)key withTable:(NSString*)table {
    NSString *string = @"";
    if(bundle_language) {
        string = NSLocalizedStringFromTableInBundle(key, table, bundle_language, @"");
        return string;
    }
    string = NSLocalizedStringFromTable(key, table, @"");
    return string;
}
@end

