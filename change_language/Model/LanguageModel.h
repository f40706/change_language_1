//
//  LanguageModel.h
//  change_language
//
//  Created by John on 2022/3/23.
//

#ifndef LanguageModel_h
#define LanguageModel_h
@interface LanguageModel : NSObject {
    NSBundle *bundle_language;
}
-(void) initLanguage: (NSString*) selectLanguage;
-(NSString*) getStringForKey:(NSString*)key withTable:(NSString*)table;
@end
#endif /* LanguageModel_h */
