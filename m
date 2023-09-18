Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E9E7A40AD
	for <lists+spice-devel@lfdr.de>; Mon, 18 Sep 2023 07:53:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7504C10E0DF;
	Mon, 18 Sep 2023 05:53:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7982410E0DF
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Sep 2023 05:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695016399; x=1726552399;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FIUb5e4SsLD4WkjqghUbFclC/6gAE5giaCM4tzWMFRo=;
 b=GIc11RtLYOQ01lcEeSO98UKhx4h7CAz5kyTlusjnupdT6iU/H0j+Rhrp
 RrjVN0XOtoTCZRM4CGJCe0rOTAc6kJ+UAZhoSbln6y4PG0ASdWzqWcdgY
 SgQ+bTNMxSszewSl7upDiTqcEytP9nbgOzZrMrjg5b7G4mpnT1MZF6heC
 R0uo/GPtTeGVPcFibHeIJHzpEREJ612Kr2lviFta6uYmm4vAXl706D7Yl
 6h+wjBYJmjjrrzwx7wmMfRnB6BjKqhjhulNlhdzFj4i3waETk4R9lE8ow
 EwR3wf255uZbfRWJ57CsHP5kWaNSHXKdbkHPaCKObfFmtCMBkjTsg5Ibg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="465916835"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="465916835"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 22:52:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="775002100"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="775002100"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2023 22:52:29 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 17 Sep 2023 22:52:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 17 Sep 2023 22:52:28 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 17 Sep 2023 22:52:28 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 17 Sep 2023 22:52:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ak2pAm+yeprXJhQZryF3q18QuTvdbTVuql+4rOx4JQLE72mHs45tj4YKgXafGBN+BBFm4ZZcuR65XbPtU8YWEG6XGGJ0YDQECKwUL8h3pZ0Vpg/r0diUhnoGRcAouMrW5TjY/TMJQ9QRE3rgo5DA3Buya4Z9TLiHgJkKyPqFgApCqHh7zwyldRbz9JyPmtTWqxMJlUiUNyZcThdPxocSIqwIg4Lxmt7zIvdNWVaDnq6XH8mdJzkD43tAG081rVNDsEAxbaAUawimj5BMTHIrteD7hXBeWzL3LOCJiCyLXLKAQHayiDV8RxOujNtHDF8KoeCAySe7WisQ63qHn1tcLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FIUb5e4SsLD4WkjqghUbFclC/6gAE5giaCM4tzWMFRo=;
 b=bUCWt2Y5MpiLj0DQfvCBzX05NUHBVLDrx5Z28W7JcGVH5x+oEfG5x2OblclgC7kfOBtA25PT5wqTJ8VosAS4tC94IaXKbjlyIvvMk+l1UZHuykTF0V0WMmFODz9e853r7A0gvLvoKK8AabqGZtIuN1BaTqcLjoum5iswPt8U4rcOHDz6XOdhzggxml1BddYtK1ybTRXLRL0jQTHgwvnXGauyg8i847dLXlDs35088kyCohcR3vkb88Qk7wJocRenY8V+pEFPBuYIc8gz5wVcPr3LqKEvUgz3Ei9sef2f7Oy83z3iCICasTKK+PvjBAMwbw8tG/tHpf7ES1t8/wM6tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by IA1PR11MB7727.namprd11.prod.outlook.com (2603:10b6:208:3f1::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.24; Mon, 18 Sep
 2023 05:52:27 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::fe3f:b90e:4eaa:fac8]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::fe3f:b90e:4eaa:fac8%7]) with mapi id 15.20.6792.024; Mon, 18 Sep 2023
 05:52:26 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>
Thread-Topic: [PATCH 2/4] channel-display-gst: Add "byte-stream" as the stream
 format for h264
Thread-Index: AQHZ52w2cz143j0PRkq+cd+4kxWpQLAcGtQAgAPTssA=
Date: Mon, 18 Sep 2023 05:52:26 +0000
Message-ID: <IA0PR11MB71852AFCB716616A471B6591F8FBA@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-5-vivek.kasireddy@intel.com>
 <CAHt6W4dgV69Q72u+AvCqSKSXYL8R5s0JC6nAetsR15n4EUR=Qw@mail.gmail.com>
