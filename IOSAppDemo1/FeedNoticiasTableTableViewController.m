//
//  FeedNoticiasTableTableViewController.m
//  IOSAppDemo1
//
//  Created by Jair Rillo Junior on 6/15/14.
//  Copyright (c) 2014 Jair Rillo Junior. All rights reserved.
//

#import "FeedNoticiasTableTableViewController.h"

@interface FeedNoticiasTableTableViewController ()

@end

@implementation FeedNoticiasTableTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    //Inicia o array de FeedNoticias
    FeedNoticias *noticias1 = [[FeedNoticias alloc] initWithTitle:@"Noticia 1" andDetail:@"Essa é a notícia número 1 que diz respeito ao blablablabla" ];
    FeedNoticias *noticias2 = [[FeedNoticias alloc] initWithTitle:@"Noticia 2" andDetail:@"Essa é a notícia número 2 que diz respeito ao bleblebleble" ];
    FeedNoticias *noticias3 = [[FeedNoticias alloc] initWithTitle:@"Noticia 3" andDetail:@"Essa é a notícia número 3 que diz respeito ao blibliblibli" ];
    
    feedNoticias = [[NSArray alloc] initWithObjects:noticias1, noticias2, noticias3, nil];
    
    //Remove o back button
    [self.navigationItem setHidesBackButton:YES animated:YES];
    [self.navigationItem setLeftBarButtonItem:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    

    //Recupera o FeedNoticias do Array
    FeedNoticias *noticia = [feedNoticias objectAtIndex: indexPath.row];
    //Seta os dados na CELL
    [cell.textLabel setText: noticia.title];
    [cell.detailTextLabel setText:noticia.detail];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //Recupera o FeedNoticias do Array
    FeedNoticias *feedNoticia = [feedNoticias objectAtIndex:indexPath.row];
    //Instancia o ViewController do StoryBoard
    FeedDetailViewController *feedDetail = [self.storyboard instantiateViewControllerWithIdentifier:@"feedDetail"];
    //Seta o FeedNoticia
    [feedDetail setFeedNoticia:feedNoticia];
    //Abre a nova tela
    [self.navigationController pushViewController:feedDetail animated:YES];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
