Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E048C7A4099
	for <lists+spice-devel@lfdr.de>; Mon, 18 Sep 2023 07:50:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DBB810E0CB;
	Mon, 18 Sep 2023 05:50:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECE5910E0CB
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Sep 2023 05:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695016207; x=1726552207;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ntEI8sKi6ZsDZtzBfZ6XQbzQOlyALdCC/yVXe7V3eJo=;
 b=VvB3gQuVopSvehFxViRkP3uk9UTT1axAZAnlcrOF8v4QOYZaBSl3lID4
 KTexAzYn3BcVSqhRc3OJua6sy70GUwsqkxEWPrnfOK9oLTcuw3bdegnV5
 7RAZ3m0dxrhgeeYt3A3030U6Q2zeomPcxnpBQ6AAT460Ci0iW3NrwOjao
 C3mRiyKT4RYnLia6pAux2U6vaLVQHDgcC0sRnsabDZukpgOqgIF88T9B9
 gc5MI7oMxMHAoL9N2saNfkX8NCHUwldn9eBQOHsqqmrPBUhlDhtD46doQ
 wjpgBqV29PJTu0d/sfNzX/yJ9gA1nzmcU0/oLjxDnN+lVm+7XfAt2Dtl7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="446037857"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="446037857"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 22:50:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="835895637"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="835895637"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2023 22:50:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 17 Sep 2023 22:49:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 17 Sep 2023 22:49:58 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 17 Sep 2023 22:49:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AbOWUV/vB4C+LqVmx5cg18XJpIoC1YzGfx55wAhDhKtz0YEd0FGLbUSjxwcTzH1r2LSBDRjYDR6iuVKV5CBkNS8/5vq3nWl3/0R6kwRvAY50a8LdSASem6z5Nn9YIEN7SzDzcZ4X0yr07OWhjuwv2Trmhps/kZaR3P0rb9Xs7W/Xu2CsaqH6dr8aEAwYJeBjYddYXUiHLjlnZ3hrq5wJEWYRO1yD6Lb+i1uiTQAFJTN8SQosXPUD4h89CG9Oz0R47JkZkL8G42nAJDN1m9qlRb2Kb1FsoS2b6uU2lDKbeisu3CSywwWWXM0dyMZpDZiVv+VutdHC9j3wEGJayH1meQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ntEI8sKi6ZsDZtzBfZ6XQbzQOlyALdCC/yVXe7V3eJo=;
 b=VRjnpGhXL7pdBxAiMiEuqDyvggn6bVMX2F+iS+jlE7fycgFjIUHRtuLNeWNcug88jFA80eR1yVrwyavADYoKkYoHpuoC2dMBQdMfEQJYCW4aFdauAQA8pqTh/xREb7Hn8WzVbEG2oWwLRqTbBp8NDiwtTJiNIwso8/URQMFGA0RNP2C/FS1KwvejjSQ4hHstKolYebioxHRADqiKlens/nvj1xiBP+G5lQ4EB6UyBZyoZZ4dYFgKAqXcDa6FWyWME7oXMufwSQastMJ4K0HEI2OMMIzLpQFobDVAYs2bMQnrmSYxYhTayAiBFhoQWBkjqHJ63ztwnhp12J9UuMD0HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by IA1PR11MB7727.namprd11.prod.outlook.com (2603:10b6:208:3f1::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.24; Mon, 18 Sep
 2023 05:49:57 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::fe3f:b90e:4eaa:fac8]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::fe3f:b90e:4eaa:fac8%7]) with mapi id 15.20.6792.024; Mon, 18 Sep 2023
 05:49:56 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>
Thread-Topic: [PATCH 1/4] channel-display-gst: Prefer playbin3 to playbin
Thread-Index: AQHZ52wzVdnThv9vEku1D1nX3ntykLAcBbkAgAPoRlA=
Date: Mon, 18 Sep 2023 05:49:56 +0000
Message-ID: <IA0PR11MB718502D68D0FC7E2702C6E52F8FBA@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-2-vivek.kasireddy@intel.com>
 <CAHt6W4eykzdRk6Fr0Bic0_2scBLa4a6qjczfNgsTmi2dkqax8A@mail.gmail.com>
