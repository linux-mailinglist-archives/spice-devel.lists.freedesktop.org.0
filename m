Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEA7668A89
	for <lists+spice-devel@lfdr.de>; Fri, 13 Jan 2023 05:08:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF6BB10E980;
	Fri, 13 Jan 2023 04:08:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5937310E980
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Jan 2023 04:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673582881; x=1705118881;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UCzL5CZvrNVPLmGHqysSwc1Rll7wKvgh4IE0W13yv+k=;
 b=UvbDWbKoS7fWNc/4X7mOXv7b0+5SKCl8ZegCHfzIDEEaowyJ7vLSSSH2
 ruXgnBGwkxL5hmnihLdopQJEx7QTUBeaKi1Hcnyr0a83xaAAJ7g0ymHxT
 MiutGIBEcPkt7GFEH7vdSA98FOtpR9CblB2gxK06MGOtjwQ2srHu/NBv8
 vlbDVVfYBOvPTOwrv2Ju1rsavilLELTrle2TsN4I3ZXI7KLRHKLBHCr5o
 QoDfEIlIEfXAJnC1W+YlKD8vYQuyNqW8Y8+UGC87ImB51JOvS/VOXkoxt
 wlw5foMHc1ZGTQHkEE6hzPI7pPYjuIqPdinnYU9Y3ETKQObmGWQNN/I2D g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="304289297"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="304289297"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 20:08:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="660085545"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="660085545"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 12 Jan 2023 20:08:01 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 20:08:00 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 20:08:00 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 20:07:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xn1xivOF+khkLFblB6jYjAwAeBW3Jp1MGRWP6a3Q6pqzl/j2HhLeyTHhCi4DQ+1b3T5aKipgqVzNkUosIeEBZnzqe7Vgzps+0OYhJGNmLTU+kmGdKOmstMdAzfSpL306nbNO11JxMaF6srvYkSck5zHjf8GcQhPiyiX6woMXb30nsQys2H3R4RPea6ySbhUsjOFPjw+R0FsWBy4zZrH2RoQiIwH7sDoVK5SjBhep4ukigTWgOu1cL1rBJ0MaK+0EKOXpZm7HAMlGfxGCeScIbR3uMQIMlaz0pRLhnOZNELAnvegeVWoOCv0rB991GScRSBF0Vr66oZc7B5tQ4qltfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UCzL5CZvrNVPLmGHqysSwc1Rll7wKvgh4IE0W13yv+k=;
 b=oP8xFI/dkVFEFrs4o5d6p+Fk7xGMntqIjDPcmK5yIb2xc7hPbRHvCvE9wZrDLqn7c3Ed6pF17MBqG3qSkrAOSlxz5tjgpTOPeaH/if3DxCQoiuuTS/DcHPPj24KHA5Dwy9aECJUGZ+u/BezQYVe7+TAZaHsF323N2ccX9euyh8srecSyHvEUVhItCKfRJMyN/xzsKj/wMkVgWiav8qOb274AN3gdzuHYOk+sQv0KB0fS90ERQxDHBVJ2os47+NYXDZ+QWMDiLa00ea48J2lSjj9rgdmGziVDYNR5OCt2TOsDwSNJeBmdn90Bb3kgJ79S84z0ZG6CDugmXdcuf2OCgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:443::14)
 by PH0PR11MB5580.namprd11.prod.outlook.com (2603:10b6:510:e5::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Fri, 13 Jan
 2023 04:07:57 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::6385:771:1bc4:2f6]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::6385:771:1bc4:2f6%4]) with mapi id 15.20.5986.018; Fri, 13 Jan 2023
 04:07:57 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>
Thread-Topic: [Spice-devel] [RFC v1 2/4] display-channel: Add the asyncs
 associated with dmabuf encode
Thread-Index: AQHZJX950rKUYpqyEkW+pcv7mBVUKq6ZGl6AgACdlACAAOjbAIAA5lNQ
Date: Fri, 13 Jan 2023 04:07:57 +0000
Message-ID: <IA0PR11MB71857695213EDA1121D274BDF8C29@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20230111052239.781285-1-vivek.kasireddy@intel.com>
 <20230111052239.781285-3-vivek.kasireddy@intel.com>
 <CAHt6W4cVJP4stB7j0S+ZG3gdgq1NAyRi0EyERcHeOw0ydeapWg@mail.gmail.com>
 <IA0PR11MB71853B6E9AC8B35FA2026C8CF8FD9@IA0PR11MB7185.namprd11.prod.outlook.com>
 <CAHt6W4eUsQ2E2Cfs1cBuyQNmEBWEd7j-sGr47hE2RsWFjwTzaw@mail.gmail.com>