In-Reply-To: <CAHt6W4dgV69Q72u+AvCqSKSXYL8R5s0JC6nAetsR15n4EUR=Qw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|IA1PR11MB7727:EE_
x-ms-office365-filtering-correlation-id: cf7b6a47-2e49-4c80-be54-08dbb80b6ffc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c35HglHEFOGO47tSh139tCAbJit99VRJdbg5QoBMzQPfA5+bMysQ/MxdCzeLTqqO2t1yz4TM+fH3MarmsxC8heUO+Kfu4EXb0wRu2p8LiPcCYVlkrXI75dTYECTPky5yX/4TR/7l5s0nOEl5AtcC63zCOEtgka+TNTQhCisHXgCf3eS4Pb1aHUTJg5NV3p0jA+YT+KCTm8ziGu8TyhlGEZgdIC6Cf0M8BvFXLSM+4fDQzHeTrjmk+OnZy8evtuQ7mAzfN8j8U9LnxXQmbEXTETmria9Ctgg6/pMDorcPFFid/67YNcO5uJu9P7iRyKFW0+s+8vK4tvgM0vqK4Uyj54GcYdGfc+URPWD6vnVOVMtmv+JyRRUzqRyIqOwLCzZKz6UCxcgeoOnZRnnAOLnwy8Xn5+ubyTF8v4PPGJAPUBjHNkvk0ZH4FGqxbP1yemRHpeIIXSKDsWZL7M5UUYEZPrz6W8Jnj8AeCP2yfpT1JpQ6qWvVTOlf7vpaBgPRPpeAH83N96JsmBV+KDwOwFwA8Me8cF77PiEAFwAjT2fB43fi/VFto3EOxr0EP0J+YAxh/kVFSPQXKLbN4WTTmF6J5y9udPu5OgXDMOLRcdYiVUg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(346002)(396003)(39860400002)(136003)(1800799009)(186009)(451199024)(52536014)(26005)(5660300002)(8936002)(4326008)(8676002)(2906002)(86362001)(55016003)(82960400001)(38100700002)(122000001)(38070700005)(33656002)(83380400001)(66946007)(6506007)(966005)(7696005)(76116006)(66556008)(54906003)(64756008)(66446008)(66476007)(478600001)(71200400001)(9686003)(41300700001)(6916009)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aXYrNWVJb3BUOE9Pa2Vpa3VhUFlCZUgvSTUrMC9vay9IMW1EM1pQQUpyeFJK?=
 =?utf-8?B?b3BJcXZLVmVIbE5sU1UxSy9tWk1XT2xzNTdHcE5ZUW45VlZvMDQvbm1DVEZH?=
 =?utf-8?B?SXZuQXZBellLVXVnTDE1dWFyZWtIcDlyMHV2d2E5dzBXM1hyREFJMktCbVk4?=
 =?utf-8?B?enQxYWtHOXV4UFV5MHJTN04wZURHTElTQTR6WFdoZzZYcE5Ed0NXblJPUXFY?=
 =?utf-8?B?aEJiek4wVlRmcDhkMEFHUXpZYjJRUFJ3WFpjamNXbXV0ZzlGS0l2RmNiZm5Q?=
 =?utf-8?B?N2ZSWGJVcUhHN1IyZkhHZWpLMElhWXFYNHJieURyc3V0eVZNQWdXczFQcmxR?=
 =?utf-8?B?ZFhCdmNpM2JyNTlhZys1aENjL2l5SGJOQ010QWdTN1VjZkN2WTgyZFhpMDBi?=
 =?utf-8?B?R0d6TzVMZXByTWhia1p6UHRUNzZFdU5wckdReFJ6TDJXcm9wdWt4OTlkNVNr?=
 =?utf-8?B?cWNPaWpLcE1jMk12UFowQW4wUm1YTVVBamUzcWZTREtPR29vUW01aXgwekVU?=
 =?utf-8?B?ZGJLa3ZWVnVGSEM4MUM5M0R2dWp2M2ZNbXgvTHdnWndqVUNhaCt3dDV4MlpW?=
 =?utf-8?B?M05KYlZtWEUwcjBEYXQ5Q0xrdkUybnNJbU1mUTNIOGJpRHlqTzdWdk1seXBF?=
 =?utf-8?B?RUFqTUdhOXBlcHhVZVgzWU1PN01udXdrVzBLMjB3L3ROa1VPU2F5dmd1QVg2?=
 =?utf-8?B?ZWNjNlNvVDlSUmFtNEFqVWJKaGM1ZjFiTmRWaUx5cExFQmJyTjV2c1RSRUdn?=
 =?utf-8?B?SlA4ZExFeVRwdlozaVp6a3Z2Y0VQU2VDdTJvb29qUW4wSklTM2Q3UnVmRGJR?=
 =?utf-8?B?S3FoR1FoMGxBWXVnOHhuN29xekl6bk1ERU0vWVovQUhVdXdnNnZaWUpqNms2?=
 =?utf-8?B?ZysveGFMVHYySVdZc01kUkFzU3RBMUhURGFhd1FZcmZJbXh3Nmo2UG5mbnli?=
 =?utf-8?B?RnR5a1M1QmUydHVyVjVadCtXTHR4bWRMdFVaTUtkNUpmRmRkbUYvVy9pWmtP?=
 =?utf-8?B?TEplUlIraUdTU0krT3ltckRLM2VyMCtycGtTN0tVNU9tbWhsOUpDTDc5bG5z?=
 =?utf-8?B?Z29aTldQVFlaSkJpZFJHZlY0d010RWhuWDR0Wjk5Z09WTCtzTkpJS1ZjekJB?=
 =?utf-8?B?eDAzTGhsQ2s5c2N2d0NiaDBuUmM2Y3hLeVUrN3N1MWNNRDBNb2VRcXZ1cDZC?=
 =?utf-8?B?eDhzeE1lYXdSUitZaTVQRVVmbnRodDlFS28xUU1SalE2TDdFOVRnWnVJMWNM?=
 =?utf-8?B?K3dSNjhXdDBKNTNmaEl1NC9TLzRJMEdYdnAybGMwM2E4TnBPYm81dHg3MmpK?=
 =?utf-8?B?QUNzN3lTZWhZdEVJL0RVQ1FoZmJ5TE5sYXVhOFhydnQwZGlXWlhkK2NFUzJw?=
 =?utf-8?B?N0pWeFJveHBhaklXYU9HZVBxOHhxd0FUT1YxWU53NFVFckh6d3ZOOGJLcm9h?=
 =?utf-8?B?akJTYllnRFFHZ1FEanhodHlhdWc3dFdKWnBDblRSb0ZtM0lZRDVkempmY0NO?=
 =?utf-8?B?aFc3UHhqemxVZENOZGRBcm84WlpDSDhzQUU3UDdBSjRqRDBKbmZqK3o1SGhW?=
 =?utf-8?B?UDZGcWxZSTZrWCtZek93OEVVRGhKazg3RzIvSlFnS3JQUWloSm85ZHBzbWJv?=
 =?utf-8?B?WVpaZTdOaVJWaGJuWGhuckZKN3dHSlFyZjJFaytlNGlvbHQ0WVI1d0Fncyt0?=
 =?utf-8?B?Y3VLODVqSE9yQVduamhRK015SmRjR3YydWYyOXo2Q1VEby82RVVKQ0M0YlY5?=
 =?utf-8?B?dWxqamF4djJMRGZLWDJCZHhKNEdGaUdXVGNzbU5lZzRJVVJncU5qWEJsZlFr?=
 =?utf-8?B?Y24rVi9GL2wweFlTVVg4ZGVoUGlGY0QxdE5NZlg3TE9Ja0diTFRwTVV3cTlJ?=
 =?utf-8?B?cW1XaERVc3NjMGd3V0ZGaWZCOXlkc2ZmazhCN2hhaDFJT05GazQ5aEFYekdM?=
 =?utf-8?B?aXZhZXY1QnhvVmd1ZkhiZkxESXZWNUN4NlFYMlFOU1hRcEx4YjYvYTBrRTZo?=
 =?utf-8?B?cGlaVjBRZTVaMmh0ZjZ3OE1xVy9uZytldXBVcmJDT3gxMERLMThGU3FlcElG?=
 =?utf-8?B?eUpzc1FIaGdPTW5zYTZhVHZBSHlJbDBTOUd5aGZsTDBTVnJxOGdUUm9IZVUv?=
 =?utf-8?Q?FqilfmyiCKR8g1ZpwP6qHezaB?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf7b6a47-2e49-4c80-be54-08dbb80b6ffc
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2023 05:52:26.5548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6peRpkhDsuid6R4FchfoFV8IdHd/3uenuHo/Dfj1V+qpxgJ8LNBokstVKYsqOzZp7g4MgTttWqRrFYB2gUGrn3RKpO4rAFGtGr2tEmH0ExQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7727
X-OriginatorOrg: intel.com
Subject: Re: [Spice-devel] [PATCH 2/4] channel-display-gst: Add
 "byte-stream" as the stream format for h264
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
Cc: "Mazlan, Hazwan Arif" <hazwan.arif.mazlan@intel.com>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>, "Kim,
 Dongwon" <dongwon.kim@intel.com>, "Teng, Jin Chung" <jin.chung.teng@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkgRnJlZGlhbm8sDQoNCj4gPg0KPiA+IEFkZGluZyB0aGUgc3RyaW5nICJzdHJlYW0tZm9ybWF0