In-Reply-To: <CAHt6W4eykzdRk6Fr0Bic0_2scBLa4a6qjczfNgsTmi2dkqax8A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|IA1PR11MB7727:EE_
x-ms-office365-filtering-correlation-id: 44c6ce60-760b-42cd-6937-08dbb80b16c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MxWFJBz7+xmKfZ17bUguokVpsFpk0zzaqRl5xzRCW3bolmTMK+EVdYL5BuAD0guXsTQ4BMFczMltshAFpS+bsUTZWImvCWjgE40hUy9dGcPbRf3/b3HZs0dHGC4Wk4o036Dp5DEbt41KTUblPmuCW8j8YQeTQq2+kEVndJq6hN9UxPI2kQ7tL3vhWg3FGJhvbBp9Rh8UUyeyw2Xt1mfu5XrBgYnIIO8BnMnDoJQYCwLuAmjLnHJOFCDeIL7mEXJWSd8yd2sYwp6AVjkMCWeHL9hO4EX5q9JMqxT43nu7q91w1xTSMvR3yacqUogKQV6EvZHxY+Sw5ozlycu+dZiJ7gT367YxRZm3hH0uqjEao5JKnj52zfkVxfmE+liWHtwh99kUZESdn9dpHaFU9DLRmQNucPTiutvOT+QpVTJP810olX7HILqjgmRec/rIvr5iSBhc1hIeQ5HAyo9JQjXbDLXbK2dChjn3BwOTXRWXBAQ7nKj/8i9Z8c8Xnr5INF0/06sFTWnR6w9MVqgVSlwWmHYZbliGscBf32WehEKzEStwoxHDo2pWErDu7/hT0Dum4WBKGKyavTRFYfDGbM1B/u6eRxWUOQIfFWOQg/8AncDk1H/PJlb5HIH++R3hVxOn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(346002)(366004)(376002)(451199024)(186009)(1800799009)(76116006)(66946007)(7696005)(6506007)(66476007)(66446008)(64756008)(54906003)(66556008)(9686003)(316002)(6916009)(41300700001)(71200400001)(478600001)(4326008)(8936002)(8676002)(66899024)(107886003)(52536014)(5660300002)(26005)(33656002)(55016003)(38070700005)(38100700002)(122000001)(82960400001)(83380400001)(2906002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MkFmQ0NxeGZRbUtCTGJUQzVyaUxWWlBXeHpIL2tZOGpCOHVxSFE2c1ZnU1JK?=
 =?utf-8?B?M3RLS3hsbEhKRGVCRERtd256UEdGVmJ0SnpTZW1pTkl5WWI1SnIrYVg5UjZx?=
 =?utf-8?B?OHNNaDZFWEFVekk3VjM2aGlFYmowZVAzYmRNZkpwdW5zSDdXSWxDVVpzNGU0?=
 =?utf-8?B?MnQxYkVLVFdLbEptV0dnWTZGN3hrUytBdVBHR3R0Wis5TFJ3dCtYSUxFRDVn?=
 =?utf-8?B?ZVdEZ0RKRmlLbUxFM0pQNUFYZXhQSkVKdjFhbHJZMWR5MUJETytFWDBvOFpW?=
 =?utf-8?B?MkxINWhlUytLTkdPUGp0dnh0VXp1SGJ5WG9LY2I0ejBYYm95Sy9qZWFrOXNZ?=
 =?utf-8?B?bWZiRlRuVjVQSTRnZ2dJK2lqaDFubE5KU3BERTNTb1RkLzRqalZCNVorVE1K?=
 =?utf-8?B?Y1lpbFlpUmVFRWxFZXFNWjhqbFFpN2tJZVV1anZLYVI4VlFXS0hCcWJZbkt4?=
 =?utf-8?B?Qjg0SExDY0RFRk1sOU5INlpSTTNURXVtOFV5V2Y3WUpMd2I3bDBqcjIxeTha?=
 =?utf-8?B?eHhQUXZwTE1uOWR5VXY5U0JGWm94bXhnM3V6SUZSeHVReUpoMTE1amdIdnF5?=
 =?utf-8?B?aGx1RnZHaEsvMVRrYWU1MGZscEpWR01OOGd3T1kzMndlWWdib0V5WnVhcEQ3?=
 =?utf-8?B?RlR6eGdOMUFCbTlsZG5mK09uanlDZVMwNFNMUjR4ckhuaUU4Z0R2ZG5mOHU3?=
 =?utf-8?B?UTBLK1lCVThtNmp1dzF6WTYxQ3BHUUxVR3J4czR5K296Z0pxRjJnSzExQzhq?=
 =?utf-8?B?L1poUTFCTWR2NVpYV2FBQ0NkZWw4NUI1V2dObkNSRWxON0xmcmszajdNem05?=
 =?utf-8?B?aHoxM2xhb0Y1bzdQVGREWjJ0MnYxMDMwNldUYjZ2aWRHUEZZb0pkdmU5Z2RH?=
 =?utf-8?B?eE1QNTZhcDRwRFNYTWpSSzF6Q212WUtRU054ekRpVUpHdWg5Umx0MU83cUlw?=
 =?utf-8?B?eVVEQ0d3U2d3MlVZL3MxSVArODVlM0ZNN25kU3dEeVVydEc3OG4vcDhkTkZB?=
 =?utf-8?B?WEtHS1FkNnFpWEd6WWgyVHVETXl3KzV6NjVXWXUvV056MlBNYlhrZGJHcmc0?=
 =?utf-8?B?ZkhCcW40VnhmQXFKdk1MamRyMEd3dHo4WUNUSkJZT04rTjA5V1pTVUQ0cHhO?=
 =?utf-8?B?eEFEMFBMU2I4QmRKbWVQRVNyNUM5cy9vNW8xRFBobUZ4bEFkUTR0RmRGQjU3?=
 =?utf-8?B?VFlVTFJ2MFdFMDJXZjFsTFhLWVVQVmZKYU1XRkVCbXVZN1lEZU1sTUYxM295?=
 =?utf-8?B?aDlxSXlhTytPbGdPZW9vOWczK05wcHllR2JwZXMyTjV2R3NJc0dvMGxCd0E4?=
 =?utf-8?B?Qm1aQWVCeWMzUEJVMUFCS0xyalBJZEdwT0o2UGhNdkhsa1FxclYvSkE4WnhM?=
 =?utf-8?B?MkRjdUtoV09IQThvbFVCZk5aS2lZVWI4RVpsWDdORW9BS0RoWjAwdExGb0lO?=
 =?utf-8?B?TEhacjFtMlRqTVRWNWtGczFJVmFNNnovQW40UDRSbVgyRGhyUk1sK2NwdE16?=
 =?utf-8?B?ZWU3WUJBZXo4WFB5L2l1NFpndTBzbEh5UTRTWVZIOXVlbTNFVlU2Ty9jeTM4?=
 =?utf-8?B?UGIreVBQZjV0bnRKczJEK20rd2VmbmM4dVloSXUzb1JidDIydFBRYk5BWEZi?=
 =?utf-8?B?MGsxcm5taFR2ZE5iQ0pqWW5vdDlCLzM1bmUrYXI5dGp5VTFIZkpBcjBRUktF?=
 =?utf-8?B?QW9MRXVGYU56Mkl2cHpBYWR3WmJDTEJtTzJCcHNuNFJFNlJ3TjFuVnBoamVQ?=
 =?utf-8?B?UjhyWnI2VkgxcnZOUE4yc0g2Tmg1amM0TnU1dEVPOGRrRE1HRFB4RHo2cmNK?=
 =?utf-8?B?RHBZMS9HN0lqYUZFYS8zeWR2ejhGOUM0L2Vpb2dNUFcyR1o5aEZXVTdjbW5a?=
 =?utf-8?B?UG1yejlheS9ESGpxWWhXUW8rb2dOUTdTQkNEaS9Lb2JFMFI5ZW1VV1hkMVd0?=
 =?utf-8?B?VzZUbEdFR3JBTkhVSG5uRlgzcFZ3QTZNaVZ3RnJjZ2RSZWJEUnVkSDh1YzVI?=
 =?utf-8?B?WTM0OFdFcGlDRzQ2b0xUek5JR3dnSFFhMnY0MUdETXJvQXIvdFFELzdCVkI2?=
 =?utf-8?B?MktuanZEQUhNZnlHMzJyMlJiYzdVVlo0YnhDOEg0Z1pla2VZbzJXcjJ1dVcy?=
 =?utf-8?Q?J+AKhbq9h5TaqEtY683NF/ZJI?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44c6ce60-760b-42cd-6937-08dbb80b16c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2023 05:49:56.9118 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OpwEnonldRtPDEk3A7//6COrnKf5JMkZafK5GcqtwUEw7jwsoK8b2yn2gtzLS1d5Z+gOXPH5IP3d50PL8C/l2P9taFqUaH6yWkY6GiAvJ40=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7727
X-OriginatorOrg: intel.com
Subject: Re: [Spice-devel] [PATCH 1/4] channel-display-gst: Prefer playbin3
 to playbin
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
 "Teng, Jin Chung" <jin.chung.teng@intel.com>, "Kim,
 Dongwon" <dongwon.kim@intel.com>, "Mazlan,
 Hazwan Arif" <hazwan.arif.mazlan@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkgRnJlZGlhbm8sDQoNCj4gPg0KPiA+IElmIHBsYXliaW4zIGlzIGF2YWlsYWJsZSAoY2hlY2tl
ZCBpbiBHc3RyZWFtZXIgcmVnaXN0cnkpLCBpdCBtYWtlcw0KPiA+IHNlbnNlIHRvIHByZWZlciBp
dCBnaXZlbiB0aGUgbWFqb3IgaW1wcm92ZW1lbnRzIGFuZCBmZWF0dXJlcyBpdCBvZmZlcnMNCj4g
PiBpbmNsdWRpbmcgdGhlIGNhcGFiaWxpdHkgdG8gaGFuZGxlIGhpZ2hlciBiaXRyYXRlcy4NCj4g
Pg0KPiA+IENjOiBGcmVkaWFubyBaaWdsaW8gPGZyZWRkeTc3QGdtYWlsLmNvbT4NCj4gPiBDYzog
RG9uZ3dvbiBLaW0gPGRvbmd3b24ua2ltQGludGVsLmNvbT4NCj4gPiBDYzogSGF6d2FuIEFyaWYg
TWF6bGFuIDxoYXp3YW4uYXJpZi5tYXpsYW5AaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6
IEppbiBDaHVuZyBUZW5nIDxqaW4uY2h1bmcudGVuZ0BpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9m
Zi1ieTogVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPg0KPiA+IC0t
LQ0KPiA+ICBzcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jIHwgOSArKysrKystLS0NCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRp
ZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jIGIvc3JjL2NoYW5uZWwtZGlzcGxh
eS1nc3QuYw0KPiA+IGluZGV4IDM2ZGIzYTMuLjNmNDZhNjUgMTAwNjQ0DQo+ID4gLS0tIGEvc3Jj
L2NoYW5uZWwtZGlzcGxheS1nc3QuYw0KPiA+ICsrKyBiL3NyYy9jaGFubmVsLWRpc3BsYXktZ3N0
LmMNCj4gPiBAQCAtNDk2LDEwICs0OTYsMTMgQEAgc3RhdGljIGdib29sZWFuIGNyZWF0ZV9waXBl
bGluZShTcGljZUdzdERlY29kZXINCj4gKmRlY29kZXIpDQo+ID4gICAgICBTcGljZUdzdFBsYXlG
bGFncyBmbGFnczsNCj4gPiAgICAgIEdzdENhcHMgKmNhcHM7DQo+ID4NCj4gPiAtICAgIHBsYXli
aW4gPSBnc3RfZWxlbWVudF9mYWN0b3J5X21ha2UoInBsYXliaW4iLCAicGxheWJpbiIpOw0KPiA+
ICsgICAgcGxheWJpbiA9IGdzdF9lbGVtZW50X2ZhY3RvcnlfbWFrZSgicGxheWJpbjMiLCAicGxh
eWJpbjMiKTsNCj4gPiAgICAgIGlmIChwbGF5YmluID09IE5VTEwpIHsNCj4gPiAtICAgICAgICBz
cGljZV93YXJuaW5nKCJlcnJvciB1cG9uIGNyZWF0aW9uIG9mICdwbGF5YmluJyBlbGVtZW50Iik7
DQo+ID4gLSAgICAgICAgcmV0dXJuIEZBTFNFOw0KPiA+ICsgICAgICAgIHBsYXliaW4gPSBnc3Rf
ZWxlbWVudF9mYWN0b3J5X21ha2UoInBsYXliaW4iLCAicGxheWJpbiIpOw0KPiA+ICsgICAgICAg
IGlmIChwbGF5YmluID09IE5VTEwpIHsNCj4gPiArICAgICAgICAgICAgc3BpY2Vfd2FybmluZygi
ZXJyb3IgdXBvbiBjcmVhdGlvbiBvZiAncGxheWJpbicgZWxlbWVudCIpOw0KPiA+ICsgICAgICAg
ICAgICByZXR1cm4gRkFMU0U7DQo+ID4gKyAgICAgICAgfQ0KPiA+ICAgICAgfQ0KPiA+DQo+ID4g
ICAgICAvKiBQYXNzaW5nIHRoZSBwaXBlbGluZSB0byB3aWRnZXQsIHRyeSB0byBnZXQgd2luZG93
IGhhbmRsZSBhbmQNCj4gDQo+IFdoeSBub3QgY2FjaGUgdGhlIGNoZWNrLCBzb21ldGhpbmcgbGlr
ZQ0KPiANCj4gICAgICBTcGljZUdzdFBsYXlGbGFncyBmbGFnczsNCj4gICAgICBHc3RDYXBzICpj
YXBzOw0KPiAgICAgIHN0YXRpYyBib29sIHBsYXliaW4zX3N1cHBvcnRlZCA9IHRydWU7DQo+IA0K
PiAtICAgIHBsYXliaW4gPSBnc3RfZWxlbWVudF9mYWN0b3J5X21ha2UoInBsYXkNCj4gYmluIiwg
InBsYXliaW4iKTsNCj4gKyAgICBwbGF5YmluID0gcGxheWJpbjNfc3VwcG9ydGVkID8NCj4gZ3N0
X2VsZW1lbnRfZmFjdG9yeV9tYWtlKCJwbGF5YmluMyIsICJwbGF5YmluMyIpIDogTlVMTDsNCj4g
ICAgICBpZiAocGxheWJpbiA9PSBOVUxMKSB7DQo+IC0gICAgICAgIHNwaWNlX3dhcm5pbmcoImVy
cm9yIHVwb24gY3JlYXRpb24gb2YgJ3BsYXliaW4nIGVsZW1lbnQiKTsNCj4gLSAgICAgICAgcmV0
dXJuIEZBTFNFOw0KPiArICAgICAgICBwbGF5YmluM19zdXBwb3J0ZWQgPSBmYWxzZTsNCj4gKyAg
ICAgICAgcGxheWJpbiA9IGdzdF9lbGVtZW50X2ZhY3RvcnlfbWFrZSgicGxheWJpbiIsICJwbGF5
YmluIik7DQo+ICsgICAgICAgIGlmIChwbGF5YmluID09IE5VTEwpIHsNCj4gKyAgICAgICAgICAg
IHNwaWNlX3dhcm5pbmcoImVycm9yIHVwb24gY3JlYXRpb24gb2YgJ3BsYXliaW4nIGVsZW1lbnQi
KTsNCj4gKyAgICAgICAgICAgIHJldHVybiBGQUxTRTsNCj4gKyAgICAgICAgfQ0KWWVhaCwgZG9p
bmcgdGhlIGFib3ZlIGlzIGEgZ29vZCBpZGVhLiBXaWxsIGFkZCBpdCBpbiB2Mi4NCg0KVGhhbmtz
LA0KVml2ZWsNCg0KPiAgICAgIH0NCj4gDQo+ICAgICAgLyogUGFzc2luZyB0aGUgcGlwZWxpbmUg
dG8gd2lkZ2V0LCB0cnkgdG8gZ2V0IHdpbmRvdyBoYW5kbGUgYW5kDQo+IA0KPiBGcmVkaWFubw0K
