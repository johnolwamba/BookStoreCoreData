//
//  ViewController.h
//  BookStoreCoreData
//
//  Created by Johnstone Ananda on 6/12/22.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSManagedObjectContext *managedObjectContext;
}
@end

