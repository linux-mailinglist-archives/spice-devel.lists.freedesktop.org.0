Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C34679153
	for <lists+spice-devel@lfdr.de>; Tue, 24 Jan 2023 07:55:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9C810E60B;
	Tue, 24 Jan 2023 06:55:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FE6010E60B
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Jan 2023 06:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674543340; x=1706079340;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OPnUpt7RNMe6wLurRcLSffjewUj6Ig4d4B4CzJZTKeo=;
 b=Rc/iKLB1XPViyACtC7+8J9ozMGDMWaXbz/lzEahzynSSwj1VFK10XO6/
 IM24bbrzfQnREh/4zkp4/IMl5MXIIq9Fqyg/RAT1NMwf4lSb3MfQMbfHG
 YfLknep+XpagPZAhWa5q5QLMnw3LcYeRen6ykNM0j+Og3zzIxgmkJnN42
 5tXBqK3tcp1mhtmbF9V6LCM0MT/EqQLv7BixhVHEwwTyLDfiRuTuQ0Bv2
 pmBE5oVBbNq0mKCIgJNvyZz6NBfJF9HEZZwVmog9VNpy9wD8vMQ3PASry
 cZoTl8fPAaPNiqwe8A9oGkHIKZcr04lDnySZgCVqivW9ejSCrPWmibHbT A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="328326448"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="328326448"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 22:55:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="655320160"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="655320160"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 23 Jan 2023 22:55:39 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 22:55:38 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 22:55:38 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 22:55:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cjj5Pj2nFwS8z047pNovhsU6/YTnCEKl0YiVXWYo+Qgyt+rDrbvMeatC8SRYjIDfbJkdx4t9Q2q+jTSyMk2GDKIL7PFQK5ANDL11BOdLTd8vHW4E9LN612Ip4ubqSO8fDYieN6FEh3uiDmPB0MTD2jxM63Hz8ja/+YD3q6fyRwGB28+SeprYL8xHtiLzN6GRVVtAlXOVBi4NcWN5XK20TwJVpHM09DQ8eIGMOnOiTJ2gNReYB4qb7mXP1iLjAFBxONUPTABWboajrXbKs/Pq2jL9iR9EzsqP0VjAvmy8kPJhT+8/8YIFNXyXU42TOWezdozigkJKnA+uuo3GuJZ9/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OPnUpt7RNMe6wLurRcLSffjewUj6Ig4d4B4CzJZTKeo=;
 b=GpMI68dnqvodqnWSAP5iyizcRddutTyXxF3GKttyv0S1/JTwaO2kyhpMmOSsRqRBp6H+w/j3/Cth9L4Fs5tFEQhzGibpI0pZOnx8TZImBVEb32zfhXEDBm6KHb9HwN3AgN6ZQ/+TQWP7ncserjh2kuljIaClEthmx2ufRselcb57BfJShpklM5QRwABDrVa8fpBIwhVHmKiOUFkplj+x3NWjJmysVh2JFu4kzrz0mTouIF4b5jAYz8gZ7rT2l+7KrZl1dplWdXvSc5U+SxqwfZLVGRUmgU+1oTJ07pKR1OHquiHzk2dCMI3pD0IAwGXzaIUv6RsT4L8r54n/UCWY0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:443::14)
 by CH3PR11MB8240.namprd11.prod.outlook.com (2603:10b6:610:139::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 06:55:34 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::6385:771:1bc4:2f6]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::6385:771:1bc4:2f6%4]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 06:55:34 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>
Thread-Topic: [Spice-devel] [RFC v2 0/5] gstreamer-encoder: Use a dmabuf
 allocator if the drawable has a valid fd (v2)
Thread-Index: AQHZLwlK+t4mm4UQM0mSTaYoGauHDa6r/4aAgABjkvA=
Date: Tue, 24 Jan 2023 06:55:34 +0000
Message-ID: <IA0PR11MB7185ED545B7473AE604A1850F8C99@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20230123084123.1038341-1-vivek.kasireddy@intel.com>
 <CAHt6W4cJb7OEhhwdX3ULMC2aox_x+S7QZSeFRguvW4kXVVvhzA@mail.gmail.com>
