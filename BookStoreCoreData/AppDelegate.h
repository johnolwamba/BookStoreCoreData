//
//  AppDelegate.h
//  BookStoreCoreData
//
//  Created by Johnstone Ananda on 6/12/22.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

