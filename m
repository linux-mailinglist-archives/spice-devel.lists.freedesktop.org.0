Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5077AA27C
	for <lists+spice-devel@lfdr.de>; Thu, 21 Sep 2023 23:19:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4791210E608;
	Thu, 21 Sep 2023 21:19:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5D4910E608
 for <spice-devel@lists.freedesktop.org>; Thu, 21 Sep 2023 21:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695331166; x=1726867166;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4/B6Gw8UgJgHmqmSOvX2RLPLuTXEMMhiqdDShU52j80=;
 b=eJIRd1Z+QMbyXwntQ910TomTYL49v8ynBEZrUe6/MkbSSuZ2ND/VZpWK
 vkJw3yMjswmkjAxLdeQJJFM1X93XlxBdvEXvK+H9IEvmmN2opiuqZSu1G
 k5x6IPjmPZwMnpFp926EqtBd+QiK4pAfZm82q8PycLTv2nEDuq3nJQdJz
 tXhTDEXWhTDDLWDuciipFqgvsh4ySfAAAgzodanmvHRbJvYvrlehJ4yUf
 xuHj4QbktTyFMpUoJioiAgppzSO+X/OgGjvcOwCRU88Lz4+QIRWS4wgSA
 AaDRw60wpyDfBIOlBjEdbmPjTFsjK/I+FvWmorZU5VQ/nHLO1s8u6A0Lk w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="384505955"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="384505955"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 14:19:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="723920742"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="723920742"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 14:19:26 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 14:19:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 14:19:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 14:19:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 14:19:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eNm0aHwuFZVxp+Brbwm8zMBoamr/AdOJE8+pJsNtIwhAdRbLCfcoyMjWgzVxHzyFVEoAGXzSKY3IvZ/bOtIHlME+Rw74fD8Ko7EqsY9sU3CDaiWTGPw5rdb8JUwDFEYACIbxlKtjaXQ5Q3okB2ZprzeESi/mWrEWtmcmYLDSQqlF8taMhBBSoDzgMmnQQDJ9ruMeCy7qLpY37oULYBsB3m518mdoFafqTZJnPcAhZGXv5zjdtiVokhFsA5eU34sOiI7wT+bxMiVq3O+Cgof9HYn1JrTE4P+is0STB0DvvF5NAIM2IVhZN1TOkQQy3dON0aK6xIQgINrWrFMpqJLnpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4/B6Gw8UgJgHmqmSOvX2RLPLuTXEMMhiqdDShU52j80=;
 b=QR/N+PmcdW0uRlfFDzGKnQmAdeeSfsVC5B8GIwspPzkKFantFdpAl7QSJOOwc11/kXvjHJ/Snce/tMQYRQFUhI/bEXyrpTZ6N4rvNMVvFt1aSILYvl+CRGtiCGFR2vr5z/xPRhjbHISR08hlXq2MnBakTzvDJ/cDDUkldlX3Bw8lEnVw4xaqDIRNdLYems4U5AcUaVHJWM26bDPPdj1IZeye+G2b9m4qp3vvcIhE8AI8Y9TTyJgWmVGLKGufuXMg91IjkglC3WQ6IBOYfKlzoIL/1K14IZF1g33sOWbA1CA2LgczF7Q3ZZcb9zQOqvqK+YTzyJssVkXRggpmTECg1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by SN7PR11MB6900.namprd11.prod.outlook.com (2603:10b6:806:2a8::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.20; Thu, 21 Sep
 2023 21:19:22 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::fe3f:b90e:4eaa:fac8]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::fe3f:b90e:4eaa:fac8%7]) with mapi id 15.20.6813.017; Thu, 21 Sep 2023
 21:19:22 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>
Thread-Topic: [PATCH 1/2] gstreamer-encoder: Use NV12 as the default vpp
 conversion format
Thread-Index: AQHZ52w1vMXQp431m0eqTdRrx1k+GbAcAomAgAPjrECAAGBPAIAFYhpg
Date: Thu, 21 Sep 2023 21:19:22 +0000
Message-ID: <IA0PR11MB71858FFACB9B9E79E8F36DBDF8F8A@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-4-vivek.kasireddy@intel.com>
 <CAHt6W4f+8b0K6XYG+jKg_xSiLUqUhLx28JFdjqLN4j=pT6hJWQ@mail.gmail.com>
 <IA0PR11MB7185717AE7EDF12BE2C64649F8FBA@IA0PR11MB7185.namprd11.prod.outlook.com>
 <CAHt6W4eFkVbBPmkzQmafAybHvKVX_=A7oFZ3-Hni=M9KRm=SXQ@mail.gmail.com>