In-Reply-To: <CAHt6W4eUsQ2E2Cfs1cBuyQNmEBWEd7j-sGr47hE2RsWFjwTzaw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|PH0PR11MB5580:EE_
x-ms-office365-filtering-correlation-id: e5d02bf7-8729-416c-df85-08daf51bc0f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s/jvYRZnKqjJ1iDYrONhsqBF+WvT2+AVUD4JEgVZSL2Mxf8X8XQ6iwiEMcOLSKK4My/UWdBaLh32u81ZoRkfTA08Q31ZaNpCPz20RJmZcJzprsODr/k4lAdyb6XzEcLROLKjSHSYSbzeGAm9xvP6+xlgf1Iyo3CHRKZEEYMzD7GEvbDCVxcqjxU9lSodvXAmHStI9pNux/zIZEmljh+xxFF8+NZrApSYkNICv8oHDkZAwsHDejyVa9xm5zeDIu3gvjv99TyAJJ6+g1Z7vFqX33v/2dlzjFRwv7MMvZ/3xh+iQ1/LUxBAwOjftxfSbke9KTPjMWbPpK1tLktJ6l8hB9H2ZpK676AcToHvg59moo0Ww/F/Z3oJf+CaIUQBnR5QfdqoLESOYfBRbE7Y0jS50ziXPo5+RBQB0v0LOQC2HQwM8sFFEK59XN+GaxwcQjOghNk0uIOBVO9o4fuRz97LTeqsR/d1gdzBwH0+tiR9txNsJ+kVgnxdMULusrd/WtRmc4GnXpyYsp9RoSZAowcSWQEbferJT07bubwCaU/Zi1M2pX2iw9p9K2PKRD+2ktSdt7xCp3ykpxgjJEDNBRyA/vWbgMNTDOeK3ucG/xSBzzO5bwvCbcVo6/AjgMAHZtZkIHkHru8FfjMMwR1zQvC5tCcX0dfDVMqRWZhvkcMvMejfHgJKJC5S2lqVRCeEWDtQjGf8ADv8yMaBD87JC69Lng==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(396003)(366004)(39860400002)(376002)(451199015)(6506007)(2906002)(122000001)(5660300002)(52536014)(8936002)(4326008)(83380400001)(8676002)(6916009)(64756008)(66446008)(38100700002)(82960400001)(9686003)(478600001)(33656002)(41300700001)(38070700005)(66556008)(66946007)(26005)(186003)(76116006)(66476007)(7696005)(55016003)(86362001)(71200400001)(54906003)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SVRPVkg4TEtmdEFDUUYyU3dhNGtBZldPZkxZNDdsbytZN2dMM3B1V0RNUUhI?=
 =?utf-8?B?MmlKZmhvTGN4UXJKcWZSdDhudDFERFd5Mm9SRmhIczNZMHhZcSt3MFdzb0JD?=
 =?utf-8?B?MzFaU0JiNnk0SHpHUlVyWGtOZmhOc1dwd0ZIN1JpU0ttNWVQeEk3L0xZdk1V?=
 =?utf-8?B?OW1teGV2dU0rcVRaKzVqUVV1Z2d0M1dZQi9NU1h6VEFaSVpNKzN0dWJHMnZJ?=
 =?utf-8?B?MUVHcFBQem1NTmZveTlKWXIyM3N4YkFPSEt6dDZzZy9yOE5YdHBvZmJ1SUhz?=
 =?utf-8?B?OURidkNzdFBWV3VTTnhiS0wydm5PZHJzUHgxV3RYbkN0S3Brd3F2VmdaMEl2?=
 =?utf-8?B?b0N2cUlMSW95UnJxOGZMTHFnWVNrMjcwSE9qeTF6eWRyOGxqNEl0d1dxU29M?=
 =?utf-8?B?bWVESWVUTUtRVkNodGNSRW9VN25EcWZiOUNHRXFUMlZQZ0oyeWZqNFY1Nm14?=
 =?utf-8?B?ckpnYTBHOHdLQkJBakNqa054MXV2Ylc2dkVpd2QyeFVDM1RuTDdsY2dMbzNu?=
 =?utf-8?B?czA3clp2NHVLZ3V3UisrVDhsYUdHMGVJaVluMWEzeWVtdlJMTXV4cE50c0l0?=
 =?utf-8?B?U0xVUE8wVkR4STBJYWE0NE5Eald4YkgvbDJaZ2NOS2g2K3dseXhoSkd0akwz?=
 =?utf-8?B?VWFTV0E5VFZuV1phNkxoNEYzSzhrczZteHRBYnJsMVBiQ3JMVkxteVNXcVp6?=
 =?utf-8?B?alBzU0hMU01Pb0h5eWRyVWREQUxmeHRlaDBvUjREVEo1SVQ0Znl3bFY2bEtw?=
 =?utf-8?B?cDkzOUh5N3JJR0lMRTNWS0tvaEIzd296Y3Z6UktJYmNud3R5UXE0RFRqUTls?=
 =?utf-8?B?MnlsQS9JZGlTVDJxUVJLVi94OVF4ckJxM091MnRpa3QzRHZINlhwYUNiblhh?=
 =?utf-8?B?czdBcm5WclprNUJHanZXdDRtQjdvRWJOV21CZFhEUzNkUm5iM3pNS1BnMDdq?=
 =?utf-8?B?cHNvZHlkRldZWnd1Y3JjZW5jV0JMYXZCL1hlWUpuNFFBbWNVRjd4RGdUY1VN?=
 =?utf-8?B?dWsvZEZraFFQVVdUbkh1bDE0MjYySm1JaTh1cDUzQlk1dmFrenlZS2k0c2tn?=
 =?utf-8?B?MytnVEs4Wlo0UXZWTFk5cHdEdE1oQmVqa0tobjFxbWpaMnhSMk1kWHg0Y1Fq?=
 =?utf-8?B?b3Myczl5c25qT2ZlSDRmemlLRnlIWHcvc0J5MTZoTHNBWkpSa01wcmpMVERH?=
 =?utf-8?B?cDNscG1kZHRKZExmc05Mdmt4WVdueUpFY1NoTytOV0Yvc3RpcFdYNUVtT0Nl?=
 =?utf-8?B?ejBjcWdNQzVudTJ3NlNPUGxNN3UvaTk1TUh4c3J0MWJ5Tm1zNlE4dzdxMSs4?=
 =?utf-8?B?bEJTYWFkV0NLZFVEZ0dPbDRnb2xyck9VeUtYeTA2U3pjTU5JZjlCQXFOenU0?=
 =?utf-8?B?OUNzM0lBM1RucjN4ZXhKbnBHUUUxQXlsMUtGNlQ4RXR1MzlTbWFCVVBYRkZV?=
 =?utf-8?B?dUdOQ25vQjFYSEMrTGRTMlZVaURLd08yNE92RnJ5ejZ0c1dTbjlYd05wejFF?=
 =?utf-8?B?UzVValBtMWJnQW00d2ZIQk1VdFc1Mm9tSTdNb2JZUVFXK0FWYWp3NWFzQUNw?=
 =?utf-8?B?Wk4zSmxISEJHK3JlTmZ2aFo5MExoOGU1S3lVYnBORGlIY2x0WnRSMS8rWlFE?=
 =?utf-8?B?VHZxSnRnWmhDdHZLOWVhSWtrTGFuVG5ZdEhuR3F0NkozcHdNUHFuZE9oM1dS?=
 =?utf-8?B?TGJ5S29OMjdMRG51enhabzRJRkpuaFhHZHEwZkdoOWR1ek1yMlk1QUg1WExU?=
 =?utf-8?B?UGJqTXVNd1RhRU1xMkE0ODhQemFXSEVFQ0JJMUVhait0bmJ2cnBrWUVydmcw?=
 =?utf-8?B?MTByVlpiaEtGdS9Gb1cyOW5OYjhlREdyMGNqZlVKMmN0WHlySlJhbVVjTnAz?=
 =?utf-8?B?V0JoRE1uMk8veThBY3pBaytRSHFEZHFFbXV6OGlRNVJSZVRkb1NIVTRHeUtN?=
 =?utf-8?B?MWRBNUx0U2VnaW54M0ZzSE1kZHdoeEs4eWRBcytwQ3kvZ3lKZzB5UkdxWXM2?=
 =?utf-8?B?SktUOWpSemxGWW00UC9lYWFIMk1nVU5FbW4zQWp6anNGemJxVHA5SUJoTXRv?=
 =?utf-8?B?S2ZBcWZ0ZFBXbElER01KNVVXWTYxeVI3TDNrT2FIcEdZWCt3NWlHaC94ZUE3?=
 =?utf-8?B?S1M3cStkelZnSWVuNmxOUGIrMFp4MUY4K1daaXNsenFEeHd6c002ZWFuWnl3?=
 =?utf-8?B?d3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5d02bf7-8729-416c-df85-08daf51bc0f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2023 04:07:57.6360 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QiWdnAkohOxqCFYS6eXs0rSvPYA95gtQMqBSKYGyPY7h/En1kPkx0SCy36HKRWAuoZQCrv6T1BP1H0QPlXXb6mz17QlpAOvod7ElPkxe5a0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5580
