//
//  ViewController.m
//  change_language
//
//  Created by John on 2022/3/22.
//

#import "ViewController.h"
#import "../AppDelegate.h"
#include "../Model/MainBrain.h"

@interface ViewController () {
    
}
@property (weak, nonatomic) IBOutlet UILabel *context_label;
@property (weak, nonatomic) AppDelegate *delegate;
@property (weak, nonatomic) MainBrain *mainBrain;
@property (assign, nonatomic) int curLanguage;
@property (weak, nonatomic) IBOutlet UIButton *curLanguageBtn;
@end

@implementation ViewController


- (IBAction)onEnglishPressed:(UIButton *)sender {
    
    [_context_label setText:[_delegate getStringForKey:@"PressedEnglish" withTable:@""]];
}

- (IBAction)onChinesePressed:(UIButton *)sender {
    [_context_label setText:[_delegate getStringForKey:@"PressedChinese" withTable:@""]];
}

- (IBAction)onLanguageChangePressed:(UIButton *)sender {
    if(_curLanguage == 1) {
        [_delegate initLanguage:@"en"];
        _curLanguage = 0;
        [_curLanguageBtn setTitle:@"當前語言:英文" forState:UIControlStateNormal];
    } else {
        [_delegate initLanguage:@"zh"];
        _curLanguage = 1;
        [_curLanguageBtn setTitle:@"當前語言:中文" forState:UIControlStateNormal];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    _curLanguage = 0;
    [_delegate initLanguage:@"en"];
}


@end
