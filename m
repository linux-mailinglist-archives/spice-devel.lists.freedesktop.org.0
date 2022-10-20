Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D16946069C2
	for <lists+spice-devel@lfdr.de>; Thu, 20 Oct 2022 22:44:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC19210E073;
	Thu, 20 Oct 2022 20:44:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-oln040092074106.outbound.protection.outlook.com [40.92.74.106])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C69AA10E261
 for <spice-devel@lists.freedesktop.org>; Thu, 20 Oct 2022 18:19:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cr7p+ALfaApnFWcF3SZtcPTgDmfUBLKYIVAzfvXerKh4scehvmuv1DATTP+oL3hMXc0N4y70rjjca2kpwm4lRTaos4ubXYCsl7sH7mF/6E9EyVhsZFvMHxMNuEZ383nSosMJ6oygX05c1xbF+8OA8klt5/quEl+Ay5agSo7tepQIrlFOcSAYN7e50mt8SYRSgexNskrRVIQDdv9IXtBWo6xq0hBJbQ93xdcScHfMBx97s6pMmSe+XNfqioGnf0trmQGDzSbQILVawb9aCqzFkdOC+ds68Oqe7ldC9NihefZbgbOiimTFJOgKZccBBcCVw3NRHzy48kmC1b2HeUBSsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=00NmfIck+OXO7AYWt1++mJGRLnozJmepDNrO0rCVKL8=;
 b=aqjSoG06c05j/jEgd17sXXoCyGD9feqke+CCbYgba1ZFpmUlnGIckjKy6Spl5Z3csFQmAgxDGBmHvVu1ses/FWNVEUD9iDWZG1txJsmrMg3FWUXwnwFRCtkKxFZyMng8Mmj0ytZtDvGPeWEOeXF6Uq3Njv1lO8P+X+Ul3E8+Ed7YorsO0ZzMqE/quYonyA4Ts/Gzzyqsfs9NWvhAPtBFvZcoJTNJ3MjJXDDakvR7aLcIUg+w345ZE6aVRwEjnAfTevwWbFpDZ/xVMCracMXOoroKq8fkP3C8UXiIaVzo8JeupYv5xq+SXNcmMhA5wbxfA7nrkkHv4amgFm2JsqqRnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=00NmfIck+OXO7AYWt1++mJGRLnozJmepDNrO0rCVKL8=;
 b=QMrItHx0yOxqdH8aLb22ecVG+MCqDpD8Sm1zj3LHCjQ2rtISy3oGtNsyoBl0WmNxxEnk8ihnPVMlE4Bz5L+OL1+8m3gb19dsWU6sTnD1zc78/d1aHUpnz1cxpwmTPqtVhAs46Z+uCfT9qScJC33kZYrsSzLdC3zmw163HuZXteG6kEoMR1mHsT70GKiEdKuoGuN3e79jfyMQMl2ZFIOfs3uO5NsvevspOdvbyj5UlN9ZB2tmqPHda4/dOajZjpfM9/fc5ZcAgvaXEUhejhvEzFr3EKSDu+Y80txAMJ2NODMTz+cz1i0hQRDK23ksG8M7n2UH083iGHQTSzKq+vdJkw==
Received: from PR3P195MB0926.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:a3::13)
 by DB4P195MB1896.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:38f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.35; Thu, 20 Oct
 2022 18:19:42 +0000
Received: from PR3P195MB0926.EURP195.PROD.OUTLOOK.COM
 ([fe80::f7ab:71c1:d516:62a2]) by PR3P195MB0926.EURP195.PROD.OUTLOOK.COM
 ([fe80::f7ab:71c1:d516:62a2%3]) with mapi id 15.20.5723.035; Thu, 20 Oct 2022
 18:19:42 +0000
Content-Type: multipart/alternative;
 boundary="------------Hq7IfJBlv3341RVBCnoZZ6Hc"
