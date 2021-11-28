//
//  main.m
//  Bool Party
//
//  Created by Aaron Lee on 2021/11/28.
//

#import <Foundation/Foundation.h>

BOOL areIntsDifferent(int int1, int int2) {
    return int1 == int2;
}

NSString *boolString(BOOL isTrue) {
    if (isTrue) {
        return @"YES";
    }
    
    return @"NO";
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL areDiffernet = areIntsDifferent(5, 5);
        
        NSLog(@"%@", boolString(areDiffernet));
        
        areDiffernet = areIntsDifferent(10, 5);
        
        NSLog(@"%@", boolString(areDiffernet));
        
    }
    return 0;
}
