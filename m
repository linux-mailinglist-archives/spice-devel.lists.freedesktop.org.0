Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC58F668A8A
	for <lists+spice-devel@lfdr.de>; Fri, 13 Jan 2023 05:08:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B11810E981;
	Fri, 13 Jan 2023 04:08:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F0A310E980
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Jan 2023 04:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673582880; x=1705118880;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NrAHOuDczkGmqoQ6XfHZBO8dIhdOpfzbcnBlRqydvBA=;
 b=iBfblJKC3cowpLBsiQed9LHM0aGxD0C4bAH9znktK76H7RhAe/8gQkLz
 ZCltyCc9xsE771cYsMaokUpwdLArhcE/Hs9YGml0ldJ1KuGIt3+NivWWA
 oYmy2cAcMN9NBvX5o8rpt5xB0U5VVSaVaiJHczpV3Qsjglm+HyiE3gvuJ
 QmAgT/22N9pEysbIes68iWYUd2rkivBAEVpxvkmd1SMHUkSS09r9sCMOo
 fftHruAifEP+30Q9etKEpWUfGVwQHLHuDRZ4jEsvMBLHLzj+iskldJmRV
 12NIxV/dQrGKkngXa9cp1ChDgVxiNjJ+4MFpGrBc663zHZgH04E1wxnuT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="304289290"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="304289290"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 20:07:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="660085540"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="660085540"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 12 Jan 2023 20:07:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 20:07:56 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 20:07:56 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 20:07:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dS88q3iD88gbLAUYYMxxYt6xGbx6dbyN0BiBiH5U6dMvRd7dWPuGC444o0LdmbjlmqTEMlLNKahueD8zDISP+FCN9+QY752KJLWT1frBqxxqmfRoM5f/l9OUefiyki3PrLHbFpIcnRhHHIPbPgBXLTCCCpe4VQHY5ug7p2XHeJW5ypk/XoSigpM1OHr8Swv0wZrEydHr8V5A91vlk4asCVERgwklVXMzHu4W02ZRsbsI7oqTpvkpvX8DWssATPNNloT6fW+0oeH4yPVI1zBmrsGF8TF6ePVplrmhmyQHrbona6ZJG/t8ansggy1WgIFCTlAk8Twkxe51N9KQsyBBcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NrAHOuDczkGmqoQ6XfHZBO8dIhdOpfzbcnBlRqydvBA=;
 b=n2FQtzZab2s9NfRSqv0EGyHN6kH7ilcFWspt/9jxc5G88JyKFPEqeobZPnVKYBO8v5MfBXK1VL+RkkLCh4ZDrl7T3ViUkdSLwMV/GGCqO8HkmcQYdN0sMAeC+BRJ5hJDwpTeYtxNi9Cv6lFJSJZiewn8jXOCaI8JO4e8gMqMsvFEGuVChX5z/eox6/7JHyB01cbwoMxXCAe6twRQDGJASzOYgNYracaK0goeWE3y1Om0+0CRCUYrniwWI/XJZZd5f3Xrz1I/r0yILaJOHZA/BjKAF403K7FWxyMYYm9U7PsnXsu399RXKNkulgXNxKX7qViquLgqfHU7dZrRX5v6ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:443::14)
 by PH0PR11MB5580.namprd11.prod.outlook.com (2603:10b6:510:e5::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Fri, 13 Jan
 2023 04:07:54 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::6385:771:1bc4:2f6]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::6385:771:1bc4:2f6%4]) with mapi id 15.20.5986.018; Fri, 13 Jan 2023
 04:07:53 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>
Thread-Topic: [Spice-devel] [RFC v1 1/4] red-parse-qxl: Extract the dmabuf fd
 from the scanout
