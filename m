Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A094490C420
	for <lists+spice-devel@lfdr.de>; Tue, 18 Jun 2024 09:09:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EFA710E20F;
	Tue, 18 Jun 2024 07:09:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GbsHvjUS";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C22010E20F
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2024 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718694593; x=1750230593;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MIVxKfm99bkDoD7X7ikva4BaIBislZgkdbdj5FQfTTc=;
 b=GbsHvjUS/7dptsUQCZ/v5IISxog0hO+/YNwCuz7kQXoAuNLNWH45VgJf
 Jo7DnGCb5zkgt//py07GV8m7NRB8y+lHSQMnMwDoJLDhwabcT0uLicGJY
 kSRup18fX1PLvVLLGH5zY71jZohjUdQKhhMpsJJVNBej3CdT8Tm5DUB68
 GMNIPYjHUg+fnGVVzYbBNx33G3oikaVHEW6zB7aISokkf/lPW5WCkhhxZ
 QPH8JglrMpJM3O9bFT++x54xalTdUAkylP/rc2N1m8dPxZ+/xkMs+BAW/
 cxNOP21VkFNP53hHwz5R2yNxuM22mblSoviRWO82IgscEzujrNdPmLM/P A==;
X-CSE-ConnectionGUID: 3PTNPL3LTHSItXfCemJRzw==
X-CSE-MsgGUID: VpfYfW/TRSqQiX05sR43JA==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="19370106"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="19370106"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 00:09:52 -0700
X-CSE-ConnectionGUID: r1wTsrdMSXiDnc1v55MGCQ==
X-CSE-MsgGUID: u+nHIKq+TvqbhZ0Ntk+MqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41549387"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jun 2024 00:09:52 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 00:09:52 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 00:09:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 18 Jun 2024 00:09:52 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 18 Jun 2024 00:09:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MknMRQfjImo2YWCGQDZU3DhLH2X3BPjsCjpinMWjTmxEKa1E63XncUyrdth3Hix88nl9V/RWpBD4BWp2+Faic0H3K8dWOqzKSX74AHowCG7xh2PoWCUUpgFtcBOBFTmQ/I3bdQE3/EbQh3tx7rUHB53Aj0zWB0gadyEIyIBzEiF6rXfg/KhizcAeTnrk0yVGTCFZ8ceT7OyJn9STLUxmFBITXE47m/lueRA1qVF3jlZnQde+unfsIKnbbMtwAnaM/AGwu2LwsBq7g1HhuufBK3I9n7JCmvcb1BeDZ1eaUmTElNpYqcAQDenzZL2PqXozqc1IRYdGuYlzLl/WJKqDgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MIVxKfm99bkDoD7X7ikva4BaIBislZgkdbdj5FQfTTc=;
 b=iSnUwr05OJBuQW0CIyLIvi3PFYaBkSiJ1/5vDVoDuZUU8h07aVUEZNon7wYwAHfYWW4wwBwFZ2EJI1DSFbpwoKJJmqtQWsKcjmrZfQioG9LGmeu2u2y7qnfNVYJjXHLcxNi61227LKmz+iXiz+TAy/hoI4LbXdVRVuOh+2JmaOLevOPmSlR+NYfn9LNsq6jCmEiXcm+/6CuCSpGP3CMwScPYla3Ph6S0V8KzAkCRVLkIlxKHpg2ff3BBTUxhwsJ4KcESnnLSxXbUhKbjPdt0Xbxi86UUNT9LxV0oeuPCxstD7BqmXVUoJNCRD63vLLfHIO1/bhPRnAPYIiNLH5BxAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by MN0PR11MB6208.namprd11.prod.outlook.com (2603:10b6:208:3c4::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.18; Tue, 18 Jun
 2024 07:09:49 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::dd3b:ce77:841a:722b]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::dd3b:ce77:841a:722b%6]) with mapi id 15.20.7677.024; Tue, 18 Jun 2024
 07:09:49 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>
CC: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 Gerd Hoffmann <kraxel@redhat.com>, =?utf-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?=
 <marcandre.lureau@redhat.com>, "Kim, Dongwon" <dongwon.kim@intel.com>
Subject: RE: [PATCH v8 0/6] dcc: Create a stream for non-gl/remote clients
 that want to use dmabuf (v8)
Thread-Topic: [PATCH v8 0/6] dcc: Create a stream for non-gl/remote clients
 that want to use dmabuf (v8)
Thread-Index: AQHau2j69o2YZ1W9AkSwi/c6QgrEdbHKNXUAgAIXj7A=
Date: Tue, 18 Jun 2024 07:09:49 +0000
Message-ID: <IA0PR11MB7185D66F68841B9EC3FF08E6F8CE2@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20240610183703.684420-1-vivek.kasireddy@intel.com>
 <CAHt6W4fiGXBp6uUkduWm6K3wxCEFtJZbP9aT=cFYxU0g9x_qjg@mail.gmail.com>