Message-ID: <PR3P195MB0926DEADE0BD95487AE01D629E2A9@PR3P195MB0926.EURP195.PROD.OUTLOOK.COM>
Date: Thu, 20 Oct 2022 19:19:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
To: spice-devel@lists.freedesktop.org
Content-Language: fr, en-US
From: Frantz Honegger <frantz_honegger@hotmail.com>
X-TMN: [pg03/HOStwVlrCA2o6COmOvIqHXmd6oxmIWoDsPeLcA=]
X-ClientProxiedBy: LO4P123CA0578.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:276::8) To PR3P195MB0926.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:102:a3::13)
X-Microsoft-Original-Message-ID: <89b5b380-2130-4853-c3e7-793f99cd6d61@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR3P195MB0926:EE_|DB4P195MB1896:EE_
X-MS-Office365-Filtering-Correlation-Id: 90d20f2f-a358-411d-d43a-08dab2c7a890
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jS1X0+8z4aUNQXgTwL4T3PTfOTEMIsCFAjEce8UnO7PiGEMRxzmNFkBTWTXITUsUTSm7eOdppPS8pyH7C2ibY7tQLuKHNuq3z+GrXBOFvZRnw5O9oS48YO9/S12CLn+UZbkTyv5dtLYP+wvFHsswBSg4Y9msajgpf4V5veapkPK+eGu1YB5vGmO8azWRSrgAbd/n9JKlRJ31p0aKDYLGXfE3Mjvf2XdatxSO506hUujSQv3V8EKF4nZPv7NQgjG5FKi4Ibuv6+3YpnU9XgiSdumk2wPfEa61nk2LYruWhRNNOX+W84BjJOovmmaaLkisbtjgbSmMmRZMPoF5wCjIV6SwXPzp4IkSu3FksV7zBwz3tAuzDRcplOC3+OmisB7ACwb8kw39TSe3Ewqg/EQ3vqbSYpExF3ZyyXUgr/BBHg2oWIF9Qnt8KwkngozZ2z+WqJESXzwRcoageE8S57PAMb1IShgZ8BXJ26ihw0Fb1241sY92XWKiwQaTenXOi8t4QJZ/3uJdsbBKozcy2J7t/gThiee26VWiMxDc5qgUNq/0OjsDdW0avWTc/CCpcvxqaQjfPpqkDyJr072KThmZgSA33QEmvos7feE+yFRqH0VUfXlvSZ7aStrfLJbvR59W
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWpnRnFROWU4RFE5TFlXNEN6alhZdmZreWV6STRDVVcybElTMTd2Y2hJSVl5?=
 =?utf-8?B?dnJsaFZKRW16V3AzZnRKNlE2cG4rRXNQenlXVVJFZE5HY3NzaTJNTGxyT2xN?=
 =?utf-8?B?NEFPdStZVGc4V1QvbFVRTGJQaE9JVWoxMk90cFF1Tk9tODJJRTBVQVpxNEgr?=
 =?utf-8?B?VE1aSGdpS3ptdXYydGF2UDNHUmtwS01NNTB2WENncnZJT0Z1VlcwaGl0OUxN?=
 =?utf-8?B?eWNpNFppczNBTVRQdVp5ZFYrQjFRclk0MTlSaDU0TjkzMG02WkxpS056VmNL?=
 =?utf-8?B?UWdla2RlSCt2WE8yT094ZXQxWmNGSW8xV2pxM3B0OWhWRlJ3M3JCZk1FSFBC?=
 =?utf-8?B?RGpCNk5FS2FLTGZZMzdkVnM2d3BrNWdkSHFkblRYc3BkQjBSL0N0Mm50R3NR?=
 =?utf-8?B?ZVVVU1Nib2dpWGZBSGFJSklNRzJ1MERlQXFkdnpRRFMwS1lYb3lSYnhCQ1pL?=
 =?utf-8?B?Z09VNEF0cTNBbk9RM0NpL21ydW5RMjVLWVpnbzZWc0lZMzBKUWVXRmVGbWl3?=
 =?utf-8?B?MEZ4QVJMOFZ5bDVwMWZzY1ZFUi9BUG9lc1loMEdta2ZNY1RSVStRaFFGK0Jj?=
 =?utf-8?B?R2YrWkpyTlZvS1oxTXdtTFhaTTlJdzRSNFA3TVZNVVRMaWJad2I5WEN0Tk1k?=
 =?utf-8?B?WTBtZ29lREY3R0dmOXh1T2t5dThpSEZ1a0IvWkgvTnFpRE82Ymh2RWRxcC9l?=
 =?utf-8?B?djhoOGVoM2VETHY1bXlYcEFrUFl3dVlhOXlUSWppcVlhS2lsNm9MajBzNFpT?=
 =?utf-8?B?VEpiZGN4MTdodU1FNGNLVDlFWFh1bEE4dHltZmtSOEZRbTFvZ2pWL01va3Rz?=
 =?utf-8?B?aG5jL09IZ1N3MjBrblpxRU5nODFQYk1uOHRSKzBFc3hGL2g4RFlGMUJZMXk4?=
 =?utf-8?B?Rjg5ZXc2WWlNUHhnZW1lS2pQWGpoNmZiYlk0N25TSi9JT0swYUp5cjYyTVRX?=
 =?utf-8?B?eFppcXlyeldYMGdvUW9oSjlkalB3d3p0a2RPa1JsdHYzWHJsOVd5dGw3NWRw?=
 =?utf-8?B?eUwxSWdzNkV6UzBLVDA3TldzT3pGV2RZOXB0SjBWcWJEMTJiL1QwdFJ3TkZy?=
 =?utf-8?B?WmVqd3NzcEZZZ0VTNmlXRkJlRFZneWI0SDFKOU15eExqN21yUUFVb202RlVQ?=
 =?utf-8?B?Mm8yRXY5U2kxcnRIdThURTVkWDQ2SnlmNXc5VndVUDhyc0M1S2lFSU9hMmgw?=
 =?utf-8?B?aDhvby9nTHBvZjlBa1VUNTRFbzdPVUpMK3c5NUVBU3ZyanhKWGNnSVN0ZE5L?=
 =?utf-8?B?SW11RnM1V2VEYzhyU3N1WEE3NU4xZTFNZDczWEpXVStGNlpuNDN3R3VCMTQz?=
 =?utf-8?B?SzllSTI4R0diNG94YkQwVUx3YnYwYVRUdWhZYnNJRi9qTGt4QmR6Tkp2Rzdu?=
 =?utf-8?B?TXF1YWFha0xzUGtHM1NqTWFEdThzTkI4OXpibE5KSVRod1l4eUo2a3BTbTFr?=
 =?utf-8?B?QWJPUTF3UUtDK29HZGltWDgwYnJCV0xsMWRVelR4UnNkUFNYZ1JTSU90WkVB?=
 =?utf-8?B?VXE4bCtLcDBLTm9tT2o3NmN5WnFFcFFEZ1kzc0VadkVabUNMbjJXYkY1VWdN?=
 =?utf-8?B?MzYvdU5jU0tENEQxN3FQS09rRlEyVjNkeUpJU1lkdFhqaHJTaU1VZTVSU2NQ?=
 =?utf-8?B?UEdzVXpyUTk4MDczL2JsSU1USzN6WmpKRmhwTTAwWUVSVWxoT3FHRkkreTdz?=
 =?utf-8?B?dDZRVy90aUxJZ3J6R1h0RHAxeXd6OGQyZVd4MUsxdDQzYjVvT0xIa3F3S0I2?=
 =?utf-8?Q?7Nyh5dpUiR9afTC9wQ=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-49ed2.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 90d20f2f-a358-411d-d43a-08dab2c7a890
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0926.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2022 18:19:42.5315 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4P195MB1896
X-Mailman-Approved-At: Thu, 20 Oct 2022 20:44:06 +0000
Subject: [Spice-devel] spice-webdav - change default shared directory
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--------------Hq7IfJBlv3341RVBCnoZZ6Hc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear Mr,

