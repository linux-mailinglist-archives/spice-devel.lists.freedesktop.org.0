Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAE27A5850
	for <lists+spice-devel@lfdr.de>; Tue, 19 Sep 2023 06:08:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A07B710E0CE;
	Tue, 19 Sep 2023 04:08:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C2DF10E0CE
 for <spice-devel@lists.freedesktop.org>; Tue, 19 Sep 2023 04:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695096488; x=1726632488;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q8iRvgnW8wUfWNROHdmbVKIHD+1jkNu4wZu16+r04GI=;
 b=mWwCWJU5zFFmdSOIlLWvXSQnsJgH91V1zHkCCSJQZPyZplr2jLpixKSX
 8Q0rrOt7KzbdXlPudu5A/ff0ll/Q37XLpl0/T4xcwakveaKvC0wYuFvLm
 WTSkYpvMhK5vrQmmx3z10hfR8cVWWu8wzFfe1cJBGZ99h/RlUCA6dFF34
 VM9eWbc1sN+N/zSF838yPg53Qys465TucYhqtOVut/MGJNS6wlwvs0J16
 WOe9zq62eEqeGl8N3HYt4hk5kyd1hHR7YVicajLpQaFR30qmBnz9T4501
 /QyF84P3YyphW9oCtVln+pQjZV6B4cpCz8KaHPOfWgu9ZrROzfvZfxDUF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="466177405"
X-IronPort-AV: E=Sophos;i="6.02,158,1688454000"; d="scan'208";a="466177405"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 21:08:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="781163687"
X-IronPort-AV: E=Sophos;i="6.02,158,1688454000"; d="scan'208";a="781163687"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2023 21:08:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 18 Sep 2023 21:08:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 18 Sep 2023 21:08:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 18 Sep 2023 21:08:05 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 18 Sep 2023 21:08:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m+8x2WCRQaKwi0FflcT7BKYCJaph8Wgs8bGeHEZXzirN2OECp+cWT3buUjwDaMEL1yisUEoaSDr/QbWTK7OOhwXq0qDrA8F6wfmqkJut0lLn+/eIY8gH4tuUheC9O3jxocawrer6DJW8jTRtL+oaDzP2HlVVxlY+HThUyRDtwLgW7jqMdL1ztFaX+xYKCCQCRh+hTvRZekEN8GjAmnYbYlt7NuH2yFOFC5p/rksdsYiJWdKlvVXDEveKHJyHsVj+yNxqM7MLL4U9TjXbdX8nhad7QejKk7VdupZkgGtmeL6vJFoNwFk9br0NqOFchib1pj9UCcAKzCndnfN4pXDZ6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q8iRvgnW8wUfWNROHdmbVKIHD+1jkNu4wZu16+r04GI=;
 b=DJ2Gmk7+ReJuqEzCz/+PNnXuM7C0XkpFs0D/pKqSgcqJX1H6FN/jd6JdvZ1GdA9JKp3IgYVEJKnyHj17lsRXJoo5L56Q6vUKLcevJRlimzPYY7rJFgnLAk9dnR6Jdj/tJMDApjPJhaB8/1EiG90znpfQtc9lK+NlkGXDZEoaorf1q6V9ntRcDzHpyccVgYDdjzNhtamDXkvfUZsyp9CErsj5qoIySUusdcY7YHebg9cKFtorakEi5U+dE/9U2PGwYKVhFqz1gHcSquM30vMfHrwHVHacmO7bpvjru87iCV3S8gds5eL3/C2wesg3+e9hTc2LVTYOroOogAErRbftNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3465.namprd11.prod.outlook.com (2603:10b6:5:b::18) by
 SJ1PR11MB6226.namprd11.prod.outlook.com (2603:10b6:a03:45b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.26; Tue, 19 Sep
 2023 04:08:00 +0000
Received: from DM6PR11MB3465.namprd11.prod.outlook.com
 ([fe80::e355:b239:bd86:639f]) by DM6PR11MB3465.namprd11.prod.outlook.com
 ([fe80::e355:b239:bd86:639f%4]) with mapi id 15.20.6792.026; Tue, 19 Sep 2023
 04:07:59 +0000
From: "Teng, Jin Chung" <jin.chung.teng@intel.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, Frediano Ziglio
 <freddy77@gmail.com>, "spice-devel@lists.freedesktop.org"
 <spice-devel@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] gstreamer-encoder: Use a h/w based encoder with
 Intel GPUs if possible (v2)
Thread-Index: AQHZ52w4rRZCCzKjdk2DmSMzAwjaTLAcOxcAgAPftICAAXEWMA==
Date: Tue, 19 Sep 2023 04:07:59 +0000
Message-ID: <DM6PR11MB346527FB49164A7F648EC85BCDFAA@DM6PR11MB3465.namprd11.prod.outlook.com>
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-6-vivek.kasireddy@intel.com>
 <CAHt6W4d3MuzB2f610xkSrkVVvSVdePxy8=JJ5x=H8in9uQDKkw@mail.gmail.com>
 <IA0PR11MB7185B576D197EC0C21446B3DF8FBA@IA0PR11MB7185.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7185B576D197EC0C21446B3DF8FBA@IA0PR11MB7185.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3465:EE_|SJ1PR11MB6226:EE_
