Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 472367A40B1
	for <lists+spice-devel@lfdr.de>; Mon, 18 Sep 2023 07:56:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEBDE10E0E0;
	Mon, 18 Sep 2023 05:56:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 854F310E0E0
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Sep 2023 05:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695016574; x=1726552574;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=baIEr4/BdfcnZVHBJiYXUIhZHfmT1sQUs7AHgTWxwn0=;
 b=U9xJlBv6Uq0ZFLiXKvZPnJJ7LbpA9Kz8/QHjpIQSu9i28kEwrjblvHai
 h0UmuVy5VO9/73sLH53qhErlzxMZSt/Czv4JItIttiQR4r9lkYGrBYaNF
 +bt2SbG+6NcuPcOX5tqkRV3rUiriMhVI7f3P3n0W9r7vZOe3p/tP6GT+R
 jw9bAHj8J3U0CCW9lCIHtnzMLxcesDjhCs8ojwnlMGCHuLBtB1yqcOX1B
 wtnnxhIIZR5eCQ4nY50IdMhE/0XkDPq3Jr23z1w+LEIRw6tvnOlqpLFDw
 XaVErJqH8egmfV7QqATvGzf4vGlOT5642XQFfFGREHevqFNuwu7x7lnlk w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="358988502"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="358988502"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 22:56:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="695402493"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="695402493"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2023 22:56:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 17 Sep 2023 22:56:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 17 Sep 2023 22:56:12 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 17 Sep 2023 22:56:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mcYTNB4Vkub3Du1Df1zU6Ed0gzFI2E9d72C0gQpqP/EGStJOqxU3YGkL6s8QTL2uVhgTB5ewEMSFfMf3ZYSsT+jTgSUeDhEvyAWI4/VYIyZ907OiRAYSqJK3h0YarY0eZnkQwze6nyCGV/ju7PpR3YMppkikOLfGHdCm1pINv/w3hGZMLiUf7jFveLKhNUsUzM2XfYBJXH+C9ZA7F2AfjmfVkZRd1zxvyfzoOkB+0TZtDrLc/pXDglexbcUtrIZ1iKHIvpFMUtgYp97mDtbUnBskJ8ttHZmZECOe+eUTUuP9l1WqYiVGhitFfZ2vECffl7LntWKrl7zeVv4MVuVkGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=baIEr4/BdfcnZVHBJiYXUIhZHfmT1sQUs7AHgTWxwn0=;
 b=cT2OdnC/GR7GDvgwMVfvJYIDbgfHgdPfrrUQ+9T+k7rldxs7ab7OJluHUTBYsmbQs6vt855OqmspVzZ+U3YZnZkb4ItI2U8jmd5BdXxAPghn0IoGnFpAHA/vZeN5viYDsK5QdJE4Jf3PiBz1DFjbn9E0Rj8Y/kXH7c4xC6l01TsH7Lgy1lbwrvleX6SiA9EWq7yvF+v47eig7GhLRFefiT7jQ3ro004Mc/20gz8VCJanKy3W4VEcH1Iq3z1eWuMxnMffqR+dJNaIn66mdov+M53jFtFGVwp4yFe/bhkfU8A0GDwHBJuUW67Jm2bo5D+WmYoHYra/3BslH6XlkYGggA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by IA1PR11MB7727.namprd11.prod.outlook.com (2603:10b6:208:3f1::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.24; Mon, 18 Sep
 2023 05:56:10 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::fe3f:b90e:4eaa:fac8]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::fe3f:b90e:4eaa:fac8%7]) with mapi id 15.20.6792.024; Mon, 18 Sep 2023
 05:56:10 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>, "spice-devel@lists.freedesktop.org"
 <spice-devel@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] gstreamer-encoder: Use a h/w based encoder with
 Intel GPUs if possible (v2)
Thread-Index: AQHZ52w4BxhAra39xEmq2CTNWrFsyLAcOxcAgAO2YzA=
Date: Mon, 18 Sep 2023 05:56:09 +0000
Message-ID: <IA0PR11MB7185B576D197EC0C21446B3DF8FBA@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-6-vivek.kasireddy@intel.com>
 <CAHt6W4d3MuzB2f610xkSrkVVvSVdePxy8=JJ5x=H8in9uQDKkw@mail.gmail.com>