Thank you very much for your time.

Could you please provide me with additional information about the 
necessary settings to modify the spice-webdav default shared directory 
(the directory is ~/Public by default, but I would like it to be 
/home/user for example).

I did a lot of research on the net but could only find the below 
information from https://github.com/lofyer/spice-webdav :

*/In your virt-viewer client/*/
//
//The Spice client can share a folder with the remote guest. By default 
folder sharing is disabled. Use the remote-viewer "File" → "Preferences" 
menu to enable it. The default shared directory is the XDG Public Share 
directory (ie ~/Public if you use a regular system). You may specify a 
different folder with --spice-share-dir client option./

The problem is that I don't know where the "--spice-share-dir client 
option" should be set (I am using virt-viewer). Could you please provide 
me with a concrete example or more information?

Thank you very much for your work and your help.

Have a very nice day,

Best regards,

Frantz Honegger

--------------Hq7IfJBlv3341RVBCnoZZ6Hc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Dear Mr,</p>
    <p>Thank you very much for your time.<br>
    </p>
    <p>Could you please provide me with additional information about the
      necessary settings to modify the spice-webdav default shared
      directory (the directory is ~/Public by default, but I would like
      it to be /home/user for example).</p>
    <p>I did a lot of research on the net but could only find the below
      information from <a class="moz-txt-link-freetext" href="https://github.com/lofyer/spice-webdav">https://github.com/lofyer/spice-webdav</a> :<br>
    </p>
    <p><b><i>In your virt-viewer client</i></b><i><br>
      </i><i><br>
      </i><i>The Spice client can share a folder with the remote guest.
        By default folder sharing is disabled. Use the remote-viewer
        &quot;File&quot; → &quot;Preferences&quot; menu to enable it. The default shared
        directory is the XDG Public Share directory (ie ~/Public if you
        use a regular system). You may specify a different folder with
        --spice-share-dir client option.</i></p>
    <p>The problem is that I don't know where the &quot;--spice-share-dir
      client option&quot; should be set (I am using virt-viewer). Could you
      please provide me with a concrete example or more information?<br>
    </p>
    <p>Thank you very much for your work and your help.</p>
    <p>Have a very nice day,</p>
    <p>Best regards,</p>
    <p>Frantz Honegger<br>
    </p>
  </body>
</html>

--------------Hq7IfJBlv3341RVBCnoZZ6Hc--
