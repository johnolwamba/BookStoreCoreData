//
//  ViewController.m
//  BookStoreCoreData
//
//  Created by Johnstone Ananda on 6/12/22.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "Book+CoreDataClass.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication
        sharedApplication] delegate];
    
    managedObjectContext = appDelegate.persistentContainer.viewContext;
    
}

- (IBAction)addNew:(id)sender {
    Book *myBook = [NSEntityDescription insertNewObjectForEntityForName:@"Book" inManagedObjectContext:managedObjectContext];
    myBook.title = [NSMutableString stringWithFormat:@"My Book%lu", (unsigned long)[self loadBooks].count];
    [managedObjectContext save:nil];
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self loadBooks] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    Book *myBook = [[self loadBooks] objectAtIndex:indexPath.row];
    cell.textLabel.text = myBook.title;
    return cell;
}

-(NSArray *) loadBooks {
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Book"];
    NSArray *bookArray = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
    return bookArray;
}

@end
