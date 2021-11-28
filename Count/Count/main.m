//
//  main.m
//  Count
//
//  Created by Aaron Lee on 2021/11/28.
//

#import <Foundation/Foundation.h>

int count(void) {
    const char *words[4] = {
        "Aaron \"Lee\"",
        "Syeda \"Amna\"",
        "Kim \"Lun\"",
        "Benjamin \"Adrience\""
    };
    
    int wordCount = 4;
    
    for (int i = 0; i < wordCount; i++) {
        NSLog(@"Name %s has %lu chars.", words[i], strlen(words[i]));
    }
    
    return 0;
}

int main(int argc, const char * argv[]) {
    count();
}