In-Reply-To: <CAHt6W4d3MuzB2f610xkSrkVVvSVdePxy8=JJ5x=H8in9uQDKkw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|IA1PR11MB7727:EE_
x-ms-office365-filtering-correlation-id: 081ddee1-ff99-4e03-40df-08dbb80bf4ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kGFEEab5f2Gbg86vAyJ3X2hLL06jEMC1qGYC4bJg7ab9zeQpD6NIxdH1JxYhoegxqd/XQzl7Pm5UsAlxS6RsjzyM/zlceOEMOAxHv7eRozjO1Y9G7d+z8AUiLiLf5252Ns7hsBBO0qXI54u/17wwNWtYSJhm//zRH/lQFYiRKc2CjjfL4PmOMKlcFUh7pBTjh1nXvu8H1fq7G5EiEzW5fWzo+0OtoqybWvQ6ZbpsE7+1GpjGnyfCm3dTTp5zbjykRdcRRoeLHVbgKKKb6hevl0z2oCesAANjuCBq5bHdouT2METO9Gzryl9N58TYGNdApFiziMoYAmR75gKjSremiNsg1ZgD7zThVyNV2oUgh/oh7/DLie2CTvkt6wPDbaC/mwfotwmf6Q4+BPdJ/AUt8KOhwJXYjKwc9wWLqoB+6eViPJM/XFfOaWgukvHdo1d1qlOoubHdxPPrfB/l542LzOMLEWcV1Vubcj4xO2mTswabd06+xBBOS8BCDHS6xGrX93n0+6YSA8RCpMgSOO7flAnAPnTj/xMgsMekDyLlGXaSExdUeDVFP06ifRsp/kJJRCMZ8faoSVN6+C86ssxsSnFyP0qkVCm5Nc1NjKTkes/v0lVh42x9u4WNyPwZItw6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(346002)(396003)(39860400002)(136003)(1800799009)(186009)(451199024)(52536014)(26005)(5660300002)(107886003)(8936002)(4326008)(8676002)(2906002)(86362001)(55016003)(82960400001)(38100700002)(122000001)(38070700005)(33656002)(83380400001)(66946007)(6506007)(7696005)(76116006)(66556008)(54906003)(64756008)(110136005)(66446008)(66476007)(478600001)(71200400001)(9686003)(41300700001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?akdsa2hyNjFWVjM3UFJaQURVRElGdnBLV241aS9Wb2kvYTQ3bG5tRkhla1FC?=
 =?utf-8?B?eUptMDBxeHZhVEZRZ3VHNVoxVkpSSXluYXJsd0R3U1pGcHJvamY0WnI4SWZM?=
 =?utf-8?B?YWJRaFpaTlE4bjJrK0ZrNU9OVEQzK29HSzMwRWYwZTZZa2c5SG5SVlROUkU4?=
 =?utf-8?B?OEVvKyt3NzZRR1YrQisybzBpZ3kyNW5WZ1g5c3p0NkpRdk8yZWpkVmptcldu?=
 =?utf-8?B?cm8xdVhoZTBENUFuZFZTRW9hNWZUY0VmRmpZYTZ2dHhCTHpRQ3Z3SnBsRlUy?=
 =?utf-8?B?Y0xqR3oxcVJWNGRJSU5JRU5ROStPUm1ENVA4SURzenFRWmpEU3JtQ21IYXVi?=
 =?utf-8?B?MDJnZy9VZnBIVEtsbzlHbHBjaXhFTWpxRDBkRUZvLytuSjg5TzEwZzgvL2gr?=
 =?utf-8?B?SEZtTGQrUXlXQmk5bk0zaXhuWWFjVFdmQS9ySlM4cjVzY2lKV0NTMFhlZHJ1?=
 =?utf-8?B?RjZQQ3pPQUpzelhkZTlUVkQyd0NmanFBay95OFV6YkZ2a25wVkZzMDVrZnhw?=
 =?utf-8?B?ZXN1SnJCK1p4dThvVVF1REw4L2diWGZ1eHR5NWlBbXFCV3pUZ05FVEdXQTR0?=
 =?utf-8?B?ejVGc2Q4TmJCZFl2WnpUZGU3R2VLcDB5U25EV0Zrc0ptS2JVdDBCUXZIVGhY?=
 =?utf-8?B?LzNPU2k0VzZFb2RGc3p4WDIzZThCTTB2RmVKZm1HM3MvcTg1OTNUSFRwbFNw?=
 =?utf-8?B?RHRMVUh2b2FLT2dNY3REaWxlOXlDZVFOVkxOUzMwSHV1aTNvOFB2TERHRm4y?=
 =?utf-8?B?amlDYlRWWjU5cHJaNStlejI5RFdUVjFNTkoxOWFwMTk5K050R016dFFkY2FT?=
 =?utf-8?B?dGNvWXAxTzJtWXhzUmdyeUhjR1Z4cVA1a0xrck1hUkVRb1ZaenlKTDBGTDc5?=
 =?utf-8?B?YVJ0Qm5od1FISGlqcHdwd3pIS3pkQ2RDNy92S1lCSDJzV3lmRlZ1NDNmOUIr?=
 =?utf-8?B?clNKMjRsRmVGOGV6NDBpeDVjTkVDeEJCZExxSkgwK0FpQ2R0SlJqZmFzcDNo?=
 =?utf-8?B?bFJqdFBiUDdQOW1qMU5UcWo5SjAxcjdRZWsxd1BwVDZWTlhPU3RPblhtUm9j?=
 =?utf-8?B?UHY2cnFXNlJ4M2xZdTlqYTJzVzdpYjlYVUZGYXNDejZJMGc0T2Fjc2RKZGpz?=
 =?utf-8?B?TWZyNEtMaDVtMUFSaVN6ZHdxUzIxeWV2a3FMUzlWR2ZUbVNuRkRPbzdJTjhv?=
 =?utf-8?B?ODZUQUV5aDJEUCtPYUVSNjg5c1ptWWpHZ25ENHhQYUtpUDBpbW4wOThYRDN2?=
 =?utf-8?B?bHRFR2hCNTdXMmpaUUxvQjU2ZDdUYngxcGZRSUhZekU3UDN3SUpsK0diRXRW?=
 =?utf-8?B?NTNwTlRLOENtMldEMFlCelJ2OU1ualJ5THdHZlBpemQ3QWtabFJQNjVvVVN4?=
 =?utf-8?B?aUNVMFNKQ1lJR1ZSZkRyY3dDNk11Sk5YRXRJZmViL1BGZi9RTTYvMUdZVDZM?=
 =?utf-8?B?V210bjJ6VGxhUFBhY0JvV3loNklSZjdiRGJOQnZRQjROc2ZYZVJmY0tMa1Yv?=
 =?utf-8?B?ek42cjJDQlg5d3dHUVZOSDlCVi9tQUxxT3dKenJ0TGEvSlNyZmsvNjR6QWZP?=
 =?utf-8?B?bGxJOERBV1BzaFJkSzlNNkZnN3VPT0o2ZGdEd0NSeEdqbFFEV282V0VmN3Mv?=
 =?utf-8?B?UnJZVFpSWjdDdDZIUit2RWdDUCsxOFV4OWpGY3J2OExxYW1LUkhCMUd3bW1N?=
 =?utf-8?B?US9zZ0ZYZlplcWRKZWZ5MWFSc0pRK0pGM3QwTTRsSmw1TTdHTHhlY25jeGhF?=
 =?utf-8?B?WllKcCtoY1hLM2dCTWR4VW5WdTBhK0Mvd1VycW9UU29aU0lyY0pMTGpOdlBj?=
 =?utf-8?B?Mjc2Q1JaYUxNdTRlMThQTGJjQ0tqNVd6RnNSd1JKc0l4ZWRkZXI1VzMrbmRB?=
 =?utf-8?B?cjNwVk5VdTdJWDdlSVMyL3AzTU5ZRzQ0ZjNzcWFCOVBRM2V2ZVBQWnpBTDBs?=
 =?utf-8?B?aVVBMkZBd2ExZ2NVZnVzTTl1VUN2eGRqTk1sd25FY3pydnpuR2gyeHZMdVVG?=
 =?utf-8?B?SGx3a0tXbW5iY1cySWM5VmR3UWZuTkZwdnJPMGppaGxZMjRXbXVBc2tFVlly?=
 =?utf-8?B?ZW4ycGYxdU8yTWphUGhRM095SmlDaGQ0K3F2YzhkT0NZczN4ci9XYmVjVitn?=
 =?utf-8?Q?QvRJeKhyejG4q134Gvd+wGUju?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 081ddee1-ff99-4e03-40df-08dbb80bf4ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2023 05:56:09.7470 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L9jaJ6jVOIqOPpRnvCD/GdUb8Hm5qREKFVC39W1lWdg3xROgtPKd/H1Wd8TFQI3kerfGDrOI8L3PowiPsieRyZ6kh9B609oyeA6+X9QLkPA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7727
