//
//  KeyboardViewController.m
//  CustomKeyboardExtension
//
//  Created by Dev on 7/26/17.
//  Copyright © 2017 Dev. All rights reserved.
//

#import "KeyboardViewController.h"
#import "Keyboard.h"

@interface KeyboardViewController ()
    @property (nonatomic, strong) Keyboard *keyboard;
@end

@implementation KeyboardViewController

- (void)updateViewConstraints {
    [super updateViewConstraints];
    
    // Add custom view sizing constraints here
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Perform custom UI setup here
    self.keyboard = [[[NSBundle mainBundle] loadNibNamed:@"Keyboard" owner:nil options:nil] objectAtIndex:0];
    [self addGesturesToKeyboard];
    self.inputView = self.keyboard;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated
}

- (void)textWillChange:(id<UITextInput>)textInput {
    // The app is about to change the document's contents. Perform any preparation here.
}

- (void)textDidChange:(id<UITextInput>)textInput {
    // The app has just changed the document's contents, the document context has been updated.
    
    UIColor *textColor = nil;
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark) {
        textColor = [UIColor whiteColor];
    } else {
        textColor = [UIColor blackColor];
    }
    
}


#pragma mark Keyboards
-(void) addGesturesToKeyboard {
    [self.keyboard.btnInstagram addTarget:self action:@selector(pressInstagramKey) forControlEvents:UIControlEventTouchUpInside];
    [self.keyboard.btnFCB addTarget:self action:@selector(pressFCBKey) forControlEvents:UIControlEventTouchUpInside];
    [self.keyboard.btnTwitter addTarget:self action:@selector(pressTwitterKey) forControlEvents:UIControlEventTouchUpInside];
    
}
    
-(void) pressInstagramKey {
    [self.textDocumentProxy insertText:@"a"];
    
}
    
-(void) pressFCBKey {
    [self.textDocumentProxy insertText:@"b"];
}
    
-(void) pressTwitterKey {
    [self.textDocumentProxy insertText:@"c"];
}
    
    
@end
