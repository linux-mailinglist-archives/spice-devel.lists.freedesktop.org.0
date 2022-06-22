Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6B6554E28
	for <lists+spice-devel@lfdr.de>; Wed, 22 Jun 2022 17:01:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D7121133FA;
	Wed, 22 Jun 2022 15:01:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam04olkn2066.outbound.protection.outlook.com [40.92.45.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 109C711333A
 for <spice-devel@lists.freedesktop.org>; Wed, 22 Jun 2022 14:18:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X9+R2XyeTfqccXp8Ko+FnEhzaRFHR8BzCWz8J2c6eHxxD6IzXoQBBdZ3ZvveFIhqraX53mwYNqAMIKb1WDkwZPN2wg91ozoxIp0CQLxZ05nB3ujt6nLDKcGrgn8iGOmys9tjUTzwbgJkzhClsIkXyUYU+JYR0AJ8lQBqAKYsHVllMDDhfN4l81IZ5EmvSHNZpxu8dOFhJaFAJnjBom1tmwwW2XYOvZDoMa0e5gne2XFksMjBSf9slL0GbtEXvyoGvVIa+CoHIB77c5dnhnlbxUunD9vAVdLDvTDSnDtkouhEfsr+WKQ2NheGh4kW+aMhho6eMLej+tmYHGAgBRJkgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tWdAAWdR9SBT0KTCKWQOLvDTdqoNdZ3fYnqp4eHNtic=;
 b=eiyYQvzpRkAgCjsmRWiydIbiuTvlM8cYNmJcPxGRMCPkJ05R0BLhy+OscsYyY/2YsSvt16qKL9EJEddUjnne5pydqA8jeUjSQybG6FRaYWi8YkEEItMF1u3XH/AgI4jjzhWusdZ6o5sAExWchT+axyzGZIMHvJNtjVtN5qrO2jnuH4e1d5PD80r7VjRZT0jS4BCttfs6ck5S5OSK48fzd/7GAg1CJeLihcGO21m9//Ju+YvMGnGB2HI9hVSFUkGxP3TOmQRINx65wg8EjihiV3ZJ7SCp74SjXzz6qsqrHTPDwLxs5eRacZabvRCRxMYNLVckhQNGuXNjodPdiOEIaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tWdAAWdR9SBT0KTCKWQOLvDTdqoNdZ3fYnqp4eHNtic=;
 b=e01Hw9ypopMdwU19gWvvX8im1T3dxqkqRz1uGdwJf9Lh6A5h3tyTKIqgg0wm86XtIZJgVxlIe5pcTNxrdxrmho8NForRzMz6ikopW6MWDyThmUmJfrnxGxr6yRSyUsBWJoqv5aK2D5JH7ewS14JhzOvL2nAac/qxd6qvx0AecLto2SCPW+vsiTbuemPqLLJUE5fn97kpFiq41Ykfyun2wea8bgg0yp4AJztgtk2JyoqWM0m1pRHbxIAjfOIRJsbdDwcQPB2qfIO7AECNvhJAQOouXMRpC8WighHIKsh9hn0g1KQDQDJMzVwPJCtL+z7KrorbysAqp1ydP7soNyv4Gg==
Received: from DM6PR15MB2252.namprd15.prod.outlook.com (2603:10b6:5:88::11) by
 BYAPR15MB3512.namprd15.prod.outlook.com (2603:10b6:a03:10a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.22; Wed, 22 Jun
 2022 14:18:34 +0000
Received: from DM6PR15MB2252.namprd15.prod.outlook.com
 ([fe80::807e:a912:72ba:450f]) by DM6PR15MB2252.namprd15.prod.outlook.com
 ([fe80::807e:a912:72ba:450f%6]) with mapi id 15.20.5373.015; Wed, 22 Jun 2022
 14:18:34 +0000
Content-Type: multipart/alternative;
 boundary="------------VL0MexDGFmHhX6W7J0y07n2g"
Message-ID: <DM6PR15MB22522CC87AB60D4C1B1AB7E8C1B29@DM6PR15MB2252.namprd15.prod.outlook.com>
Date: Wed, 22 Jun 2022 10:18:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
To: spice-devel@lists.freedesktop.org
Content-Language: en-US
From: Jacky Guo <jackyguo18@hotmail.com>
X-TMN: [c7+M9E7SZzLR/IMz9JiFu8wJ5xZy77r2fWnNFadZZyQ=]
X-ClientProxiedBy: YT3PR01CA0130.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:83::13) To DM6PR15MB2252.namprd15.prod.outlook.com
 (2603:10b6:5:88::11)
X-Microsoft-Original-Message-ID: <762d628b-6130-1a28-89ec-2c2515300fd5@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2173c1a3-3a1e-4490-b797-08da545a1757
X-MS-TrafficTypeDiagnostic: BYAPR15MB3512:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9zIe27cmslTIJWGCTWKM88GT2YfUSJJhL5hfQ869PT3IPC6U7Y0rtJWiIavKoOpxE/qEWAL6IJEbmroUXN2meL13WSCSQRT9H38deOgqEGevUhpGqItzuRIWBiVkbADHnNdyc1N9MUG2KZzqbizWwg+icA4voRMH9LLWpYQGYD014g4Qj0qSE5kKr9Ix+0NIPJJYvpeVEpETYCKNYRzsJSmaFrOmTW4MU6UGTTpjURPSv5dqQ5EBzSSksbbNvGK0tfF/nzWjDr7RkzKDGOgxTIcpe/3YmFT1rsP8Dvq4W1UVDf/01MhWrbnCZJQY//USkC85FMq/1HI1NFETdbD3wWPyQiuTLDOzxoMsmrh2D3Rz7GD2EzIp9poO3Bcl0puikA0c4cQFs+X7Mup9iO1XSRvj8PvHUfNYJa7kIbXZpxSXZVvDDC558ogee0Zd0BklebYlNDu/x24v1VHXfyaC24glcQDNX+y42t7HOkN1x8qMz5C6QpNx/6LDmtNXheq1rb0/YeeCjT8FSfXKCyxHdmpjQJhWXuxDIzUe9SPGgnLVsgFqI11ONtL3/ceD+BOnjeN472T17TApWgy3zSxvtH6Di6DiF2STMqTuUzzShkaq/YYzNzijPvoPWX7OcN3c
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vzc4T24wd3ZDMlN1VHVSajg4MlJRSkI1WmRIRXlkcndzcXdBQXhaWDZaMEpy?=
 =?utf-8?B?NVQrWWxhY2psVDlBQnRzaXE5WmVOaXB5dmxMcEtUS3BIR3YzVVNQVm5rUWFz?=
 =?utf-8?B?MHNISVE3aGVMWW1UeGxlR3ZWL29mNkhhdGhUNlVJQndma1JWakJrYzhPSmc0?=
 =?utf-8?B?SnZuWEFZdzhQdkZlRG1xazBkOHFFR0YzWFh5aWU3OWdwQzJyUzF0K0NGblJ4?=
 =?utf-8?B?d1ZRV0h4OGtMcEpKRDVjY29XUGFKL2tscFIwTFJWelBsbmFtdGkyWVRhVzhw?=
 =?utf-8?B?YXdDT0RJcE1jd0F6ZGJqYzJmNFZJZFovN1RFcGppR1V2cDJ6bElJUE1DQ2Zm?=
 =?utf-8?B?a24ydWZERUk0YjFxeGNkRTZwMGZCdC83NTRzM1QxU21aODhHNm51eGVuN0JW?=
 =?utf-8?B?VE9LSTdyYnVxcHQ4SWNuK21lMmJUR0xLbnRIdmM2UGRORFNpUjhUREtLYTI5?=
 =?utf-8?B?MDYxSGVBbkxxMnZrZ1VDcjd4V2wrYlJMSzVYdW1ZOUh6L0lYQlhYV0NiMHVj?=
 =?utf-8?B?RzlRM3d1Z1VRVXdidzZnaG1Oc3Y5MER3VG4yVENUclVLblVFYUlJWDZyVjV0?=
 =?utf-8?B?S2NKVnZrOEpFbVY1eHJDK0Z1M3lnZUZXWlh1SVQ2TUlWd2FxdVQvU3poSERI?=
 =?utf-8?B?ek4vNFE2c09IWVRaQzI3amx5OGJVWnNpUDRVSWhWckJvZjVxMDlscW9Nb1lY?=
 =?utf-8?B?SXh2Sm43S0hyUHZnWDdJSEh1Ull6bmNTamFOeFpLbEtYQVUzbEJEOVJ5aUl6?=
 =?utf-8?B?dkx6cGZ5dXdTS3dqRi9kYkE2ZStpRndCZGwzZGpEaW5iZEdZYXVEVTJPaVdG?=
 =?utf-8?B?YzZ6R29iVkxCWjJrc0ZDdS8zWW0wQzFzUHpvdGFQbGxSMHZlNzRra25nbzRm?=
 =?utf-8?B?cWg0enoyZVZIQXk1cCs0enFadFJETUhpTXZ3ZWZIU1BYR1RsYVlDbzRQQ28x?=
 =?utf-8?B?RnBjdmVONUNHSmExSTl1QzkxVDU2bjA3S0s3NFN0ZlJDTmM0TzhPTmNaSGFL?=
 =?utf-8?B?OXUzcWlHbmNjNitiQ3hsdVJ6N21yOFNyUU84UjhQenpCMk5rS1RRYVZtUWhi?=
 =?utf-8?B?Y1J4cy9UQWVXVXp1d3c4eTZGMVQvNVN0VllDMFY5WEZRbGZsT1pxYTkyMHZV?=
 =?utf-8?B?TlZLUDZpL3VmRFdwZTh0S0ZvaUhDOTh0SXlKUWVHVVRBNlkzaEljcWtwV0pw?=
 =?utf-8?B?eGRUQ0JyNEdiaDhjQU9yd0IrRlFUZjdJV1crQzB4dEhOWlVRUUE2K0lJN20x?=
 =?utf-8?B?R25sKzJTbXpGQWdPblB5Q3pJMngvMDJ1YXlIS0c5NXNNcnlvRWRCOVVTQVA4?=
 =?utf-8?B?RmFxOU4yanp3eEQzQWdrMXhhQU04RERFZFpjM0N0QlJ2VkI2byswMlN1b3U4?=
 =?utf-8?B?K2VpbEY0cWhPWDhyY0hOdE41aWZ2VVZ5cnF2UGRldGN5eVJBVDhSYTZnaDMw?=
 =?utf-8?B?VmRCcVliaWh4UkdXamxXaU9MMlo5dXMxTnNsbnhIdGtNc0hpZ2VVTDh4ZHp1?=
 =?utf-8?B?Vmp2eW1UbjZFWWJFWFhZWDh1ekdqeXh6L2NjSGZTc1FycjZDNXV1ekt2OWFy?=
 =?utf-8?B?bFhtK2FaenBFdXRFRU9NTmExcllJeFZkNC9oTW1JUDlaeXMxSmQvcUFoZyth?=
 =?utf-8?B?Vk0xR0VsZVN3Q1I0REp3bkpFblppV1lqODFmVmt1ZTh5MVVPczBLMlJRL2VE?=
 =?utf-8?B?d0IyN0hCcmJXUk91MURxRTk0QVdZN3Q5RWQvcWN4UG5FQS9pdFRUelBreEJQ?=
 =?utf-8?B?cmhBZmtNOFIxZHpiTG5wNzhpTHJ4TytQTTJSN2hvcDcvZkhMSVhqWW5WR1RY?=
 =?utf-8?B?aXYyVVdUR2JycUxkaE53YlNyYUU4Wm13THhHalk2OU9JOFdocnpWSkxrMExO?=
 =?utf-8?B?YWdwenRZNHRBWkVnRlRqOGVpMjFuR0hYRjhjVGU1RzVSVmo3WEhBa1JTNVNV?=
 =?utf-8?Q?kwNQVgnk93VhfJ+c0eVUK5ysd64xqU74?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-4722e.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 2173c1a3-3a1e-4490-b797-08da545a1757
X-MS-Exchange-CrossTenant-AuthSource: DM6PR15MB2252.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2022 14:18:34.4573 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB3512
X-Mailman-Approved-At: Wed, 22 Jun 2022 15:01:04 +0000
Subject: [Spice-devel] spice-gtk console does not hide the cursor if moved
 in from another part of the same surface
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

--------------VL0MexDGFmHhX6W7J0y07n2g
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

To any spice-gtk developer reading this:

This issue occurs in both virt-manager and virt-viewer, and specifically 
occurs with the graphical console, so I'm reporting it here.

When I move the cursor from another window onto the SPICE console, the 
cursor hides as it should. However, if I instead move the cursor from 
the window's header area onto the SPICE console (where the options and 
start/stop VM buttons are), the host mouse cursor remains visible. I can 
provide video if necessary.


      System info:

  * ArcoLinux
  * KDE Plasma 5.25.0
  * spice-gtk 0.40-1

Thank you,

Jacky Guo (jgcodes2020)

--------------VL0MexDGFmHhX6W7J0y07n2g
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>To any spice-gtk developer reading this:</p>
    <p>This issue occurs in both virt-manager and virt-viewer, and
      specifically occurs with the graphical console, so I'm reporting
      it here.</p>
    <p>When I move the cursor from another window onto the SPICE
      console, the cursor hides as it should. However, if I instead move
      the cursor from the window's header area onto the SPICE console
      (where the options and start/stop VM buttons are), the host mouse
      cursor remains visible. I can provide video if necessary.<br>
    </p>
    <h3>System info:<br>
    </h3>
    <ul>
      <li>ArcoLinux</li>
      <li>KDE Plasma 5.25.0</li>
      <li>spice-gtk 0.40-1</li>
    </ul>
    <p>Thank you,</p>
    <p>Jacky Guo (jgcodes2020)<br>
    </p>
  </body>
</html>

--------------VL0MexDGFmHhX6W7J0y07n2g--
