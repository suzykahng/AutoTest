//
//  GuildBrowserLogicTests.m
//  GuildBrowserLogicTests
//
//  Created by Suzy Kang on 06/02/15.
//  Copyright (c) 2015 Charlie Fulton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "WoWUtils.h"

@interface GuildBrowserLogicTests : XCTestCase

@end

@implementation GuildBrowserLogicTests

-(void)testCharacterClassNameLookup
{
    XCTAssertEqualObjects(@"Warrior",
                         [WoWUtils classFromCharacterType:1],
                         @"ClassType should be Warrior");
    
    XCTAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]]);
}

- (void)testRaceTypeLookup
{
    XCTAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1]);
    XCTAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2]);
    XCTAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]]);
    // add the rest as an exercise
}

- (void)testQualityLookup
{
    XCTAssertEqualObjects(@"Grey", [WoWUtils qualityFromQualityType:1]);
    XCTAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]]);
    // add the rest as an exercise
}

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
