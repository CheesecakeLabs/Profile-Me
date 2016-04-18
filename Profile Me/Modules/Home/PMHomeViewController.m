//
//  MSHomeViewController.m
//  Marcelo on Gigster
//
//  Created by Marcelo Salloum dos Santos on 4/18/16.
//  Copyright (c) 2016 Marcelo Salloum on Gigster. All rights reserved.
//


#import "PMHomeViewController.h"


static NSInteger const kNumberOfProfiles = 5;

@interface PMHomeViewController ()


typedef NS_ENUM(NSUInteger, PMProfileType) {
	PMProfileTypeGithub,
	PMProfileTypeLinkedin,
	PMProfileTypeStackoverflow,
	PMProfileTypeTwitter,
	PMProfileTypeFacebook
};


@end

@implementation PMHomeViewController


#pragma mark - Lifecycle


- (void)viewDidLoad
{
	[super viewDidLoad];

	// Sets up Navigation Bar
	self.title = NSLocalizedString(@"Profiles", nil);;

	// Sets up TableView
	self.tableView.backgroundColor = [UIColor colorWithWhite:239.f / 255.f alpha:1];
}


- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
}


#pragma mark - UITableViewDataSource


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return kNumberOfProfiles;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell = [self setupPHHomeCell];
	switch (indexPath.section) {
		case PMProfileTypeGithub:
			cell.textLabel.text = NSLocalizedString(@"GitHub", nil);
			break;
		case PMProfileTypeLinkedin:
			cell.textLabel.text = NSLocalizedString(@"LinkedIn", nil);
			break;
		case PMProfileTypeStackoverflow:
			cell.textLabel.text = NSLocalizedString(@"Stack Overflow", nil);
			break;
		case PMProfileTypeTwitter:
			cell.textLabel.text = NSLocalizedString(@"Twitter", nil);
			break;
		case PMProfileTypeFacebook:
			cell.textLabel.text = NSLocalizedString(@"Facebook", nil);
			break;
		default:
			cell.textLabel.text = nil;
			break;
	}
	return cell;
}


- (UITableViewCell *)setupPHHomeCell
{
	return [[UITableViewCell alloc] init];
}


#pragma mark - UITableViewDelegate


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end