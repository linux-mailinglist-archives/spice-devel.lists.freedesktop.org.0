Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B0B7A408A
	for <lists+spice-devel@lfdr.de>; Mon, 18 Sep 2023 07:43:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BBF410E0BF;
	Mon, 18 Sep 2023 05:43:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 513B610E0BF
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Sep 2023 05:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695015806; x=1726551806;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S7cklk5s0hFpk9OKsnPYYPgSdEkQcucjSQEaemqAFiI=;
 b=WTXFUi2e2MNpnNqODYFCPSje3sHW/gJd9da3CyC/YYfuZrqBjPo56dHH
 uxFzItpV/9rA2G03KzRMvTu28TW99tmgNWPbJcgJw82V35SW97dT1MPlX
 dliG/y7m2Cl8urAHs4Vad8FLEvX5nMSZUK0d2LS+01TZUSyeh31HQsOyz
 S6/OCGNtOyOppa1/yWM4jJshfoGQ6NiLULnSxQ35NrUQfwc6LWj5IceGP
 7p0RueIFayOc+YdQke5eJ1DCCO52512FGQpx3B0z0RqrQ4KLvI/vgjNxy
 jksMiLb1i1AYM0/gTCBky2RnKIM+HAYhCrAVwIMtZfms8uWxcd4Gg5yab A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="383391655"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="383391655"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 22:43:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="780770789"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="780770789"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2023 22:43:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 17 Sep 2023 22:43:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 17 Sep 2023 22:43:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 17 Sep 2023 22:43:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 17 Sep 2023 22:43:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XE5QCGXbkmq21l9qtXNlSkQEP0swwUJImQFUGIY/1wuKnvq4n7XkTsiqSLKGMHBVNjwSzNLB3QdwB9k7UrZOuAKKSN204e6c8Z1akXY9BKihAv1fQ5NwTRfdnzEVmlMlHC2TSXDxrr77IppA7xz0X/8rjjFZ81h6xkg3TDBrlFwr24P2xYf2nObkMlVsXSnTTgVR8CMyhspKAXSGWHLoy1OFdsQKJZuPNFcvwlLaqnS70y8rM1FptFeNadmdSkwe0fUKOpb5xBSfZOFv8+M7nJ/9nVrka0xHPoQcg0pSYPUnoaTwI/1IloylhEXmSRsy/9oV5QtQnAC5RQgyz9QD8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S7cklk5s0hFpk9OKsnPYYPgSdEkQcucjSQEaemqAFiI=;
 b=JKm0DBBc/8ccI4QSP0z8wbQbTFmlaEkTEnrfojh/pF4kNMBayDDZRa8W8fA+AoptUPF7LTsUtXVKOC9q6wTBLaZTfDL0EqZnEMQZ3zhBNvx4t2byXf8nxY0W+k6pVMaSmo6TJJr0lvshcncDxBkpSVMr4YdOcl1DMQ35WTQrMK5SazAbB03i4VAW58WZDlXGbmmtBakMXXVjwZmfl05n5Ha1U5EDH8zyl9Sfr7/aGK/YQ8myCLitCCh4zpzrl7mE21i9VBMzi5ZJa9AK6xHLNZIR25dVfsM2smKzMOPWONCn89x9YFZfj+JIU5VFW9WosS/HrZrXgzrL+S2CIRrNuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by MW6PR11MB8439.namprd11.prod.outlook.com (2603:10b6:303:23e::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.26; Mon, 18 Sep
 2023 05:43:22 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::fe3f:b90e:4eaa:fac8]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::fe3f:b90e:4eaa:fac8%7]) with mapi id 15.20.6792.024; Mon, 18 Sep 2023
 05:43:22 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>
Thread-Topic: [PATCH] common: Add a udev helper to identify GPU Vendor
Thread-Index: AQHZ52w1LpE0du4rKkGHzpPlFKbl97AbnF0AgAQXgSA=
Date: Mon, 18 Sep 2023 05:43:21 +0000
Message-ID: <IA0PR11MB7185B4360F065373CD4E2FF2F8FBA@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-3-vivek.kasireddy@intel.com>
 <CAHt6W4dLq2gaAt5nTJX0CM=QadNa8Z+34RETTYzoEpH6FWZQnw@mail.gmail.com>