In-Reply-To: <CAHt6W4cJb7OEhhwdX3ULMC2aox_x+S7QZSeFRguvW4kXVVvhzA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|CH3PR11MB8240:EE_
x-ms-office365-filtering-correlation-id: 62c692aa-0e93-4c2c-79a6-08dafdd7fded
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MjYuKeeBQtq6D6jzk/arzr9TckNHjFwFoQSfOEVSjDTADfuWNDnEhKzdNv7Z6zri73Z7OOa/9z0RkiogcXhbMyb9QZYNWRhH6bkQnWXTfdPO9gO3vu6acPThGcjUARsXhkIVxtvgHwCJKDxASXnbq3XQaQBasy4YZMPCgqsjcBQ+iQ4BBSxxpYCJhnRDMCANFEEvBSnGY73pLRmrgha18qGKrlWWxbYkknW52jnkMgUHiIgz0GjM20jNxTVRkTEgI+92Ow4vB8FKXUikmvd+u5A+9bPSI943qbfgGBr8lFuD4lKARbb55amOrGlKOAOE/J9ltGUDdoHpSGErjsZK7TIaM3E80h0JMJDoz0IViRRplRRZd1G0dvxeCkQLo5tRFuCsIXgZkrxL4QP65Q7kQsDMR0dH3fQng77sObKp1j3kbFSNxnt3zr+92K2jZLGNvzF7EYwn82sw6iBcn4WYMYAdxfnlyREookJ3tdS5c+LMAxK32z8wy2KWaHMQd8gYRdd4d4hEcyh2h4zxm6B9wDG1iFbEVlmjjq9BVTOWYuLjq2Rzbb6BulLpcIeUjIGiKksLhlcFXrms7e4nqxVkC/Z5XPmFOsMBnqbiqUcT14jMl4w3lzRazlkjj6RxPvc9NwPOc6OyUZfPCwa0f/MLnT+HiXihKelsFIzMTDJJgOrQo/5jnFK7cvZ/kCb4GxiP4QLTM9jgyAXsGadbzLHYUw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(376002)(136003)(396003)(39860400002)(451199015)(66899015)(86362001)(38070700005)(2906002)(82960400001)(4326008)(52536014)(5660300002)(8936002)(41300700001)(122000001)(83380400001)(33656002)(38100700002)(71200400001)(478600001)(7696005)(6916009)(8676002)(9686003)(26005)(6506007)(66446008)(55016003)(186003)(64756008)(76116006)(66556008)(54906003)(66946007)(66476007)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eGM3RjdDOWNqZ3ZtczdCNmxFaUlVVzVyN282VlRBSkRodVU4YlJaMTNzaXAx?=
 =?utf-8?B?b0xiK1lYRTZkRHJ2dUlnVDd4ZXBPN3paRVhJVjNMdFM0c09MTnRCckVMbHBK?=
 =?utf-8?B?WTFzVTl0WmRCd1NvNFY4bkZ5cGdMaW9Jb0cwOHdzUlNGcXJHMVk0NUtkWlZo?=
 =?utf-8?B?SkN5UFRBWi9laVdhYnNsYzNQMy9UdU41VVRjdzdOUmlRTW5KL21jTnNzR3pG?=
 =?utf-8?B?ZWFXZmdOdVN1NlIxWWJ4Mm1tMi9HclFNNkVVa1dFK1haSDhscWZ1RllGRm5u?=
 =?utf-8?B?bmNpM0lTMk5DSXVFZzNBNWo3eERLWFdPbDBPa0EybFNqTHNaakg1RitDUkg0?=
 =?utf-8?B?TzVJU3lpWHc3QVNuWDRsNjBIS3JURXJiTXZrY2pQdmYrdm9qU3ZycHpwQTlw?=
 =?utf-8?B?WjVaSHEvSkxlcktUbi94YyswR3RuL1A5bEhGelNDeFExRkJMcnkxaWd6endq?=
 =?utf-8?B?SmZtT2JkREkrTDRFemF1aTNNNSt5QzRnYTJ6RXNBdG1PTG5FR09vS2oySjEr?=
 =?utf-8?B?Nk8vVEFTZ3lVQTZEYkQvdXpOSzJaZDBOQlBqWE9kUDEwTFJJbTJCalRwdG8v?=
 =?utf-8?B?dGQrNloyMXNLaG5rK1dHZVg0M2JtbTNidHlpMzZRZ2huWU5UZjdzcHNka3pL?=
 =?utf-8?B?aEkxZlhZZldJMzFCSzR0VVRsZ1YrL3VTditEQW9mQ3ZoQzFzQjVSTkZLRk9a?=
 =?utf-8?B?VGFwQmhKcjh0ZWE2dkFzek1uSVRKZnQyNkxmSHNpV1I2ekR6Zlc5cVEwdE5H?=
 =?utf-8?B?Q3NLM3BrWXVwUG9sZ3QrdHBMcTNKYjhkM0dLUGdVS3NwYncvTk53UzB3UDVX?=
 =?utf-8?B?T3Rnc3RWbGtnYVNhTzJYY1NLUHAvZzgxdmZZTmc1bmg0Rkd6RGt4UGtmdWgw?=
 =?utf-8?B?OEh1cjFjUW9aWms0UzFuOHU5dTZWVzlqZzdnSWxQZTNqUzhrN1U1Zkd0U1VD?=
 =?utf-8?B?UWZrK3cyVFNOa2JtdkRNcUJmUEFHRmExODJXd1hFVGowR1lNS2ZaM21BaVo4?=
 =?utf-8?B?QU9GeG9uUGc0NHpQYzFlU2RIMkJFUmJrTURHZFNWWWozMW1jNXptalJHTFhH?=
 =?utf-8?B?b1lzNUVEejg1YXIxWWpsU3VWaU5sSkhTL05nVmwrOGNXU2lNWHFDRFdaUzRa?=
 =?utf-8?B?U2xIVW1qakE4Q3AxWERYdHZ5UHRVVHB3c1pQVmFUNWlrYTBGUVA5U1FDRk5R?=
 =?utf-8?B?NVV5MFM0MGM3Q255Y0hldDM2MWVFMDdkeXlHMEcvLzhXQWFVbkVQZ0haQWpv?=
 =?utf-8?B?WHBJZFFXckt6L3dyU3BJNjk0QzZFV2ZCT2pLaVRBemRHOEpFZHRqd0xVNTlW?=
 =?utf-8?B?TFBJa0k0YTREK2FBNEdmeW1xN3dJOXZrTHFSZ2Urdjd5RERVbEQ4K0h3R1h2?=
 =?utf-8?B?T3V4QzYzWkw0blRMMGk4emxNcmFlQ1Z4UDBHR2RqVnRyaEthdmFTdGNlYzMx?=
 =?utf-8?B?ZFR6cUNvTnFmc1kyN0lYMS9DMDA5SGVqNERNbW9WZGxYaE1mLzNhUXlvVERM?=
 =?utf-8?B?WnRzRUhkaXhkRFVYOU9wTVFwczh3UDVhUVBiRCtzckJHbkxxSkpiSTFCNGIy?=
 =?utf-8?B?ZXRhZzM5QWYwWVJLeURyN1c2aGNXSEJKWXRQZk5tK1pDU0FlMXJTbUtqd05p?=
 =?utf-8?B?Wjcvcm91WUJ3NnI5bjFOVXBCd2tPYTV5N1RIR3BQOUVKNFJRaHVZNStUWTZp?=
 =?utf-8?B?WWxrbjRWbUVNM054Ykw3SGlTRThyTEpKREZmd1cyREc1M0VWbjRKQXQzSmJO?=
 =?utf-8?B?UDRFSDRka1J2ZTY0Y0NRcys1WVRtQWNFYmNlbGY1ZmloZ0J0QjdHb2twcUNT?=
 =?utf-8?B?TDBNSTJwUE8rbWlQSzF6amNmeEFwbUNBc29GQmtMd3J3dGNYTnhJM2RWRXc2?=
 =?utf-8?B?VEJuWUgzWkxKMW9mUkdZcGt6R3FmK0dib1d5aFozbDlNY1o3WTM3YUV6V0ZS?=
 =?utf-8?B?NUlZL080T3lxeUhxM2FCcGQwUjRSdWYwTE5mREdvTW8zaGl4K0NPZ0ZGb1Yr?=
 =?utf-8?B?OSthM25SbGtLc2MxSVRaNWszVzlYZmRuM3daZXV4RkppYVNVMTR2MzkvamVB?=
 =?utf-8?B?bFg0eXBGNVFIYldmR3daWk5BTjlOTnZMSTZVUGFXeGdvcHlBTGZGQzJJWEZx?=
 =?utf-8?B?ckpFbE9uMlZ5ZlAyZW91TXJsZ2tyMFlXclhtMklkcTlYUFRnUlQ5YURJYWJC?=
 =?utf-8?B?ZFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62c692aa-0e93-4c2c-79a6-08dafdd7fded
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2023 06:55:34.5716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UpLUApheU9L2J3LfhZXKSp0vqoE1Wz5cyB0xZ6qp5UviGiv8FKWOUBIxDNd+Aw+Ck1fa68jC/OEBJq+4ZiZ+zSnjHWUwbg2qibu/W8S0j0M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8240
X-OriginatorOrg: intel.com
Subject: Re: [Spice-devel] [RFC v2 0/5] gstreamer-encoder: Use a dmabuf
 allocator if the drawable has a valid fd (v2)
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