X-OriginatorOrg: intel.com
Subject: Re: [Spice-devel] [PATCH 2/2] gstreamer-encoder: Use a h/w based
 encoder with Intel GPUs if possible (v2)
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
Cc: "Mazlan, Hazwan Arif" <hazwan.arif.mazlan@intel.com>, "Teng,
 Jin Chung" <jin.chung.teng@intel.com>, Gerd Hoffmann <kraxel@redhat.com>, "Kim,
 Dongwon" <dongwon.kim@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkgRnJlZGlhbm8sDQoNCj4gPg0KPiA+IE9uY2UgaXQgaXMgZGV0ZXJtaW5lZCB0aGF0IGFuIElu
dGVsIEdQVSBpcyBhdmFpbGFibGUvYWN0aXZlIChhZnRlcg0KPiA+IGxvb2tpbmcgaW50byB1ZGV2
J3MgZGF0YWJhc2UpLCB3ZSB0cnkgdG8gc2VlIGlmIHRoZXJlIGlzIGEgaC93DQo+ID4gYmFzZWQg
ZW5jb2RlciAoZWxlbWVudCkgYXZhaWxhYmxlIChpbiBHc3RyZWFtZXIncyByZWdpc3RyeSBjYWNo
ZSkNCj4gPiBmb3IgdGhlIHVzZXIgc2VsZWN0ZWQgdmlkZW8gY29kZWMuIEluIG90aGVyIHdvcmRz
LCBpZiB3ZSBmaW5kIHRoYXQNCj4gPiB0aGUgSW50ZWwgTWVkaWEgU0RLIEdzdHJlYW1lciBwbHVn
aW4gKGxpYmdzdG1zZGsuc28pIGFuZCBhc3NvY2lhdGVkDQo+ID4gbGlicmFyaWVzIChzdWNoIGFz
IHZhIG9yIHZhYXBpKSBhcmUgYWxsIGluc3RhbGxlZCBwcm9wZXJseSwgd2UgYWRkDQo+ID4gdGhl
IGFwcHJvcHJpYXRlIGgvdyBiYXNlZCBlbmNvZGVyIGFuZCBwb3N0LXByb2Nlc3Nvci9jb252ZXJ0
ZXINCj4gPiBlbGVtZW50cyB0byB0aGUgcGlwZWxpbmUgKGFsb25nIHdpdGggYW55IHJlbGV2YW50
IG9wdGlvbnMpIGluc3RlYWQNCj4gPiBvZiB0aGUgcy93IGJhc2VkIGVsZW1lbnRzLg0KPiA+DQo+
ID4gRm9yIGV4YW1wbGUsIGlmIHRoZSB1c2VyIHNlbGVjdHMgaDI2NCBhcyB0aGUgcHJlZmVycmVk
IGNvZGVjIGZvcm1hdCwNCj4gPiBtc2RraDI2NGVuYyBhbmQgdmFwb3N0cHJvYyB3aWxsIGJlIHBy
ZWZlcnJlZCBpbnN0ZWFkIG9mIHgyNjRlbmMNCj4gPiBhbmQgdmlkZW9jb252ZXJ0Lg0KPiA+DQo+
ID4gdjI6IChhZGRyZXNzZWQgc29tZSByZXZpZXcgY29tbWVudHMgZnJvbSBGcmVkaWFubykNCj4g
PiAtIE1vdmVkIHRoZSB1ZGV2IGhlbHBlciBpbnRvIHNwaWNlLWNvbW1vbg0KPiA+IC0gUmVmYWN0
b3JlZCB0aGUgY29kZSB0byBjaG9vc2UgcGx1Z2lucyBpbiBvcmRlciBtc2RrID4gdmEgPiB2YWFw
aQ0KPiA+DQo+ID4gQ2M6IEZyZWRpYW5vIFppZ2xpbyA8ZnJlZGR5NzdAZ21haWwuY29tPg0KPiA+
IENjOiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4NCj4gPiBDYzogTWFyYy1BbmRy
w6kgTHVyZWF1IDxtYXJjYW5kcmUubHVyZWF1QHJlZGhhdC5jb20+DQo+ID4gQ2M6IERvbmd3b24g
S2ltIDxkb25nd29uLmtpbUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogVml2ZWsgS2Fz
aXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPg0KPiA+IENvLWRldmVsb3BlZC1ieTog
SmluIENodW5nIFRlbmcgPGppbi5jaHVuZy50ZW5nQGludGVsLmNvbT4NCj4gPiBDby1kZXZlbG9w
ZWQtYnk6IEhhendhbiBBcmlmIE1hemxhbiA8aGF6d2FuLmFyaWYubWF6bGFuQGludGVsLmNvbT4N
Cj4gPiAtLS0NCj4gPiAgc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMgfCA5Ng0KPiArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgOTMg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9zZXJ2
ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYyBiL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jDQo+ID4g
aW5kZXggMDU3NTA5YjUuLjQ0NjY2ZjQyIDEwMDY0NA0KPiA+IC0tLSBhL3NlcnZlci9nc3RyZWFt
ZXItZW5jb2Rlci5jDQo+ID4gKysrIGIvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMNCj4gPiBA
QCAtMzEsNiArMzEsNyBAQA0KPiA+ICAjaW5jbHVkZSAicmVkLWNvbW1vbi5oIg0KPiA+ICAjaW5j
bHVkZSAidmlkZW8tZW5jb2Rlci5oIg0KPiA+ICAjaW5jbHVkZSAidXRpbHMuaCINCj4gPiArI2lu
Y2x1ZGUgImNvbW1vbi91ZGV2LmgiDQo+ID4NCj4gPg0KPiA+ICAjZGVmaW5lIFNQSUNFX0dTVF9E
RUZBVUxUX0ZQUyAzMA0KPiA+IEBAIC05MTMsMTQgKzkxNCw5NCBAQCBzdGF0aWMgY29uc3QgZ2No
YXIqIGdldF9nc3RfY29kZWNfbmFtZShjb25zdA0KPiBTcGljZUdzdEVuY29kZXIgKmVuY29kZXIp
DQo+ID4gICAgICB9DQo+ID4gIH0NCj4gPg0KPiA+ICtzdGF0aWMgY29uc3QgY2hhciB2aWRlb19j
b2RlY3NbXVs4XSA9IHsNCj4gPiArICAgIHsgIiIgfSwNCj4gPiArICAgIHsgIm1qcGVnIiB9LA0K
PiA+ICsgICAgeyAidnA4IiB9LA0KPiA+ICsgICAgeyAiaDI2NCIgfSwNCj4gPiArICAgIHsgInZw
OSIgfSwNCj4gPiArICAgIHsgImgyNjUiIH0sDQo+ID4gK307DQo+ID4gKw0KPiA+ICtzdGF0aWMg
Ym9vbCBnc3RfZmVhdHVyZXNfbG9va3VwKGNvbnN0IGdjaGFyICpmZWF0dXJlX25hbWUpDQo+ID4g
K3sNCj4gPiArICAgIEdzdFJlZ2lzdHJ5ICpyZWdpc3RyeTsNCj4gPiArICAgIEdzdFBsdWdpbkZl
YXR1cmUgKmZlYXR1cmU7DQo+ID4gKw0KPiA+ICsgICAgcmVnaXN0cnkgPSBnc3RfcmVnaXN0cnlf
Z2V0KCk7DQo+ID4gKyAgICBpZiAoIXJlZ2lzdHJ5KSB7DQo+ID4gKyAgICAgICAgcmV0dXJuIGZh
bHNlOw0KPiA+ICsgICAgfQ0KPiA+ICsNCj4gPiArICAgIGZlYXR1cmUgPSBnc3RfcmVnaXN0cnlf
bG9va3VwX2ZlYXR1cmUocmVnaXN0cnksIGZlYXR1cmVfbmFtZSk7DQo+ID4gKyAgICBpZiAoIWZl
YXR1cmUpIHsNCj4gPiArICAgICAgICByZXR1cm4gZmFsc2U7DQo+ID4gKyAgICB9DQo+ID4gKw0K
PiA+ICsgICAgZ3N0X29iamVjdF91bnJlZihmZWF0dXJlKTsNCj4gPiArICAgIHJldHVybiB0cnVl
Ow0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgZ2NoYXIgKmZpbmRfYmVzdF9wbHVnaW4oY29u
c3QgZ2NoYXIgKmNvZGVjX25hbWUpDQo+ID4gK3sNCj4gPiArICAgIGNvbnN0IGNoYXIgKnBsdWdp
bnNbM10gPSB7Im1zZGsiLCAidmEiLCAidmFhcGkifTsNCj4gPiArICAgIGdjaGFyICpmZWF0dXJl
X25hbWU7DQo+ID4gKyAgICBpbnQgaTsNCj4gPiArDQo+ID4gKyAgICBmb3IgKGkgPSAwOyBpIDwg
MzsgaSsrKSB7DQo+ID4gKyAgICAgICAgZmVhdHVyZV9uYW1lID0gIWNvZGVjX25hbWUgPyBnX3N0
cmNvbmNhdChwbHVnaW5zW2ldLCAicG9zdHByb2MiLA0KPiBOVUxMKSA6DQo+IA0KPiBUaGUgbmFt
ZSBmb3IgdGhlIG1zZGsgcG9zdHByb2MgaXMgbXNka3ZwcCwgbm90IG1zZGtwb3N0cHJvYy4NClJp
Z2h0LCB0aGUgVlBQIGVsZW1lbnQgYXNzb2NpYXRlZCB3aXRoIG1zZGsgaXMgaW5kZWVkIG1zZGt2
cHAgYnV0IHdlIGRvIG5vdA0KaW50ZW5kIHRvIHVzZSBtc2RrdnBwIGN1cnJlbnRseSBhcyBpdCBo
YXMgYnVncyB0aGF0IHByZXZlbnQgdGhlIHBpcGVsaW5lIGZyb20NCndvcmtpbmcgY29ycmVjdGx5
LiBBbmQsIGl0IGlzIG5vdCBjbGVhciB3aGVuIHRoZXNlIGJ1Z3MgYXJlIGdvaW5nIHRvIGJlIGZp
eGVkLg0KVGhhdCdzIHdoeSB3ZSBwcmVmZXIgdG8gdXNlIGVpdGhlciB2YXBvc3Rwcm9jIG9yIHZh
YXBpcG9zdHByb2MgZm9yIG5vdy4NCg0KPiBMb29raW5nIGF0IHRoaXMgZnVuY3Rpb24gYW5kIHRo
ZSBuZXh0IG9uZSBpdCBsb29rcyBjb3JyZWN0IHRvIHVzZSwNCj4gbGV0J3Mgc2F5IGFuIGVuY29k
ZXIgZnJvbSBtc2RrIChsaWtlIG1zZGt2cDllbmMpIGFuZCB0aGUgdmFhcGkgcG9zdA0KPiBwcm9j
ZXNzb3IgKGxpa2UgdmFhcGlwb3N0cHJvYyksIGJ1dCBpdCBzZWVtcyB3cm9uZyB0byBtZS4NCj4g
DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZ19zdHJjb25jYXQocGx1Z2luc1tpXSwgY29k
ZWNfbmFtZSwgImVuYyIsIE5VTEwpOw0KPiA+ICsgICAgICAgIGlmICghZ3N0X2ZlYXR1cmVzX2xv
b2t1cChmZWF0dXJlX25hbWUpKSB7DQo+ID4gKyAgICAgICAgICAgIGdfZnJlZShmZWF0dXJlX25h
bWUpOw0KPiA+ICsgICAgICAgICAgICBmZWF0dXJlX25hbWUgPSBOVUxMOw0KPiA+ICsgICAgICAg
ICAgICBjb250aW51ZTsNCj4gPiArICAgICAgICB9DQo+ID4gKyAgICAgICAgYnJlYWs7DQo+ID4g
KyAgICB9DQo+ID4gKyAgICByZXR1cm4gZmVhdHVyZV9uYW1lOw0KPiA+ICt9DQo+ID4gKw0KPiA+
ICtzdGF0aWMgdm9pZCB0cnlfaW50ZWxfaHdfcGx1Z2lucyhjb25zdCBnY2hhciAqY29kZWNfbmFt
ZSwgZ2NoYXINCj4gKipjb252ZXJ0ZXIsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGdjaGFyICoqZ3N0ZW5jX25hbWUsIGdjaGFyICoqZ3N0ZW5jX29wdHMpDQo+ID4gK3sN
Cj4gPiArICAgIGdjaGFyICplbmNvZGVyID0gZmluZF9iZXN0X3BsdWdpbihjb2RlY19uYW1lKTsN
Cj4gPiArICAgIGlmICghZW5jb2Rlcikgew0KPiA+ICsgICAgICAgIHJldHVybjsNCj4gPiArICAg
IH0NCj4gPiArICAgIGdjaGFyICp2cHAgPSBmaW5kX2Jlc3RfcGx1Z2luKE5VTEwpOw0KPiA+ICsg
ICAgaWYgKCF2cHApIHsNCj4gPiArICAgICAgICByZXR1cm47DQo+ID4gKyAgICB9DQo+ID4gKw0K
PiA+ICsgICAgZ19mcmVlKCpjb252ZXJ0ZXIpOw0KPiA+ICsgICAgZ19mcmVlKCpnc3RlbmNfbmFt
ZSk7DQo+ID4gKyAgICBnX2ZyZWUoKmdzdGVuY19vcHRzKTsNCj4gPiArDQo+ID4gKyAgICAqZ3N0
ZW5jX25hbWUgPSBlbmNvZGVyOw0KPiA+ICsgICAgaWYgKHN0cnN0cihlbmNvZGVyLCAibXNkayIp
KSB7DQo+ID4gKyAgICAgICAgKmdzdGVuY19vcHRzID0gZ19zdHJkdXAoImFzeW5jLWRlcHRoPTEg
cmF0ZS1jb250cm9sPTMgZ29wLXNpemU9MQ0KPiB0dW5lPTE2IGItZnJhbWVzPTAgdGFyZ2V0LXVz
YWdlPTcgbWluLXFwPTE1IG1heC1xcD0zNSIpOw0KPiANCj4gVGhlc2Ugb3B0aW9ucyBhcmUgbmlj
ZSBmb3IgaDI2NCAoYW5kIHByb2JhYmx5IGgyNjUpIGJ1dCBhcmUgd3JvbmcgZm9yDQo+IHZwOSBh
bmQgcHJvYmFibHkgbWpwZWcuDQpZb3UgYXJlIHJpZ2h0OyB0aGVzZSBvcHRpb25zIG1heSBub3Qg
YmUgY29ycmVjdCBpZiB3ZSB1c2UgVlA4IG9yIFZQOSBhcyB0aGUgY29kZWMuDQpASmluIENodW5n
LCB3aGF0IGFyZSB0aGUgY29ycmVjdCBvcHRpb25zIHRvIHVzZSBpbiB0aGlzIGNhc2U/DQoNCj4g
DQo+ID4gKyAgICB9IGVsc2UgaWYgKHN0cnN0cihlbmNvZGVyLCAidmFhcGkiKSkgew0KPiA+ICsg
ICAgICAgICpnc3RlbmNfb3B0cyA9IGdfc3RyZHVwKCJyYXRlLWNvbnRyb2w9Y3FwIG1heC1iZnJh
bWVzPTAgbWluLQ0KPiBxcD0xNSBtYXgtcXA9MzUiKTsNCj4gPiArICAgIH0gZWxzZSB7DQo+ID4g
KyAgICAgICAgKmdzdGVuY19vcHRzID0gZ19zdHJkdXAoInJhdGUtY29udHJvbD0xNiBiLWZyYW1l
cz0wIHRhcmdldC11c2FnZT03DQo+IG1pbi1xcD0xNSBtYXgtcXA9MzUiKTsNCj4gPiArICAgIH0N
Cj4gDQo+IFNpbWlsYXIgY29tbWVudCBmb3IgdGhlc2UuDQo+IA0KPiA+ICsNCj4gPiArICAgIGlm
IChzdHJzdHIodnBwLCAidmFhcGkiKSkgew0KPiA+ICsgICAgICAgICpjb252ZXJ0ZXIgPSBnX3N0
cmNvbmNhdCh2cHAsICIgISB2aWRlby94LQ0KPiByYXcobWVtb3J5OlZBU3VyZmFjZSksZm9ybWF0
PU5WMTIiLCBOVUxMKTsNCj4gPiArICAgIH0gZWxzZSB7DQo+ID4gKyAgICAgICAgKmNvbnZlcnRl
ciA9IGdfc3RyY29uY2F0KHZwcCwgIiAhIHZpZGVvL3gtDQo+IHJhdyhtZW1vcnk6VkFNZW1vcnkp
LGZvcm1hdD1OVjEyIiwgTlVMTCk7DQo+ID4gKyAgICB9DQo+IA0KPiBGcm9tIGdzdC1pbnNwZWN0
IG1zZGt2cHAgZG9lcyBub3Qgc3VwcG9ydCBhbnkgb2YgdGhlc2UuIElzIHRoaXMgZXhwZWN0ZWQ/
DQpBcyBleHBsYWluZWQgYWJvdmUsIHdlIGRvIG5vdCB3YW50IHRvIHVzZSBtc2RrdnBwIGF0IHRo
aXMgdGltZS4NCg0KVGhhbmtzLA0KVml2ZWsNCg0KPiANCj4gPiArICAgIGdfZnJlZSh2cHApOw0K
PiA+ICt9DQo+ID4gKw0KPiA+ICBzdGF0aWMgZ2Jvb2xlYW4gY3JlYXRlX3BpcGVsaW5lKFNwaWNl
R3N0RW5jb2RlciAqZW5jb2RlcikNCj4gPiAgew0KPiA+ICAjaWZkZWYgSEFWRV9HU1RSRUFNRVJf
MF8xMA0KPiA+IC0gICAgY29uc3QgZ2NoYXIgKmNvbnZlcnRlciA9ICJmZm1wZWdjb2xvcnNwYWNl
IjsNCj4gPiArICAgIGdjaGFyICpjb252ZXJ0ZXIgPSBnX3N0cmR1cCgiZmZtcGVnY29sb3JzcGFj
ZSIpOw0KPiA+ICAjZWxzZQ0KPiA+IC0gICAgY29uc3QgZ2NoYXIgKmNvbnZlcnRlciA9ICJ2aWRl
b2NvbnZlcnQgISB2aWRlby94LXJhdyxmb3JtYXQ9TlYxMiI7DQo+ID4gKyAgICBnY2hhciAqY29u
dmVydGVyID0gZ19zdHJkdXAoInZpZGVvY29udmVydCAhIHZpZGVvL3gtDQo+IHJhdyxmb3JtYXQ9
TlYxMiIpOw0KPiA+ICAjZW5kaWYNCj4gPiAtICAgIGNvbnN0IGdjaGFyKiBnc3RlbmNfbmFtZSA9
IGdldF9nc3RfY29kZWNfbmFtZShlbmNvZGVyKTsNCj4gPiArICAgIGdjaGFyKiBnc3RlbmNfbmFt
ZSA9IGdfc3RyZHVwKGdldF9nc3RfY29kZWNfbmFtZShlbmNvZGVyKSk7DQo+ID4gICAgICBpZiAo
IWdzdGVuY19uYW1lKSB7DQo+ID4gICAgICAgICAgcmV0dXJuIEZBTFNFOw0KPiA+ICAgICAgfQ0K
PiA+IEBAIC05NzMsMTIgKzEwNTQsMjEgQEAgc3RhdGljIGdib29sZWFuDQo+IGNyZWF0ZV9waXBl
bGluZShTcGljZUdzdEVuY29kZXIgKmVuY29kZXIpDQo+ID4gICAgICAgICAgcmV0dXJuIEZBTFNF
Ow0KPiA+ICAgICAgfQ0KPiA+DQo+ID4gKyAgICBjb25zdCBjaGFyICpjb2RlY19uYW1lID0gdmlk
ZW9fY29kZWNzW2VuY29kZXItPmJhc2UuY29kZWNfdHlwZV07DQo+ID4gKyAgICBHcHVWZW5kb3Ig
dmVuZG9yID0gc3BpY2VfdWRldl9kZXRlY3RfZ3B1KCk7DQo+ID4gKyAgICBpZiAodmVuZG9yID09
IEdQVV9WRU5ET1JfSU5URUwpIHsNCj4gPiArICAgICAgICB0cnlfaW50ZWxfaHdfcGx1Z2lucyhj
b2RlY19uYW1lLCAmY29udmVydGVyLCAmZ3N0ZW5jX25hbWUsDQo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgJmdzdGVuY19vcHRzKTsNCj4gPiArICAgIH0NCj4gPiArDQo+ID4gICAg
ICBHRXJyb3IgKmVyciA9IE5VTEw7DQo+ID4gICAgICBnY2hhciAqZGVzYyA9IGdfc3RyZHVwX3By
aW50ZigiYXBwc3JjIGlzLWxpdmU9dHJ1ZSBmb3JtYXQ9dGltZSBkby0NCj4gdGltZXN0YW1wPXRy
dWUgbmFtZT1zcmMgISINCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICIg
JXMgISAlcyBuYW1lPWVuY29kZXIgJXMgISBhcHBzaW5rIG5hbWU9c2luayIsDQo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb252ZXJ0ZXIsIGdzdGVuY19uYW1lLCBnc3Rl
bmNfb3B0cyk7DQo+ID4gICAgICBzcGljZV9kZWJ1ZygiR1N0cmVhbWVyIHBpcGVsaW5lOiAlcyIs
IGRlc2MpOw0KPiA+ICAgICAgZW5jb2Rlci0+cGlwZWxpbmUgPSBnc3RfcGFyc2VfbGF1bmNoX2Z1
bGwoZGVzYywgTlVMTCwNCj4gR1NUX1BBUlNFX0ZMQUdfRkFUQUxfRVJST1JTLCAmZXJyKTsNCj4g
PiArICAgIGdfZnJlZShjb252ZXJ0ZXIpOw0KPiA+ICsgICAgZ19mcmVlKGdzdGVuY19uYW1lKTsN
Cj4gPiAgICAgIGdfZnJlZShnc3RlbmNfb3B0cyk7DQo+ID4gICAgICBnX2ZyZWUoZGVzYyk7DQo+
ID4gICAgICBpZiAoIWVuY29kZXItPnBpcGVsaW5lIHx8IGVycikgew0KPiANCj4gRnJlZGlhbm8N
Cg==
