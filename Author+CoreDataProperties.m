//
//  Author+CoreDataProperties.m
//  BookStoreCoreData
//
//  Created by Johnstone Ananda on 6/12/22.
//
//

#import "Author+CoreDataProperties.h"

@implementation Author (CoreDataProperties)

+ (NSFetchRequest<Author *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"Author"];
}

@dynamic firstName;
@dynamic lastName;
@dynamic book;

@end