Thread-Index: AQHZJX96+15xa8gQvE+AmI8giMOwXa6ZGEcAgACflOCAAOw6gIAA4xxA
Date: Fri, 13 Jan 2023 04:07:53 +0000
Message-ID: <IA0PR11MB7185354C3DDA03A4AEFCE76EF8C29@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20230111052239.781285-1-vivek.kasireddy@intel.com>
 <20230111052239.781285-2-vivek.kasireddy@intel.com>
 <CAHt6W4cgJcW2+2+A==q6n25FK0T9LV_Q=H6Fh7SEXWogcxfvvg@mail.gmail.com>
 <IA0PR11MB7185E2A4761E1AE80C9ABAC4F8FD9@IA0PR11MB7185.namprd11.prod.outlook.com>
 <CAHt6W4e3V_PeemUYZbiSMBKG2yZX_aZz+8GfSMzSQeVOkzS34w@mail.gmail.com>
In-Reply-To: <CAHt6W4e3V_PeemUYZbiSMBKG2yZX_aZz+8GfSMzSQeVOkzS34w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|PH0PR11MB5580:EE_
x-ms-office365-filtering-correlation-id: 639bb26b-bfbe-466f-1059-08daf51bbe9f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fNXJqgWF4NWmTjA8PBeb/kh6/ZniB/NHh21OQHu4SSbXxTNfL+QytgIxe3N82WRoZbyW0fnHCtnEg/L6xMeAW+1rJhD04A1MP5leOWr9Lsge6svdt6k90ZQxpmsp0c5tsAPibpiONE1rcARUN6KddSgw2pjhnvNTahs8El8caEHr9ALI0D0TS1eEJqVbfTYdgOmiPNuQdq7Dhe+DVo/1mCNQRomYhX8ND8+9Y/W+inF7GLuKDXZEZ4r5BBOfMu+3gMQvF4LPS37OnUCiADKTClr0/a+X9b9Hbc5J/7/rj4bUaeqtRGyBvwX0H+HNZ5f0/SGEPE2qzXxGmgXhIuL8GwEdzDWSgQsloVdxwqKxz5yfowCVjEPWaEACCN6vX1bG5o7RQcWf1mFA16TkQfUZT0vZ08eaMBJfopnWsF/oA9WsXbl90JWOR4XzWRY50UaTabCLr8K+kH6LWUrv89wrUYCl6u/Tp3ZrnvC+ocKWVbIbE/KaoXL37UWw0zPub3iEF5McKonuGY1nECfzfKykzfyOuQfLWvXqBYeqGnAsRhg8GV5dZe0XAq4GLg0b2NUzbIOlzJbFCiftdEPgkecv2CW8vesuA0ERRFUprrkZhDt6Ff/UaRdBFkJyPtOYn0eAWIJ3GKvTUcTL0iEfaEOys0nV/+PXKgx7ru/KxvFOWOae8fjju8qG+oypFQggxw/aszOdg6YUu5vzFkIbfn2dNg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(396003)(366004)(39860400002)(376002)(451199015)(6506007)(2906002)(122000001)(5660300002)(52536014)(8936002)(4326008)(83380400001)(8676002)(6916009)(64756008)(66446008)(38100700002)(82960400001)(9686003)(478600001)(33656002)(41300700001)(38070700005)(66556008)(66946007)(26005)(186003)(76116006)(66476007)(7696005)(55016003)(86362001)(71200400001)(54906003)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cXZqeEhpYmJMbGI3UnB0eDl1a0VWTmlmeTZBbGlaVU1yQVZTYVZXTkI5S0hW?=
 =?utf-8?B?Q1dnMm9GVEtLMEZxZXBNRGM5K1hNUDUyb1E4NXgxb2dLSWdjUWpmR0FQRDhP?=
 =?utf-8?B?UURKRS9wR1RsdnFPNGVYYkcyaGlzd2YxbFF1Qnc0dkhmSXFhbzZRVDRYMFlk?=
 =?utf-8?B?V216YmVDSjQ5OURsd0Y1QXA5Y0FOUVpRUUt5N0ZDOUxqN3l6dUIvM2ZSMHpi?=
 =?utf-8?B?Y1F6OE1DdFV5RkdsekpuVXM1UHgrbk1BNkxUcGtRM2J4MGpoLzRaZWdpbDI5?=
 =?utf-8?B?T0pCd2VHQWUwRUtlVWZDWjhxcVBDWXVmYU5lL0FxdXJsdHJzVFhKZFhRakhr?=
 =?utf-8?B?OXRRYTY4U0JqWTRWbEJoNGpEY3RVVWZ6UWNQNDI5Qnp2a2NlNDVJZzJlUkV0?=
 =?utf-8?B?aW53dG5PZE8wVWJXYzV1cGpYOWpFUGFiOXhEVU5YQXVYaUJjUlFDaGQ2UERk?=
 =?utf-8?B?TkR3YzZ1czdVV29GS1k1aDV2Ly9WTzJTenhlSmswa1dITVNQYjJUMkVkbDZT?=
 =?utf-8?B?cWNUVEdFVkpxWVNPT2dQZzlwMTRvNng2SWRnQ0JtbEwvK3hvejNrc0F2TTIv?=
 =?utf-8?B?QVMxdWFzVTh5U21zc2wvd21DcnBacmdGWGM3NzNsN0k3SFlFeVQ2UEh2bzBT?=
 =?utf-8?B?SitxNFo1ZnJkR3BpQTcxZGpHUnNLT1VwenVaSjRubUdUWDZkY2xja0RVTFpJ?=
 =?utf-8?B?NkV3OWJxaSsyVjkxVC9pRTJObmRnNUZTV0lJVTFqVGxpK3dLb0NBYmgwREdu?=
 =?utf-8?B?cEpCbkpmRVQycmxLbklLUTVuYWJ1V3JlYlc1ZEZ1dkZSaVpiRFdXK2hsWXdw?=
 =?utf-8?B?eWYyd25sdnFFaE5pODNTeFlOTU9HclFEZ1NieElBOGo0N1BzZHd2ZDZaejZL?=
 =?utf-8?B?ZnZtRERYaGMrNFBMSFplRnhQMmhweHRaR1RZUmsyL1lUdjBFVVQ1RlhLQVFN?=
 =?utf-8?B?a2RKZ1hWYXZ3cEViTU5JbDIzZkRyOXdjM0xsT1J3MGlneFJXWGwyVGZTV2Yr?=
 =?utf-8?B?NDE0cXByNm1vNG50MDg1WGRMemFtQnhrRHlDaW9sZHRNTXl4QU92cW1PUllq?=
 =?utf-8?B?UXJUaDBreGRrWFBta1prQ3AvSFRqT2p6bEF2eWhrTnJCclM2aHZxWjZiRmY3?=
 =?utf-8?B?K0VWSkladGNaV3RObkN1V1N1dndVZngxLy9aN3cyV3lLRy9jM0Z0NkJra3py?=
 =?utf-8?B?aXFTMkEzWDZ5aXpTT3VQQ2llRy9HSFBjU1hyYWtkVDB6azI5Q29jM3dNa1Nq?=
 =?utf-8?B?ZkRUZ2l2UGI2cHZqQUJFeTgwaDZNVkNFdFI5VnhaNXkvNWhJL1hQVG9OWDM3?=
 =?utf-8?B?bVk0aUlFRGN4dVJFY2ZrOVJaM0U1bnhtZmxDNHlCM0o1eURzY2ZVdTAyZFJ4?=
 =?utf-8?B?ei95ME1pQzlnSXUzcDdOVCsxSURIN09HeWc3SmwyMGRFS2FVcjlXczRMUlJu?=
 =?utf-8?B?UTlYY2ljelMwSmhYOVJiWXlrRWlvY2xSMkpNR05SdlBxMXlXclpKd05KUGF0?=
 =?utf-8?B?empoOGhlM2hEV0dkVFJGTXV6Ukx6MjlrWDBLTWYyS3V3RWxTdGhkWVd6Rnky?=
 =?utf-8?B?bnloaHBwcjFXeWV4Q05OdUZnL1A0M3JFbWcrZGx4Vk9XYVlVcXd3WEhMK3h5?=
 =?utf-8?B?YXE0c0tSZEc5eXNRc2lqc3BaTllkb0RDc1pMQnhUSERIOGdac3doS1czaGFN?=
 =?utf-8?B?K0tuVUtwOXpsVmQzdUM3MEN0SkMxanFVWkJKaEdSSFpUajBXMDFla0ZuZ25V?=
 =?utf-8?B?L0dsZ3VUdHlzRVB1OTdGUTZwV05uTHlnZDhqQ0Nrck5aVzZlQVNBeDJsVXlH?=
 =?utf-8?B?VmFBMkl1U3J5T3pUOFBKc2lsd0JlNXlwdmh1SkZVQmw3QUllVVhwUU5rU2Zu?=
 =?utf-8?B?T0hQM1pCSlZrb0JHRkEwakUvY1BoZUpKcE9vNzFRclljdW9DMmFJUGNWTWpR?=
 =?utf-8?B?SkpzSnprS3p3VDY4a2EvYXkxUGJxa2phNEpEb1JVSWNnazFaMWs2ZXk3RzU2?=
 =?utf-8?B?YXpnTjdEbWJkKzVjM01sNk82Y0I5ZHVqMVR5SkFoTTR5L3pGNXByRUFROVdh?=
 =?utf-8?B?bFN6Wkdnek1LcjFBN2d1ZndYa2ZuQitOYnFCaE1UaFlWQ3hNc1NxZUVNS3pp?=
 =?utf-8?B?RDJ6ZEkySUp4Z1VxMnhmamgxdDFMbnpvSnZuSy91MFNzZFZ5TlMyQk5IaUtm?=
 =?utf-8?B?aHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 639bb26b-bfbe-466f-1059-08daf51bbe9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2023 04:07:53.6888 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gModxzI48oQLfwpZ/YTFEiUjC8MGZiepeOFtQ50WDMWIMMPj2K0xBjx+Rh2t0Pget/uEdQk/u7YP16wVx0GI+rSWFA90dlJPsCLK/Dl/1zE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5580