In-Reply-To: <CAHt6W4dLq2gaAt5nTJX0CM=QadNa8Z+34RETTYzoEpH6FWZQnw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|MW6PR11MB8439:EE_
x-ms-office365-filtering-correlation-id: 2add5d13-7981-4a0d-9819-08dbb80a2b69
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UJpuy34eRxLwkzz28u3G97cue0KQu2mq/inNUan7EqvjPkrPZYVnpgyRvJPZSYpBiO35gUQ3soEaMhlYqjDjo2Wypd8C5gOsdyetIZhCqZ1ulEcNSy+mkNesdCxTReTVPfSw1NXJMtljiC+ltWbcGduuQGMBTBYrNmAx5HLTCCkkfHgc7f+wB7jNcq9WfCCzz39/eUmqYiDiN6TTQbaH6ciXoGXAynneYa0ldrcNZ1naMIfBXOzYitVBXOgCRA6rX3ao9OC4p5tj9l31HRpJR57/Df39pPLjg3R3Zp60+uwlBfBSRRCFFBEPcRUErmae2Vr9RpjHLi/p3K9fSoaCAEKSYbiM4Fz/zbE0EaZe6ADRHZcIrMYhqSNpnywF9NbUHJqo9aRjJ6wD79GldKP3Vo4krZsks6ucRAF7CqzgjDu1rtFPSTwRd1ceyG9ues2JAWmsviIfjG4YOwEl0fmsj+N1ODLoiSYC5hBFcYrIkluV/GMemZ0h719jPs9KVqnNL9GgeswPExhuTJ8MLhU1350pVEDXcUpTo5VAf4JZLQoMhWAUZLf1SBNu/ZPvtBAwWJHtaqF6DA5Ta57SqgKeCGjo4rj8bFpMCYjX/FscUg8WNuuD5nQ0wCf+BfuETFgM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(136003)(346002)(366004)(186009)(1800799009)(451199024)(478600001)(66476007)(6916009)(66446008)(64756008)(54906003)(316002)(66946007)(76116006)(71200400001)(66556008)(6506007)(26005)(7696005)(9686003)(8936002)(52536014)(8676002)(41300700001)(5660300002)(2906002)(4326008)(38100700002)(38070700005)(82960400001)(122000001)(33656002)(86362001)(83380400001)(107886003)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bHJkcnZ6WTVab3pYaUE2aGRzdGIrQlhtZ0lYZ0ZhQXU5L1ZvalBEUk5xTm10?=
 =?utf-8?B?YmRCWnNRRXExZWg4QzFhY2ZBaTJZajNoRGw5ZnJyOGNQTnRVRWwvQ0hITnho?=
 =?utf-8?B?d3VVVjQ1dGFnRzRVdmJDclV2WU9FeXFEU0drc1RvNlVEKytzcmo4dmhlazVU?=
 =?utf-8?B?MGwyTzlwVW83YnYxN090MkxsZHZxc0VlWkRUUDduUDR5Z2thOU5qQSt2TG50?=
 =?utf-8?B?RTJMK1NBS2lraWNBMUFmSTRDeHlhMG81SDdONUlONEdkck5Kc25sT2dyOGZY?=
 =?utf-8?B?Z1dEVDE0cEgyeURUK1BUaWhJVlhPY2swV0NreWEvNWFzd0Rtd3BjOUhrRTJQ?=
 =?utf-8?B?Zm9YbG04V0p4OEJiZ1JHeWx5cXRxVkg1aG5WOTJQTjRZY1dLVGJEVi9jTi9r?=
 =?utf-8?B?UVdMYjdCOTU3Snpid1A5dVZMQStFci81enhBS3BVRlFMTFdWdE1WUlV2NjBB?=
 =?utf-8?B?TWQ5dTZwSFpOTUROdFdMQ0d6ZlpZOUhNdHFjQXB5MWQ5MjFIOUxDNGQ0UWRD?=
 =?utf-8?B?LzRUVzRsbHZXbitVWGZUd0xXTTVzN3h2bjd1TVlUWXJzTytkNFkwWEVURG1V?=
 =?utf-8?B?WFhTc3FSRXFMUzljVnVGbVNieXl0OCtPWVJKcENCeVRMQ3EwcUlyWE1GNXhU?=
 =?utf-8?B?TENXZFJKaVYxYmYxSzVZbFB1T1VYZFFvMDJEQlU4b0VSVEtVREErbVRwb1JG?=
 =?utf-8?B?U1NhREJ4aVowbDJvazlIeFpkbC9Vam12dDM2YmphU1VmY1RHOGtrdG5Gb3du?=
 =?utf-8?B?bXl4TXNRbzNIZ3JJY3BFdFpZZkkvVkxCaytaLzJzZXhSRjM0K2xDUjdaYXZZ?=
 =?utf-8?B?YUs5Qk9UamZXSU1teWFaRnRBUzN3ckYzeU5SeGVIcnp5WnBPWlBlWmFyNnNo?=
 =?utf-8?B?KzMzdFNUZ2t4bFhvd2VpbzNYR3JrT0JWYSt6TG5IVW5PckJ0RVJEeFJSTTg2?=
 =?utf-8?B?eXdnMFVabmNMRXMxbTJ5V25Ld05GZHVkcDBXUld4RW1kclc2dmlWMG8yMUFL?=
 =?utf-8?B?SlpDaDAvUWREZFVhajdRaEhCZmtTOXFhck96SU8vRGMxVjZGTE5LcGZmTzl0?=
 =?utf-8?B?azJZNnNoTVhVUk85REpsdys4WHVoK2FiUWpaMG1QVDIwVy9YL0k4TUVQQlZ1?=
 =?utf-8?B?VE1sZ2orSHR4MnVLSDhXYmdzU3JUVjZ2eHVlMkpkK21SdmN0RGtsNWJ3Q3ZR?=
 =?utf-8?B?ZEM2b0NpRUdvT0JMU3VNVEpvQ0xDMHlFT1MrYTE5ZmphNnovSHhlME9WRkdl?=
 =?utf-8?B?UlVyWUh0MlZtT3VUSmw0N0JUNWJIODJBK0kxV1hWRHlvRDJHR3lhaEhMVnJM?=
 =?utf-8?B?MnhTY0d0L3hQTEY4N1VzSGhISm9tSHp2NENiZ1lJbHdQOXRWcXI5cjVBaytD?=
 =?utf-8?B?WDNldllPc0F3UlNhd3BpdVl5eDFnNkFHck82ZCtMUjZwWU5reE5lbXo5aHgw?=
 =?utf-8?B?YmpDWnp0UEVkQTRtZ0ljN2ZZRXRTejZEaE52ci9BMkRqUzhLZXZCcmViTkdp?=
 =?utf-8?B?ekVBbXc1RWtXenJKb1IxZ20vTmFNSDhjYmZvUFAzVDRDWm5wNWlTekxCL0Mv?=
 =?utf-8?B?TUc1c21BbzNSRmpCRFVkajNMQWlHU2E1UFVSSHUvaEVJZkE0SWEwWHg0UkZm?=
 =?utf-8?B?WmdGVk9RcnpVYWxSS0FTMmIzVjZJOU5wS3NMc0pHMUcrL2tkcWV1U1NLMGJQ?=
 =?utf-8?B?VzhwMFlMdzNkSVBOeTRZendEVWJvaGNBeDFkM1dNYXFZa05wcjBRZXZhZ2k0?=
 =?utf-8?B?U01pejIwS2ZqZXp3cEgyd3hFRGs5REZGbTJpSC9KTkJEYzRacysrUUJkdnRC?=
 =?utf-8?B?UnBNOU9jSlVSVWdNclRqVlhpRWI4YjFva1Uvems2N29Ya1JBeVBUYkxSam1E?=
 =?utf-8?B?NlkvWHM1Q0VFcEdZNUh4amxSU0ROYTl4MWJDZ3U5blJ2cW91dlZJOXJHWEpM?=
 =?utf-8?B?aDQ4bUVWOXA4c2tiOGhBRGZaajkxYlFHT0xnRjVINS84alp2bnM4UDlNVHFP?=
 =?utf-8?B?NmhMVGZOUU1QMkR2bW95eDZtNk9SUWNOcng2N2VwUnFrNnlqdnFsYll3WnNz?=
 =?utf-8?B?MzhVZnJHQ1hkdGtxM3phUDdJY1ppN0EzMXMydElyajJqT0k1b3BIY1dkRWtu?=
 =?utf-8?Q?Kmi5EcOFhToIf7TJg9c4oBNJx?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2add5d13-7981-4a0d-9819-08dbb80a2b69
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2023 05:43:22.0009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DbcM5GOeEnzhJm43Aq5eLjRF5+awjzkSuLSBIfSjboKtR7OrPVfuklv3hp1n+msg95r0HoueHjwYYWc1EXSqn+kEl2CJSH9PBZt/1bdECeY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8439
X-OriginatorOrg: intel.com
Subject: Re: [Spice-devel] [PATCH] common: Add a udev helper to identify GPU
 Vendor
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
Cc: "Kim, Dongwon" <dongwon.kim@intel.com>, "Mazlan,
 Hazwan Arif" <hazwan.arif.mazlan@intel.com>, Gerd Hoffmann <kraxel@redhat.com>,
 "Teng, Jin Chung" <jin.chung.teng@intel.com>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkgRnJlZGlhbm8sDQoNCj4gPiBHaXZlbiB0aGF0IGxpYnVkZXYgaXMgd2lkZWx5IGF2YWlsYWJs