In-Reply-To: <CAHt6W4fiGXBp6uUkduWm6K3wxCEFtJZbP9aT=cFYxU0g9x_qjg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|MN0PR11MB6208:EE_
x-ms-office365-filtering-correlation-id: 9d0b977e-19ba-4aba-4004-08dc8f65a467
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|1800799021|366013|376011|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?ZHdCekhuTUdWdWVHeGtRUkExMkNxQVFFSEpveVYzTng4UElTdDgxSjZwSzNn?=
 =?utf-8?B?dzBCcnl0MnVOTDVCQTZGL2dhVkVGblJvTVAxT0Yra0tSUGViZGFpaVJETDVP?=
 =?utf-8?B?SkRYWko1ZU96Wmx3YTJqSnRJNFFwNTNJZmhqNGlYVWVPNFhyOEFBV0xQaTRr?=
 =?utf-8?B?UE1GSDJaRnJhK1ByU3NST1YwalhldHBDNE4zY0JEeGIzTGVYdFlGVnBjeGwr?=
 =?utf-8?B?ck1sNzRzL1VUM2dIbktueEVlNGhuSk85OXVJY3lhUEVrUlcvbUk3c0VXU05z?=
 =?utf-8?B?b09QVURrdzVpSXVPTUZzZTVoamNLQktaWHBBMW42SHlKTW95UUtzMGkrVks0?=
 =?utf-8?B?b3g2SGZYaW5SS0F1V2M0ZTJlVFZaT0pVSDhFTTJMT3hmbUt1ZERLTWVJZ0xG?=
 =?utf-8?B?eUtHTWJ4dFRURXRva1V6T3M0NkZpeS9YUlI4RjZvUk9pdm5LTU5EUDdHK1FX?=
 =?utf-8?B?Q01sODB1RENXSmNQSDhVR0R1bzltbTQ0ckZqK2NHc21lWVM5Y2tKYk5IQnlL?=
 =?utf-8?B?UWRDc0JTU3hZZTJybmhYZmdxOHUvWVhkZktaZXUzbDJzZEU2bG9iRG9oUHph?=
 =?utf-8?B?dnZPNmg1M3RBWXNNeE54K0wrMDZoeVJFd21vUDhHa29SbExMZlMxMjhZZG9a?=
 =?utf-8?B?TkxDOTJrSHozM2NQcjNMME5tbHluYlZaTWpXRHZwaTd1WFVYYTdTanF5SVRp?=
 =?utf-8?B?aHRtTUFxejFRS0hsRWZ3aTdXVnlqQlExMmh6L0d1a0w4NWg2ajZwUzc2aHdB?=
 =?utf-8?B?VUJKdTlPamhoOUZ4ZW84UzZudWdnYTJweUlRUDVIWDU1R0tmYUd6bGwzbnhs?=
 =?utf-8?B?T1lZSWppbWsyYVdvV2o4Z0RSSjNMU0FzdUhpcXRsdG9yZXpKYVhONi9pejdW?=
 =?utf-8?B?ZTRRQ1B1bDFFT3BKbS9rWGV4OUNsSGlhcnFGU2N4czF5d0FxUEJkWmJpYm82?=
 =?utf-8?B?K3JOZk5VOUlkcDYvMklaTGExbjY4M205TjA2QXl0VGdWdWE2Snl1b0Q5OUpP?=
 =?utf-8?B?T1NDVjdxb0hodUtqMVNTa2ZkTEJLeGV2aSsrRC9aTkwxNXFudjRqbE04Z2hr?=
 =?utf-8?B?Q0k2WWdaNVZvNlRUeXdFNTc2Zk5hOTFiQzV1djU4MVh1MkFSMzNJWHJqUENy?=
 =?utf-8?B?OTltejVEbFhjYlA0QkhhNjgyZW1tSmlZOFRsM01Cc1A1VWNXZlJ0NnFiSXNZ?=
 =?utf-8?B?cXpVQ3llNGNsVlRKWmxKTkdDbGlHemRxbGZQVGZENHNDRmtDV3hZTDlyelBy?=
 =?utf-8?B?ZlBtd3BIWGJJNm5CN3lIWkY5blE4Y2htYVJiTmZqUHA2YnFvd2cxRUFVd2FC?=
 =?utf-8?B?azhzdm91YytQWTRuR0x2QlhUY2hvc3hTQ2xTeFp2aFJOQUdtbWFEbGd6WWhX?=
 =?utf-8?B?Y1UzMTVvUmpnRGJVcGI3Y2dyME5DWVh5Ym9Dc0t2NE5RZHJ6NUgxc1ArdGkz?=
 =?utf-8?B?UUtoK0lnMklKa0FPNHM0Y21obXJyNUw2MHhQQ2g4YkwwdzJ2Z3VPTlppbjlu?=
 =?utf-8?B?amxpYm1YSFkxMGMzM1kxc1VhNTJRTGYraS90d1pVUWo1ei9Jbks4eWllNjVX?=
 =?utf-8?B?NnFtd0NEaUhLWXZhdHRuSG1qdzQwU0pnR2poKzRXT0dFVWl6RThyRXNDSUVT?=
 =?utf-8?B?cnNtaG1oU1M1bHhCM2YrRU5vSGVBM0JFanVzcDBoVnNhVGsxbG5PUjkwcURQ?=
 =?utf-8?B?aFRxSXp2K3F0WFljUnBZT2FSczVldloyT1JVY1RycmFZNHRmcUhCUjJKcFdM?=
 =?utf-8?Q?3dyZloqQ3dWzCClBI4kKy3dxqdJB/G2k8MadTqh?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(366013)(376011)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bFN4V0h1THpYZTU5TkZRcEhiMzd0RWMvaHl6eGs4OHVoU1VFNkFabjhKeWZM?=
 =?utf-8?B?MTJRL09zcUl4Ynh1aTJyQnFNNFhTRTJ2L1ZMWFVYdmVRYThQRzhpeWp5SGtt?=
 =?utf-8?B?anczc0xJMXZHTElLb3huRWJ3TXh1aDNSeW5WeXhmTmRXaWcxaS9nT3lCNGZ6?=
 =?utf-8?B?djJwVk9hN1FNWDBsWllqWHYySVFpcCtJWHNLdStQSmtGWmZsRHpOZ3Zyd0hP?=
 =?utf-8?B?NGI3SmtUNk1pS1d0NEtuSXE3VkljY2dRaUlUOUt0Qmh3a1RXWUxBZjlpcmta?=
 =?utf-8?B?NGRhVXJBT2lhZmRVa21rU1FiTi9LYXlodjM5eXpnbDdEMVRBTzcvNGNGMEY0?=
 =?utf-8?B?anJsU01aWU1SOWVCUVRzZExvUkZBWnRDcDZHZmRKNlBSL1ZHbm15ZDY2NTV3?=
 =?utf-8?B?OHpBQ0MxQ09TRkJ1dWFPN0M1S2gxUVo4M3dSTnBENnI0NW05bVhQMm53eEla?=
 =?utf-8?B?V2NiODJmaW1yOXdkeVFxeDFzamE0a1JiamYzcXo5VmNlazhObUhlU08rVENl?=
 =?utf-8?B?R2tyekJJZllkVjZWSWFOMVp0VUZ1Wm9MNXRQTDJwSUJXaGE1em1rUW9abmt3?=
 =?utf-8?B?cTJsVFhZSVFPY2RnUGRtT3ExcDZBZFF3M1FLZzg5UmRrbDk5dUtaNW1YK0lB?=
 =?utf-8?B?cXhMU05WSmF4RGFTTmdMeEpBY3llYjVVODVYdzVacE16S0FZS1MxclpWSE95?=
 =?utf-8?B?dDFqZTBmMnVQTnJGbUZXN1gyaE9EYStQUURPVy8wSm00RzhOL25kajlWamdn?=
 =?utf-8?B?WXlMaWdXcnRpdFlIWG93WXpxWWdUZkRXNWM0WXJ5aGRFYkxCRGp1TkVSSEdC?=
 =?utf-8?B?dXc0SUpLOThEUWR3bHVwMk90RTY0OTBKY0plWHNtSmhDdDhoWGNydUd1Y1Fo?=
 =?utf-8?B?SUhLMmxvaTJ4cU1yTk9rZ21wbUN5d2dCeVRuS1pSUnlvQU5sK3h0VkRTcUhN?=
 =?utf-8?B?TmU2aG1yOWJNdnZlcGwzRmFlWG0wR2lKZGM0MVRwU0hxM1FSWnFBdUoxK0Jp?=
 =?utf-8?B?VGZvQUpOL2hPTWpvN1U5dGZmbDMzd01EMnNhakpLNlJ4NmJ4dU02VkpoR3lV?=
 =?utf-8?B?S2F6ZXJrZ1hiS0RvS3E0VHZwS1RrdEFLRUVuMHVTbXg2MjhrUWJmREFIemhH?=
 =?utf-8?B?QTc2NE5iTDVnYklPWXQzL3hYZWN4TEVJaDhqOWNZbHBXcy9QcTRJQnBUbzA4?=
 =?utf-8?B?cnE0Y1BubXMxbk9oN3RUTjUrWTA3T0U5SklkMVdpSGZKQ0hadkZ0NmdKbGFq?=
 =?utf-8?B?SFhtejBpZzN1ZWM5UXRDVVZMc29CVEFtOG9vZTNQcmYvK2NQOWU4SHNXMXZI?=
 =?utf-8?B?QUpscWZXZzU4OWtBUmVPdytJclZWOGFEL1ZoRC95N1VaQ25HMDNuWCtvTFhO?=
 =?utf-8?B?cHJrdVQ4Nlkxb3V0UmFJamhQMys3cER3ZGd6MCswWktldXZWTXp4dlI5OWlo?=
 =?utf-8?B?YjhxeU96eXdFdmpoRDNzSmpFaUFKNlFFYUpSR1R1OVZhTU5EbXdLQVJrTzVG?=
 =?utf-8?B?TTJWLzZSVEY3ZDJxNGJhRy9NdFhDOGtMdGU5am9QZEk1MzhkcGF1VXcvOTJW?=
 =?utf-8?B?ZGNFL2tkVjdsaWdCTGFWQTBZRjFvdDdsd2VPQkV6RVUyWW83a0Fsam9xSmNh?=
 =?utf-8?B?eFB0YTFvMjF0SUlTWGpuWDJNUFlEMHVNTW5zN25rQ0JzQ242TEdHdS92Ukl0?=
 =?utf-8?B?NU5aekRHYXJtdmhLWlQwWHJ2YWh6bUM2YjFkY29ybmFINWtlZTd5VlBnaXhG?=
 =?utf-8?B?SGxGTFhOMmRSMGdtekZiQksvRE9QTUJkWEpwSjFObXVrdzQvWGRHMzZPUnhz?=
 =?utf-8?B?cVUxSnpwK3R6QTVDWXgwT3F0Tno5amFkdHlCWWM1QUxDVTVsc0RSVHRzcWRi?=
 =?utf-8?B?cGtKbEJVMC9Zd3Vxempta0J0SkhVVTlPWG5iWXpjMFdYZVlYWW1OSWxFcUFv?=
 =?utf-8?B?V3I0V0hwSGw0NUlTZG93MXdQcEdnSWRoNGwwSW9nZmp5cFA4SXB5b1ZGcnBL?=
 =?utf-8?B?QVhTMVJWT3QxU21uVVhiY0dSVEFNdVBVa2p2N0hUTVEyYVd4TVdRd0xYL0Vm?=
 =?utf-8?B?aWJ6bzNyUkNoYWJuYTlOWEpsMjZuTXFiT0pMWUVNSWZpSkRZUFNQUXJFaURx?=
 =?utf-8?Q?hWrqwvGItbCV9/mqf7SYasn5t?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d0b977e-19ba-4aba-4004-08dc8f65a467
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2024 07:09:49.1871 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w4ZiIfZQPRzkLz+51TiAQiPl+abAWMXQE4RMKRgbyQo7jFqzRhDlhmq038CEynWlqAL27tz0cqFgHYMH3uTc7LdFkk7mnWJmqdGwINHk44A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6208
X-OriginatorOrg: intel.com
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