In-Reply-To: <CAHt6W4eFkVbBPmkzQmafAybHvKVX_=A7oFZ3-Hni=M9KRm=SXQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|SN7PR11MB6900:EE_
x-ms-office365-filtering-correlation-id: 8d0de734-a0a2-4310-0806-08dbbae86cd6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 417o+S7Dr6XzPrLtqbkwBVUOLzu/RVIOkRV/jIE4eckV/t210EfCLqWl2nuTDtahegr1knTSFSfkRV2Yz4pzqeStgC9sQoN7sB6Gql/F/NUjpQEQ31tirQRXMN1GoUBOyTO666QOKVqS93CxVanh+7PccJTxkwMmL3jslcJOjXa162IKDHJhHdYTmUVpg2XD1KU1ba5NFLQf/9pi64h3YJkzbPDZPzLwhIyUTmZrcq8P35LWiGYjGY9tmjcdVPfF5NQo7qnblwYo7C1Z+UBlcSCZSY1aP9ikUiqbQ+UIoelftBlPfbotGLcckLFc/4KncH5PjMO3fHUt/4GTO34dsSXesSa8rVPOfnfW2DnoQwsLEFJE+UGDsrdYrlJxEdMrfjlFyIBRNBxFKsyBlmlJUC3ziRcb8FmTyljhBOnMZk+v65vwaUXqsEcpk1lMeov5IKjgIFAiLavnsCu+dErSaTvDjuT3ztKI3tNO+RQ119MhiSa/eKwsoQQzPKHVnxCbyFQz6HPo8ZY8HjGarZBW2lXk2ATfmh6nMeEtuA8Qo9wIwNNgevfOxIjh8XueDvZDXbLJhrBeaPTKBYlZ14+5U/oIsmFAPmSKjBT8YrY5PPi60THns0ukRPHp5myt46sb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(376002)(136003)(366004)(39860400002)(1800799009)(186009)(451199024)(86362001)(55016003)(5660300002)(52536014)(4326008)(8676002)(2906002)(8936002)(33656002)(71200400001)(7696005)(82960400001)(9686003)(6916009)(38070700005)(478600001)(6506007)(122000001)(26005)(66476007)(83380400001)(38100700002)(76116006)(66946007)(66556008)(107886003)(41300700001)(54906003)(64756008)(66446008)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b2tHcjl2SlVrN2E5U1ZORUloMGZYczU1R0hmRjZNdWxXUU1ibTFQUG9TV0Vm?=
 =?utf-8?B?aFFoRkp6eHdFd2lIU1RZd29JK1U4ampnVUZIak8yTitLdUc3OVRrbzcvQmdp?=
 =?utf-8?B?TmsyeUd5YVc5QUZ1V1hXSFp1azRtQW5YZS9XTFg2ZWd3SDdCUnk1cnYxY0Nl?=
 =?utf-8?B?TXF3MkZxU0RSZUNVL2o4ekovQldmN2VFajJVUXZFcHhNamlOekpOaXJ6WmlP?=
 =?utf-8?B?Ny91Tzhqdmo1eDdpWnkxdnFHV29KUFdqUGFQL2l5WldaKzRMaEZsTWtNSmMw?=
 =?utf-8?B?dy9hN21TaWRHU2p6Q3VwbVhmdVA1RVBoYnVFVk5kN2hHdGNKdC9zbE51ZDNz?=
 =?utf-8?B?Vi9EUXNPSlA0WHNPQmpiNGhCRkh2ZnlpU2dzWmZwZmFXdmhJYkZrWjRQdHk0?=
 =?utf-8?B?cmR2czlUQVpWSXlIUjB1QTRxTE5nb1Jvay9VK3JWNEJWb0cxNlNOVXgrS3Vz?=
 =?utf-8?B?NnQvQSttVEJ3TnYzZGllWGFnd0FmUHppSzRPSjdaMlpQN0ozZ2c1ckpVazhZ?=
 =?utf-8?B?dkJQSHR4SjJjREpqT001MlEvUkx1WlUvTXRiTUhwOHZPQUpIVWNEM2ZVUjBX?=
 =?utf-8?B?OU1oV3Jrazd2TmErMEhxTW44ZFd2bHRMYXpEM0xGOHdwaVBPc3JxYmFPUHc3?=
 =?utf-8?B?MFgwc0FUVUoyYXh3em8yMEFjM3R4c2xZejVDa2cwK1dFNnI4a1dzMFNpbUFK?=
 =?utf-8?B?M3JwVVNWbjYwaURFK3phV1dPbWl2Y1M2WlFKdllKTkwwS2t4akFHSzcyRXVq?=
 =?utf-8?B?dW9hOVZKMkZldzFBSGRvT282WTMrWTA1UDFnWi9ncE96UGJZblB1Y0xtQTI0?=
 =?utf-8?B?QzE4dnlkK3gxcjFhK1BxT3VpdGg0RnZybkYrNFFvUGhCcUZUV3hWampNS1Ra?=
 =?utf-8?B?VDhjSGtldUZNSE5zWXAzZXZUcXg2WFpneDFlQ0xZbFFiRkxBUGlTZDB5Wlph?=
 =?utf-8?B?Q1RXMFNyR05hUGliSFlWeU1YY0lNUFNZbTlpS3M4bW1tQjV0S005bTVVczlu?=
 =?utf-8?B?cENkQzFKZzI5RVNqR1VqL1FMOWVWUHI4OE1rckxtbU0xYXlod25Qc0NOeith?=
 =?utf-8?B?WG0vVFpBMG9Eb0paUFFmcFpOMGtBNytsa3laU2RKcmg5WlloN25DbzJSbnV1?=
 =?utf-8?B?Tm4zVEI1cGNTanpEZnlmWE9MNGl0bTVPNThUM2dEUnRlZ0ptS1J1ZnBpQU9x?=
 =?utf-8?B?WThWQmV4R1dzaFcvaVRmUnc5K1dMeTAzQU1QYytYb3VaQkpTSVNSOFFpbzRz?=
 =?utf-8?B?Q1h5cGh4WWhLcExLN3czOUdpdFliYkdXS29aSmJJMmNsWXd6eEhLUTM3VHRs?=
 =?utf-8?B?RVJnOGt6dE85bGt6MzBDaWZRQ1N4NktodU9NdmlDNkJoRFZ1MWR5Nnl4cHJt?=
 =?utf-8?B?cEhMQmtzM0lnQzFHWDd2aW9HMjlRUENjSWEzV1dKNmZSbDhkNm1BV1hIWVRo?=
 =?utf-8?B?SHVaaTlCWlFhcHNObEIzdjNOemJ1UTNTZjIxS3RrR2JJU1F4VUdjUHlDbUhG?=
 =?utf-8?B?b1Z1dWF5UzZGOHo1VnVodTRJSXFPZkN3cEpPZUh4MVgxcDdSS3BhQ0FnRHg2?=
 =?utf-8?B?bVlRcWFaOHUrbldmVUROODZ4cGNDSjRaS0dmME81RytDOEFYYjNrRkpublUy?=
 =?utf-8?B?dzA5dVVPK0RqVTVDOFM0WWNmQUVsZ2k4YkYxZUY4NVFHcmlrdFgvL1ZCVEhu?=
 =?utf-8?B?citKNFY3Z3FlcEFvL1hPbzNKSjc2L3E3a2Q5OFVEa2h5cEZEV0xjb1BmMXp5?=
 =?utf-8?B?bVVETlI1NUg0NnBSSjJyaWl3ejIxeVFRR0NKcm9rYjQ0ZU44K0ZybEpDVG5C?=
 =?utf-8?B?UjYvVWl0d2JGc0tCTnN6amtjeTdxQVNpUHQwWkhkZzROVThjTDUrU25KbGM2?=
 =?utf-8?B?dGRsQzhvZWJpVmZSdFcrRm1UUGJ5UzJGcEg3NGxvZEp4LzJBbE45eVNHTWFS?=
 =?utf-8?B?K2t1U0NFTHRTRTNER0VyaStCMyt5TmlUOTdNNUZYdnlsNlV6Um5IOTBHaENX?=
 =?utf-8?B?MWppWEoxSlNIZTRCWm5zM0FvSE05V3h5U1h0bDBPSEJ0K20rcktJQlg4TjlS?=
 =?utf-8?B?em4wQ3lDNkhITzMwZWN4VWtabkVsVkxRYkNzczBTRTh3dUoyZnBDM2ZSRjAv?=
 =?utf-8?Q?Y/hkn4uGQSjq4zh1mSMAMTAOj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d0de734-a0a2-4310-0806-08dbbae86cd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2023 21:19:22.3709 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QmzM9mzd9NNm44Hz7kUdTrYdYcrWY9Xt28pDZkQP11NP3YSusu7HliHYhiKt0k14nABggm6vxPNm0uQiXkk6lqozsNEwuCxJ6UlAWt6tf+8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6900