ZSBvbiBtYW55IGRpc3Ryb3MsIHdlIGNhbg0KPiA+IHVzZSB0aGUgcmVsZXZhbnQgQVBJcyB0byBp
dGVyYXRlIG92ZXIgYWxsIHRoZSBQQ0kgZGV2aWNlcyBvbg0KPiA+IGFueSBnaXZlbiBzeXN0ZW0g
dG8gaWRlbnRpZnkgaWYgYSBHUFUgaXMgYXZhaWxhYmxlIGJ5IGxvb2tpbmcNCj4gPiBhdCB0aGUg
ZHJpdmVyIG5hbWUgYXNzb2NpYXRlZCB3aXRoIGl0Lg0KPiA+DQo+ID4gVGhpcyBjYXBhYmlsaXR5
IChpZGVudGlmeWluZyBHUFUgVmVuZG9yKSBpcyB1c2VmdWwgdG8gZGV0ZXJtaW5lDQo+ID4gd2hl
dGhlciB0byBsYXVuY2ggR3N0cmVhbWVyIHBpcGVsaW5lIHVzaW5nIGgvdyBhY2NlbGVyYXRlZA0K
PiA+IHBsdWdpbnMuIE9uIHN5c3RlbXMgd2hlcmUgbGlidWRldiBpcyBub3QgYXZhaWxhYmxlIChX
aW5kb3dzKSwNCj4gDQo+IE5vciBNYWNPUyBJIHRoaW5rLg0KPiANCj4gPiB3ZSdkIGhhdmUgdG8g
bWFrZSB0aGlzIGRldGVybWluYXRpb24gYmFzZWQgb24gdGhlIGF2YWlsYWJpbGl0eQ0KPiA+IG9m
IHRoZSBwbHVnaW5zIGluIEdzdHJlYW1lciByZWdpc3RyeS4NCj4gPg0KPiA+IENjOiBGcmVkaWFu
byBaaWdsaW8gPGZyZWRkeTc3QGdtYWlsLmNvbT4NCj4gPiBDYzogR2VyZCBIb2ZmbWFubiA8a3Jh
eGVsQHJlZGhhdC5jb20+DQo+ID4gQ2M6IE1hcmMtQW5kcsOpIEx1cmVhdSA8bWFyY2FuZHJlLmx1
cmVhdUByZWRoYXQuY29tPg0KPiA+IENjOiBEb25nd29uIEtpbSA8ZG9uZ3dvbi5raW1AaW50ZWwu
Y29tPg0KPiA+IENjOiBIYXp3YW4gQXJpZiBNYXpsYW4gPGhhendhbi5hcmlmLm1hemxhbkBpbnRl
bC5jb20+DQo+ID4gQ2M6IEppbiBDaHVuZyBUZW5nIDxqaW4uY2h1bmcudGVuZ0BpbnRlbC5jb20+
DQo+ID4gU2lnbmVkLW9mZi1ieTogVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBjb21tb24vbWVzb24uYnVpbGQgfCAgMiArKw0KPiA+ICBj
b21tb24vdWRldi5jICAgICAgfCA2MA0KPiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrDQo+ID4gIGNvbW1vbi91ZGV2LmggICAgICB8IDEyICsrKysrKysrKysN
Cj4gPiAgbWVzb24uYnVpbGQgICAgICAgIHwgIDcgKysrKysrDQo+ID4gIDQgZmlsZXMgY2hhbmdl
ZCwgODEgaW5zZXJ0aW9ucygrKQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgY29tbW9uL3VkZXYu
Yw0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgY29tbW9uL3VkZXYuaA0KPiA+DQo+ID4gZGlmZiAt
LWdpdCBhL2NvbW1vbi9tZXNvbi5idWlsZCBiL2NvbW1vbi9tZXNvbi5idWlsZA0KPiA+IGluZGV4
IDA5ZTNlYTcuLjYzYmQyZGIgMTAwNjQ0DQo+ID4gLS0tIGEvY29tbW9uL21lc29uLmJ1aWxkDQo+
ID4gKysrIGIvY29tbW9uL21lc29uLmJ1aWxkDQo+ID4gQEAgLTM5LDYgKzM5LDggQEAgc3BpY2Vf
Y29tbW9uX3NvdXJjZXMgPSBbDQo+ID4gICAgJ3NuZF9jb2RlYy5oJywNCj4gPiAgICAndXRpbHMu
YycsDQo+ID4gICAgJ3V0aWxzLmgnLA0KPiA+ICsgICd1ZGV2LmMnLA0KPiA+ICsgICd1ZGV2Lmgn
LA0KPiA+ICAgICd2ZXJpZnkuaCcsDQo+ID4gICAgJ3JlY29yZGVyLmgnDQo+ID4gIF0NCj4gPiBk
aWZmIC0tZ2l0IGEvY29tbW9uL3VkZXYuYyBiL2NvbW1vbi91ZGV2LmMNCj4gPiBuZXcgZmlsZSBt
b2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAuLjk5NWEzN2UNCj4gPiAtLS0gL2Rldi9udWxs
DQo+ID4gKysrIGIvY29tbW9uL3VkZXYuYw0KPiA+IEBAIC0wLDAgKzEsNjAgQEANCj4gDQo+IENh
biB5b3UgYWRkIGxpY2Vuc2UgY29tbWVudHM/DQo+IA0KPiA+ICsjaW5jbHVkZSA8Y29uZmlnLmg+
DQo+ID4gKw0KPiA+ICsjaWZkZWYgSEFWRV9VREVWDQo+ID4gKyNpbmNsdWRlIDxsaWJ1ZGV2Lmg+
DQo+ID4gKyNpbmNsdWRlIDxzdGRib29sLmg+DQo+ID4gKyNpbmNsdWRlIDxzdHJpbmcuaD4NCj4g
PiArI2luY2x1ZGUgInVkZXYuaCINCj4gPiArDQo+ID4gKyNkZWZpbmUgSU5URUxfR0ZYX0RSVl9O
QU1FICJpOTE1Ig0KPiA+ICsNCj4gPiArc3RhdGljIGJvb2wgaXNfaW50ZWxfZ3B1KGNvbnN0IGNo
YXIgKmRydl9uYW1lKQ0KPiA+ICt7DQo+ID4gKyAgICByZXR1cm4gIXN0cmNtcChkcnZfbmFtZSwg
SU5URUxfR0ZYX0RSVl9OQU1FKTsNCj4gPiArfQ0KPiA+ICsNCj4gPiArR3B1VmVuZG9yIHNwaWNl
X3VkZXZfZGV0ZWN0X2dwdSgpDQo+ID4gK3sNCj4gPiArICAgIHN0cnVjdCB1ZGV2ICp1ZGV2Ow0K
PiA+ICsgICAgc3RydWN0IHVkZXZfZGV2aWNlICp1ZGV2X2RldjsNCj4gPiArICAgIHN0cnVjdCB1
ZGV2X2VudW1lcmF0ZSAqdWRldl9lbnVtOw0KPiA+ICsgICAgc3RydWN0IHVkZXZfbGlzdF9lbnRy
eSAqZW50cnksICpkZXZpY2VzOw0KPiA+ICsgICAgY29uc3QgY2hhciAqcGF0aCwgKmRyaXZlcjsN
Cj4gPiArICAgIEdwdVZlbmRvciB2ZW5kb3IgPSBHUFVfVkVORE9SX09USEVSOw0KPiA+ICsNCj4g
PiArICAgIHVkZXYgPSB1ZGV2X25ldygpOw0KPiA+ICsgICAgaWYgKCF1ZGV2KSB7DQo+ID4gKyAg
ICAgICAgcmV0dXJuIHZlbmRvcjsNCj4gPiArICAgIH0NCj4gPiArDQo+ID4gKyAgICB1ZGV2X2Vu
dW0gPSB1ZGV2X2VudW1lcmF0ZV9uZXcodWRldik7DQo+ID4gKyAgICBpZiAodWRldl9lbnVtKSB7
DQo+ID4gKyAgICAgICAgdWRldl9lbnVtZXJhdGVfYWRkX21hdGNoX3N1YnN5c3RlbSh1ZGV2X2Vu
dW0sICJwY2kiKTsNCj4gPiArICAgICAgICB1ZGV2X2VudW1lcmF0ZV9zY2FuX2RldmljZXModWRl
dl9lbnVtKTsNCj4gPiArICAgICAgICBkZXZpY2VzID0gdWRldl9lbnVtZXJhdGVfZ2V0X2xpc3Rf
ZW50cnkodWRldl9lbnVtKTsNCj4gPiArDQo+ID4gKyAgICAgICAgdWRldl9saXN0X2VudHJ5X2Zv
cmVhY2goZW50cnksIGRldmljZXMpIHsNCj4gPiArICAgICAgICAgICAgcGF0aCA9IHVkZXZfbGlz
dF9lbnRyeV9nZXRfbmFtZShlbnRyeSk7DQo+ID4gKyAgICAgICAgICAgIHVkZXZfZGV2ID0gdWRl
dl9kZXZpY2VfbmV3X2Zyb21fc3lzcGF0aCh1ZGV2LCBwYXRoKTsNCj4gPiArDQo+ID4gKyAgICAg
ICAgICAgIGRyaXZlciA9IHVkZXZfZGV2aWNlX2dldF9kcml2ZXIodWRldl9kZXYpOw0KPiA+ICsg
ICAgICAgICAgICBpZiAoZHJpdmVyICYmIGlzX2ludGVsX2dwdShkcml2ZXIpKSB7DQo+ID4gKyAg
ICAgICAgICAgICAgICB2ZW5kb3IgPSBHUFVfVkVORE9SX0lOVEVMOw0KPiA+ICsgICAgICAgICAg
ICAgICAgdWRldl9kZXZpY2VfdW5yZWYodWRldl9kZXYpOw0KPiA+ICsgICAgICAgICAgICAgICAg
YnJlYWs7DQo+ID4gKyAgICAgICAgICAgIH0NCj4gPiArICAgICAgICAgICAgdWRldl9kZXZpY2Vf
dW5yZWYodWRldl9kZXYpOw0KPiA+ICsgICAgICAgIH0NCj4gPiArICAgICAgICB1ZGV2X2VudW1l
cmF0ZV91bnJlZih1ZGV2X2VudW0pOw0KPiA+ICsgICAgfQ0KPiA+ICsgICAgdWRldl91bnJlZih1
ZGV2KTsNCj4gPiArDQo+ID4gKyAgICByZXR1cm4gdmVuZG9yOw0KPiA+ICt9DQo+ID4gKyNlbHNl
DQo+ID4gK0dwdVZlbmRvciBzcGljZV91ZGV2X2RldGVjdF9ncHUoKQ0KPiA+ICt7DQo+ID4gKyAg
ICByZXR1cm4gR1BVX1ZFTkRPUl9VTktOT1dOOw0KPiA+ICt9DQo+ID4gKyNlbmRpZg0KPiA+ICsN
Cj4gPiBkaWZmIC0tZ2l0IGEvY29tbW9uL3VkZXYuaCBiL2NvbW1vbi91ZGV2LmgNCj4gPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAuLmYxYmEwZWMNCj4gPiAtLS0gL2Rl
di9udWxsDQo+ID4gKysrIGIvY29tbW9uL3VkZXYuaA0KPiA+IEBAIC0wLDAgKzEsMTIgQEANCj4g
PiArI2lmbmRlZiBIX1NQSUNFX0NPTU1PTl9VREVWDQo+ID4gKyNkZWZpbmUgSF9TUElDRV9DT01N
T05fVURFVg0KPiA+ICsNCj4gPiArdHlwZWRlZiBlbnVtIHsNCj4gPiArICAgIEdQVV9WRU5ET1Jf
VU5LTk9XTiwNCj4gPiArICAgIEdQVV9WRU5ET1JfT1RIRVIsDQo+ID4gKyAgICBHUFVfVkVORE9S
X0lOVEVMLA0KPiA+ICt9IEdwdVZlbmRvcjsNCj4gPiArDQo+ID4gK0dwdVZlbmRvciBzcGljZV91
ZGV2X2RldGVjdF9ncHUoKTsNCj4gPiArDQo+IA0KPiBXaGF0IGlmIHRoZSBtYWNoaW5lIGhhcyBt
b3JlIHRoYW4gb25lIEdQVSA/DQpJIHRoaW5rIHdlIGNhbiBoYXZlIHRoZSBmb2xsb3dpbmcgc2l0
dWF0aW9uczoNCi0gbW9yZSB0aGFuIG9uZSBHUFUgZnJvbSBkaWZmZXJlbnQgdmVuZG9yczoNCklu
IHRoaXMgY2FzZSwgdXNlciBwcmVmZXJlbmNlIGNhbiBiZSBkZXRlcm1pbmVkIGJhc2VkIG9uIHdo
aWNoIEdzdHJlYW1lcg0KcGx1Z2lucyBhcmUgaW5zdGFsbGVkIG9uIHRoZSBtYWNoaW5lLiBJbiBv
dGhlciB3b3JkcyBpZiB0aGUgdXNlciB3YW50cyB0bw0KdXNlIGEgc3BlY2lmaWMgR1BVIGZvciB0
aGlzIHVzZS1jYXNlLCBoZSBuZWVkcyB0byBlbnN1cmUgdGhhdCBvbmx5IHRoZQ0KcGx1Z2lucyB0
aGF0IHdvcmsgd2l0aCB0aGF0IEdQVSBhcmUgaW5zdGFsbGVkLiANCi0gbW9yZSB0aGFuIG9uZSBH
UFUgZnJvbSBzYW1lIHZlbmRvcjoNCkFGQUlLLCBpbiB0aGlzIGNhc2UgdGhlIHNhbWUgR3N0cmVh
bWVyIHBsdWdpbnMgd291bGQgd29yayB3aXRoIGJvdGgNCkdQVXMuIFRoZXJlZm9yZSwgdGhlIG9u
dXMgaXMgb24gR3N0cmVhbWVyIHRvIGFzc29jaWF0ZSB0aGUgY3VycmVudA0KImNvbnRleHQiIHdp
dGggdGhlIHJpZ2h0IEdQVS4gSSBkb24ndCB0aGluayB0aGVyZSBpcyBhbnl0aGluZyBlbHNlIHRo
YXQNCmNhbiBiZSBkb25lIGF0IHRoZSBTcGljZSBsZXZlbCBmb3IgdGhpcyBjYXNlLg0KDQo+IE1h
eWJlIGENCj4gDQo+IGJvb2wgc3BpY2VfdWRldl9oYXNfaW50ZWxfZ3B1KHZvaWQpOw0KSSB0aGlu
ayBkb2luZyBpdCB0aGlzIHdheSB3aWxsIHByZXZlbnQgY2hlY2tpbmcgZm9yIHRoaXMgY29uZGl0
aW9uDQppbiBzcGljZS1ndGsgOg0KICAgIGlmICh2ZW5kb3IgPT0gR1BVX1ZFTkRPUl9JTlRFTCB8
fA0KICAgICAgICB2ZW5kb3IgPT0gR1BVX1ZFTkRPUl9VTktOT1dOKSB7DQoNCj4gDQo+IGZ1bmN0
aW9uIGluc3RlYWQ/DQo+IA0KPiBOb3RlIHRoYXQgaW4gQyBzb21ldGhpbmcgbGlrZSB2b2lkIGZ1
bmNuYW1lKCkgaXMgSyZSIHN0eWxlLCBzb21ldGhpbmcNCj4geW91IGRvbid0IHdhbnQsIHlvdSBu
ZWVkIHRvIHNwZWNpZnkgdGhlIGFyZ3VtZW50IGxpc3QgYW5kIHR5cGVzIChpbg0KPiB0aGlzIGNh
c2UgInZvaWQiKS4NCj4gDQo+IFJlY2VudGx5IHdlIHVzZSAiI3ByYWdtYSBvbmNlIiBmb3IgbmV3
IGhlYWRlcnMgYnV0IGl0J3MgeW91ciBjYWxsLg0KPiANCj4gSSB3b3VsZCB1c2Ugc29tZXRoaW5n
IGxpa2UNCj4gDQo+IC8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBCU0QtMy1DbGF1c2UgKi8N
Cj4gDQo+ICNwcmFnbWEgb25jZQ0KPiANCj4gI2luY2x1ZGUgPHN0ZGJvb2wuaD4NCj4gI2luY2x1
ZGUgPHNwaWNlL21hY3Jvcy5oPg0KPiANCj4gU1BJQ0VfQkVHSU5fREVDTFMNCj4gDQo+IGJvb2wg
c3BpY2VfdWRldl9oYXNfaW50ZWxfZ3B1KHZvaWQpOw0KPiANCj4gU1BJQ0VfRU5EX0RFQ0xTDQpP
aywgSSdsbCBpbmNvcnBvcmF0ZSB5b3VyIHN1Z2dlc3Rpb25zIGluIHYyLg0KDQo+IA0KPiA+ICsj
ZW5kaWYNCj4gPiBkaWZmIC0tZ2l0IGEvbWVzb24uYnVpbGQgYi9tZXNvbi5idWlsZA0KPiA+IGlu
ZGV4IGVlY2NlY2QuLmNhZmJmMDMgMTAwNjQ0DQo+ID4gLS0tIGEvbWVzb24uYnVpbGQNCj4gPiAr
KysgYi9tZXNvbi5idWlsZA0KPiA+IEBAIC0xNDcsNiArMTQ3LDEzIEBAIGlmIHNtYXJ0Y2FyZF9k
ZXAuZm91bmQoKQ0KPiA+ICAgIHNwaWNlX2NvbW1vbl9jb25maWdfZGF0YS5zZXQoJ1VTRV9TTUFS
VENBUkQnLCAnMScpDQo+ID4gIGVuZGlmDQo+ID4NCj4gPiArI3VkZXYNCj4gPiArdWRldl9kZXAg
PSBkZXBlbmRlbmN5KCdsaWJ1ZGV2JykNCj4gPiAraWYgdWRldl9kZXAuZm91bmQoKQ0KPiA+ICsg
IHNwaWNlX2NvbW1vbl9kZXBzICs9IHVkZXZfZGVwDQo+ID4gKyAgc3BpY2VfY29tbW9uX2NvbmZp
Z19kYXRhLnNldCgnSEFWRV9VREVWJywgJzEnKQ0KPiA+ICtlbmRpZg0KPiA+ICsNCj4gPiAgIw0K
PiA+ICAjIGdsb2JhbCBDIGRlZmluZXMNCj4gPiAgIw0KPiANCj4gQ2FuIHlvdSBhZGQgYXV0b2Nv
bmYgc3VwcG9ydD8NClN1cmUsIHdpbGwgYWRkIGl0IGluIHYyLg0KDQpUaGFua3MsDQpWaXZlaw0K
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvY29uZmlndXJlLmFjIGIvY29uZmlndXJlLmFjDQo+IGluZGV4
IDBkNGMyMmIuLjRmYzQyNjMgMTAwNjQ0DQo+IC0tLSBhL2NvbmZpZ3VyZS5hYw0KPiArKysgYi9j
b25maWd1cmUuYWMNCj4gQEAgLTY1LDYgKzY1LDggQEAgU1BJQ0VfQ09NTU9OX0xJQlM9JyQoUElY
TUFOX0xJQlMpICQoR0xJQjJfTElCUykNCj4gJChPUFVTX0xJQlMpICQoT1BFTlNTTF9MSUJTKScN
Cj4gIEFDX1NVQlNUKFNQSUNFX0NPTU1PTl9DRkxBR1MpDQo+ICBBQ19TVUJTVChTUElDRV9DT01N
T05fTElCUykNCj4gDQo+ICtQS0dfQ0hFQ0tfTU9EVUxFUyhbVURFVl0sIFtsaWJ1ZGV2XSwgQUNf
REVGSU5FKFtIQVZFX1VERVZdLCBbMV0sDQo+IFtEZWZpbmUgaWYgd2UgaGF2ZSBsaWJ1ZGV2IHN1
cHBvcnRdKSkNCj4gKw0KPiAgIyBUaGUgRW5kIQ0KPiAgQUNfQ09ORklHX0ZJTEVTKFsNCj4gICAg
TWFrZWZpbGUNCj4gDQo+IEZyZWRpYW5vDQo=