PWJ5dGUtc3RyZWFtIiB0byBkZWNvZGVyIGNhcGFiaWxpdGllcw0KPiA+IChkZWNfY2FwcykgZm9y
IGgyNjQvaDI2NSBjb2RlY3Mgc3RvcHMgR3N0cmVhbWVyIGZyb20gY29tcGxhaW5pbmcNCj4gPiBh
Ym91dCBtaXNzaW5nIHN0cmVhbSBmb3JtYXQuDQo+ID4NCj4gPiBDYzogRnJlZGlhbm8gWmlnbGlv
IDxmcmVkZHk3N0BnbWFpbC5jb20+DQo+ID4gQ2M6IERvbmd3b24gS2ltIDxkb25nd29uLmtpbUBp
bnRlbC5jb20+DQo+ID4gQ2M6IEppbiBDaHVuZyBUZW5nIDxqaW4uY2h1bmcudGVuZ0BpbnRlbC5j
b20+DQo+ID4gQ2M6IEhhendhbiBBcmlmIE1hemxhbiA8aGF6d2FuLmFyaWYubWF6bGFuQGludGVs
LmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaXZlayBLYXNpcmVkZHkgPHZpdmVrLmthc2lyZWRk
eUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIHNyYy9jaGFubmVsLWRpc3BsYXktcHJpdi5oIHwg
NCArKy0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlzcGxheS1wcml2LmggYi9z
cmMvY2hhbm5lbC1kaXNwbGF5LXByaXYuaA0KPiA+IGluZGV4IDY2YzljZmYuLjFhNzU5MGEgMTAw
NjQ0DQo+ID4gLS0tIGEvc3JjL2NoYW5uZWwtZGlzcGxheS1wcml2LmgNCj4gPiArKysgYi9zcmMv
Y2hhbm5lbC1kaXNwbGF5LXByaXYuaA0KPiA+IEBAIC0xNzcsNyArMTc3LDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCB7DQo+ID4gICAgICAgKiAoaGFyZGNvZGVkIGluIHNwaWNlLXNlcnZlciksIGxl
dCdzIGFkZCBpdCBoZXJlIHRvIGF2b2lkIHRoZSB3YXJuaW5nLg0KPiA+ICAgICAgICovDQo+ID4g
ICAgICB7IFNQSUNFX0RJU1BMQVlfQ0FQX0NPREVDX0gyNjQsICJoMjY0IiwNCj4gPiAtICAgICAg
ImgyNjRwYXJzZSAhIGF2ZGVjX2gyNjQiLCAidmlkZW8veC1oMjY0IiB9LA0KPiA+ICsgICAgICAi
aDI2NHBhcnNlICEgYXZkZWNfaDI2NCIsICJ2aWRlby94LWgyNjQsc3RyZWFtLWZvcm1hdD1ieXRl
LQ0KPiBzdHJlYW0iIH0sDQo+ID4NCj4gPiAgICAgIC8qIFNQSUNFX1ZJREVPX0NPREVDX1RZUEVf
VlA5ICovDQo+ID4gICAgICB7IFNQSUNFX0RJU1BMQVlfQ0FQX0NPREVDX1ZQOSwgInZwOSIsDQo+
ID4gQEAgLTE4NSw3ICsxODUsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHsNCj4gPg0KPiA+ICAg
ICAgLyogU1BJQ0VfRElTUExBWV9DQVBfQ09ERUNfSDI2NSAqLw0KPiA+ICAgICAgeyBTUElDRV9E
SVNQTEFZX0NBUF9DT0RFQ19IMjY1LCAiaDI2NSIsDQo+ID4gLSAgICAgICJoMjY1cGFyc2UgISBh
dmRlY19oMjY1IiwgInZpZGVvL3gtaDI2NSIgfSwNCj4gPiArICAgICAgImgyNjVwYXJzZSAhIGF2
ZGVjX2gyNjUiLCAidmlkZW8veC1oMjY1LHN0cmVhbS1mb3JtYXQ9Ynl0ZS0NCj4gc3RyZWFtIiB9
LA0KPiA+DQo+ID4gIH07DQo+ID4NCj4gDQo+IEhpLA0KPiAgICBJIGFncmVlIHdpdGggdGhpcyBj
aGFuZ2UuIFNwZWNpZmljYWxseSBJJ20gZ2V0dGluZyB0aGUgd2FybmluZyB0b28NCj4gZXZlbiBp
ZiBteSBzeXN0ZW0gaXMgcHJldHR5IHVwZGF0ZWQuDQo+IA0KPiBUaGlzIHNldHRpbmcgd2FzIHJl
bW92ZWQgYnkgY29tbWl0DQo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9zcGljZS9z
cGljZS1ndGsvLQ0KPiAvY29tbWl0L2M5MTI5ZWQyMDJiMDBmNGE3NGVhN2E1NWRlMTkxNTAxOTQy
NTdlNzcNCj4gYnV0IHRoZSBleHBsYW5hdGlvbiBhYm91dCBpdCB3YXMgcmVtb3ZlZCBpcyBub3Qg
cmVhbGx5IGNsZWFyIHRvIG1lLg0KPiANCj4gUGVyc29uYWxseSBJIHRoaW5rIHRoaXMgY29tbWl0
IHNob3VsZCBiZSBhcHBsaWVkIGluIGFueSBjYXNlLCBpdCBtYWtlcw0KPiBzZW5zZSBpbmRlcGVu
ZGVudGx5IG9mIHRoZSBzZXJpZXMuIFZpdmVrLCBkbyB5b3UgYWdyZWU/DQpUQkgsIEkgZGlkIG5v
dCB2ZXJpZnkgaWYgYXZkZWNfaDI2NCBpcyBzZWxlY3RlZCBieSBwbGF5YmluIGFuZCB3b3JrcyBh
cw0KZXhwZWN0ZWQgYWZ0ZXIgYXBwbHlpbmcgdGhpcyBwYXRjaC4gT25jZSB3ZSBjYW4gY29uZmly
bSB0aGF0IGF2ZGVjX2gyNjQNCndvcmtzIE9LIHdpdGggdGhpcyBwYXRjaCBhcHBsaWVkLCB5b3Ug
Y2FuIGNvbnNpZGVyIG1lcmdpbmcgdGhpcyBwYXRjaC4NCg0KVGhhbmtzLA0KVml2ZWsNCg0KPiAN
Cj4gVmljdG9yLCBkbyB5b3UgYWdyZWUgdG8gdGhpcyBjaGFuZ2U/DQo+IA0KPiBSZWdhcmRzLA0K
PiAgIEZyZWRpYW5vDQo=