X-OriginatorOrg: intel.com
Subject: Re: [Spice-devel] [PATCH 1/2] gstreamer-encoder: Use NV12 as the
 default vpp conversion format
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
 "Kim, Dongwon" <dongwon.kim@intel.com>, "Mazlan,
 Hazwan Arif" <hazwan.arif.mazlan@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkgRnJlZGlhbm8sDQoNCj4gPg0KPiA+ID4gPiBGcm9tOiBIYXp3YW4gQXJpZiBNYXpsYW4gPGhh
endhbi5hcmlmLm1hemxhbkBpbnRlbC5jb20+DQo+ID4gPiA+DQo+ID4gPiA+IFVzaW5nIE5WMTIg
YXMgdGhlIG91dHB1dCBmb3JtYXQgZm9yIHRoZSB2aWRlb2NvbnZlcnQgZWxlbWVudCB3b3VsZA0K
PiA+ID4gPiBhbGxvdyB1cyB0byBwYWlyIGEgcy93IGJhc2VkIGVuY29kZXIgd2l0aCBhIGgvdyBi
YXNlZCBkZWNvZGVyIGZvcg0KPiA+ID4gPiBkZWNvZGluZyB0aGUgc3RyZWFtIGFzIG1vc3QgaC93
IGJhc2VkIGRlY29kZXJzIG9ubHkgYWNjZXB0IE5WMTIgYXMNCj4gPiA+ID4gdGhlIGlucHV0IGZv
cm1hdCBnaXZlbiBpdHMgcG9wdWxhcml0eS4NCj4gPiA+ID4NCj4gPiA+DQo+ID4gPiBJIGRvbid0
IGZ1bGx5IHVuZGVyc3RhbmQgdGhlIHJhdGlvbmFsZS4NCj4gPiBZZWFoLCBJIHNob3VsZCBoYXZl
IGFkZGVkIG1vcmUgZGV0YWlscy4NCj4gPg0KPiA+ID4gWWVzLCB0aGUgaC93IGNvZGVjcyB1c3Vh
bGx5DQo+ID4gPiB3b3VsZCBjb252ZXJ0IHRoaXMgdG8gTlYxMiBob3dldmVyIHNob3VsZCBub3Qg
dGhpcyBiZSBkb25lIGJ5DQo+ID4gPiBnc3RyZWFtZXIgaW5zdGVhZD8NCj4gPiA+IFN1cmVseSBZ
VVYgY29udmVyc2lvbiBpcyB1c2VmdWwgYnV0IHdoYXQgaWYgYSBzb2Z0d2FyZSBjb252ZXJzaW9u
DQo+ID4gPiB3b3VsZCBsaWtlIHRvIHVzZSBZNDQ0IGluc3RlYWQ/IFdpdGggTlYxMiB5b3Ugd291
bGQgbG9zZSBpbWFnZQ0KPiA+ID4gcXVhbGl0eS4NCj4gPiA+IElzbid0IGdzdHJlYW1lciBzdXBw
b3NlZCB0byBjb21lIG91dCB3aXRoIHRoZSBiZXN0IGNvbWJpbmF0aW9uPw0KPiA+ID4gTWF5YmUg
aXQgd291bGQgYmUgZWFzaWVyIHRvIGhhdmUgYSBtb3JlIGNvbXBsZXRlIHBpcGVsaW5lIHN0cmlu
Zw0KPiA+ID4gaW5zdGVhZCBzcGVjaWZpZWQgZm9yIGVhY2ggY29kZWM/DQo+ID4gTXkgdW5kZXJz
dGFuZGluZyBpcyB0aGF0IHRoZSBnb2FsIHdpdGggdGhpcyBwYXRjaCBpcyB0byBlbnN1cmUgdW5p
Zm9ybWl0eQ0KPiA+IG9mIHRoZSBmb3JtYXQgYW5kIHNwZWNpZmljYWxseSBhZGRyZXNzIHRoZSBj
YXNlIHdoZXJlIHdlIHVzZSB4MjY0ZW5jDQo+ID4gb24gdGhlIGVuY29kZSBzaWRlIGFuZCBtc2Rr
aDI2NGRlYyBvbiB0aGUgZGVjb2RlIHNpZGUuIFNpbmNlIFk0NDQNCj4gPiBpcyB0aGUgZGVmYXVs
dCBpbnB1dCBmb3JtYXQgZm9yIHgyNjRlbmMsIHZpZGVvY29udmVydCBjb252ZXJ0cyB0aGUgQkdS
eA0KPiA+IGRhdGEgaW50byBZNDQ0LiBIb3dldmVyLCBvbiB0aGUgZGVjb2RlIHNpZGUsIG1zZGto
MjY0ZGVjIGNhbiBvbmx5IHdvcmsNCj4gPiB3aXRoIE5WMTI7IHNvIHRoaXMgcGF0Y2ggaXMgZW5z
dXJpbmcgdGhhdCB3ZSBzdGFydCB3aXRoIE5WMTIgb24gdGhlIGVuY29kZQ0KPiA+IHNpZGUgYXMg
d2VsbC4gSmluIENodW5nLCBmZWVsIGZyZWUgdG8gYWRkIG1vcmUgZGV0YWlscyBpZiBJIG1pc3Nl
ZCBhbnl0aGluZy4NCj4gPg0KPiA+IFRoYW5rcywNCj4gPiBWaXZlaw0KPiA+DQo+IA0KPiBUaGUg
cHJvYmxlbSBpcyBjb21wYXRpYmlsaXR5LiBBIGNsaWVudCB3aXRoIGgvdyBoMjY0IHN1cHBvcnQg
c2hvdWxkIGJlDQo+IGFibGUgdG8gdGFsayB0byBhIHNlcnZlciB3aXRob3V0IGFueSBjaGFuZ2Vz
Lg0KPiBUaGlzIHBhdGNoIGlzIG5vdCBmaXhpbmcgdGhpcywgdW5sZXNzIHlvdSB1c2UgYSB0aW1l
IG1hY2hpbmUgYW5kIHlvdQ0KPiBhcHBseSBpdCBhdCB0aGUgdGltZSBoMjY0IGFuZCB4MjY0ZW5j
IHdlcmUgaW50cm9kdWNlZC4NCj4gU28sIGJhc2ljYWxseSB0aGUgY2xpZW50IHNob3VsZCBiZSBh
YmxlIHRvIGRlY29kZSB5NDQ0IHByb2R1Y2VkIGJ5IHgyNjRlbmMuDQo+IEVpdGhlciBrZWVwIHVz
aW5nIHgyNjRlbmMgaWYgdGhlIHNlcnZlciBjb3VsZCBzZW5kIGl0IG9yIGJlIGFibGUgdG8NCj4g
ZGV0ZWN0IGZyb20gdGhlIGZpcnN0IGRhdGEgZnJhbWUgKGl0IHNob3VsZCBiZSBwb3NzaWJsZSwN
Cj4gbWF5YmUgd2l0aCBhIGZhaWwgYW5kIHRyeSkgYW5kIHVzZSB0aGUgY29ycmVjdCBwaXBlbGlu
ZS4NCldoYXQgSSBoYXZlIGxlYXJudCBpcyB0aGF0IHNvbWUgSW50ZWwgaC93IGNhbm5vdCBkZWNv
ZGUgdGhlIGRlZmF1bHQgZm9ybWF0IA0KdXNlZCBieSB4MjY0ZW5jIChoMjY0IChIaWdoIDQ6NDo0
IFByZWRpY3RpdmUpLCB5dXY0NDRwKS4gVGhlcmVmb3JlLCB3ZSdkIGhhdmUgdG8NCnVzZSBOVjEy
IGluIHRoZXNlIGNhc2VzLiBIb3dldmVyLCBJIGJlbGlldmUgdGhpcyBjaG9pY2UgaGFzIHRvIGJl
IGxlZnQgdG8gdGhlIHVzZXIuDQoNCkluIG9yZGVyIHRvIGRvIHRoaXMsIEkgdGhpbmsgaXQgbWFr
ZXMgc2Vuc2UgdG8gaGF2ZSBhbiBlbnZpcm9ubWVudCB2YXJpYWJsZSANCihTUElDRV9DT05WRVJU
RVJfUFJFRkVSUkVEX0ZPUk1BVD8pIHRvIG92ZXJyaWRlIHRoZSBkZWZhdWx0IGZvcm1hdCB1c2Vk
DQpieSB4MjY0ZW5jLg0KDQpUaGFua3MsDQpWaXZlaw0KDQo+IA0KPiBSZWdhcmRzLA0KPiAgIEZy
ZWRpYW5vDQo+IA0KPiA+ID4NCj4gPiA+ID4gQ2M6IEZyZWRpYW5vIFppZ2xpbyA8ZnJlZGR5NzdA
Z21haWwuY29tPg0KPiA+ID4gPiBDYzogRG9uZ3dvbiBLaW0gPGRvbmd3b24ua2ltQGludGVsLmNv
bT4NCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSGF6d2FuIEFyaWYgTWF6bGFuIDxoYXp3YW4uYXJp
Zi5tYXpsYW5AaW50ZWwuY29tPg0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKaW4gQ2h1bmcgVGVu
ZyA8amluLmNodW5nLnRlbmdAaW50ZWwuY29tPg0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaXZl
ayBLYXNpcmVkZHkgPHZpdmVrLmthc2lyZWRkeUBpbnRlbC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+
ID4gPiAgc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMgfCAyICstDQo+ID4gPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+ID4NCj4gPiA+ID4g
ZGlmZiAtLWdpdCBhL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jIGIvc2VydmVyL2dzdHJlYW1l
ci1lbmNvZGVyLmMNCj4gPiA+ID4gaW5kZXggZDhhZjkxZjEuLjA1NzUwOWI1IDEwMDY0NA0KPiA+
ID4gPiAtLS0gYS9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYw0KPiA+ID4gPiArKysgYi9zZXJ2
ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYw0KPiA+ID4gPiBAQCAtOTE4LDcgKzkxOCw3IEBAIHN0YXRp
YyBnYm9vbGVhbg0KPiBjcmVhdGVfcGlwZWxpbmUoU3BpY2VHc3RFbmNvZGVyDQo+ID4gPiAqZW5j
b2RlcikNCj4gPiA+ID4gICNpZmRlZiBIQVZFX0dTVFJFQU1FUl8wXzEwDQo+ID4gPiA+ICAgICAg
Y29uc3QgZ2NoYXIgKmNvbnZlcnRlciA9ICJmZm1wZWdjb2xvcnNwYWNlIjsNCj4gPiA+ID4gICNl
bHNlDQo+ID4gPiA+IC0gICAgY29uc3QgZ2NoYXIgKmNvbnZlcnRlciA9ICJ2aWRlb2NvbnZlcnQi
Ow0KPiA+ID4gPiArICAgIGNvbnN0IGdjaGFyICpjb252ZXJ0ZXIgPSAidmlkZW9jb252ZXJ0ICEg
dmlkZW8veC0NCj4gcmF3LGZvcm1hdD1OVjEyIjsNCj4gPiA+ID4gICNlbmRpZg0KPiA+ID4gPiAg
ICAgIGNvbnN0IGdjaGFyKiBnc3RlbmNfbmFtZSA9IGdldF9nc3RfY29kZWNfbmFtZShlbmNvZGVy
KTsNCj4gPiA+ID4gICAgICBpZiAoIWdzdGVuY19uYW1lKSB7DQo+ID4gPg0KPiA+ID4NCj4gPiA+
IEZyZWRpYW5vDQo=
