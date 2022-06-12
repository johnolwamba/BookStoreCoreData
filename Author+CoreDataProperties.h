//
//  Author+CoreDataProperties.h
//  BookStoreCoreData
//
//  Created by Johnstone Ananda on 6/12/22.
//
//

#import "Author+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Author (CoreDataProperties)

+ (NSFetchRequest<Author *> *)fetchRequest NS_SWIFT_NAME(fetchRequest());

@property (nullable, nonatomic, copy) NSString *firstName;
@property (nullable, nonatomic, copy) NSString *lastName;
@property (nullable, nonatomic, retain) Book *book;

@end

NS_ASSUME_NONNULL_END
