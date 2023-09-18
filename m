Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8447A40C5
	for <lists+spice-devel@lfdr.de>; Mon, 18 Sep 2023 07:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F29810E0E1;
	Mon, 18 Sep 2023 05:59:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2401610E0E1
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Sep 2023 05:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695016764; x=1726552764;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HOOwbJS8Uqnn/GK2wgkdJk46LPvY3qY5NXsqC6gSRwg=;
 b=Va6PY1K6VoHgmYQjWlb4oeQ+sv8YpKW7DNSQ3sb/c87MU0ny0rzAItk0
 0D9lXixTbsahCC+UqyI6/g77ZCDfnUxlrCnkvwx5zdBSjpOFGeZw6odu0
 IsymiQlPsR84/zdU0yNF28zeQ8kRYShJzTyKGrA2EafKWGNu7qS9QOG+y
 rIp4gBcnHkcyWe0DX7wAsCO02YtVrd29CAcnDncSniwVU0OxAjGuQ+fVx
 7VLTPvtAdOHwVGsvVd4PNiw5J/fjFUckqDMUn4hQFXDI21WtBPp8iY/Iy
 dWCywaLO2HzB2iKYG7kHFax3r21WUN7R2Lx+S2juJqTcfe7bsl2dPnRf3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="364615661"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="364615661"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 22:59:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="722347965"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="722347965"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2023 22:59:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 17 Sep 2023 22:59:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 17 Sep 2023 22:59:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 17 Sep 2023 22:59:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GugnORY6uOiUPc1KOSMmmkfBHmE6YTs1nSpC8TdwxosuAYI4cpp7Ysqm9mRVFPuumuQkye4WVYE7d9r6C3o+Y0ut8HyXANSjU8dGfMZ4I2IJw9PHrBJXwK5eJtKvw9qATL6A5yuJMC8T/bkzkOdKH4e9/V8SdiPeBBMqeijEOcsPRFxA92gaD1QFhpS1qlLOJuma3r3v4ELikMZQQLE5zsWgwYEXvlfUi08/AymqbBlCq0yOyPZarkfYWjgIu15fP0iYzlTZGFzvvpLw6c+rWaShLg2eilp2n0c+bNHV77mXg4wIr739bar8SgU0YN4W4waDcVLAp6yRgi7NLcqVFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HOOwbJS8Uqnn/GK2wgkdJk46LPvY3qY5NXsqC6gSRwg=;
 b=hatA5iwy3nSzLZat0erCpU/smEvhx1xL1SsvnifwUMpVoks4dq0OSja3Fio8LjVVgzY19CBrzHZIK2YNwAckfnkEplcBlPm/zGLICalMFUmzeOy5Z457/kbyvhUmXV3AfldsqxboZ3blH2TdThszdposNQgoqpSfgU6f8pIuyGDlKM5gjPvMz0LP1CmJcusf+DIcfG2aFvhXXtptcBcVnALD3RNcfPVncZpX7MX1gdSvUk4yuBN3d69IAOAq0LM0cwKotTeCFSGhgtfVrbCObaJByJOWbOqdu7f/jpHffImHU/GRXIQ5sRBiR3sELbLAsqSKKneg+ZN1XWJnh1Ni4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by CO1PR11MB5010.namprd11.prod.outlook.com (2603:10b6:303:93::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.26; Mon, 18 Sep
 2023 05:59:20 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::fe3f:b90e:4eaa:fac8]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::fe3f:b90e:4eaa:fac8%7]) with mapi id 15.20.6792.024; Mon, 18 Sep 2023
 05:59:19 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>
Thread-Topic: [PATCH 3/4] channel-display-gst: Don't unref appsink and
 pipeline objects
Thread-Index: AQHZ52w1nN9gFdvLgUqi+gMdfuUue7AcIGyAgAPP1bA=
Date: Mon, 18 Sep 2023 05:59:19 +0000
Message-ID: <IA0PR11MB7185CBE31D5A7458F43BF318F8FBA@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-7-vivek.kasireddy@intel.com>
 <CAHt6W4d073Psf8b3uRZ0xgM1o6k1uk9Q1Z3iRrR4hjbY4W1Pkg@mail.gmail.com>
