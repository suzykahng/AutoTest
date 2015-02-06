//
//  WowUtilsTests.m
//  GuildBrowser
//
//  Created by Suzy Kang on 06/02/15.
//  Copyright (c) 2015 Charlie Fulton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <SenTestingKit/SenTestingKit.h>
#import <SenTestingKit/SenTest.h>
#import "WoWUtils.h"

@interface WowUtilsTests : SenTestCase

@end

@implementation WowUtilsTests

-(void)testCharacterClassNameLookup
{
    STAssertEqualObjects(@"Warrior",
                         [WoWUtils classFromCharacterType:1],
                         @"ClassType should be Warrior");
    
    STAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]],
                 nil);
}

- (void)testRaceTypeLookup
{
    STAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], nil);
    STAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], nil);
    STAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]],nil);
    // add the rest as an exercise
}

- (void)testQualityLookup
{
    STAssertEquals(@"Grey", [WoWUtils qualityFromQualityType:1], nil);
    STAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]],nil);
    // add the rest as an exercise
}

/*
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
}*/

@end
