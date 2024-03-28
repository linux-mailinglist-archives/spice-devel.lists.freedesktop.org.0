Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1088A8915A8
	for <lists+spice-devel@lfdr.de>; Fri, 29 Mar 2024 10:20:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1E3D1125FE;
	Fri, 29 Mar 2024 09:20:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=outlook.com header.i=@outlook.com header.b="hl/ZkJjN";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11olkn2019.outbound.protection.outlook.com [40.92.19.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D77C410E8EE
 for <spice-devel@lists.freedesktop.org>; Thu, 28 Mar 2024 20:26:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LxTazCq693523xYd21ADulVxFxIc3N8DX97PVNOhGi4Eky4tNUKw1kJO4LGslSSWHbMJ9m8NxVwPKOM+JhwooRIK6l41arRCFyLZQSAt3vb8DvzAxOx4TpvO+DgXLMfhOogVVplGSB3YM+ywtS2LkzDcNoVmd9m2AmHWmNahVUZ0P8EqkVNdAkOqfD/t66bNL6poJwk6nwSc4o2zu0fLXmA01OfJtr0JDaGW33evMA4cVcTtjhsV9cktv6A0plRpASKgu+PGqB2nuK6jlrvaBHaNbqfOiAYX9zs23j7JaIpSwIO/bmo5/2a5xTi1b4zaCKAsA5pz8PAKytEyFHfKog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C29bn7rFJZAFV16tuvuGzJbx0+3/2We85m/t6kW/tmM=;
 b=J8Si+iRcsSOQzICl/oOynOr5E176/h/8W5sBmGb1WON7fjcazQ20ACtDvPkLmBRRQiodY8nNa7WyZ+750RswKkL2Q34oSdTIuHgjc18ZIJfGhOjEr6tk43hSK8GHeyrrMuSXYgVcQqgtstktdMLz5Dkf0symOZCk/ofWvpTudFGaRzOTDW9XrQphiQYD7QIvpMMkdS4YnqpY6Rb875bY5s8WQcHoN6ENQx2Zj1M27Ke76JmUL1vN5g8seq+a5jAJJ0DBVrJk9AdvQs0sOwRNydtDaNwpgFBdSJAmR1YzjmYF7TdKGwh3w3DAktDQIG1DmNRaAySfu8H7orGUiMgiiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C29bn7rFJZAFV16tuvuGzJbx0+3/2We85m/t6kW/tmM=;
 b=hl/ZkJjN0kVCZZwF55hf1U+hOSk5oi39L7w6WxRYLew/xtFBk2Mk28ql+Cn4Z2bsulwMrBbDFy8illqSS+0+RqgFmHrCCHpDFJvZFTqNxIVudolxxCNg2mU7IMidg3uhdQM8Yq0AP66Ibq80qf6N7zLv7kydcsTEFc++tEZX+foXgwBRtRFMUoQCujC0h8kUkAeSQ5pyTMFt8tyzU272sArB4/cmTHZGctvdbzlG/2p5+OayQ//sseh+aFEnSVyLWSNZcWj3CnW+FInWmpTBSNbhc/4zYMlo8gnHU1cJZwI4o9JrTkU/UZhcAQPALb4jLEitS/iQUXHa1JJV/rU4qg==
Received: from DS7PR19MB7700.namprd19.prod.outlook.com (2603:10b6:8:ed::12) by
 SA0PR19MB4396.namprd19.prod.outlook.com (2603:10b6:806:b5::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.32; Thu, 28 Mar 2024 20:26:48 +0000
Received: from DS7PR19MB7700.namprd19.prod.outlook.com
 ([fe80::1fb6:6172:d71:db04]) by DS7PR19MB7700.namprd19.prod.outlook.com
 ([fe80::1fb6:6172:d71:db04%2]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 20:26:47 +0000
Content-Type: multipart/alternative;
 boundary="------------w2sLtXth2P1gdlPtIuVkgRpZ"
Message-ID: <DS7PR19MB77004B73ED173FDE0C1B53488F3B2@DS7PR19MB7700.namprd19.prod.outlook.com>
Date: Thu, 28 Mar 2024 15:26:46 -0500
User-Agent: Mozilla Thunderbird
To: spice-devel@lists.freedesktop.org
Content-Language: en-US
From: Adonnen Dagnir <lordmethenor@outlook.com>
Subject: Bug Report - GNOME/Mutter Fractional Scaling
X-TMN: [UIBlRxi2bnHcxwTnLuWBus1EMxZzj0ewSxM92v+4vuA=]
X-ClientProxiedBy: DM6PR07CA0056.namprd07.prod.outlook.com
 (2603:10b6:5:74::33) To DS7PR19MB7700.namprd19.prod.outlook.com
 (2603:10b6:8:ed::12)
X-Microsoft-Original-Message-ID: <e4029943-333c-4316-8f4b-0598abc683ae@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR19MB7700:EE_|SA0PR19MB4396:EE_
X-MS-Office365-Filtering-Correlation-Id: de2fb631-7827-4979-0776-08dc4f656469
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vewGcvq+vmneQgYdCAyuaAd4/eYnvCYOx45LOXhhFmZ2y64rf/imNJEf33uTlkQSr5brtdcoodEqYiOmXOX3dXWAsMUCwxUlZbpjdasKoOE65c65aIsWfGHvvGQJMMKM09/FVtkb9J5pPNeJ2BgTmCxAE35o+p+MAJYeSX5OutUVV+G4LsDm4KJ3U+a2AdC8QklTdHKVaOkc5g1eSzXWM+yIJdUjZXyj9oK5lOit96GbUkte9QYMWfCUgdQmBuS0KSK9OSQBKq/Yrk91kks56XX571ZkVIa9u63O08ISSRncFPVs+4tfKPYpLCIazpKho/AuK7Rs6JwTixjsmusl0OiBj0/3igHr5OJsApzFgt7j9kyqEV/uBHEckYZxac/0osOf0w1jcAi8Mho4Spc/nzwPjkSMhfSiQeD/ykusgG7sneg/wgorubMTGd6CSCle2jcW41IKAH+RKmjOH9y4UutkbPX11IhgsIohUTc18XfWr4OzFnvtqSJUdj4EXlmVcWUq0/CQWp8/O/qwc1U/s8bq5Q8p5lxlUAjoB4kORUnOe3x9kcxHuTXYQx+UwGhW6LzoZ46dMYfHo/w1+VZNuV6m7jFXlATsUUvQTi5bW0dhZlGghVBFrcc2tLazcFXPa/YMvBk41HnoiaQ57SVO49x+3zS2w3QE1CrG+lZceFZ/MWRxq00B1S3AjZxw6doD
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzFBb05iRExGbmhobzdIOW1UMVVrR1VRTjNubWcrK2krRXUxRDZ4ZGs3RnJt?=
 =?utf-8?B?OVozVmhFeTVGSVEzRWJzY0RWVEtlUS9ZMll5eGFzMnYwczl6RU1HK1czMEhX?=
 =?utf-8?B?MCtmMnIrMFpRa1ZBZTE1Y1o1V0VXa1BzZFI1TllOdi9sa2JueEdBRjRnS2U1?=
 =?utf-8?B?em1QdmoyWGR4Q2Q5L2draldCcXpvMmpLcVppd1RzY1ZzSVVsRDh3dXBLV0ND?=
 =?utf-8?B?RGZhVnRIZ2J1aGIyQlEvZFJGNCtPd21xbkRLMXpIaW11dXJaYUw5SW1qVWdI?=
 =?utf-8?B?OTdnRmpwa25pdWhGSm9RRGJ6SFVVdWFBb3dSbEtsenZ5VWIvSGd6Nnc0SlN6?=
 =?utf-8?B?aUFLbVpnc05FRXZQUWhhYW4rcEorNkhNOGhDVUxNUnJNTThmQ05JNk9CWG5I?=
 =?utf-8?B?LzJMNUIzYXdtUi90dXZrUkp0LzB1TzNwb2dPRjViSU1sVldSNjREaWxQQytl?=
 =?utf-8?B?QUYwV3cwcExQemlHMm9MTnEzZHlRb0tDWFBWUTg2eXViRERKV0N5T1hpN0s0?=
 =?utf-8?B?cjg2ZmFydU4wbXFWM20xUkJ1dUZYZTZDR3VZeDgzdmdkOFdLUnZtQmxOVEtE?=
 =?utf-8?B?UGxLT0pERlJYZVAyVmZKTWRLQlZTZVpFRnJDaWQ5YnRKaXowaUhXWjF3azVU?=
 =?utf-8?B?b3IyTzFOSHBaei94dTVSTzdUUldzaVhwZzlMcWcyVGJqNFVTNEgrak52RXAx?=
 =?utf-8?B?UzF5MEtEQlAxU3NITDF2UVN6UUpFWi9qVUtBY2g1Q0c4dUx4RUpCcHIzeHdn?=
 =?utf-8?B?NFkzZjAzbkV1QVphdDl1M3hiOWcvcHcwOUlhMyt0Z0ZkVEV4Qm1lempGeFNi?=
 =?utf-8?B?SkNoa0d3Y0lHYUY4RjdlUlMwaHlQMnhXMTNLY21XK1I4bUVibFlINkVPLzFl?=
 =?utf-8?B?aFQzdGxmTlc5ZGMraE92d0ZRSWU5dUpNSHNOVGNGR0hNdGZhZ3I2bXlGR2d6?=
 =?utf-8?B?UGIvUDhKWHVYdlVzWFU3YkR3bEJMYWtVNXltV0FHRVZCMGZ1dU0xZXI4WU5Z?=
 =?utf-8?B?cjhkSjdvZjJVTmQyVU5jbFJmWFFKMThLbThMQkl6U0tRQUE4TVVHRjJaNEF4?=
 =?utf-8?B?akJ1Wlo5dWU2aE9yTWlYRlZBMWJ3TnZpUXJ5cVd1Zm9qSDY4YmpZZ3VKSkE1?=
 =?utf-8?B?SVl0MGdiYlQyYUc1N3Y4VzhvU1huWEJnL3ZlaDloWVpLZE1qY1VTNlk5cEtR?=
 =?utf-8?B?NmQyV1F5bms0bFRxaFRjK0FoU3M0SWlpU29Oa045bWJCZmJzbkYvWFZhYnUy?=
 =?utf-8?B?L3ZQemtJeGFSMzcxRlhBYnVLMU5iN29MN1Nic09QMHpkTnVOYS8raGlCTW5P?=
 =?utf-8?B?ekhRekhPNmIrYnFyakkrdEtnWkQ3NFJYVG5sZW5EL1FvZkxjdnp3Ylladmth?=
 =?utf-8?B?K3VhVExNWWtJbzlCYnUyem9KSnppdkgrRVNwV3o4Um50Q3NYZzI0NjNzV29D?=
 =?utf-8?B?LzRwbENzVEIveHpieE1UNThIb3dRNHZrT0tld05naVYwc3lJR3MwcXVkS3hz?=
 =?utf-8?B?WVd4a3grR2hKcVN3N2tEQUxFOU1WU3ZMb2d2YTNEM2FLQ0RjRDJHZWpqd2NH?=
 =?utf-8?B?Z25ubnVSUy9BN25UdWpCSmJaSG8rLytPUG9ESXFWQXNuaEliaGczMkF4WC9a?=
 =?utf-8?B?c1FicGhTOVl1K3FFb3FmbzlZZHExalo0bDRPaTEwZ1dxaEx4UTNVaFFwdFhT?=
 =?utf-8?Q?lAII2fuEuE09uff8zD3l?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de2fb631-7827-4979-0776-08dc4f656469
X-MS-Exchange-CrossTenant-AuthSource: DS7PR19MB7700.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2024 20:26:47.7551 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR19MB4396
X-Mailman-Approved-At: Fri, 29 Mar 2024 09:20:39 +0000
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

--------------w2sLtXth2P1gdlPtIuVkgRpZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello, all. I reported an issue to the gitlab 
(https://gitlab.freedesktop.org/spice/spice-gtk/-/issues/183), but I see 
the readme wants issues sent to the mailing list. I will summarize here:

VM viewers that use spice-gtk do not render properly when running under 
wayland with GNOME/Mutter's experimental fractional scaling enabled. 
Wayland windows are scaled by rendering at a higher-than-native 
resolution (I think 2 x (native res / scaling factor)) and then 
downscaled to native res. Spice-gtk reports the higher-than-native 
resolution to the VM client, which renders at said resolution. My screen 
width is *2256*, but with 125% fractional scaling, VMs report and render 
with width (2256 / 1.25) * 2**~*3606*.


Have a nice day.

--------------w2sLtXth2P1gdlPtIuVkgRpZ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Hello, all. I reported an issue to the gitlab (<a href="https://gitlab.freedesktop.org/spice/spice-gtk/-/issues/183" class="moz-txt-link-freetext">https://gitlab.freedesktop.org/spice/spice-gtk/-/issues/183</a>),
      but I see the readme wants issues sent to the mailing list. I will
      summarize here:</p>
    <p>VM viewers that use spice-gtk do not render properly when running
      under wayland with GNOME/Mutter's experimental fractional scaling
      enabled. Wayland windows are scaled by rendering at a
      higher-than-native resolution (I think 2 x (native res / scaling
      factor)) and then downscaled to native res. Spice-gtk reports the
      higher-than-native resolution to the VM client, which renders at
      said resolution. My screen width is <b>2256</b>, but with 125%
      fractional scaling, VMs report and render with width (2256 / 1.25)
      * 2<b> </b>~<b> 3606</b>.</p>
    <p><br>
      Have a nice day.<br>
    </p>
  </body>
</html>

--------------w2sLtXth2P1gdlPtIuVkgRpZ--