X-OriginatorOrg: intel.com
Subject: Re: [Spice-devel] [RFC v1 2/4] display-channel: Add the asyncs
 associated with dmabuf encode
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 "Kim, Dongwon" <dongwon.kim@intel.com>, Gerd Hoffmann <kraxel@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkgRnJlZGlhbm8sDQoNCj4gDQo+IElsIGdpb3JubyBnaW8gMTIgZ2VuIDIwMjMgYWxsZSBvcmUg
MDc6MDMgS2FzaXJlZGR5LCBWaXZlaw0KPiA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4gaGEg
c2NyaXR0bzoNCj4gPg0KPiA+IEhpIEZyZWRpYW5vLA0KPiA+DQo+ID4gPg0KPiA+ID4gSWwgZ2lv
cm5vIG1lciAxMSBnZW4gMjAyMyBhbGxlIG9yZSAwNTo0MiBWaXZlayBLYXNpcmVkZHkNCj4gPiA+
IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPiBoYSBzY3JpdHRvOg0KPiA+ID4gPg0KPiA+ID4g
PiBUaGlzIGFzeW5jIGlzIHRyaWdnZXJlZCBieSB0aGUgZW5jb2RlciBpbmRpY2F0aW5nIHRoYXQg
dGhlDQo+ID4gPiA+IGVuY29kaW5nIHByb2Nlc3MgaXMgY29tcGxldGVkLg0KPiA+ID4gPg0KPiA+
ID4NCj4gPiA+IFRoaXMgZGVzY3JpcHRpb24gZG9lcyBub3QgbWFrZSBtdWNoIHNlbnNlIHRvIG1l
Lg0KPiA+ID4gWW91IGFyZSBhZGRpbmcgYSBwdWJsaWMgZnVuY3Rpb24gd2hpY2gsIEkgc3VwcG9z
ZSwgc2hvdWxkIGJlIGNhbGxlZCBieQ0KPiA+ID4gUWVtdSBidXQgeW91IGFyZSBzdGF0aW5nIHRo
ZSBlbmNvZGVyIGlzIGNhbGxpbmcgaXQuDQo+ID4gPiBVbmxlc3MgUWVtdSBpcyB0aGUgZW5jb2Rl
ciBpdCBkb2VzIG5vdCBtYWtlIHNlbnNlLg0KPiA+IFtLYXNpcmVkZHksIFZpdmVrXSBTb3JyeSBm
b3IgdGhlIHBvb3IsIG1pc2xlYWRpbmcgZGVzY3JpcHRpb24uIEkgb3JpZ2luYWxseQ0KPiA+IGhh
ZCB0aGlzIHBhdGNoIHNwbGl0IGludG8gdHdvLCBvbmUgZm9yIGVhY2ggYXN5bmMgZnVuY3Rpb24g
YW5kIGZvcmdvdCB0bw0KPiA+IHVwZGF0ZSB0aGUgY29tbWl0IG1lc3NhZ2Ugd2hlbiBJIG1lcmdl
ZCB0aGVtLiBJJ2xsIHVwZGF0ZSB0aGUNCj4gPiBjb21taXQgbWVzc2FnZSBpbiB2MiB3aGljaCB3
b3VsZCBwcm9iYWJseSBoYXZlIHRoZSBmb2xsb3dpbmcgZGVzYzoNCj4gPiAiVGhpcyBwYXRjaCBt
YWlubHkgYWRkcyB0d28gYXN5bmMgZnVuY3Rpb25zOiBhIHB1YmxpYyBvbmUgYW5kIGFuDQo+ID4g
aW50ZXJuYWwgb25lLiBUaGUgcHVibGljIGZ1bmN0aW9uIHNwaWNlX3F4bF9kbWFidWZfZW5jb2Rl
X2FzeW5jIGlzDQo+ID4gdXNlZCBieSBhcHBsaWNhdGlvbnMgdGhhdCB3b3VsZCBzaGFyZSB0aGVp
ciBmZCB3aXRoIHRoZSBTcGljZSBzZXJ2ZXIuDQo+IA0KPiBJIGRvbid0IHNlZSBhIHJlYXNvbiBm
b3IgdGhlIG5ldyBBUEksIGl0J3MganVzdCBkb2luZyBhIGNvbWJpbmF0aW9uIG9mDQo+IHNwaWNl
X3F4bF9nbF9zY2Fub3V0ICsgc3BpY2VfcXhsX2dsX2RyYXdfYXN5bmMuDQpbS2FzaXJlZGR5LCBW
aXZla10gSSBoYWQgY29uc2lkZXJlZCByZXVzaW5nIHRoZXNlIGZ1bmN0aW9ucyBmb3IgbXkgdXNl
LWNhc2UNCmJ1dCBkZWNpZGVkIGFnYWluc3QgY2x1dHRlcmluZyB0aGVtLiBBbnl3YXksIGRvIHlv
dSB0aGluayBpdCBpcyBvayB0byBhZGQgYQ0KbmV3IHBhcmFtZXRlciBvciBhIGZsYWcgdG8gdGhl
c2UgcHVibGljIEFQSXMgdG8gcHJldmVudCB0aGVtIGZyb20gZG9pbmcNCnF4bF9zdGF0ZS0+c2Vu
ZF9tZXNzYWdlKCkgYmVjYXVzZSBteSB1c2UtY2FzZSBkb2VzIG5vdCBpbnZvbHZlIHNlbmRpbmcN
CmFueSBtZXNzYWdlcyAobmVpdGhlciBSZWRXb3JrZXJNZXNzYWdlR2xEcmF3IG5vcg0KUmVkV29y
a2VyTWVzc2FnZUdsU2Nhbm91dCkgdG8gdGhlIGNsaWVudC4NCg0KPiANCj4gPiBUaGUgaW50ZXJu
YWwgZnVuY3Rpb24gcmVkX3F4bF9kbWFidWZfZW5jb2RlX2FzeW5jX2NvbXBsZXRlIGlzIG9ubHkN
Cj4gPiB1c2VkIGJ5IHRoZSBTcGljZSBzZXJ2ZXIgdG8gaW5kaWNhdGUgY29tcGxldGlvbiBvZiB0
aGUgZW5jb2RpbmcgcHJvY2Vzcw0KPiA+IGFuZCBzZW5kIHRoZSBjb21wbGV0aW9uIGNvb2tpZSB0
byBhcHBsaWNhdGlvbnMuIg0KPiA+DQo+IA0KPiBUaGF0J3Mgd2hhdCByZWRfcXhsX2dsX2RyYXdf
YXN5bmNfY29tcGxldGUgaXMgZG9pbmcuDQpbS2FzaXJlZGR5LCBWaXZla10gWWVhaCwgdGhpcyBv
bmUsIEkgY2FuIHRvdGFsbHkgcmV1c2UuDQoNCj4gDQo+ID4gPg0KPiA+ID4gPiBDYzogR2VyZCBI
b2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+DQo+ID4gPiA+IENjOiBNYXJjLUFuZHLDqSBMdXJl
YXUgPG1hcmNhbmRyZS5sdXJlYXVAcmVkaGF0LmNvbT4NCj4gPiA+ID4gQ2M6IERvbmd3b24gS2lt
IDxkb25nd29uLmtpbUBpbnRlbC5jb20+DQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFZpdmVrIEth
c2lyZWRkeSA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+
ICBzZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmNwcCB8ICA5ICsrKysrKysrKw0KPiA+ID4gPiAgc2Vy
dmVyL2Rpc3BsYXktY2hhbm5lbC5oICAgfCAgMiArKw0KPiA+ID4gPiAgc2VydmVyL3JlZC1xeGwu
Y3BwICAgICAgICAgfCAyNiArKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ID4gPiAgc2Vy
dmVyL3JlZC1xeGwuaCAgICAgICAgICAgfCAgMSArDQo+ID4gPiA+ICBzZXJ2ZXIvc3BpY2UtcXhs
LmggICAgICAgICB8ICAyICsrDQo+ID4gPiA+ICBzZXJ2ZXIvc3BpY2Utc2VydmVyLnN5bXMgICB8
ICAxICsNCj4gPiA+ID4gIDYgZmlsZXMgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKQ0KPiA+ID4g
Pg0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jcHAgYi9zZXJ2
ZXIvZGlzcGxheS1jaGFubmVsLmNwcA0KPiA+ID4gPiBpbmRleCA0YmQwY2Y0MS4uODFkZjU0MjAg
MTAwNjQ0DQo+ID4gPiA+IC0tLSBhL3NlcnZlci9kaXNwbGF5LWNoYW5uZWwuY3BwDQo+ID4gPiA+
ICsrKyBiL3NlcnZlci9kaXNwbGF5LWNoYW5uZWwuY3BwDQo+ID4gPiA+IEBAIC0yMzM0LDYgKzIz
MzQsMTUgQEAgdm9pZA0KPiA+ID4gZGlzcGxheV9jaGFubmVsX2dsX2RyYXdfZG9uZShEaXNwbGF5
Q2hhbm5lbCAqZGlzcGxheSkNCj4gPiA+ID4gICAgICBzZXRfZ2xfZHJhd19hc3luY19jb3VudChk
aXNwbGF5LCBkaXNwbGF5LT5wcml2LT5nbF9kcmF3X2FzeW5jX2NvdW50IC0NCj4gMSk7DQo+ID4g
PiA+ICB9DQo+ID4gPiA+DQo+ID4gPiA+ICt2b2lkIGRpc3BsYXlfY2hhbm5lbF9lbmNvZGVfZG9u
ZShEaXNwbGF5Q2hhbm5lbCAqZGlzcGxheSwNCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIFJlZERyYXdhYmxlICpyZWRfZHJhd2FibGUpDQo+ID4gPiA+ICt7DQo+ID4g
PiA+ICsgICAgaWYgKHJlZF9kcmF3YWJsZS0+ZG1hYnVmX2ZkID4gMCkgew0KPiA+ID4gPiArICAg
ICAgICByZWRfcXhsX2RtYWJ1Zl9lbmNvZGVfYXN5bmNfY29tcGxldGUoZGlzcGxheS0+cHJpdi0+
cXhsKTsNCj4gPiA+ID4gKyAgICAgICAgcmVkX2RyYXdhYmxlLT5kbWFidWZfZmQgPSAwOw0KPiA+
ID4gPiArICAgIH0NCj4gPiA+ID4gK30NCj4gPiA+ID4gKw0KPiA+ID4gPiAgaW50IGRpc3BsYXlf
Y2hhbm5lbF9nZXRfdmlkZW9fc3RyZWFtX2lkKERpc3BsYXlDaGFubmVsICpkaXNwbGF5LA0KPiA+
ID4gVmlkZW9TdHJlYW0gKnN0cmVhbSkNCj4gPiA+ID4gIHsNCj4gPiA+ID4gICAgICByZXR1cm4g
c3RhdGljX2Nhc3Q8aW50PihzdHJlYW0gLSBkaXNwbGF5LT5wcml2LT5zdHJlYW1zX2J1Zi5kYXRh
KCkpOw0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5oIGIvc2Vy
dmVyL2Rpc3BsYXktY2hhbm5lbC5oDQo+ID4gPiA+IGluZGV4IGM1NGRmMjVjLi4wYTFlNTIwYyAx
MDA2NDQNCj4gPiA+ID4gLS0tIGEvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5oDQo+ID4gPiA+ICsr
KyBiL3NlcnZlci9kaXNwbGF5LWNoYW5uZWwuaA0KPiA+ID4gPiBAQCAtMTI3LDYgKzEyNyw4IEBA
IHZvaWQgICAgICAgICAgICAgICAgICAgICAgIGRpc3BsYXlfY2hhbm5lbF9nbF9zY2Fub3V0DQo+
ID4gPiAoRGlzcGxheUNoYQ0KPiA+ID4gPiAgdm9pZCAgICAgICAgICAgICAgICAgICAgICAgZGlz
cGxheV9jaGFubmVsX2dsX2RyYXcgICAgICAgICAgICAgICAgICAgKERpc3BsYXlDaGFubmVsDQo+
ID4gPiAqZGlzcGxheSwNCj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTcGljZU1zZ0Rpc3BsYXlHbERy
YXcgKmRyYXcpOw0KPiA+ID4gPiAgdm9pZCAgICAgICAgICAgICAgICAgICAgICAgZGlzcGxheV9j
aGFubmVsX2dsX2RyYXdfZG9uZSAgICAgICAgICAgICAgKERpc3BsYXlDaGFubmVsDQo+ID4gPiAq
ZGlzcGxheSk7DQo+ID4gPiA+ICt2b2lkICAgICAgICAgICAgICAgICAgICAgICBkaXNwbGF5X2No
YW5uZWxfZW5jb2RlX2RvbmUgICAgICAgICAgICAgICAoRGlzcGxheUNoYW5uZWwNCj4gPiA+ICpk
aXNwbGF5LA0KPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJlZERyYXdhYmxlICpkcmF3YWJsZSk7DQo+
ID4gPiA+DQo+ID4gPiA+ICB2b2lkIGRpc3BsYXlfY2hhbm5lbF9wcm9jZXNzX2RyYXcoRGlzcGxh
eUNoYW5uZWwgKmRpc3BsYXksDQo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcmVkOjpzaGFyZWRfcHRyPFJlZERyYXdhYmxlPiAmJnJlZF9kcmF3YWJsZSwNCj4gPiA+
ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9yZWQtcXhsLmNwcCBiL3NlcnZlci9yZWQtcXhsLmNwcA0K
PiA+ID4gPiBpbmRleCA0OGMyOTNhZS4uNDJhNDAyOWIgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL3Nl
cnZlci9yZWQtcXhsLmNwcA0KPiA+ID4gPiArKysgYi9zZXJ2ZXIvcmVkLXF4bC5jcHANCj4gPiA+
ID4gQEAgLTQ5Myw2ICs0OTMsMzIgQEAgdm9pZA0KPiByZWRfcXhsX2dsX2RyYXdfYXN5bmNfY29t
cGxldGUoUVhMSW5zdGFuY2UNCj4gPiA+ICpxeGwpDQo+ID4gPiA+ICAgICAgcmVkX3F4bF9hc3lu
Y19jb21wbGV0ZShxeGwsIGNvb2tpZSk7DQo+ID4gPiA+ICB9DQo+ID4gPiA+DQo+ID4gPiA+ICtT
UElDRV9HTlVDX1ZJU0lCTEUNCj4gPiA+ID4gK3ZvaWQgc3BpY2VfcXhsX2RtYWJ1Zl9lbmNvZGVf
YXN5bmMoUVhMSW5zdGFuY2UgKnF4bCwNCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgaW50IGZkLCB1aW50NjRfdCBjb29raWUpDQo+ID4gPiA+ICt7DQo+ID4gPiA+
ICsgICAgUVhMU3RhdGUgKnF4bF9zdGF0ZTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArICAgIHNwaWNl
X3JldHVybl9pZl9mYWlsKHF4bCAhPSBudWxscHRyKTsNCj4gPiA+ID4gKyAgICBxeGxfc3RhdGUg
PSBxeGwtPnN0Ow0KPiA+ID4gPiArDQo+ID4gPiA+ICsgICAgcXhsX3N0YXRlLT5zY2Fub3V0LmRy
bV9kbWFfYnVmX2ZkID0gZmQ7DQo+ID4gPiA+ICsgICAgcXhsX3N0YXRlLT5nbF9kcmF3X2Nvb2tp
ZSA9IGNvb2tpZTsNCj4gPiA+DQo+ID4gPiBUaGlzIGJlaGF2aW91ciBpcyBwcm9uZSB0byBsZWFr
IHJlc291cmNlcy4NCj4gPiBbS2FzaXJlZGR5LCBWaXZla10gSSBndWVzcyBJIGNvdWxkIGRvIHdo
YXQgc3BpY2VfcXhsX2dsX3NjYW5vdXQgZG9lczoNCj4gPiB0aGF0IGlzLCBwcmV2ZW50IHRoZSAo
R3N0cmVhbWVyKSBlbmNvZGVyIGZyb20gY2xvc2luZyB0aGUgZmQgYW5kIGluc3RlYWQNCj4gPiBk
byB0aGUgZm9sbG93aW5nIGhlcmU6DQo+ID4gICAgIHB0aHJlYWRfbXV0ZXhfbG9jaygmcXhsX3N0
YXRlLT5zY2Fub3V0X211dGV4KTsNCj4gPg0KPiA+ICAgICBpZiAocXhsX3N0YXRlLT5zY2Fub3V0
LmRybV9kbWFfYnVmX2ZkID49IDApIHsNCj4gPiAgICAgICAgIGNsb3NlKHF4bF9zdGF0ZS0+c2Nh
bm91dC5kcm1fZG1hX2J1Zl9mZCk7DQo+ID4gICAgIH0NCj4gPg0KPiA+IERvIHlvdSB0aGluayB0
aGlzIHdvdWxkIGhlbHA/DQo+ID4NCj4gPiBUaGFua3MsDQo+ID4gVml2ZWsNCj4gPg0KPiA+ID4N
Cj4gPiA+ID4gK30NCj4gPiA+ID4gKw0KPiA+ID4gPiArdm9pZCByZWRfcXhsX2RtYWJ1Zl9lbmNv
ZGVfYXN5bmNfY29tcGxldGUoUVhMSW5zdGFuY2UgKnF4bCkNCj4gPiA+ID4gK3sNCj4gPiA+ID4g
KyAgICBRWExTdGF0ZSAqcXhsX3N0YXRlID0gcXhsLT5zdDsNCj4gPiA+ID4gKyAgICB1aW50NjRf
dCBjb29raWUgPSBxeGwtPnN0LT5nbF9kcmF3X2Nvb2tpZTsNCj4gPiA+ID4gKw0KPiA+ID4gPiAr
ICAgIGlmIChjb29raWUgPT0gR0xfRFJBV19DT09LSUVfSU5WQUxJRCkgew0KPiA+ID4gPiArICAg
ICAgICByZXR1cm47DQo+ID4gPiA+ICsgICAgfQ0KPiA+ID4gPiArICAgIHF4bF9zdGF0ZS0+c2Nh
bm91dC5kcm1fZG1hX2J1Zl9mZCA9IDA7DQo+ID4gPiA+ICsgICAgcXhsLT5zdC0+Z2xfZHJhd19j
b29raWUgPSBHTF9EUkFXX0NPT0tJRV9JTlZBTElEOw0KPiA+ID4gPiArICAgIHJlZF9xeGxfYXN5
bmNfY29tcGxldGUocXhsLCBjb29raWUpOw0KPiA+ID4gPiArfQ0KPiA+ID4gPiArDQo+ID4gPiA+
ICBTUElDRV9HTlVDX1ZJU0lCTEUNCj4gPiA+ID4gIHZvaWQgc3BpY2VfcXhsX3NldF9kZXZpY2Vf
aW5mbyhRWExJbnN0YW5jZSAqaW5zdGFuY2UsDQo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgY29uc3QgY2hhciAqZGV2aWNlX2FkZHJlc3MsDQo+ID4gPiA+IGRpZmYgLS1n
aXQgYS9zZXJ2ZXIvcmVkLXF4bC5oIGIvc2VydmVyL3JlZC1xeGwuaA0KPiA+ID4gPiBpbmRleCAy
MDg0YWNiMS4uZThlN2MzNzMgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL3NlcnZlci9yZWQtcXhsLmgN
Cj4gPiA+ID4gKysrIGIvc2VydmVyL3JlZC1xeGwuaA0KPiA+ID4gPiBAQCAtNDAsNiArNDAsNyBA
QCBib29sIHJlZF9xeGxfZ2V0X2FsbG93X2NsaWVudF9tb3VzZShRWExJbnN0YW5jZQ0KPiAqcXhs
LA0KPiA+ID4gaW50ICp4X3JlcywgaW50ICp5X3JlcywgaW4NCj4gPiA+ID4gIFNwaWNlTXNnRGlz
cGxheUdsU2Nhbm91dFVuaXggKnJlZF9xeGxfZ2V0X2dsX3NjYW5vdXQoUVhMSW5zdGFuY2UNCj4g
KnF4bCk7DQo+ID4gPiA+ICB2b2lkIHJlZF9xeGxfcHV0X2dsX3NjYW5vdXQoUVhMSW5zdGFuY2Ug
KnF4bCwNCj4gPiA+IFNwaWNlTXNnRGlzcGxheUdsU2Nhbm91dFVuaXggKnNjYW5vdXQpOw0KPiA+
ID4gPiAgdm9pZCByZWRfcXhsX2dsX2RyYXdfYXN5bmNfY29tcGxldGUoUVhMSW5zdGFuY2UgKnF4
bCk7DQo+ID4gPiA+ICt2b2lkIHJlZF9xeGxfZG1hYnVmX2VuY29kZV9hc3luY19jb21wbGV0ZShR
WExJbnN0YW5jZSAqcXhsKTsNCj4gPiA+ID4gIGludCByZWRfcXhsX2NoZWNrX3F4bF92ZXJzaW9u
KFFYTEluc3RhbmNlICpxeGwsIGludCBtYWpvciwgaW50IG1pbm9yKTsNCj4gPiA+ID4gIFNwaWNl
U2VydmVyKiByZWRfcXhsX2dldF9zZXJ2ZXIoUVhMU3RhdGUgKnF4bCk7DQo+ID4gPiA+ICB1aW50
MzJfdCByZWRfcXhsX21hcnNoYWxsX2RldmljZV9kaXNwbGF5X2luZm8oY29uc3QgUVhMSW5zdGFu
Y2UgKnF4bCwNCj4gPiA+IFNwaWNlTWFyc2hhbGxlciAqbSk7DQo+ID4gPiA+IGRpZmYgLS1naXQg
YS9zZXJ2ZXIvc3BpY2UtcXhsLmggYi9zZXJ2ZXIvc3BpY2UtcXhsLmgNCj4gPiA+ID4gaW5kZXgg
YmYxNzQ3NmIuLmNhOTgxNmVjIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9zZXJ2ZXIvc3BpY2UtcXhs
LmgNCj4gPiA+ID4gKysrIGIvc2VydmVyL3NwaWNlLXF4bC5oDQo+ID4gPiA+IEBAIC05Miw2ICs5
Miw4IEBAIHZvaWQgc3BpY2VfcXhsX2dsX2RyYXdfYXN5bmMoUVhMSW5zdGFuY2UgKnF4bCwNCj4g
PiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDMyX3QgeCwgdWludDMyX3Qg
eSwNCj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDMyX3QgdywgdWlu
dDMyX3QgaCwNCj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDY0X3Qg
Y29va2llKTsNCj4gPiA+ID4gK3ZvaWQgc3BpY2VfcXhsX2RtYWJ1Zl9lbmNvZGVfYXN5bmMoUVhM
SW5zdGFuY2UgKnF4bCwNCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgaW50IGZkLCB1aW50NjRfdCBjb29raWUpOw0KPiA+ID4gPg0KPiA+ID4gPiAgLyogc2luY2Ug
c3BpY2UgMC4xNC4yICovDQo+ID4gPiA+DQo+ID4gPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvc3Bp
Y2Utc2VydmVyLnN5bXMgYi9zZXJ2ZXIvc3BpY2Utc2VydmVyLnN5bXMNCj4gPiA+ID4gaW5kZXgg
OGRhNDZjMjAuLjk3NDhjYzI0IDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9zZXJ2ZXIvc3BpY2Utc2Vy
dmVyLnN5bXMNCj4gPiA+ID4gKysrIGIvc2VydmVyL3NwaWNlLXNlcnZlci5zeW1zDQo+ID4gPiA+
IEBAIC0xODIsNCArMTgyLDUgQEAgU1BJQ0VfU0VSVkVSXzAuMTQuMyB7DQo+ID4gPiA+ICBnbG9i
YWw6DQo+ID4gPiA+ICAgICAgc3BpY2Vfc2VydmVyX2dldF92aWRlb19jb2RlY3M7DQo+ID4gPiA+
ICAgICAgc3BpY2Vfc2VydmVyX2ZyZWVfdmlkZW9fY29kZWNzOw0KPiA+ID4gPiArICAgIHNwaWNl
X3F4bF9kbWFidWZfZW5jb2RlX2FzeW5jOw0KPiA+ID4gPiAgfSBTUElDRV9TRVJWRVJfMC4xNC4y
Ow0KPiA+ID4NCj4gPiA+IEZyZWRpYW5vDQo=
