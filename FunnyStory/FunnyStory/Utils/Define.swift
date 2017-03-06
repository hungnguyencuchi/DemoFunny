//
//  Define.swift
//  FunnyStory
//
//  Created by Duan Nguyen on 3/5/17.
//  Copyright © 2017 Duan Nguyen. All rights reserved.
//


let MyAppDelegate = UIApplication.shared.delegate as! AppDelegate
let HOME_DIRECTORY = Bundle.main.resourcePath
let DOCUMENT_DIRECTORY = NSHomeDirectory() + "/Documents/"
let AUDIO_DIRECTORY = NSHomeDirectory() + "/Documents/Audio/"
let LIBRARY_CATCHES_DIRECTORY = NSHomeDirectory() + "/Library/Caches/"
let SQLITE_DIRECTORY = NSHomeDirectory() + "/Library/Caches/database/"
let TEMPDIRECTORY = NSHomeDirectory() + "/tmp/"


let SCREEN_FRAME = UIScreen.main.bounds
let SCREEN_SIZE = UIScreen.main.bounds.size
let SCREEN_CONSTANT = UIScreen.main.bounds.size.width / 320.0


let IS_IPAD = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.pad
let IS_IPHONE = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone
let IS_IPHONE_4 = IS_IPHONE && SCREEN_SIZE.height == 480.0
let IS_IPHONE_5 = IS_IPHONE && SCREEN_SIZE.height == 568.0
let IS_IPHONE_6 = SCREEN_SIZE.height == 667
let IS_IPHONE_6PLUS = SCREEN_SIZE.height == 736


func COLOR_RBG(r: Float, G: Float, B: Float) -> UIColor {
    return UIColor.init(colorLiteralRed: r/255.0, green: 255.0, blue: 255.0, alpha: 1.0)
}

func COLOR_RGBA(r: Float, G: Float, B: Float, alpha: Float) -> UIColor {
    return UIColor.init(colorLiteralRed: r/255.0, green: 255.0, blue: 255.0, alpha: alpha)
}

//#pragma mark - FONT

func FONT_REGULAR(size: Float) -> UIFont {
    return UIFont(name: "HelveticaNeue", size: CGFloat(size))!
}

func FONT_LIGHT(size: Float) -> UIFont {
    return UIFont(name: "HelveticaNeue-Light", size: CGFloat(size))!
}
func FONT_BOLD(size: Float) -> UIFont {
    return UIFont(name: "HelveticaNeue-Bold", size: CGFloat(size))!
}
func FONT_MEDIUM(size: Float) -> UIFont {
    return UIFont(name: "HelveticaNeue-Medium", size: CGFloat(size))!
}


func SYSTEM_VERSION_EQUAL_TO(version: String) -> Bool {
    return UIDevice.current.systemVersion == version
}
//func SYSTEM_VERSION_GREATER_THAN(version: String) -> Bool {
//    return UIDevice.current.systemVersion.compare(version) == kCFCompareGreaterThan
//}

//#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
//#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
//#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
//#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
//#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)




//#pragma mark - DEBUG
////-
//#ifdef DEBUG
//#   define DLog(fmt, ...)                           NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
//#else
//#   define DLog(...)
//#endif
//
//#define ALog(fmt, ...)                              NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
//
//
//#pragma mark - IOS VERSION
////-
//#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
//#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
//#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
//#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
//#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