SGkgRnJlZGlhbm8sDQoNCj4gDQo+IElsIGdpb3JubyBsdW4gMjMgZ2VuIDIwMjMgYWxsZSBvcmUg
MDk6MDEgVml2ZWsgS2FzaXJlZGR5DQo+IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPiBoYSBz
Y3JpdHRvOg0KPiA+DQo+ID4gVGhpcyBwYXRjaCBzZXJpZXMgZW5hYmxlcyBjcmVhdGlvbiBvZiBH
c3QgbWVtb3J5IHVzaW5nIGEgZG1hYnVmIGZkDQo+ID4gYXMgdGhlIHNvdXJjZS4gVGhpcyBhYmls
aXR5IGlzIHVzZWZ1bCBnaXZlbiB0aGF0IGRtYWJ1ZiBpcyB0aGUNCj4gPiBzdGFuZGFyZCBtZWNo
YW5pc20gZm9yIHNoYXJpbmcgYnVmZmVycyBiZXR3ZWVuIHZhcmlvdXMgZHJpdmVycyBhbmQNCj4g
PiB1c2Vyc3BhY2UgaW4gbWFueSBHcmFwaGljcyBhbmQgTWVkaWEgdXNlY2FzZXMuIEN1cnJlbnRs
eSwgdGhpcyBpcw0KPiA+IG9ubHkgdXNlZC90ZXN0ZWQgd2l0aCBRZW11IGFuZCByZW1vdGUtdmll
d2VyIHVzaW5nIHRoZSB4MjY0ZW5jL2RlYw0KPiA+IGNvZGVjIHRvIHN0cmVhbSB0aGUgR3Vlc3Qg
ZGVza3RvcCBidXQgaXQgY2FuIGJlIGV4dGVuZGVkIHRvIG90aGVyDQo+ID4gcGx1Z2lucyBhbmQg
YXBwbGljYXRpb25zLg0KPiA+DQo+ID4gSGVyZSBpcyB0aGUgZmxvdyBvZiB0aGluZ3MgZnJvbSB0
aGUgU3BpY2Ugc2VydmVyIHNpZGU6DQo+ID4gLSBUaGUgYXBwbGljYXRpb24gY2FsbHMgZ2xfc2Nh
bm91dCAodG8gdXBkYXRlIHRoZSBmZCkgYW5kIGdsX2RyYXdfYXN5bmMNCj4gPiAgIGFuZCBhbHNv
IHNldHMgdGhlIGZsYWcgdG8gaW5kaWNhdGUgd2hldGhlciBpdCBpcyBkZWFsaW5nIHdpdGggYSBs
b2NhbA0KPiA+ICAgb3IgcmVtb3RlIGNsaWVudC4NCj4gDQo+IFRoYXQncyB3ZWlyZCwgaXQncyBz
cGljZSB0aGF0IGtub3dzIHRoZSBjbGllbnRzLCBub3QgUWVtdQ0KW0thc2lyZWRkeSwgVml2ZWtd
IElJVUMsIGluIHRoaXMgY2FzZSwgYm90aCBvZiB0aGVtIGtub3cgdGhlIHR5cGUgb2YgY2xpZW50
DQphcyBRZW11IGlzIHRoZSBvbmUgdGhhdCBjYWxscyBzcGljZV9zZXJ2ZXJfc2V0X3BvcnQoKSB0
byBzZXQgdGhlIHBvcnQuIA0KDQo+IA0KPiA+IC0gQ3JlYXRlIGEgbmV3IGRyYXdhYmxlIGFuZCBl
eHRyYWN0IHRoZSBkbWFidWYgZmQgZnJvbSB0aGUgc2Nhbm91dA0KPiA+ICAgYXMgYSByZXNwb25z
ZSB0byBRWExfQ01EX0RSQVcgY21kIHNlbnQgYnkgdGhlIGFwcGxpY2F0aW9uLg0KPiANCj4gTXVt
YmxlLi4uIFRoZXJlJ3Mgc29tZXRoaW5nIEkgZG9uJ3QgdW5kZXJzdGFuZCBoZXJlLiBTcGVjaWZp
Y2FsbHkgdGhlDQo+IEFQSXMgdXNlZCBieSBRZW11LiBBcyBmYXIgYXMgSSByZW1lbWJlciB3aGVu
IFFlbXUgcGFzc2VzIGEgZG1hYnVmDQo+IHNjYW5vdXQgdGhlcmUgc2hvdWxkIGJlIG5vIFFYTF9D
TURfRFJBVyBjb21tYW5kLi4uIGhhcyB0aGlzIGNoYW5nZWQ/DQpbS2FzaXJlZGR5LCBWaXZla10g
Tm8sIGl0IGhhc24ndCBjaGFuZ2VkIGJ1dCBJIGFtIHRyeWluZyB0byBkbyBqdXN0IHRoYXQuDQpM
ZXQgbWUgZXhwbGFpbiBteSB1bmRlcnN0YW5kaW5nOg0KLSBJbiB0aGUgbm9uLWRtYWJ1ZiBjYXNl
IChpLmUsIHdoZW4gZ2wgIT0gb24pLCBRZW11IGdldHMgdGhlIEZCIGFzIGEgY2h1bmsgb2YNCm1l
bW9yeSBhbmQgdGhlcmVmb3JlIGl0IGNyZWF0ZXMgdXBkYXRlcyBhbmQgc2VuZHMgUVhMX0NNRF9E
UkFXIGNtZHMuDQpJbiByZXNwb25zZSwgdGhlIFNwaWNlIHNlcnZlciBjcmVhdGVzIGRyYXdhYmxl
cyB0byBzdHJlYW0gKGFzc3VtaW5nIHdlIGFyZQ0Kb25seSB0YWxraW5nIGFib3V0IEdzdHJlYW1l
ciBlbmNvZGVyIGhlcmUpIHRoZSBGQiB0byBjbGllbnRzLg0KDQotIEluIHRoZSBkbWFidWYgY2Fz
ZSAoaS5lLCBnbCA9IG9uIGFuZCBsb2NhbCBjbGllbnQpLCBRZW11IGRvZXMgbm90IHNlbmQgYW55
DQpRWExfQ01EX0RSQVcgY21kcyBhbmQgaW5zdGVhZCBjYWxscyBnbF9zY2Fub3V0IGFuZCBnbF9k
cmF3X2FzeW5jDQpBUElzIHRvIHNoYXJlIHRoZSBmZC4gSW4gcmVzcG9uc2UsIHRoZSBTcGljZSBz
ZXJ2ZXIganVzdCBmb3J3YXJkcyB0aGUgZmQgdG8NCnRoZSBsb2NhbCBjbGllbnQocykuDQoNCi0g
SW4gdGhlIGRtYWJ1ZiAgKGdsPW9uKSArIHJlbW90ZSBjbGllbnQocykgY2FzZSB0aGF0IEkgYW0g
ZGVhbGluZyB3aXRoDQood2hpY2ggdGhpcyBwYXRjaCBzZXJpZXMgYW5kIHRoZSBhc3NvY2lhdGVk
IFFlbXUgc2VyaWVzIGlzIHRyeWluZyB0byBhZGRyZXNzKSwNCkkgaGFkIHRvIGZpbmQgYSB3YXkg
dG8gcHJldmVudCB0aGUgU3BpY2Ugc2VydmVyIGZyb20gc2VuZGluZyB0aGUgZmQgdG8gcmVtb3Rl
DQpjbGllbnRzIGFuZCBpbnN0ZWFkIGhhdmUgaXQgY3JlYXRlIGRyYXdhYmxlcyB0byBzdHJlYW0g
dGhlIGNvbnRlbnQgYXNzb2NpYXRlZA0Kd2l0aCB0aGUgZG1hYnVmIGZkLiBUaGVyZWZvcmUsIGlu
IHYyLCBJIGFtIGhhdmluZyBRZW11IHNlbmQNClFYTF9DTURfRFJBVyBjbWRzIGFuZCBhbHNvIGNh
bGwgZ2xfc2Nhbm91dCBhbmQgZ2xfZHJhd19hc3luYy4NCg0KPiBUaGF0IHdvdWxkIG1lYW4gMiBj
b3BpZXMgb2YgdGhlIGZyYW1lIGJ1ZmZlciwgb25lIGZvciBkbWFidWYgYW5kDQo+IGFub3RoZXIg
Zm9yIG1lbW9yeSB2ZXJzaW9uLg0KW0thc2lyZWRkeSwgVml2ZWtdIFJpZ2h0LCBidXQgaWYgdGhl
IGRyYXdhYmxlIGhhcyBhIHZhbGlkIGRtYWJ1ZiBmZCwgdGhlbg0KaWRlYWxseSB0aGUgU3BpY2Ug
c2VydmVyIHNob3VsZCBub3QgYmUgbG9va2luZyBhdCB0aGUgbWVtb3J5IHZlcnNpb24uDQoNCj4g
DQo+ID4gLSBTaGFyZSB0aGUgZHJhd2FibGUncyBjb3B5IG9mIHRoZSBmZCB3aXRoIHRoZSBFbmNv
ZGVyLg0KPiANCj4gQXMgYWJvdmUsIHRoaXMgc2hvdWxkIGJlIGFscmVhZHkgZG9uZSBieSBRZW11
Li4uIHVubGVzcyBjaGFuZ2VkLg0KPiANCj4gPiAtIFNlbmQgdGhlIGFzeW5jIGNvbXBsZXRpb24g
Y29va2llIHRvIHRoZSBhcHBsaWNhdGlvbiBvbmNlIHRoZSBlbmNvZGVyDQo+ID4gICBpcyBkb25l
IHVzaW5nIHRoZSBmZC4NCj4gPg0KPiANCj4gVGhpcyBzaG91bGQgYWxyZWFkeSBiZSB0aGVyZSB0
b28gaW4gc3BpY2Utc2VydmVyIGNvZGUsIGp1c3Qgbm90DQo+IHN1cHBvcnRpbmcgdGhlIHJlbW90
ZSBjYXNlLg0KW0thc2lyZWRkeSwgVml2ZWtdIFJpZ2h0LCBpdCBpcyBhbHJlYWR5IHRoZXJlLiBJ
IGFtIGp1c3QgY2FsbGluZyANCmRpc3BsYXlfY2hhbm5lbF9nbF9kcmF3X2RvbmUoKSBpbiB0aGUg
Y2FsbGJhY2sgYXNzb2NpYXRlZCB3aXRoIHRoZQ0KZnJlZWluZyBvZiBHc3QgbWVtb3J5Lg0KDQpU
aGFua3MsDQpWaXZlaw0KDQo+IA0KPiA+IHYyOg0KPiA+IC0gVXNlZCB0aGUgYWxyZWFkeSBleGlz
dGluZyBnbF9zY2Fub3V0IGFuZCBnbF9kcmF3X2FzeW5jIEFQSXMgaW5zdGVhZA0KPiA+ICAgb2Yg
YWRkaW5nIG5ldyBvbmVzLg0KPiA+IC0gU2xpZ2h0bHkgcmVmYWN0b3JlZCBhbmQgaW1wcm92ZWQg
dGhlIGNvbW1pdHMgYW5kIHRoZWlyIG1lc3NhZ2VzLg0KPiA+DQo+ID4gQ2M6IEdlcmQgSG9mZm1h
bm4gPGtyYXhlbEByZWRoYXQuY29tPg0KPiA+IENjOiBNYXJjLUFuZHLDqSBMdXJlYXUgPG1hcmNh
bmRyZS5sdXJlYXVAcmVkaGF0LmNvbT4NCj4gPiBDYzogRG9uZ3dvbiBLaW0gPGRvbmd3b24ua2lt
QGludGVsLmNvbT4NCj4gPg0KPiA+IFZpdmVrIEthc2lyZWRkeSAoNSk6DQo+ID4gICBnc3RyZWFt
ZXItZW5jb2RlcjogVXNlIGEgZG1hYnVmIGFsbG9jYXRvciBmb3IgYSB2YWxpZCBmZA0KPiA+ICAg
ZGlzcGxheS1jaGFubmVsOiBFeHRyYWN0IHRoZSBkbWFidWYgZmQgZnJvbSB0aGUgc2Nhbm91dA0K
PiA+ICAgZGlzcGxheS1jaGFubmVsOiBTaGFyZSB0aGUgZHJhd2FibGUncyBjb3B5IG9mIGZkIHdp
dGggdGhlIGVuY29kZXINCj4gPiAgIHZpZGVvLXN0cmVhbTogRm9yY2Ugc3RyZWFtIGNyZWF0aW9u
IGZvciBhIHZhbGlkIGRtYWJ1ZiBmZA0KPiA+ICAgcmVkLXF4bDogQWRkIGEgbmV3IHBhcmFtZXRl
ciB0byBnbF9zY2Fub3V0IGFuZCBnbF9kcmF3X2FzeW5jDQo+ID4NCj4gPiAgbWVzb24uYnVpbGQg
ICAgICAgICAgICAgICAgfCAgMiArLQ0KPiA+ICBzZXJ2ZXIvZGNjLXNlbmQuY3BwICAgICAgICB8
IDMwICsrKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ICBzZXJ2ZXIvZGlzcGxheS1jaGFubmVs
LmNwcCB8IDIzICsrKysrKysrKysrKysrKysrKw0KPiA+ICBzZXJ2ZXIvZGlzcGxheS1jaGFubmVs
LmggICB8ICA0ICsrKysNCj4gPiAgc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMgfCA0OA0KPiAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLQ0KPiA+ICBzZXJ2ZXIvcmVkLXF4
bC5jcHAgICAgICAgICB8IDE0ICsrKysrKystLS0tDQo+ID4gIHNlcnZlci9zcGljZS1xeGwuaCAg
ICAgICAgIHwgIDQgKystLQ0KPiA+ICBzZXJ2ZXIvdmlkZW8tZW5jb2Rlci5oICAgICB8ICA3ICsr
KysrKw0KPiA+ICBzZXJ2ZXIvdmlkZW8tc3RyZWFtLmNwcCAgICB8IDExICsrKysrKysrLQ0KPiA+
ICA5IGZpbGVzIGNoYW5nZWQsIDEzMiBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4g
Pg0KPiA+IC0tDQo+ID4gMi4zNy4yDQo+ID4NCg==
