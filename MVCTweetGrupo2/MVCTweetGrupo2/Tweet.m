//
//  Tweet.m
//  MVCTweetGrupo2
//
//  Created by JHONATAN ACELAS AREVALO on 9/12/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "Tweet.h"

@implementation Tweet

-(NSInteger) contarLargo{
    //logica
    return  [self.bodyTweet length] ;
    
}

-(NSInteger) restantes{
    return 140-[self.bodyTweet length];
}





@end