x-ms-office365-filtering-correlation-id: 3b5fc83f-66fb-4595-c382-08dbb8c602e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aAlNG5cPoRyGAGLrqO8fs8gf/Aq9swwdmLCXTSDNbBiCAHeXt5tfzERZcyoQVyn1aDC/JN+5MFqUuxGNY7+f0KcaB+ZLeIUO4iY1YpMdAzcEFLWBJcDgBLu6yCf/GQQpC9ZoJ6/JOmdg5Pc3rN/hzy5zUWWJLKIAQAdsOr68rfeiKV2D7fJlGtrE6co6XZ8b1/OesgWpnEl+nF0ngDiWVZdFyivBNpaofRiTu1ezovNuMXxAeCfU8U4c231kU43ZizMwn8JdblSD+wL9TKahT6MWa6Iqym/I2y39z/5jDR9e8RNZKLMv0eeP8hRtZh1Xi0i5j2+r6uf5/1m7t58pX59Kh73SOCoSej/WjjACxKH9pEfcXAUyhnMzL+OjX/mN6jT5uz2PZjEwVvLlgS5eoFsTtl/sKNZrrxIjza7hd5MFN6irHEYAuB+wO1jfDIrFylPWwzeNL8GD6QmklO1n+GLzYHp+wup3N2kK8UAzEWiTPYTtJVW0HciksZDqiwZ1AFGl4M5Ab5F/nY1vidFlpzbam86PvYHCtPKMN+mSYHFfRc3/BleDT4UOhm2OiSr+ys0mboniAjWy2+OzJkUEP/v/9hqu2AHWGWphaXn+dDFQrbSK4EfGLnLCEpFoK+Lp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3465.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(136003)(396003)(366004)(346002)(451199024)(1800799009)(186009)(55016003)(6506007)(7696005)(86362001)(316002)(9686003)(54906003)(64756008)(66946007)(41300700001)(38100700002)(66556008)(66446008)(38070700005)(66476007)(76116006)(110136005)(71200400001)(5660300002)(478600001)(82960400001)(8936002)(8676002)(52536014)(26005)(33656002)(2906002)(4326008)(107886003)(122000001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TmVtWk1JaU9HOTVXT3VudFBJclhlQTZBMG1PVEc3VnR0dGEyL3JTaWJVOWFp?=
 =?utf-8?B?dmo0ZDRBMkUzNCs2K1hhbE10MnVMTHk5RUJaQXNUdkhvZmRlMTBOeEhjZ2V0?=
 =?utf-8?B?ZmR3cmd6TW03RVhwVGgrUW85VW13N1ZyMVoyQkh1YmxQOU1DcktueExiMkJz?=
 =?utf-8?B?RzJzRmRpTVFWRlN5eEdUdVdFd2FFZ2c1a1cvdFF6WXM5RmpzYlFzR0V1akJR?=
 =?utf-8?B?Y05kQmVnTFpkYVFEQm1iMmpLSXA4ZlZFTi9qajhnYWcrU2dHcGZoSWtEb1BS?=
 =?utf-8?B?Sisrb1Y5eDNWQ3I5bnVrd2FUR25lc0NkMHFPYStTUHBSYmtKNVFPTzVkbDc3?=
 =?utf-8?B?RDdNVmdRY2dtN3A4NktaNnNGakJVWGt1KzVFaWp5ajQxTFI4UVJCMHdrUGxL?=
 =?utf-8?B?eEE0dkg0NWtkcWZKVy9jQURtb01XNERGaG93UkF2TUZEMG5icmNYTVNCYzZp?=
 =?utf-8?B?YWRNbFV6QlpsZ1JaUzIrQ3RGNENwd01nOUswSzFQdUt1MjVFNTVHaXhMSXdS?=
 =?utf-8?B?R2FlYmsvTDFpWFBYMmFFNzhtSnFJenhoaFB0RytDZThqaU1xNVB3YUF1RElo?=
 =?utf-8?B?SzJHbDFyY2FpdEdqTDE2NDdkdTg5WG1XLzdNNklLYjRNbXZoVVRmMGMwWEd0?=
 =?utf-8?B?MGJ5ZTZEWHJtd3llYzhVZ2pFbHFxbk9GWkppd1pTN0ZYeDhuVXA5czBoYU11?=
 =?utf-8?B?eG1HTUdsc1cyTHBHTXlENjhobXdYdmRweWVLWGZ0MEtjaXZuSlJGVmN5Y0p2?=
 =?utf-8?B?alZ5amlyb29HTUxyb05pK3pMNXkvK2JaN3NubHZCNHlFL1l3STlnOEZTU3d2?=
 =?utf-8?B?SjlvQlhqSDU5c2lySGZWMU9ORmJVN0NNVmNNVHJHTk9VY25JWUJuTml1SG1E?=
 =?utf-8?B?UjFvWStkVUNmYXJRMkhjMmx6S2FqMUZWenlVa2d4V1M5dWRpL3gyd3dxZWk2?=
 =?utf-8?B?T08xYlVsNDV2OUpaemxhakJ6R0MyVXhPY3VnalpGc2k3UHNkaEJVSnBJQTEz?=
 =?utf-8?B?K0YwUnQwcjBoeUVvN0xrVUV3azVGQ0JMWTRaWXl6QjVKTTJSWnpMTkloaXEv?=
 =?utf-8?B?N1J4OUZVVGlCMnhoQXA3R2lUSEUwaWFIVkJ6M20xODRYSWF2cjJkMFBmRzBQ?=
 =?utf-8?B?RVFnN2l0ZUpSUDhpQ2lIK1ZuMTZKRXMxYWprMkRjS2kvQ2V1bHV5WXNIWk9S?=
 =?utf-8?B?RDhJT1RJSHJKRkl1WWxweEtYdkJuQ2YxNGdWUzY3ZlIwWnBDQlpjNjlleW9w?=
 =?utf-8?B?M1lncGw5djVwREtoYnRQdXgwQ25KUElpQjlQS0ZyWWY5aUxZMDBCV1k4QW4x?=
 =?utf-8?B?bVBWdDFMNGJqdHV2bVljT3V3UzlHN2FScGFQd2krSXFRV0FXajFQRGpGSFU0?=
 =?utf-8?B?MUgxUFNtRWpmMDY2cVVjOXFNZnZYYWExVGJ2dGJuUzR2UVRUYVdVcUFlTlFI?=
 =?utf-8?B?eG5HWGN5Z2pXbjgzTnZCUDB4aEhoQXZ4UElrMDJXVE5Xb2ZBS2V3dnRiOGNK?=
 =?utf-8?B?dEtyL0YvSHlsejlTU2szdi9xeVhWNnl1T3pWb1JyaXRsZm5rcDJSczRUNUNF?=
 =?utf-8?B?RmpKd1labUFtL3B2NTY3am80WDBZaG5wQzdvVnN4RnU4L3gxNjhWeDdMVnJO?=
 =?utf-8?B?QW4xc0Z4d05wWW81RWNHS1kxQ1MvMlpXMGFWOUVOMVRLUmNnNzUwcEVzV0I0?=
 =?utf-8?B?VXRadUwwdmI0eUtIQS80MEd2bjF6NGZFWkpDMTUrUERZS1dGL04vMUZCRmYv?=
 =?utf-8?B?V0tjNHdtN1FhVWVwUEtLWHJpTHdYSmNRN3ZtaHJSQlk4QUN3dzdDbTlMb3F0?=
 =?utf-8?B?S1hlcUJBT2x3dGhnbkl1Yklzd1FlM3lraTBpbDdvWnZ5REJCZ0RPRHVuRUtF?=
 =?utf-8?B?dHBWWVZ6VFNMYnh3dURnR2tid1h6eDg5T29OeFVJYjdkeExLQXNxT1RuREp3?=
 =?utf-8?B?OEkrZG5wYm85UFphaVdqUkpBbGVwczVJZTd5UHVJdnFOUEtucDdjMTR1bllL?=
 =?utf-8?B?SzJ4c0xBWElhYytjT3pod1M0eWhldWZKYTN1bTE4Q1MxOXJFL1R6TGo3L3NT?=
 =?utf-8?B?Z2d0SXNSQXRaQlpjd2YxSzN2cVJ5OHVIVlN0MU1YQzhwWFV6Sy9IWUJrelFp?=
 =?utf-8?Q?mKCJt5Ka+Lhe+VAwlEICh1aSt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3465.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b5fc83f-66fb-4595-c382-08dbb8c602e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2023 04:07:59.4273 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fVxQrCOCttIMA8QzO0IuQh5ZcY3ukVWLtZATgEw6m4o5QCOLzOFiL4vmygWAr8mIBigfkGwRVV8ycaIyJeMdRM5l6lLKVQdZ09dRuf+wRVU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6226
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
Cc: "Mazlan, Hazwan Arif" <hazwan.arif.mazlan@intel.com>,
 Gerd Hoffmann <kraxel@redhat.com>, "Kim, Dongwon" <dongwon.kim@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkgVml2ZWssDQoNCj4gDQo+ID4gPg0KPiA+ID4gT25jZSBpdCBpcyBkZXRlcm1pbmVkIHRoYXQg
YW4gSW50ZWwgR1BVIGlzIGF2YWlsYWJsZS9hY3RpdmUgKGFmdGVyDQo+ID4gPiBsb29raW5nIGlu
dG8gdWRldidzIGRhdGFiYXNlKSwgd2UgdHJ5IHRvIHNlZSBpZiB0aGVyZSBpcyBhIGgvdyBiYXNl
ZA0KPiA+ID4gZW5jb2RlciAoZWxlbWVudCkgYXZhaWxhYmxlIChpbiBHc3RyZWFtZXIncyByZWdp
c3RyeSBjYWNoZSkgZm9yIHRoZQ0KPiA+ID4gdXNlciBzZWxlY3RlZCB2aWRlbyBjb2RlYy4gSW4g
b3RoZXIgd29yZHMsIGlmIHdlIGZpbmQgdGhhdCB0aGUgSW50ZWwNCj4gPiA+IE1lZGlhIFNESyBH
c3RyZWFtZXIgcGx1Z2luIChsaWJnc3Rtc2RrLnNvKSBhbmQgYXNzb2NpYXRlZCBsaWJyYXJpZXMN
Cj4gPiA+IChzdWNoIGFzIHZhIG9yIHZhYXBpKSBhcmUgYWxsIGluc3RhbGxlZCBwcm9wZXJseSwg
d2UgYWRkIHRoZQ0KPiA+ID4gYXBwcm9wcmlhdGUgaC93IGJhc2VkIGVuY29kZXIgYW5kIHBvc3Qt
cHJvY2Vzc29yL2NvbnZlcnRlciBlbGVtZW50cw0KPiA+ID4gdG8gdGhlIHBpcGVsaW5lIChhbG9u
ZyB3aXRoIGFueSByZWxldmFudCBvcHRpb25zKSBpbnN0ZWFkIG9mIHRoZSBzL3cNCj4gPiA+IGJh
c2VkIGVsZW1lbnRzLg0KPiA+ID4NCj4gPiA+IEZvciBleGFtcGxlLCBpZiB0aGUgdXNlciBzZWxl
Y3RzIGgyNjQgYXMgdGhlIHByZWZlcnJlZCBjb2RlYyBmb3JtYXQsDQo+ID4gPiBtc2RraDI2NGVu
YyBhbmQgdmFwb3N0cHJvYyB3aWxsIGJlIHByZWZlcnJlZCBpbnN0ZWFkIG9mIHgyNjRlbmMgYW5k
DQo+ID4gPiB2aWRlb2NvbnZlcnQuDQo+ID4gPg0KPiA+ID4gdjI6IChhZGRyZXNzZWQgc29tZSBy
ZXZpZXcgY29tbWVudHMgZnJvbSBGcmVkaWFubykNCj4gPiA+IC0gTW92ZWQgdGhlIHVkZXYgaGVs
cGVyIGludG8gc3BpY2UtY29tbW9uDQo+ID4gPiAtIFJlZmFjdG9yZWQgdGhlIGNvZGUgdG8gY2hv
b3NlIHBsdWdpbnMgaW4gb3JkZXIgbXNkayA+IHZhID4gdmFhcGkNCj4gPiA+DQo+ID4gPiBDYzog
RnJlZGlhbm8gWmlnbGlvIDxmcmVkZHk3N0BnbWFpbC5jb20+DQo+ID4gPiBDYzogR2VyZCBIb2Zm
bWFubiA8a3JheGVsQHJlZGhhdC5jb20+DQo+ID4gPiBDYzogTWFyYy1BbmRyw6kgTHVyZWF1IDxt
YXJjYW5kcmUubHVyZWF1QHJlZGhhdC5jb20+DQo+ID4gPiBDYzogRG9uZ3dvbiBLaW0gPGRvbmd3
b24ua2ltQGludGVsLmNvbT4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFZpdmVrIEthc2lyZWRkeSA8
dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4NCj4gPiA+IENvLWRldmVsb3BlZC1ieTogSmluIENo
dW5nIFRlbmcgPGppbi5jaHVuZy50ZW5nQGludGVsLmNvbT4NCj4gPiA+IENvLWRldmVsb3BlZC1i
eTogSGF6d2FuIEFyaWYgTWF6bGFuIDxoYXp3YW4uYXJpZi5tYXpsYW5AaW50ZWwuY29tPg0KPiA+
ID4gLS0tDQo+ID4gPiAgc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMgfCA5Ng0KPiA+ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tDQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQs
IDkzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdp
dCBhL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jIGIvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVy
LmMNCj4gPiA+IGluZGV4IDA1NzUwOWI1Li40NDY2NmY0MiAxMDA2NDQNCj4gPiA+IC0tLSBhL3Nl
cnZlci9nc3RyZWFtZXItZW5jb2Rlci5jDQo+ID4gPiArKysgYi9zZXJ2ZXIvZ3N0cmVhbWVyLWVu
Y29kZXIuYw0KPiA+ID4gQEAgLTMxLDYgKzMxLDcgQEANCj4gPiA+ICAjaW5jbHVkZSAicmVkLWNv
bW1vbi5oIg0KPiA+ID4gICNpbmNsdWRlICJ2aWRlby1lbmNvZGVyLmgiDQo+ID4gPiAgI2luY2x1
ZGUgInV0aWxzLmgiDQo+ID4gPiArI2luY2x1ZGUgImNvbW1vbi91ZGV2LmgiDQo+ID4gPg0KPiA+
ID4NCj4gPiA+ICAjZGVmaW5lIFNQSUNFX0dTVF9ERUZBVUxUX0ZQUyAzMA0KPiA+ID4gQEAgLTkx
MywxNCArOTE0LDk0IEBAIHN0YXRpYyBjb25zdCBnY2hhciogZ2V0X2dzdF9jb2RlY19uYW1lKGNv
bnN0DQo+ID4gU3BpY2VHc3RFbmNvZGVyICplbmNvZGVyKQ0KPiA+ID4gICAgICB9DQo+ID4gPiAg
fQ0KPiA+ID4NCj4gPiA+ICtzdGF0aWMgY29uc3QgY2hhciB2aWRlb19jb2RlY3NbXVs4XSA9IHsN
Cj4gPiA+ICsgICAgeyAiIiB9LA0KPiA+ID4gKyAgICB7ICJtanBlZyIgfSwNCj4gPiA+ICsgICAg
eyAidnA4IiB9LA0KPiA+ID4gKyAgICB7ICJoMjY0IiB9LA0KPiA+ID4gKyAgICB7ICJ2cDkiIH0s
DQo+ID4gPiArICAgIHsgImgyNjUiIH0sDQo+ID4gPiArfTsNCj4gPiA+ICsNCj4gPiA+ICtzdGF0
aWMgYm9vbCBnc3RfZmVhdHVyZXNfbG9va3VwKGNvbnN0IGdjaGFyICpmZWF0dXJlX25hbWUpIHsN
Cj4gPiA+ICsgICAgR3N0UmVnaXN0cnkgKnJlZ2lzdHJ5Ow0KPiA+ID4gKyAgICBHc3RQbHVnaW5G
ZWF0dXJlICpmZWF0dXJlOw0KPiA+ID4gKw0KPiA+ID4gKyAgICByZWdpc3RyeSA9IGdzdF9yZWdp
c3RyeV9nZXQoKTsNCj4gPiA+ICsgICAgaWYgKCFyZWdpc3RyeSkgew0KPiA+ID4gKyAgICAgICAg
cmV0dXJuIGZhbHNlOw0KPiA+ID4gKyAgICB9DQo+ID4gPiArDQo+ID4gPiArICAgIGZlYXR1cmUg
PSBnc3RfcmVnaXN0cnlfbG9va3VwX2ZlYXR1cmUocmVnaXN0cnksIGZlYXR1cmVfbmFtZSk7DQo+
ID4gPiArICAgIGlmICghZmVhdHVyZSkgew0KPiA+ID4gKyAgICAgICAgcmV0dXJuIGZhbHNlOw0K
PiA+ID4gKyAgICB9DQo+ID4gPiArDQo+ID4gPiArICAgIGdzdF9vYmplY3RfdW5yZWYoZmVhdHVy
ZSk7DQo+ID4gPiArICAgIHJldHVybiB0cnVlOw0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+ICtz
dGF0aWMgZ2NoYXIgKmZpbmRfYmVzdF9wbHVnaW4oY29uc3QgZ2NoYXIgKmNvZGVjX25hbWUpIHsN
Cj4gPiA+ICsgICAgY29uc3QgY2hhciAqcGx1Z2luc1szXSA9IHsibXNkayIsICJ2YSIsICJ2YWFw
aSJ9Ow0KPiA+ID4gKyAgICBnY2hhciAqZmVhdHVyZV9uYW1lOw0KPiA+ID4gKyAgICBpbnQgaTsN
Cj4gPiA+ICsNCj4gPiA+ICsgICAgZm9yIChpID0gMDsgaSA8IDM7IGkrKykgew0KPiA+ID4gKyAg
ICAgICAgZmVhdHVyZV9uYW1lID0gIWNvZGVjX25hbWUgPyBnX3N0cmNvbmNhdChwbHVnaW5zW2ld
LA0KPiA+ID4gKyAicG9zdHByb2MiLA0KPiA+IE5VTEwpIDoNCj4gPg0KPiA+IFRoZSBuYW1lIGZv
ciB0aGUgbXNkayBwb3N0cHJvYyBpcyBtc2RrdnBwLCBub3QgbXNka3Bvc3Rwcm9jLg0KPiBSaWdo
dCwgdGhlIFZQUCBlbGVtZW50IGFzc29jaWF0ZWQgd2l0aCBtc2RrIGlzIGluZGVlZCBtc2RrdnBw
IGJ1dCB3ZSBkbw0KPiBub3QgaW50ZW5kIHRvIHVzZSBtc2RrdnBwIGN1cnJlbnRseSBhcyBpdCBo
YXMgYnVncyB0aGF0IHByZXZlbnQgdGhlIHBpcGVsaW5lDQo+IGZyb20gd29ya2luZyBjb3JyZWN0
bHkuIEFuZCwgaXQgaXMgbm90IGNsZWFyIHdoZW4gdGhlc2UgYnVncyBhcmUgZ29pbmcgdG8gYmUN
Cj4gZml4ZWQuDQo+IFRoYXQncyB3aHkgd2UgcHJlZmVyIHRvIHVzZSBlaXRoZXIgdmFwb3N0cHJv
YyBvciB2YWFwaXBvc3Rwcm9jIGZvciBub3cuDQo+IA0KPiA+IExvb2tpbmcgYXQgdGhpcyBmdW5j
dGlvbiBhbmQgdGhlIG5leHQgb25lIGl0IGxvb2tzIGNvcnJlY3QgdG8gdXNlLA0KPiA+IGxldCdz
IHNheSBhbiBlbmNvZGVyIGZyb20gbXNkayAobGlrZSBtc2RrdnA5ZW5jKSBhbmQgdGhlIHZhYXBp
IHBvc3QNCj4gPiBwcm9jZXNzb3IgKGxpa2UgdmFhcGlwb3N0cHJvYyksIGJ1dCBpdCBzZWVtcyB3
cm9uZyB0byBtZS4NCj4gPg0KPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZ19zdHJjb25j
YXQocGx1Z2luc1tpXSwgY29kZWNfbmFtZSwgImVuYyIsIE5VTEwpOw0KPiA+ID4gKyAgICAgICAg
aWYgKCFnc3RfZmVhdHVyZXNfbG9va3VwKGZlYXR1cmVfbmFtZSkpIHsNCj4gPiA+ICsgICAgICAg
ICAgICBnX2ZyZWUoZmVhdHVyZV9uYW1lKTsNCj4gPiA+ICsgICAgICAgICAgICBmZWF0dXJlX25h
bWUgPSBOVUxMOw0KPiA+ID4gKyAgICAgICAgICAgIGNvbnRpbnVlOw0KPiA+ID4gKyAgICAgICAg
fQ0KPiA+ID4gKyAgICAgICAgYnJlYWs7DQo+ID4gPiArICAgIH0NCj4gPiA+ICsgICAgcmV0dXJu
IGZlYXR1cmVfbmFtZTsNCj4gPiA+ICt9DQo+ID4gPiArDQo+ID4gPiArc3RhdGljIHZvaWQgdHJ5
X2ludGVsX2h3X3BsdWdpbnMoY29uc3QgZ2NoYXIgKmNvZGVjX25hbWUsIGdjaGFyDQo+ID4gKipj
b252ZXJ0ZXIsDQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ2NoYXIg
Kipnc3RlbmNfbmFtZSwgZ2NoYXINCj4gPiA+ICsqKmdzdGVuY19vcHRzKSB7DQo+ID4gPiArICAg
IGdjaGFyICplbmNvZGVyID0gZmluZF9iZXN0X3BsdWdpbihjb2RlY19uYW1lKTsNCj4gPiA+ICsg
ICAgaWYgKCFlbmNvZGVyKSB7DQo+ID4gPiArICAgICAgICByZXR1cm47DQo+ID4gPiArICAgIH0N
Cj4gPiA+ICsgICAgZ2NoYXIgKnZwcCA9IGZpbmRfYmVzdF9wbHVnaW4oTlVMTCk7DQo+ID4gPiAr
ICAgIGlmICghdnBwKSB7DQo+ID4gPiArICAgICAgICByZXR1cm47DQo+ID4gPiArICAgIH0NCj4g
PiA+ICsNCj4gPiA+ICsgICAgZ19mcmVlKCpjb252ZXJ0ZXIpOw0KPiA+ID4gKyAgICBnX2ZyZWUo
KmdzdGVuY19uYW1lKTsNCj4gPiA+ICsgICAgZ19mcmVlKCpnc3RlbmNfb3B0cyk7DQo+ID4gPiAr
DQo+ID4gPiArICAgICpnc3RlbmNfbmFtZSA9IGVuY29kZXI7DQo+ID4gPiArICAgIGlmIChzdHJz
dHIoZW5jb2RlciwgIm1zZGsiKSkgew0KPiA+ID4gKyAgICAgICAgKmdzdGVuY19vcHRzID0gZ19z
dHJkdXAoImFzeW5jLWRlcHRoPTEgcmF0ZS1jb250cm9sPTMNCj4gPiA+ICsgZ29wLXNpemU9MQ0K
PiA+IHR1bmU9MTYgYi1mcmFtZXM9MCB0YXJnZXQtdXNhZ2U9NyBtaW4tcXA9MTUgbWF4LXFwPTM1
Iik7DQo+ID4NCj4gPiBUaGVzZSBvcHRpb25zIGFyZSBuaWNlIGZvciBoMjY0IChhbmQgcHJvYmFi
bHkgaDI2NSkgYnV0IGFyZSB3cm9uZyBmb3INCj4gPiB2cDkgYW5kIHByb2JhYmx5IG1qcGVnLg0K
PiBZb3UgYXJlIHJpZ2h0OyB0aGVzZSBvcHRpb25zIG1heSBub3QgYmUgY29ycmVjdCBpZiB3ZSB1
c2UgVlA4IG9yIFZQOSBhcyB0aGUNCj4gY29kZWMuDQo+IEBKaW4gQ2h1bmcsIHdoYXQgYXJlIHRo
ZSBjb3JyZWN0IG9wdGlvbnMgdG8gdXNlIGluIHRoaXMgY2FzZT8NCltKaW4gQ2h1bmddIFBsZWFz
ZSByZW1vdmUgVlA4LCBhcyBtc2RrLCB2YWFwaSBhbmQgdmEgbm8gbG9uZ2VyIHN1cHBvcnQgVlA4
IGVuY29kZS4gDQpBcyBmb3Igb3RoZXIgY29kZWMgb3B0aW9uLCBwbGVhc2UgdXNlIHRoZSBmb2xs
b3dpbmc6DQoxLiBtc2RrbWpwZWdlbmMNCjIuIHZhanBlZ2VuYw0KMy4gdmFhcGlqcGVnZW5jDQo0
LiBtc2RrdnA5ZW5jIGFzeW5jLWRlcHRoPTEgYi1mcmFtZXM9MCByYXRlLWNvbnRyb2w9MyB0YXJn
ZXQtdXNhZ2U9Nw0KNS4gdmF2cDlscGVuYyBtaW4tcXA9MTUgbWF4LXFwPTM1IHJhdGUtY29udHJv
bD0xNiByZWYtZnJhbWVzPTAgdGFyZ2V0LXVzYWdlPTcNCjYuIHZhYXBpdnA5ZW5jIHR1bmU9MyBy
YXRlLWNvbnRyb2w9MSANCj4gDQo+ID4NCj4gPiA+ICsgICAgfSBlbHNlIGlmIChzdHJzdHIoZW5j
b2RlciwgInZhYXBpIikpIHsNCj4gPiA+ICsgICAgICAgICpnc3RlbmNfb3B0cyA9IGdfc3RyZHVw
KCJyYXRlLWNvbnRyb2w9Y3FwIG1heC1iZnJhbWVzPTANCj4gPiA+ICsgbWluLQ0KPiA+IHFwPTE1
IG1heC1xcD0zNSIpOw0KPiA+ID4gKyAgICB9IGVsc2Ugew0KPiA+ID4gKyAgICAgICAgKmdzdGVu
Y19vcHRzID0gZ19zdHJkdXAoInJhdGUtY29udHJvbD0xNiBiLWZyYW1lcz0wDQo+ID4gPiArIHRh
cmdldC11c2FnZT03DQo+ID4gbWluLXFwPTE1IG1heC1xcD0zNSIpOw0KPiA+ID4gKyAgICB9DQo+
ID4NCj4gPiBTaW1pbGFyIGNvbW1lbnQgZm9yIHRoZXNlLg0KPiA+DQo+ID4gPiArDQo+ID4gPiAr
ICAgIGlmIChzdHJzdHIodnBwLCAidmFhcGkiKSkgew0KPiA+ID4gKyAgICAgICAgKmNvbnZlcnRl
ciA9IGdfc3RyY29uY2F0KHZwcCwgIiAhIHZpZGVvL3gtDQo+ID4gcmF3KG1lbW9yeTpWQVN1cmZh
Y2UpLGZvcm1hdD1OVjEyIiwgTlVMTCk7DQo+ID4gPiArICAgIH0gZWxzZSB7DQo+ID4gPiArICAg
ICAgICAqY29udmVydGVyID0gZ19zdHJjb25jYXQodnBwLCAiICEgdmlkZW8veC0NCj4gPiByYXco
bWVtb3J5OlZBTWVtb3J5KSxmb3JtYXQ9TlYxMiIsIE5VTEwpOw0KPiA+ID4gKyAgICB9DQo+ID4N
Cj4gPiBGcm9tIGdzdC1pbnNwZWN0IG1zZGt2cHAgZG9lcyBub3Qgc3VwcG9ydCBhbnkgb2YgdGhl
c2UuIElzIHRoaXMgZXhwZWN0ZWQ/DQo+IEFzIGV4cGxhaW5lZCBhYm92ZSwgd2UgZG8gbm90IHdh
bnQgdG8gdXNlIG1zZGt2cHAgYXQgdGhpcyB0aW1lLg0KPiANCj4gVGhhbmtzLA0KPiBWaXZlaw0K
PiANCj4gPg0KPiA+ID4gKyAgICBnX2ZyZWUodnBwKTsNCj4gPiA+ICt9DQo+ID4gPiArDQo+ID4g
PiAgc3RhdGljIGdib29sZWFuIGNyZWF0ZV9waXBlbGluZShTcGljZUdzdEVuY29kZXIgKmVuY29k
ZXIpICB7DQo+ID4gPiAjaWZkZWYgSEFWRV9HU1RSRUFNRVJfMF8xMA0KPiA+ID4gLSAgICBjb25z
dCBnY2hhciAqY29udmVydGVyID0gImZmbXBlZ2NvbG9yc3BhY2UiOw0KPiA+ID4gKyAgICBnY2hh
ciAqY29udmVydGVyID0gZ19zdHJkdXAoImZmbXBlZ2NvbG9yc3BhY2UiKTsNCj4gPiA+ICAjZWxz
ZQ0KPiA+ID4gLSAgICBjb25zdCBnY2hhciAqY29udmVydGVyID0gInZpZGVvY29udmVydCAhIHZp
ZGVvL3gtcmF3LGZvcm1hdD1OVjEyIjsNCj4gPiA+ICsgICAgZ2NoYXIgKmNvbnZlcnRlciA9IGdf
c3RyZHVwKCJ2aWRlb2NvbnZlcnQgISB2aWRlby94LQ0KPiA+IHJhdyxmb3JtYXQ9TlYxMiIpOw0K
PiA+ID4gICNlbmRpZg0KPiA+ID4gLSAgICBjb25zdCBnY2hhciogZ3N0ZW5jX25hbWUgPSBnZXRf
Z3N0X2NvZGVjX25hbWUoZW5jb2Rlcik7DQo+ID4gPiArICAgIGdjaGFyKiBnc3RlbmNfbmFtZSA9
IGdfc3RyZHVwKGdldF9nc3RfY29kZWNfbmFtZShlbmNvZGVyKSk7DQo+ID4gPiAgICAgIGlmICgh
Z3N0ZW5jX25hbWUpIHsNCj4gPiA+ICAgICAgICAgIHJldHVybiBGQUxTRTsNCj4gPiA+ICAgICAg
fQ0KPiA+ID4gQEAgLTk3MywxMiArMTA1NCwyMSBAQCBzdGF0aWMgZ2Jvb2xlYW4NCj4gPiBjcmVh
dGVfcGlwZWxpbmUoU3BpY2VHc3RFbmNvZGVyICplbmNvZGVyKQ0KPiA+ID4gICAgICAgICAgcmV0
dXJuIEZBTFNFOw0KPiA+ID4gICAgICB9DQo+ID4gPg0KPiA+ID4gKyAgICBjb25zdCBjaGFyICpj
b2RlY19uYW1lID0gdmlkZW9fY29kZWNzW2VuY29kZXItPmJhc2UuY29kZWNfdHlwZV07DQo+ID4g
PiArICAgIEdwdVZlbmRvciB2ZW5kb3IgPSBzcGljZV91ZGV2X2RldGVjdF9ncHUoKTsNCj4gPiA+
ICsgICAgaWYgKHZlbmRvciA9PSBHUFVfVkVORE9SX0lOVEVMKSB7DQo+ID4gPiArICAgICAgICB0
cnlfaW50ZWxfaHdfcGx1Z2lucyhjb2RlY19uYW1lLCAmY29udmVydGVyLCAmZ3N0ZW5jX25hbWUs
DQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmZ3N0ZW5jX29wdHMpOw0KPiA+
ID4gKyAgICB9DQo+ID4gPiArDQo+ID4gPiAgICAgIEdFcnJvciAqZXJyID0gTlVMTDsNCj4gPiA+
ICAgICAgZ2NoYXIgKmRlc2MgPSBnX3N0cmR1cF9wcmludGYoImFwcHNyYyBpcy1saXZlPXRydWUg
Zm9ybWF0PXRpbWUNCj4gPiA+IGRvLQ0KPiA+IHRpbWVzdGFtcD10cnVlIG5hbWU9c3JjICEiDQo+
ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICIgJXMgISAlcyBuYW1lPWVu
Y29kZXIgJXMgISBhcHBzaW5rIG5hbWU9c2luayIsDQo+ID4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnZlcnRlciwgZ3N0ZW5jX25hbWUsIGdzdGVuY19vcHRzKTsNCj4g
PiA+ICAgICAgc3BpY2VfZGVidWcoIkdTdHJlYW1lciBwaXBlbGluZTogJXMiLCBkZXNjKTsNCj4g
PiA+ICAgICAgZW5jb2Rlci0+cGlwZWxpbmUgPSBnc3RfcGFyc2VfbGF1bmNoX2Z1bGwoZGVzYywg
TlVMTCwNCj4gPiBHU1RfUEFSU0VfRkxBR19GQVRBTF9FUlJPUlMsICZlcnIpOw0KPiA+ID4gKyAg
ICBnX2ZyZWUoY29udmVydGVyKTsNCj4gPiA+ICsgICAgZ19mcmVlKGdzdGVuY19uYW1lKTsNCj4g
PiA+ICAgICAgZ19mcmVlKGdzdGVuY19vcHRzKTsNCj4gPiA+ICAgICAgZ19mcmVlKGRlc2MpOw0K
PiA+ID4gICAgICBpZiAoIWVuY29kZXItPnBpcGVsaW5lIHx8IGVycikgew0KPiA+DQo+ID4gRnJl
ZGlhbm8NCltKaW4gQ2h1bmddIA0KDQo=
