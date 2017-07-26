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
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    NSData *data = UIImagePNGRepresentation([UIImage imageNamed:@"instagram.png"]);
    [pasteboard setData:data forPasteboardType:@"public.png"];
    
    if (pasteboard) {
        
        //copy image to clipboard
        UIView *notificationView= [[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height * 0.1, self.view.frame.size.width, 30)];
        notificationView.backgroundColor = [UIColor greenColor];
        UILabel *notification = [[UILabel alloc]initWithFrame: CGRectMake(0, 0, notificationView.frame.size.width, notificationView.frame.size.height)];
        notification.text = @"Instagram icon copied to clipboard!";
        notification.textColor = [UIColor whiteColor];
        notification.textAlignment = NSTextAlignmentCenter;
        [notificationView addSubview:notification];
        
        [notificationView setAlpha:0.0f];
        
        //fade in
        [UIView animateWithDuration:1.0f animations:^{
            
            [notificationView setAlpha:1.0f];
            
        } completion:^(BOOL finished) {
            
            //fade out
            [UIView animateWithDuration:0.5f animations:^{
                
                [notificationView setAlpha:0.0f];
                
            } completion:nil];
            
        }];
        
        [self.view addSubview:notificationView];

    }
    
}
    
-(void) pressFCBKey {
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    NSData *data = UIImagePNGRepresentation([UIImage imageNamed:@"fcb.png"]);
    [pasteboard setData:data forPasteboardType:@"public.png"];
    
    if (pasteboard) {
        
        //copy image to clipboard
        UIView *notificationView= [[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height * 0.1, self.view.frame.size.width, 30)];
        notificationView.backgroundColor = [UIColor greenColor];
        UILabel *notification = [[UILabel alloc]initWithFrame: CGRectMake(0, 0, notificationView.frame.size.width, notificationView.frame.size.height)];
        notification.text = @"FCB icon copied to clipboard!";
        notification.textColor = [UIColor whiteColor];
        notification.textAlignment = NSTextAlignmentCenter;
        [notificationView addSubview:notification];
        
        [notificationView setAlpha:0.0f];
        
        //fade in
        [UIView animateWithDuration:1.0f animations:^{
            
            [notificationView setAlpha:1.0f];
            
        } completion:^(BOOL finished) {
            
            //fade out
            [UIView animateWithDuration:0.5f animations:^{
                
                [notificationView setAlpha:0.0f];
                
            } completion:nil];
            
        }];
        
        [self.view addSubview:notificationView];
        
    }
}
    
-(void) pressTwitterKey {
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    NSData *data = UIImagePNGRepresentation([UIImage imageNamed:@"twitter.png"]);
    [pasteboard setData:data forPasteboardType:@"public.png"];
    
    if (pasteboard) {
        
        //copy image to clipboard
        UIView *notificationView= [[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height * 0.1, self.view.frame.size.width, 30)];
        notificationView.backgroundColor = [UIColor greenColor];
        UILabel *notification = [[UILabel alloc]initWithFrame: CGRectMake(0, 0, notificationView.frame.size.width, notificationView.frame.size.height)];
        notification.text = @"Twitter icon copied to clipboard!";
        notification.textColor = [UIColor whiteColor];
        notification.textAlignment = NSTextAlignmentCenter;
        [notificationView addSubview:notification];
        
        [notificationView setAlpha:0.0f];
        
        //fade in
        [UIView animateWithDuration:1.0f animations:^{
            
            [notificationView setAlpha:1.0f];
            
        } completion:^(BOOL finished) {
            
            //fade out
            [UIView animateWithDuration:0.5f animations:^{
                
                [notificationView setAlpha:0.0f];
                
            } completion:nil];
            
        }];
        
        [self.view addSubview:notificationView];
        
    }
}
    
    
@end