SGkgRnJlZGlhbm8sDQoNCj4gDQo+IEhpLA0KPiAgICBJIHNwZW50IHF1aXRlIHNvbWUgdGltZSB0
aGlzIHdlZWtlbmQgdHJ5aW5nIHRvIHVzZSB0aGlzIG5ldyBzZXJpZXMNCj4gYnV0IEknbSBnZXR0
aW5nIGFsbCBibGFuayBzY3JlZW4gZm9yIHNvbWUgcmVhc29ucy4gTGFzdCB0aW1lIEkgZ290DQo+
IHNvbWV0aGluZyBzbyB0aGUgZW5jb2RlciB3YXMgd29ya2luZyBvbiB0aGUgc3lzdGVtLg0KV2hp
Y2ggZW5jb2RlciBkaWQgeW91IHRyeSB3aXRoPyB4MjY0ZW5jIG9yIG1zZGtoMjY0ZW5jPw0KSWYg
aXQgaXMgdGhlIGxhdHRlciwgSSBhbSBhc3N1bWluZyB5b3UgYWxyZWFkeSBoYXZlIHRoZSBmb2xs
b3dpbmcgcGF0Y2ggcmlnaHQ6DQpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvVml2ZWsv
c3BpY2UvLS9jb21taXQvMzRlMzQyYTJmN2MyNTAxZDY1ZDhjYzlkZDlkZWYwMGYyMmZiZDU0YQ0K
DQpBbHNvLCBhcmUgeW91IHNlZWluZyBhbnkgZXJyb3JzPw0KDQo+IEkgYWxzbyBoYWQgdG8gZG8g
c29tZSBjaGFuZ2VzIGZvciBjb21wYXRpYmlsaXR5LCBtb3N0IG9mIHRoZSBDSSBpcyBub3QNCj4g
ZXZlbiBjb21waWxpbmcgYXQgdGhlIG1vbWVudC4gV2hpY2ggZGlzdHJvIGFyZSB5b3UgdXNpbmc/
IEknbGwgdHJ5IHRvDQo+IHNldCB1cCBvbmUgc2ltaWxhci4NCkFyZSB5b3UgcmVmZXJyaW5nIHRv
IHRoZSBjaGFuZ2VzIG5lZWRlZCB0byB1c2UgdGhlIHVkZXYgY2hhbmdlcyBmcm9tDQpzcGljZS1j
b21tb24/DQoNCkFzIGZvciBteSBzZXR1cCwgSSBhbSB1c2luZyBGZWRvcmEgMzkgb24gYm90aCBI
b3N0IGFuZCBHdWVzdCBidXQgcHJldHR5DQptdWNoIGFsbCBjb21wb25lbnRzIGFzc29jaWF0ZWQg
d2l0aCB0aGUgR3JhcGhpY3Mgc3RhY2sgYW5kIGFsc28gdGhlIEhvc3QNCmFuZCBHdWVzdCBrZXJu
ZWxzIGFyZSBjb21waWxlZCBhcmUgcHVsbGVkIChhbmQgY29tcGlsZWQpIGZyb20gdGhlaXINCnJl
c3BlY3RpdmUgcmVwb3MgKG1hc3RlciBicmFuY2gpLiANCg0KPiBJIHNhdyB0aGUgY2hhbmdlcyBp
biBRZW11LiBBcyBJIHNhaWQgUWVtdSBzaWRlIGNhbm5vdCBkZXRlY3QgY29ycmVjdGx5DQo+IGlm
IHlvdSBhcmUgdXNpbmcgYSByZW1vdGUgY2xpZW50IG9yIG5vdCwgdGhlc2UgcGF0Y2hlcyBhcmUg
Z29vZCBmb3IgYQ0KPiB0aW1lIGJlaW5nIGJ1dCB0aGF0J3MgYSB3cm9uZyBzb2x1dGlvbi4gTm90
IHRoYXQgSSBoYXZlIHNvbWV0aGluZw0KPiBiZXR0ZXIgY29uY3JldGUgYXQgdGhlIG1vbWVudCwg
YXMgSSBzYWlkIEknbSBzdGlsbCB0cnlpbmcgdGhpcyBzZXJpZXMuDQpJIGFtIHVzaW5nIHRoaXMg
UWVtdSBicmFuY2ggdG8gcnVuIHRoZSB0ZXN0cyB3aXRoIHRoaXMgc2VyaWVzOg0KaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL1ZpdmVrL3FlbXUvLS9jb21taXRzL3NwaWNlX2dsX29uX3Y0
DQoNCkFuZCwgaGVyZSBhcmUgdGhlIHNjZW5hcmlvcy90ZXN0cyBJIHRyaWVkIHdpdGggdGhpcyBz
ZXJpZXMsIHdoaWNoIGFsbCB3b3JrIGFzIGV4cGVjdGVkOg0KMSkgYmxvYj10cnVlIGFuZCB2aXJn
bD1mYWxzZQ0KLi9xZW11LXN5c3RlbS14ODZfNjQgLW0gNDA5Nm0gLWVuYWJsZS1rdm0gLWNwdSBo
b3N0IC1zbXAgLi4uLi4NCi1kZXZpY2UgdmlydGlvLXZnYSxtYXhfb3V0cHV0cz0xLHhyZXM9MTky
MCx5cmVzPTEwODAsYmxvYj10cnVlIC1zcGljZSBwb3J0PTMwMDEsZ2w9b24sZGlzYWJsZS10aWNr
ZXRpbmc9b24scHJlZmVycmVkLWNvZGVjPWdzdHJlYW1lcjpoMjY0DQotb2JqZWN0IG1lbW9yeS1i
YWNrZW5kLW1lbWZkLGlkPW1lbTEsc2l6ZT00MDk2TSAtbWFjaGluZSBtZW1vcnktYmFja2VuZD1t
ZW0xIC11c2IgLWRldmljZSB1c2ItdGFibGV0IC1zZXJpYWwgc3RkaW8NCg0KSW4gdGhlIGFib3Zl
IGNhc2UsIGZvciBibG9iPXRydWUgdG8gd29yaywgeW91IG5lZWQgdG8gbWFrZSBzdXJlIHRoZSBI
b3N0IGtlcm5lbA0KaW5jbHVkZXMgc3VwcG9ydCBmb3IgdWRtYWJ1ZiBkcml2ZXIuDQoNCjIpIGJs
b2I9ZmFsc2UgYW5kIHZpcmdsPWZhbHNlDQouL3FlbXUtc3lzdGVtLXg4Nl82NCAtbSA0MDk2bSAt
ZW5hYmxlLWt2bSAtY3B1IGhvc3QgLXNtcCAuLi4uLg0KLWRldmljZSB2aXJ0aW8tdmdhLG1heF9v
dXRwdXRzPTEseHJlcz0xOTIwLHlyZXM9MTA4MCAtc3BpY2UgcG9ydD0zMDAxLGdsPW9uLGRpc2Fi
bGUtdGlja2V0aW5nPW9uLHByZWZlcnJlZC1jb2RlYz1nc3RyZWFtZXI6aDI2NA0KLW9iamVjdCBt
ZW1vcnktYmFja2VuZC1tZW1mZCxpZD1tZW0xLHNpemU9NDA5Nk0gLW1hY2hpbmUgbWVtb3J5LWJh
Y2tlbmQ9bWVtMSAtdXNiIC1kZXZpY2UgdXNiLXRhYmxldCAtc2VyaWFsIHN0ZGlvDQoNCkluIHRo
ZSBhYm92ZSB0d28gY2FzZXMsIHNpbmNlIHZpcmdsPWZhbHNlIGFuZCB0aGVyZSBpcyBubyBvdGhl
ciBHUFUgZGV2aWNlIGF2YWlsYWJsZSwNCkdub21lIChpbiBHdWVzdCkgd291bGQgYXV0b21hdGlj
YWxseSB1c2UgdGhlIGxsdm1waXBlIERSSSBkcml2ZXIgKENQVSBiYXNlZC9zb2Z0d2FyZSkNCmZv
ciByZW5kZXJpbmcgdGhlIGRlc2t0b3AuDQoNCjMpIGJsb2I9ZmFsc2UgYW5kIHZpcmdsPXRydWUN
CiAuL3FlbXUtc3lzdGVtLXg4Nl82NCAtbSA0MDk2bSAtZW5hYmxlLWt2bSAtY3B1IGhvc3QgLXNt
cCAuLi4uLi4NCi1kZXZpY2UgdmlydGlvLXZnYS1nbCxtYXhfb3V0cHV0cz0xLHhyZXM9MTkyMCx5
cmVzPTEwODAgLXNwaWNlIHBvcnQ9MzAwMSxnbD1vbixkaXNhYmxlLXRpY2tldGluZz1vbixwcmVm
ZXJyZWQtY29kZWM9Z3N0cmVhbWVyOmgyNjQNCi1vYmplY3QgbWVtb3J5LWJhY2tlbmQtbWVtZmQs
aWQ9bWVtMSxzaXplPTQwOTZNIC1tYWNoaW5lIG1lbW9yeS1iYWNrZW5kPW1lbTEgLXVzYiAtZGV2
aWNlIHVzYi10YWJsZXQgLXNlcmlhbCBzdGRpbw0KDQpJbiBhbGwgdGhyZWUgY2FzZXMgYWJvdmUs
IEkgdGVzdGVkIGJ5IGJvb3RpbmcgdG8gdGhlIEd1ZXN0IGNtZCBsaW5lIGFuZCBsYXVuY2hpbmcg
R25vbWUgKyBYb3JnDQpieSBydW5uaW5nIHRoZSBjbWQgc3RhcnR4LiBGb3IgdGVzdGluZyBHbm9t
ZSArIFdheWxhbmQsIEkgYWRkZWQgV2F5bGFuZEVuYWJsZT1UcnVlIGluDQovZXRjL2dkbS9jdXN0
b20uY29uZiBhbmQgbGF1bmNoZWQgaXQgYnkgcnVubmluZyBzeXN0ZW1jdGwgc3RhcnQgZ2RtLg0K
DQpUaGFua3MsDQpWaXZlaw0KDQo+IA0KPiBSZWdhcmRzLA0KPiAgIEZyZWRpYW5vDQo+IA0KPiBJ
bCBnaW9ybm8gbHVuIDEwIGdpdSAyMDI0IGFsbGUgb3JlIDIwOjAzIFZpdmVrIEthc2lyZWRkeQ0K
PiA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4gaGEgc2NyaXR0bzoNCj4gPg0KPiA+IEZvciBj
bGllbnRzIHRoYXQgY2Fubm90IGFjY2VwdCBhIGRtYWJ1ZiBmZCBkaXJlY3RseSAoc3VjaCBhcyB0
aG9zZQ0KPiA+IHJ1bm5pbmcgb24gYSByZW1vdGUgc3lzdGVtKSwgdGhpcyBwYXRjaCBzZXJpZXMg
cHJvdmlkZXMgYSB3YXkgZm9yDQo+ID4gdGhlIFNwaWNlIHNlcnZlciB0byBzdHJlYW0gdGhlIGds
L2RtYWJ1ZiBkYXRhL2J1ZmZlciBpbnN0ZWFkLiBUaGlzDQo+ID4gaXMgbW9zdGx5IGRvbmUgYnkg
ZW5hYmxpbmcgdGhlIGNyZWF0aW9uIG9mIEdzdCBtZW1vcnkgdXNpbmcgYSBkbWFidWYNCj4gPiBm
ZCBhcyB0aGUgc291cmNlLiBUaGlzIGFiaWxpdHkgaXMgdXNlZnVsIGdpdmVuIHRoYXQgZG1hYnVm
IGlzIHRoZQ0KPiA+IHN0YW5kYXJkIG1lY2hhbmlzbSBmb3Igc2hhcmluZyBidWZmZXJzIGJldHdl
ZW4gdmFyaW91cyBkcml2ZXJzIGFuZA0KPiA+IHVzZXJzcGFjZSBpbiBtYW55IEdyYXBoaWNzIGFu
ZCBNZWRpYSB1c2VjYXNlcy4gQ3VycmVudGx5LCB0aGlzIGlzDQo+ID4gdGVzdGVkIHdpdGggUWVt
dSBhbmQgcmVtb3RlLXZpZXdlciB1c2luZyB0aGUgeDI2NGVuYy9hdmRlY19oMjY0DQo+ID4gYW5k
IG1zZGtoMjY0ZW5jL2RlYyBwbHVnaW5zIHRvIHN0cmVhbSB0aGUgR3Vlc3QvVk0gZGVza3RvcCBi
dXQgaXQNCj4gPiBjYW4gYmUgZWFzaWx5IGV4dGVuZGVkIHRvIG90aGVyIHBsdWdpbnMgYW5kIGFw
cGxpY2F0aW9ucy4NCj4gPg0KPiA+IEhlcmUgaXMgcm91Z2hseSBob3cgdGhpbmdzIHdvcms6DQo+
ID4gLSBUaGUgYXBwbGljYXRpb24gKGUuZywgUWVtdSkgY2hvb3NlcyBpdHMgcHJlZmVycmVkIGNv
ZGVjIChhIEdzdHJlYW1lcg0KPiA+ICAgb25lKSBhbmQgY2FsbHMgZ2xfc2Nhbm91dCAodG8gdXBk
YXRlIHRoZSBmZCkgZm9sbG93ZWQgYnkgZ2xfZHJhdy4NCj4gPiAtIEluIHJlc3BvbnNlLCB0aGUg
U3BpY2Ugc2VydmVyIGNoZWNrcyB0byBzZWUgaWYgdGhlIGNsaWVudCBpcyBjYXBhYmxlDQo+ID4g
ICBvZiBhY2NlcHRpbmcgYSBkbWFidWYgZmQgZGlyZWN0bHkgb3Igbm90LiBJZiB5ZXMsIHRoZSBm
ZCBpcyBmb3J3YXJkZWQNCj4gPiAgIGRpcmVjdGx5IHRvIHRoZSBjbGllbnQ7IG90aGVyd2lzZSwg
YSBuZXcgc3RyZWFtIGlzIGNyZWF0ZWQuDQo+ID4gLSBUaGUgU3BpY2Ugc2VydmVyIHRoZW4gc2Vu
ZHMgdGhlIGRtYWJ1ZiBmZCB0byB0aGUgR3N0cmVhbWVyIGVuY29kZXINCj4gPiAgIHdoaWNoIHVz
ZXMgaXQgYXMgYW4gaW5wdXQgZm9yIGNyZWF0aW5nIGFuIGVuY29kZWQgYnVmZmVyIHdoaWNoIGlz
IHRoZW4NCj4gPiAgIHNlbnQgdG8gdGhlIGNsaWVudC4NCj4gPiAtIE9uY2UgdGhlIGVuY29kaW5n
IHByb2Nlc3MgaXMgZG9uZSwgYW4gYXN5bmMgY29tcGxldGlvbiBjb29raWUgaXMgc2VudA0KPiA+
ICAgdG8gdGhlIGFwcGxpY2F0aW9uLg0KPiA+DQo+ID4gSGVyZSBpcyBhIGxpbmsgdG8gdGhlIHBy
ZXZpb3VzIHZlcnNpb24gdGhhdCB1c2VkIGEgZHJhd2FibGUgdG8gc2hhcmUNCj4gPiB0aGUgZG1h
YnVmIGZkIHdpdGggdGhlIEdzdHJlYW1lciBlbmNvZGVyOg0KPiA+IGh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL2FyY2hpdmVzL3NwaWNlLWRldmVsLzIwMjMtDQo+IEphbnVhcnkvMDUyOTQ4
Lmh0bWwNCj4gPg0KPiA+IFRoaXMgdmVyc2lvbiBpcyB0ZXN0ZWQgdG9nZXRoZXIgd2l0aCBmb2xs
b3dpbmcgKHJlcXVpcmVkKSBwYXRjaGVzIGluIHFlbXU6DQo+ID4gaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL1ZpdmVrL3FlbXUvLS9jb21taXRzL3NwaWNlX2dsX29uX3Y0DQo+ID4NCj4g
PiBDaGFuZ2Vsb2c6DQo+ID4NCj4gPiB2ODoNCj4gPiAtIEFkZGVkIGEgbmV3IGdzdHJlYW1lci1l
bmNvZGVyIHBhdGNoIHRvIHRoaXMgc2VyaWVzIHRvIGNvbnZlcnQgZHJtDQo+IGZvcm1hdA0KPiA+
ICAgc2hhcmVkIGJ5IHRoZSBWTU0gdG8gdGhlIGFwcHJvcHJpYXRlIEdzdHJlYW1lciBmb3JtYXQu
DQo+ID4NCj4gPiB2NzoNCj4gPiAtIFJldmVydCBiYWNrIHRvIHRoZSBwcmV2aW91cyBkZXNpZ24g
d2hlcmUgd2UgZG8gbm90IHNoYXJlIGZkIHdpdGggdGhlDQo+IHN0cmVhbQ0KPiA+ICAgYW5kIHNj
YW5vdXQgaXMgdGhlIHNvbGUgb3duZXIgb2YgdGhlIGZkLiBUaGlzIGlzIGJlY2F1c2Ugc2hhcmlu
ZyBmZA0KPiBvd25lcnNoaXANCj4gPiAgIG9wZW5zIHVwIGEgbG90IG9mIGNvcm5lciBjYXNlcy4N
Cj4gPg0KPiA+IHY2OiAoRnJlZGlhbm8pDQo+ID4gLSBQcm9wZXJseSBzaGFyZSBvd25lcnNoaXAg
b2YgdGhlIGRtYWJ1ZiBmZCBiZXR3ZWVuIHN0cmVhbSBhbmQgc2Nhbm91dA0KPiA+IC0gRW5zdXJl
IHRoYXQgYSBuZXdseSBjcmVhdGVkIHN0cmVhbSBpcyBhc3NvY2lhdGVkIHdpdGggYWxsIGNvbm5l
Y3RlZCBjbGllbnRzDQo+ID4NCj4gPiB2NToNCj4gPiAtIEFkZHJlc3NlZCByZXZpZXcgY29tbWVu
dHMgZnJvbSBGcmVkaWFubyBtYWlubHkgcmVnYXJkaW5nIGFkZGluZw0KPiBhdXRvY29uZg0KPiA+
ICAgc3VwcG9ydCBmb3IgZ3N0cmVhbWVyLWFsbG9jYXRvcnMgZGVwZW5kZW5jeSBhbmQgbm90IG5l
ZWRpbmcgdG8gYWNjZXNzDQo+ID4gICBzY2Fub3V0IGFzIHBhcnQgb2YgZ2wgZHJhdyBvcGVyYXRp
b24NCj4gPg0KPiA+IHY0Og0KPiA+IC0gVGVzdCB3aXRoIFZpcmdsIGVuYWJsZWQNCj4gPiAtIEFz
c29jaWF0ZSBkbWFidWYncyB5MF90b3Agd2l0aCBzdHJlYW0ncyB0b3BfZG93biB2YXJpYWJsZQ0K
PiA+DQo+ID4gdjM6DQo+ID4gLSBVcGRhdGVkIHRoZSBzZWNvbmQgcGF0Y2ggdG8gaGF2ZSBhIG5l
dyBwcmltYXJ5IHN1cmZhY2UgY3JlYXRlZA0KPiA+ICAgd2hlbmV2ZXIgYSBuZXcgc3RyZWFtIGdl
dHMgY3JlYXRlZC4gVGhpcyB3aWxsIGF2b2lkIGhhdmluZyB0bw0KPiA+ICAgdHJpZ2dlciBwcmlt
YXJ5IHN1cmZhY2UgY3JlYXRpb24gZnJvbSBRZW11LiBBbmQsIHRoaXMgY2hhbmdlDQo+ID4gICBh
bHNvIGZpeGVzIHRoZSBmb2xsb3dpbmcgZXJyb3Igc2VlbiB3aXRoIHYyOg0KPiA+ICAgLi4vc2Vy
dmVyL2Rpc3BsYXktY2hhbm5lbC5jcHA6MjA3NDpkaXNwbGF5X2NoYW5uZWxfY3JlYXRlX3N1cmZh
Y2U6DQo+ID4gICBjb25kaXRpb24gYCFkaXNwbGF5LT5wcml2LT5zdXJmYWNlc1tzdXJmYWNlX2lk
XScgZmFpbGVkDQo+ID4gLSBSZWJhc2UgYWxsIHBhdGNoZXMgb24gbWFzdGVyDQo+ID4NCj4gPiB2
MjoNCj4gPiAtIFVwZGF0ZSBhbGwgcGF0Y2hlcyB0byBhZGRyZXNzIHJldmlldyBjb21tZW50cyBm
cm9tIEZyZWRpYW5vDQo+ID4gLSBUZXN0ZWQgdGhpcyBzZXJpZXMgd2l0aCBtc2RraDI2NGVuYy9k
ZWMgcGx1Z2lucyB0aGF0IHdpbGwgYmUgYWRkZWQNCj4gPiAgIGluIGFub3RoZXIgcGF0Y2ggc2Vy
aWVzDQo+ID4NCj4gPiBDYzogRnJlZGlhbm8gWmlnbGlvIDxmcmVkZHk3N0BnbWFpbC5jb20+DQo+
ID4gQ2M6IEdlcmQgSG9mZm1hbm4gPGtyYXhlbEByZWRoYXQuY29tPg0KPiA+IENjOiBNYXJjLUFu
ZHLDqSBMdXJlYXUgPG1hcmNhbmRyZS5sdXJlYXVAcmVkaGF0LmNvbT4NCj4gPiBDYzogRG9uZ3dv
biBLaW0gPGRvbmd3b24ua2ltQGludGVsLmNvbT4NCj4gPg0KPiA+IFZpdmVrIEthc2lyZWRkeSAo
Nik6DQo+ID4gICBkY2M6IENoZWNrIHRvIHNlZSBpZiB0aGUgY2xpZW50IHN1cHBvcnRzIG11bHRp
cGxlIGNvZGVjcyAodjIpDQo+ID4gICBkY2M6IENyZWF0ZSBhIHN0cmVhbSBhc3NvY2lhdGVkIHdp
dGggZ2xfZHJhdyBmb3Igbm9uLWdsIGNsaWVudHMgKHY2KQ0KPiA+ICAgZGNjLXNlbmQ6IEVuY29k
ZSBhbmQgc2VuZCBnbF9kcmF3IHN0cmVhbSBkYXRhIHRvIHRoZSByZW1vdGUgY2xpZW50DQo+ID4g
ICAgICh2NCkNCj4gPiAgIGdzdHJlYW1lci1lbmNvZGVyOiBBZGQgYW4gZW5jb2RlciBmdW5jdGlv
biB0aGF0IHRha2VzIGRtYWJ1ZiBmZCBhcw0KPiA+ICAgICBpbnB1dCAodjMpDQo+ID4gICBnc3Ry
ZWFtZXItZW5jb2RlcjogTWFwIHRoZSBkcm0gZm9ybWF0IHRvIGFwcHJvcHJpYXRlIEdzdHJlYW1l
cg0KPiBmb3JtYXQNCj4gPiAgIHZpZGVvLXN0cmVhbTogRG9uJ3Qgc3RvcCBhIHN0cmVhbSBhc3Nv
Y2lhdGVkIHdpdGggZ2xfZHJhdyAodjIpDQo+ID4NCj4gPiAgY29uZmlndXJlLmFjICAgICAgICAg
ICAgICAgICAgICAgfCAgIDIgKy0NCj4gPiAgbWVzb24uYnVpbGQgICAgICAgICAgICAgICAgICAg
ICAgfCAgIDIgKy0NCj4gPiAgc2VydmVyL2RjYy1zZW5kLmNwcCAgICAgICAgICAgICAgfCAxNTkg
KysrKysrKysrKysrKysrKy0tLS0NCj4gPiAgc2VydmVyL2RjYy5jcHAgICAgICAgICAgICAgICAg
ICAgfCAgMzEgKystLQ0KPiA+ICBzZXJ2ZXIvZGNjLmggICAgICAgICAgICAgICAgICAgICB8ICAg
NiArDQo+ID4gIHNlcnZlci9kaXNwbGF5LWNoYW5uZWwtcHJpdmF0ZS5oIHwgICAxICsNCj4gPiAg
c2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jcHAgICAgICAgfCAgIDEgKw0KPiA+ICBzZXJ2ZXIvZ3N0
cmVhbWVyLWVuY29kZXIuYyAgICAgICB8IDI0NiArKysrKysrKysrKysrKysrKysrKysrKysrKy0t
LS0tDQo+ID4gIHNlcnZlci92aWRlby1lbmNvZGVyLmggICAgICAgICAgIHwgIDE0ICsrDQo+ID4g
IHNlcnZlci92aWRlby1zdHJlYW0uY3BwICAgICAgICAgIHwgMjA1ICsrKysrKysrKysrKysrKysr
KysrKystLS0tDQo+ID4gIHNlcnZlci92aWRlby1zdHJlYW0uaCAgICAgICAgICAgIHwgICA0ICsN
Cj4gPiAgMTEgZmlsZXMgY2hhbmdlZCwgNTYzIGluc2VydGlvbnMoKyksIDEwOCBkZWxldGlvbnMo
LSkNCj4gPg0KPiA+IC0tDQo+ID4gMi40NS4xDQo+ID4NCg==
