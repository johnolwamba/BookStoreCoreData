//
//  Book+CoreDataProperties.h
//  BookStoreCoreData
//
//  Created by Johnstone Ananda on 6/12/22.
//
//

#import "Book+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Book (CoreDataProperties)

+ (NSFetchRequest<Book *> *)fetchRequest NS_SWIFT_NAME(fetchRequest());

@property (nullable, nonatomic, copy) NSString *title;
@property (nullable, nonatomic, copy) NSDecimalNumber *price;
@property (nonatomic) int32_t yearPublished;
@property (nullable, nonatomic, retain) Author *author;

@end

NS_ASSUME_NONNULL_END
