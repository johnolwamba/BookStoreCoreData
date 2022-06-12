//
//  Book+CoreDataProperties.m
//  BookStoreCoreData
//
//  Created by Johnstone Ananda on 6/12/22.
//
//

#import "Book+CoreDataProperties.h"

@implementation Book (CoreDataProperties)

+ (NSFetchRequest<Book *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"Book"];
}

@dynamic title;
@dynamic price;
@dynamic yearPublished;
@dynamic author;

@end