X-OriginatorOrg: intel.com
Subject: Re: [Spice-devel] [RFC v1 1/4] red-parse-qxl: Extract the dmabuf fd
 from the scanout
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
c2NyaXR0bzoNCj4gPg0KPiA+IEhpIEZyZWRpYW5vLA0KPiA+DQo+ID4gVGhhbmsgeW91IGZvciB0
YWtpbmcgYSBsb29rIGF0IHRoaXMgcGF0Y2ggc2VyaWVzLg0KPiA+DQo+ID4gPg0KPiA+ID4gSWwg
Z2lvcm5vIG1lciAxMSBnZW4gMjAyMyBhbGxlIG9yZSAwNTo0MiBWaXZlayBLYXNpcmVkZHkNCj4g
PiA+IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPiBoYSBzY3JpdHRvOg0KPiA+ID4gPg0KPiA+
ID4gPiBJZiB0aGUgc2Nhbm91dCBoYXMgYSB2YWxpZCBkbWFidWYgZmQsIHRoZW4gaXQgaXMgZXh0
cmFjdGVkIGFuZCBhDQo+ID4gPiA+IGNvcHkgKG9mIHRoZSBmZCkgaXMgc3RvcmVkIGluIHRoZSBk
cmF3YWJsZS4NCj4gPiA+ID4NCj4gPiA+ID4gQ2M6IEdlcmQgSG9mZm1hbm4gPGtyYXhlbEByZWRo
YXQuY29tPg0KPiA+ID4gPiBDYzogTWFyYy1BbmRyw6kgTHVyZWF1IDxtYXJjYW5kcmUubHVyZWF1
QHJlZGhhdC5jb20+DQo+ID4gPiA+IENjOiBEb25nd29uIEtpbSA8ZG9uZ3dvbi5raW1AaW50ZWwu
Y29tPg0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaXZlayBLYXNpcmVkZHkgPHZpdmVrLmthc2ly
ZWRkeUBpbnRlbC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiAgc2VydmVyL3JlZC1wYXJzZS1x
eGwuY3BwIHwgOCArKysrKysrKw0KPiA+ID4gPiAgc2VydmVyL3JlZC1wYXJzZS1xeGwuaCAgIHwg
MSArDQo+ID4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gPg0K
PiA+ID4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1wYXJzZS1xeGwuY3BwIGIvc2VydmVyL3Jl
ZC1wYXJzZS1xeGwuY3BwDQo+ID4gPiA+IGluZGV4IDY4Yjk3NTlkLi44ZDliODJmYiAxMDA2NDQN
Cj4gPiA+ID4gLS0tIGEvc2VydmVyL3JlZC1wYXJzZS1xeGwuY3BwDQo+ID4gPiA+ICsrKyBiL3Nl
cnZlci9yZWQtcGFyc2UtcXhsLmNwcA0KPiA+ID4gPiBAQCAtMTAzOCw2ICsxMDM4LDcgQEAgc3Rh
dGljIGJvb2wgcmVkX2dldF9uYXRpdmVfZHJhd2FibGUoUVhMSW5zdGFuY2UNCj4gPiA+ICpxeGxf
aW5zdGFuY2UsIFJlZE1lbVNsb3RJbmZvICpzDQo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBSZWREcmF3YWJsZSAqcmVkLCBRWExQSFlTSUNBTCBhZGRyLCB1aW50
MzJfdA0KPiBmbGFncykNCj4gPiA+ID4gIHsNCj4gPiA+ID4gICAgICBRWExEcmF3YWJsZSAqcXhs
Ow0KPiA+ID4gPiArICAgIFNwaWNlTXNnRGlzcGxheUdsU2Nhbm91dFVuaXggKnNjYW5vdXQ7DQo+
ID4gPiA+ICAgICAgaW50IGk7DQo+ID4gPiA+DQo+ID4gPiA+ICAgICAgcXhsID0gc3RhdGljX2Nh
c3Q8UVhMRHJhd2FibGUgKj4obWVtc2xvdF9nZXRfdmlydChzbG90cywgYWRkciwNCj4gPiA+IHNp
emVvZigqcXhsKSwgZ3JvdXBfaWQpKTsNCj4gPiA+ID4gQEAgLTEwNTksNiArMTA2MCwxMyBAQCBz
dGF0aWMgYm9vbA0KPiByZWRfZ2V0X25hdGl2ZV9kcmF3YWJsZShRWExJbnN0YW5jZQ0KPiA+ID4g
KnF4bF9pbnN0YW5jZSwgUmVkTWVtU2xvdEluZm8gKnMNCj4gPiA+ID4gICAgICAgICAgcmVkX2dl
dF9yZWN0X3B0cigmcmVkLT5zdXJmYWNlc19yZWN0c1tpXSwgJnF4bC0+c3VyZmFjZXNfcmVjdHNb
aV0pOw0KPiA+ID4gPiAgICAgIH0NCj4gPiA+ID4NCj4gPiA+ID4gKyAgICByZWQtPmRtYWJ1Zl9m
ZCA9IDA7DQo+ID4gPg0KPiA+ID4gMCBpcyBhIHBlcmZlY3RseSB2YWxpZCBmaWxlIGRlc2NyaXB0
b3IsIHVzdWFsbHkgaW52YWxpZCBmaWxlDQo+ID4gPiBkZXNjcmlwdG9ycyBhcmUgaW5pdGlhbGl6
ZWQgd2l0aCAtMS4NCj4gPiBbS2FzaXJlZGR5LCBWaXZla10gT2ssIEknbGwgaW5pdGlhbGl6ZSBp
dCB0byAtMS4NCj4gPg0KPiA+ID4NCj4gPiA+ID4gKyAgICBzY2Fub3V0ID0gcmVkX3F4bF9nZXRf
Z2xfc2Nhbm91dChxeGxfaW5zdGFuY2UpOw0KPiA+ID4gPiArICAgIGlmIChzY2Fub3V0ICE9IG51
bGxwdHIpIHsNCj4gPiA+ID4gKyAgICAgICAgcmVkLT5kbWFidWZfZmQgPSBzY2Fub3V0LT5kcm1f
ZG1hX2J1Zl9mZDsNCj4gPiA+ID4gKyAgICB9DQo+ID4gPiA+ICsgICAgcmVkX3F4bF9wdXRfZ2xf
c2Nhbm91dChxeGxfaW5zdGFuY2UsIHNjYW5vdXQpOw0KPiA+ID4gPiArDQo+ID4gPiA+ICAgICAg
cmVkLT50eXBlID0gcXhsLT50eXBlOw0KPiA+ID4gPiAgICAgIHN3aXRjaCAocmVkLT50eXBlKSB7
DQo+ID4gPiA+ICAgICAgY2FzZSBRWExfRFJBV19BTFBIQV9CTEVORDoNCj4gPiA+ID4gZGlmZiAt
LWdpdCBhL3NlcnZlci9yZWQtcGFyc2UtcXhsLmggYi9zZXJ2ZXIvcmVkLXBhcnNlLXF4bC5oDQo+
ID4gPiA+IGluZGV4IDhiZjBlMmUzLi5kZWU1MDc0MyAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvc2Vy
dmVyL3JlZC1wYXJzZS1xeGwuaA0KPiA+ID4gPiArKysgYi9zZXJ2ZXIvcmVkLXBhcnNlLXF4bC5o
DQo+ID4gPiA+IEBAIC02Nyw2ICs2Nyw3IEBAIHN0cnVjdCBSZWREcmF3YWJsZSBmaW5hbDogcHVi
bGljDQo+ID4gPiBSZWRRWExSZXNvdXJjZTxSZWREcmF3YWJsZT4gew0KPiA+ID4gPiAgICAgICAg
ICBTcGljZVdoaXRlbmVzcyB3aGl0ZW5lc3M7DQo+ID4gPiA+ICAgICAgICAgIFNwaWNlQ29tcG9z
aXRlIGNvbXBvc2l0ZTsNCj4gPiA+ID4gICAgICB9IHU7DQo+ID4gPiA+ICsgICAgaW50MzJfdCBk
bWFidWZfZmQ7DQo+ID4gPiA+ICB9Ow0KPiA+ID4gPg0KPiA+ID4gPiAgc3RydWN0IFJlZFVwZGF0
ZUNtZCBmaW5hbDogcHVibGljIFJlZFFYTFJlc291cmNlPFJlZFVwZGF0ZUNtZD4gew0KPiA+ID4N
Cj4gPiA+IFRoaXMgcGF0Y2ggbG9va3MgcHJldHR5IGVycm9yIHByb25lLCBpdCdzIGVhc3kgdG8g
Z2VuZXJhdGUgbGVha3Mgb3INCj4gPiA+IHVzZSBhZnRlciBmcmVlIChvZiBmaWxlIGRlc2NyaXB0
b3IpLg0KPiA+IFtLYXNpcmVkZHksIFZpdmVrXSBBdC1sZWFzdCB3aXRoIFFlbXUsIHdlIHVzdWFs
bHkgaGFuZCBvdmVyIGEgZHVwIG9mIHRoZQ0KPiBvcmlnaW5hbA0KPiA+IGZkIHRvIFNwaWNlIHNl
cnZlciB3aXRoIHRoZSBhc3N1bXB0aW9uIHRoYXQgdGhlIHNlcnZlciB3aWxsIGNsb3NlIGl0IGFm
dGVyIGl0IGlzDQo+ID4gZG9uZSB1c2luZyBpdC4NCj4gPg0KPiA+ID4gQWxzbyBpdCBhZGRzIHRo
ZSBhc3N1bXB0aW9uIHRoYXQgdGhlIGRyYXdpbmcgaXMgYWx3YXlzIGFzc29jaWF0ZWQgd2l0aA0K
PiA+ID4gdGhlIERNQSBzdXJmYWNlIHdoaWNoIGlzIHJhY3kuDQo+ID4gW0thc2lyZWRkeSwgVml2
ZWtdIEkgc2VlIHRoYXQgYWNjZXNzIHRvIHRoZSBzY2Fub3V0IGFuZCBkcm1fZG1hX2J1Zl9mZCBp
cw0KPiBwcm90ZWN0ZWQNCj4gPiB3aXRoIGEgc2Nhbm91dF9tdXRleC4gQXJlIHlvdSBzdWdnZXN0
aW5nIHRoYXQgdXNpbmcgcmVkX3F4bF9nZXQvcHV0X2dsX3NjYW5vdXQNCj4gaXMNCj4gPiBub3Qg
Z29pbmcgdG8gYmUgc3VmZmljaWVudCB0byBwcmV2ZW50IHJhY2VzPw0KPiA+DQo+IA0KPiBObywg
bm93IHlvdSBjcmVhdGVkIDMgY29waWVzIGFuZCBvbmx5IG9uZSBpcyBwcm90ZWN0ZWQgYnkgdGhh
dCBtdXRleC4NCj4gVGhlIHJhY2UgaXMgaW4gcmVzb3VyY2UgbWFuYWdlbWVudC4NCltLYXNpcmVk
ZHksIFZpdmVrXSBNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgYXBwbGljYXRpb25zIGFyZSBzdXBw
b3NlZCB0byB3YWl0IHVudGlsDQp0aGUgZW5jb2RpbmcgaXMgZG9uZSBiZWZvcmUgc3VibWl0dGlu
ZyBhbm90aGVyIGZyYW1lL2ZkLiBJIGFtIG5vdCBzdXJlIGlmIGl0IGlzIG5haXZlDQp0byBhc3N1
bWUgdGhhdC4gQW55d2F5LCB3aGF0IGRvIHlvdSBzdWdnZXN0IG5lZWRzIHRvIGhhcHBlbiBpZiB0
aGV5IHN1Ym1pdA0KYW5vdGhlciBmZCB3aGlsZSB0aGUgZW5jb2Rpbmcgb2YgdGhlIHByZXZpb3Vz
IGZkIGhhcyBub3QgYmVlbiBjb21wbGV0ZWQgeWV0Pw0KDQpBbHNvLCBteSBnb2FsIGlzIHRvIHNv
bWVob3cgZ2V0IHRoZSBmZCBmcm9tIHRoZSBhcHBsaWNhdGlvbiAoUWVtdSkgdG8gdGhlIGVuY29k
ZXIuDQpJIGRpZCBub3QgZmluZCBhbnkgb3RoZXIgd2F5IHRvIGVhc2lseSBhY2NvbXBsaXNoIHRo
aXMgd2l0aG91dCB1c2luZyB0aGUgc2Nhbm91dCBhbmQNCmRyYXdhYmxlLiBHaXZlbiB0aGlzLCBk
byB5b3UgdGhpbmsgcHJvdGVjdGluZyBhY2Nlc3MgdG8gZW5jb2Rlci0+ZG1hYnVmX2RhdGEgd2l0
aA0KYSBtdXRleCB3b3VsZCBiZSBzdWZmaWNpZW50IHRvIGF2b2lkIHJhY2VzPyBPciwgSSBndWVz
cyBJIGNvdWxkIGp1c3QgcGFzcyBkbWFidWZfZGF0YQ0KYXMgYW4gZXh0cmEgcGFyYW1ldGVyIHRv
IGVuY29kZV9mcmFtZSBhbmQgYXZvaWQgc3RvcmluZyBpdCBpbiB0aGUgZW5jb2Rlci4gT3IsIGlz
IHRoZXJlDQphIG1vcmUgZWxlZ2FudCAoYW5kIHJhY2UtZnJlZSkgd2F5IHRvIGRvIHRoaXMgdGhh
dCB5b3UgY2FuIHN1Z2dlc3Q/DQoNClRoYW5rcywNClZpdmVrDQoNCj4gDQo+ID4gVGhhbmtzLA0K
PiA+IFZpdmVrDQo+ID4NCj4gDQo+IEZyZWRpYW5vDQo=
