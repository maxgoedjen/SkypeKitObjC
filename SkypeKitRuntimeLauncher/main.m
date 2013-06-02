//
//  main.m
//  SkypeKitRuntimeLauncher
//
//  Created by Daniel Muhra on 16.10.12.
//
//

#import <Foundation/Foundation.h>
#import "STPrivilegedTask.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* path = [NSString stringWithCString:argv[1] encoding:NSUTF8StringEncoding];
        STPrivilegedTask* runtime = [[STPrivilegedTask alloc] init];
        [runtime setLaunchPath:path];
                
        [runtime launch];
        
    }
    return 0;
}