In-Reply-To: <CAHt6W4d073Psf8b3uRZ0xgM1o6k1uk9Q1Z3iRrR4hjbY4W1Pkg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|CO1PR11MB5010:EE_
x-ms-office365-filtering-correlation-id: ef64a181-b1fa-438d-3d2d-08dbb80c65fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LSKEIdsEPu4xKGPDS+8NPaq3/7n0r6AHw0hnvY+f47EkJPcv1PJ/osiDb8fNJuC2QpKvHm0UtxzBXjIZJev6P9oeLM0t1MiO2PRF0PSrDHjux/18BcWk/hISiThPC62dY8XrOjq1vmgFEtNnX7yyPVsEvmU1p6BgBFbz4pf1c2NnxQyRLQSOwpGG8kC/KcaPaMvoHHDiCHL1Ft1W03qtr2E1Fq5F7gO/bbGTkXtDbuwwRC5FDm5Ut81sp7SLeLgtzo0dor+OneQQn0+IxPdCdr+fg2VKmsWVxZTkJtv6XK3UtB8z+RDdaMqR2Hu4PuQB5qfNYcwIdTy3cTghQDvdyCeWC9q6MJOMTVwgGlfms7yWAty09pKoFnBJ3rQ9awY5hMrjYHx0QT14hFdjW/qsoDgt3NX1KyEoxnuArGaihEr/2JBT3tyTsN/OToKctM+H4ama+5s1MrmQP4JpkqhvZ2NlTl/0J92JwlGDFGWi3fKjykUodDoUt2axcq8yzJo1MGQg0EidYuIa7PJ4/u/jV41MKfwrTl7ypNTYjObYVgekGLDHUcm/KrAMZodWLZh9Zmm183kA9ZlXXTH3kni6stsglZYCTt9o/7dScRTHmCNOU/EzOcHDqPW5LIeLUS44
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(366004)(39860400002)(136003)(376002)(451199024)(186009)(1800799009)(2906002)(41300700001)(8676002)(8936002)(107886003)(478600001)(64756008)(54906003)(6916009)(4326008)(66446008)(66556008)(66476007)(76116006)(66946007)(52536014)(316002)(71200400001)(7696005)(6506007)(9686003)(5660300002)(33656002)(86362001)(82960400001)(26005)(55016003)(38070700005)(38100700002)(122000001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dFVkVWJzMjFWYWRuSi9JWFphL1V5Y1lRUGJ0bGpydEJWS0w5a1ZVSk8zWlI0?=
 =?utf-8?B?QmxMNEF2MTJnZ1dyT1ZITzg2SHk4cnJGcHd3S281aFJEWHlHL3F2Q3dwcjNT?=
 =?utf-8?B?Q2VoVlZLenFjeFFFb2JGKzdobW9aMjhCNjlFZHV1MEVWcndVMUo2TENNN1hM?=
 =?utf-8?B?dmVVSUxlWWYxeGJvUnhNcEhZMVhLYlcweXhBZnZCU1N5ZjJ0a1huUWlTbWlP?=
 =?utf-8?B?bVF1ckM2d0lET2J6VDdmTy8walp1QXJIbGU5QkVGNW1GTFRtM2gzT3lLdndh?=
 =?utf-8?B?eVo1cm9OMmFTSFNxUXF2d2ZsK0FmNnJZYWIybVNKUTluckJLRDV3R1FZb2pi?=
 =?utf-8?B?YldUbHJ1UTBLYmpldG0xeVlhMEhGNFB2LzErZy9TUVZDZjdEVEJCQlgrLysw?=
 =?utf-8?B?RE5XTEdqdE9kTzdRSWxZNVpybUxQeUVuWmlqYmk3QlFaclRwbHhxL1BuZ2Js?=
 =?utf-8?B?USt6dndDWjRPMEl6Sk1JRTFrdXkwNU1Eb0d2eTZPMmZtcCtLSXZ1dmsyK3hH?=
 =?utf-8?B?aDVHWHFCYTJSTzRIWno5SmsvS0pJd3hoUHB6MmdEYVJJcVlKMWhjdm41eDFJ?=
 =?utf-8?B?OCs3bDdoMXFaZXpBNVBXR1BKSGpHTHBMdStINHFwOWZtMnA4b0xXdnV4bTht?=
 =?utf-8?B?eEk2d3ZyYUQ0MGZYZHo3K25zSkFFSUdXRTIzMUt0NkdyQmM2R0dranpYT2FB?=
 =?utf-8?B?cU5RMEdvT3F0Z1RhbWl3aW9OMUluTmpmQUlJM3FUYXRnUnJUL2ViYWdpdlRN?=
 =?utf-8?B?bXFTMm5ZdFQrT2FUYXppZ2F3end4RUFzQ1lYRHUrYlViQXhDeVJRbmZQZGJX?=
 =?utf-8?B?WlZoTjlLdkVwMHltNTdUdi92cE9CMWFlQWE4SGQvb2RVZmgwL09uY3RMVEU4?=
 =?utf-8?B?NzQxS24xQjZHQW5yRVI5VHF6K283bXV0YS9nTmlQcC8wME90RGdWYUF2TW81?=
 =?utf-8?B?cGw0RmswRzdERkwzOXNMY28rbUFxMURIYUl1SkY3aVNEUVc3RlE3dUlmQW1H?=
 =?utf-8?B?cndLNFc4aEVFK1E3WjhOSkNDNUkzdTlzUWk0eWl2dkI3WVlObHR3aEx4dHFi?=
 =?utf-8?B?WW5QUVlqUWZDbVplNys5ZWt5QkNkampMV1E0YkJoakxSREtLSHBQUGFHZi9i?=
 =?utf-8?B?QWo4ZGwyNHYwWUgvUUV2a2wvV0JiZkxsMUlGWjlJRkNLQ3dEUFlvRVBFNXFW?=
 =?utf-8?B?U0U3Q1haS0VHQWJnSmRucFFnaDJ1SGxMU0c4NUpjZlZYUnJhVXVxZGo1Rmls?=
 =?utf-8?B?ejdheVpNVWdtU3cyYUJHWDNJcHUwOFFISlpxYWxNYUpjUFNKVWt1ZWp3eEli?=
 =?utf-8?B?VzlyMEhzTzhaa20vSzNpVG5FRUZUNXM3Ymc4Z3g3K1I0S3VmMGZXVStEaElI?=
 =?utf-8?B?WjR2MUZDSGgxOTFMSlhhOFlpbU04Nm9FQkh0cU02aTBLbkxGVU42VmU0Y0VW?=
 =?utf-8?B?L21Yd1hMejhRaUtYaXJtQk5hQlpnZmNYTVN1a3RUamQ0MFROYS9SVklNSFFO?=
 =?utf-8?B?UXRzY1VKQ3dheWJjeWQ4K3JqK25lTlZLMDg4aXBNUTRqRXBiUkdGZXlrOEhU?=
 =?utf-8?B?eExCRVZDbUs1MmhQc3hjS2hiSlg4Wkh0RFhDRS9aekNKYmY1R2RFaFM5OEdV?=
 =?utf-8?B?VjgxUkViaG9FZHFGa1huN0laOTZURnZzQkt6eVNBMzJHbldwdmUrSXFNYnRL?=
 =?utf-8?B?c1NZZjFmdG04cm1MQjFlQzd5RTZiRWhlbitLWS9SalVkOWtpOHFoRDNFQzNl?=
 =?utf-8?B?ODZVTHZRendZcTJEUkorWHkvOGMrTTIvbW1FZXZWdzJUQ29kU1dmVm5KZ2ZF?=
 =?utf-8?B?Q1YvYXdPUThHRDBHZ1hwRStqUVptR1ZPc1ZjNGY3d3JxSElGMnFPd29hd3N2?=
 =?utf-8?B?Wmw1ZXJ1SGZ6UkdINEN5RGZTUTFVWEFsdkRkZm1BMU5MMUFCNmFieG1hWC81?=
 =?utf-8?B?NDNXTDRjdndaYy9lcnNkMzM3UGtSalVLWDFqc0lnSDlMcUhEVlFrNHZBdktq?=
 =?utf-8?B?S0NpZExKTjF5VUY0RFl2cUVEVk8zaCtnOFA4b2lTK0hqUVhzZXNoWTlic0pK?=
 =?utf-8?B?cVo5d1ZSQzNNNmNYT3M5THBUUW5Nb1kvNzl0YWhXYjFHc0Q4cmY4M0lvenlt?=
 =?utf-8?Q?NvoXCGZi2zHXIGq/a8MFnINr0?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef64a181-b1fa-438d-3d2d-08dbb80c65fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2023 05:59:19.3251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DCgzeXkh8A9wqtqIMwUw6eRWeK4dViEgEfzrE634V0GjPNv3pPfOLzLWtfHq/vsM/9kqLI3JRYxx85LJvdr7vuAuqxfhnusxq7z7JsGr8gk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5010
X-OriginatorOrg: intel.com
Subject: Re: [Spice-devel] [PATCH 3/4] channel-display-gst: Don't unref
 appsink and pipeline objects
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

SGkgRnJlZGlhbm8sDQoNCj4gPg0KPiA+IEl0IGxvb2tzIGxpa2Ugc2V0dGluZyB0aGUgR3N0IHBp
cGVsaW5lIHN0YXRlIHRvIEdTVF9TVEFURV9OVUxMDQo+ID4gd291bGQgY2F1c2UgYWxsIHRoZSBy
ZWZlcmVuY2VzIG9uIG1vc3Qgb2YgdGhlIG9iamVjdHMgYXNzb2NpYXRlZA0KPiA+IHdpdGggdGhl
IHBpcGVsaW5lIHRvIGJlIGRyb3BwZWQ7IHRoZXJlZm9yZSwgdGhlcmUgaXMgbm8gbmVlZA0KPiA+
IHRvIGV4cGxpY2l0bHkgdW5yZWYgdGhlbSB3aGlsZSBmcmVlaW5nIHRoZSBwaXBlbGluZS4gVGhp
cyBwYXRjaA0KPiA+IHByZXZlbnRzIHRoZSBmb2xsb3dpbmcgZXJyb3JzIGZyb20gc2hvd2luZyB1
cCB3aGVuIHJlbW90ZS12aWV3ZXINCj4gPiBpcyBjbG9zZWQ6DQo+ID4NCj4gPiAocmVtb3RlLXZp
ZXdlcjo2NDM0NCk6IEdTdHJlYW1lci1DUklUSUNBTCAqKjogMDA6MzE6MDQuMjc4Og0KPiA+IFRy
eWluZyB0byBkaXNwb3NlIG9iamVjdCAiYXBwc2luazAiLCBidXQgaXQgc3RpbGwgaGFzIGEgcGFy
ZW50DQo+ID4gInBpcGVsaW5lMCIuDQo+ID4gWW91IG5lZWQgdG8gbGV0IHRoZSBwYXJlbnQgbWFu
YWdlIHRoZSBvYmplY3QgaW5zdGVhZCBvZiB1bnJlZmZpbmcgdGhlDQo+ID4gb2JqZWN0IGRpcmVj
dGx5Lg0KPiA+DQo+ID4gW01PU106ICBDUklUSUNBTCAtIG1vc19ib191bnJlZmVyZW5jZToxNjY6
IElucHV0IG51bGwgcHRyDQo+ID4NCj4gPiBbTU9TXTogIENSSVRJQ0FMIC0gbW9zX2JvX3VucmVm
ZXJlbmNlOjE2NjogSW5wdXQgbnVsbCBwdHINCj4gPg0KPiA+IENjOiBGcmVkaWFubyBaaWdsaW8g
PGZyZWRkeTc3QGdtYWlsLmNvbT4NCj4gPiBDYzogRG9uZ3dvbiBLaW0gPGRvbmd3b24ua2ltQGlu
dGVsLmNvbT4NCj4gPiBDYzogSmluIENodW5nIFRlbmcgPGppbi5jaHVuZy50ZW5nQGludGVsLmNv
bT4NCj4gPiBDYzogSGF6d2FuIEFyaWYgTWF6bGFuIDxoYXp3YW4uYXJpZi5tYXpsYW5AaW50ZWwu
Y29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpdmVrIEthc2lyZWRkeSA8dml2ZWsua2FzaXJlZGR5
QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYyB8IDQg
LS0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYg
LS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jIGIvc3JjL2NoYW5uZWwtZGlzcGxheS1n
c3QuYw0KPiA+IGluZGV4IDNmNDZhNjUuLmFkMGFjOTkgMTAwNjQ0DQo+ID4gLS0tIGEvc3JjL2No
YW5uZWwtZGlzcGxheS1nc3QuYw0KPiA+ICsrKyBiL3NyYy9jaGFubmVsLWRpc3BsYXktZ3N0LmMN
Cj4gPiBAQCAtMzUzLDEwICszNTMsNiBAQCBzdGF0aWMgdm9pZCBmcmVlX3BpcGVsaW5lKFNwaWNl
R3N0RGVjb2Rlcg0KPiAqZGVjb2RlcikNCj4gPg0KPiA+ICAgICAgZ3N0X2VsZW1lbnRfc2V0X3N0
YXRlKGRlY29kZXItPnBpcGVsaW5lLCBHU1RfU1RBVEVfTlVMTCk7DQo+ID4gICAgICBnc3Rfb2Jq
ZWN0X3VucmVmKGRlY29kZXItPmFwcHNyYyk7DQo+ID4gLSAgICBpZiAoZGVjb2Rlci0+YXBwc2lu
aykgew0KPiA+IC0gICAgICAgIGdzdF9vYmplY3RfdW5yZWYoZGVjb2Rlci0+YXBwc2luayk7DQo+
ID4gLSAgICB9DQo+ID4gLSAgICBnc3Rfb2JqZWN0X3VucmVmKGRlY29kZXItPnBpcGVsaW5lKTsN
Cj4gDQo+IFRoYXQncyBwcmV0dHkgb2RkLiBJdCBsb29rcyBsaWtlIHdlIGFyZSBpbnNlcnRpbmcg
YSBsZWFrLiBVc3VhbGx5IGlmDQo+IHlvdSBjYWxsIGdzdF9vYmplY3RfdW5yZWYgb25jZSBtb3Jl
IGl0IGNhdXNlcyBhbiBlcnJvciBsaWtlIGVpdGhlciBhDQo+IGRvdWJsZSBmcmVlIGluIGdsaWJj
IG9yIGFuIGFzc2VydCBlcnJvciBpbiBnc3RyZWFtZXIuIEknbSBzdXJlIHdlIHVzZWQNCj4gdGhp
cyBwYXRoIHNvIHRoaXMgc2hvdWxkIGhhdmUgaGFwcGVuZWQuDQo+IEFuZCB0byBiZSBob25lc3Qg
cmVhZGluZyB0aGUgZXJyb3IgaXQgc2VlbXMgdG8gc3VnZ2VzdCBhIGRpZmZlcmVudA0KPiBpc3N1
ZSwgbGlrZSB0aGUgYXBwc2luayBpcyBzdGlsbCBhdHRhY2hlZCB0byB0aGUgcGlwZWxpbmUuDQo+
IE1heWJlIHVucmVmaW5nIHBpcGVsaW5lIGJlZm9yZSBhcHBzaW5rIGZpeCB0aGUgaXNzdWU/DQpJ
IHRyaWVkIHRoYXQgYnV0IGl0IGRpZCBub3QgcHJldmVudCB0aGUgZXJyb3IgZnJvbSBzaG93aW5n
IHVwLiBUQkgsIEkgbm90aWNlZA0KdGhlc2UgZXJyb3JzIHdoaWxlIHVzaW5nIG1zZGtoMjY0ZGVj
IG9uIHRoZSBkZWNvZGUgc2lkZSBzbyBJIGFtIG5vdCBzdXJlDQppZiB0aGV5IHNob3cgdXAgaWYg
d2UgdXNlIGF2ZGVjX2gyNjQuIFJlZ2FyZGxlc3MsIEkgZ3Vlc3MgSSBuZWVkIHRvIGRpZyBkZWVw
DQp0byBmaWd1cmUgb3V0IHdoeSB0aGV5IGFyZSBzaG93aW5nIHVwIGluc3RlYWQgb2Ygc2lsZW5j
aW5nIHRoZW0gd2l0aCB0aGlzIHBhdGNoLg0KDQpUaGFua3MsDQpWaXZlaw0KDQo+IEkgcGVyc29u
YWxseSBkaWRuJ3Qgc2VlIHRoaXMgZXJyb3IgYmVmb3JlLg0KPiANCj4gPiAgICAgIGdzdF9vYmpl
Y3RfdW5yZWYoZGVjb2Rlci0+Y2xvY2spOw0KPiA+ICAgICAgZGVjb2Rlci0+cGlwZWxpbmUgPSBO
VUxMOw0KPiA+ICB9DQo+IA0KPiBGcmVkaWFubw0K
