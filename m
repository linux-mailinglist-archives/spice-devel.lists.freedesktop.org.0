Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB977A4090
	for <lists+spice-devel@lfdr.de>; Mon, 18 Sep 2023 07:49:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5719510E0CF;
	Mon, 18 Sep 2023 05:49:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7793210E0ED
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Sep 2023 05:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695016160; x=1726552160;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O2goiVOPEiEt37tcdkc+CNokpCXptjqqXtHVgqvuwRY=;
 b=cCEDuZVPmA4cjvpeSGGlWEW+wzHunsMP0g8X74UIgRDEu95CyX5PusJr
 f57siEPWMJpGzQgbdzZhJ4bp5YHQtnLpNSkzPun/eY6V6QK5bEQROAabg
 U5WMMaaCm9qoW96vasz52mjW9hlg6ZNOQG0IPSXZj8KVLZuESBffmIa9j
 QQu98gjSV6bj7Mup4u/svPLgAojGAvTcZ01azurFODENlznMxsGQfRwm/
 lOJ3WvvXfZjmr60IzUgQW6FS8DMG0gmxPtD7PRkCvr0wE81+2G8L0pLU9
 tRlIuGens7vTn7B5rfmmkzsHp8LmSqyVd3BmOgiL1u3zT/KSU7r9pnDDg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="446037765"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="446037765"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 22:49:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="835895461"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="835895461"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2023 22:49:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 17 Sep 2023 22:49:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 17 Sep 2023 22:49:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 17 Sep 2023 22:49:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 17 Sep 2023 22:49:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iYh9B73EPQKUB2qD4xFWOcJK/Ccg6ICf6ZkO819bYAjERcyJv4NO/uqXuWc+D71y2ujt7XOzHSrGDxXCh3sP9a494BajLe5oNTq3ogiiI4jrf4TsxTKQDu5qpGU7SJHp50cayMCio8hI+xPjUqWt8U6qLW5b1sSIxIUIvsmlbKyBzB/OJ76jD5WZCRnIiJKwPmni25AZxWN1IoZoBMY9eBMZG55OmlqldWQioTcPssLM/9ZXnMpV09WqjoCRzUjSnl16DFsmKbgAC2Hud/tTP46BqPGouhdfApiqIyp6Q1ciN51eOdFI72ijo9orKxp4S8nNhc2CyMxi67wgrNN0tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O2goiVOPEiEt37tcdkc+CNokpCXptjqqXtHVgqvuwRY=;
 b=cMq74Fgr6s1MySDLLM0H2qGhkkrxMmYra/RRaPJgYbCfefj9raIc8zT1rW+U9PNRhNKRyzaC5o4/IB5EPgQIP78ucIQQ4b2poUblbS4kis4KLVsmdW1LKHpRgvMv6x1xWkKmRyXQFpRMuH3v6v4AAcrQx8Cq/7Bbrzz70V6KY6kd/0dhr77hbddR7sB5P5d7rVtvoHCVaqUT6L1gRDho1kdGaTQncOEoJf+ey76lx8BUTevPyhAFOAu1tgZwuPNEPuMDXfODrhCmdw3u6uS+4eTgiSYlBDbGwAp1AbmzLOuJ7Zk1ttJWQsBZUZteoY3RdSNv3jxt9kfG7ZniQnteVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by IA1PR11MB7727.namprd11.prod.outlook.com (2603:10b6:208:3f1::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.24; Mon, 18 Sep
 2023 05:49:15 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::fe3f:b90e:4eaa:fac8]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::fe3f:b90e:4eaa:fac8%7]) with mapi id 15.20.6792.024; Mon, 18 Sep 2023
 05:49:15 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>
Thread-Topic: [PATCH 1/2] gstreamer-encoder: Use NV12 as the default vpp
 conversion format
Thread-Index: AQHZ52w1vMXQp431m0eqTdRrx1k+GbAcAomAgAPjrEA=
Date: Mon, 18 Sep 2023 05:49:15 +0000
Message-ID: <IA0PR11MB7185717AE7EDF12BE2C64649F8FBA@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-4-vivek.kasireddy@intel.com>
 <CAHt6W4f+8b0K6XYG+jKg_xSiLUqUhLx28JFdjqLN4j=pT6hJWQ@mail.gmail.com>
In-Reply-To: <CAHt6W4f+8b0K6XYG+jKg_xSiLUqUhLx28JFdjqLN4j=pT6hJWQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|IA1PR11MB7727:EE_
x-ms-office365-filtering-correlation-id: e9de740d-ebce-44e7-3ae5-08dbb80afdd7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ylATNhZ8G8WyfEEH+pws+DIKdmmEOgnDiVlXH9cF7MEqHESQuP6carkvww/B/+FgH35GHk8ALxezpDVF8mm4ZPNpX58wrCV3VASDcj9QsMtNXJsJlzLBVMC8jmqHHVcZQB5roMnFZA3ugNC52596Q4nT0Zpt84LocdTYX09/spEB8fsPVAXPzcrJVHLbdVRPaWnMJmvLgqHaGH4RZSboU+TR6VSrhLZFHG/Z7AV+jI8Z60vL2map5Zc4XDAxlNmOBSPI6NrI3bLOgmOAkpS/bR11EjVOvDYwv/u/vKGaLDIHVvQq/WbnmQ5NbZFRW+fHJLc4KWaBBt0SdpyA4Odwh1KO0ZiG7Qz9xNglmdbGVvnb/E1JbrGNM1IYtAcUY6Cd5RDGT0cZKqp7M38Esef/3/OnFWcY5cJQfoVwOEocnZ/HLjKdV1ZcmJhK7JlS+P6D7Hbshpyfvmam+Aynf1iONZHwgif9sUAeQnXEaffhZKM8/cVVvFlcu8XAyYayC7KgNRqZ4IsQxrIBHMytTMhTMTsiOAhexJhqVV2p4g+ent4UqrvirTtfDvLsG9qvBMEOEWFFdHYgzZZDy2bDu7CjqgRWfxfukHep5azid0gZw3mKhelbYgYlLcslKWxEJzwE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(346002)(366004)(376002)(451199024)(186009)(1800799009)(76116006)(66946007)(7696005)(6506007)(66476007)(66446008)(64756008)(54906003)(66556008)(9686003)(316002)(6916009)(41300700001)(71200400001)(478600001)(4326008)(8936002)(8676002)(107886003)(52536014)(5660300002)(26005)(33656002)(55016003)(38070700005)(38100700002)(122000001)(82960400001)(83380400001)(2906002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y2ZGVCs3MGplWWVNZ2VLK0JrbkVTTng4YzkxNndpdnA5MCtaUlR0d3VtNzJV?=
 =?utf-8?B?Zk1VRkQya3JKaEx2OUlmSzZtQUk1cjBMeWdYc2RDcjluRWVYSm5jMnk2bTlk?=
 =?utf-8?B?QmxIQ3RFZzE1b2pMMTZ0eXp6L1pvU0J3VVZrUXVCRUZ6bEV0VHRvNHFta3d6?=
 =?utf-8?B?T2hyeFBhR3A1dSt5VHB0emhqNnpYZXZyM1lLY0JxVmE1RUdaVnA5LzdUZit5?=
 =?utf-8?B?S1Z3TTRyWUxqc3A2TTVqL3lqSCt5Vy9rcUhlUC9HTW91azRpbjJtcEhZK3pW?=
 =?utf-8?B?S0dBcXJEODJ0QXZnRCtTYlVMSEhBckI0NVdINDB4bndablBjVWhVeGVuZGk5?=
 =?utf-8?B?Yld1Q3d0R3N1WWp1MnhTbVlPK3o0dVpiV3dKMklDU0lDWlBJQlZHV1ZEakY2?=
 =?utf-8?B?cHA0V0FONGNiV1J5K0c2T0RXamdVTk14eU9iczhrNmRTeFRpLzM5TmduSk1l?=
 =?utf-8?B?VmpmbTlZbVZSU2lKOGZ0RU05cEVFc2pncFdnbHhrMzk4RVl6NUYwNzh4MlI5?=
 =?utf-8?B?L3M0dWw3eEdqeUxrR3dmTnRYcWZQSXllN3BpQ0ZMcWx6a25GMFc1UTByOThl?=
 =?utf-8?B?cnprS1h6eTJQOXVGZXYvcC9heVFXbHpjRmliN2tZV2h5S0xNb2JyZ3htZGZL?=
 =?utf-8?B?NFh1TS9DanFGd0ROYm9aU09Ib3JEUjZUY1B3QzZQQkdZaGQ5U29nenlBTzN6?=
 =?utf-8?B?ZnNqdE5TQ1JmQnd6aklCSmFCYWJDS0Q0WFIyU3NnYlFxeFpxNHBDelM2Mkt4?=
 =?utf-8?B?eTN3SXhzUStiZFR6TlRnbGZYT0QzT3A3VHE2ckVEQjROa2RRcmlneVJYd0hU?=
 =?utf-8?B?bTdJZ3RTYjJiZjZwVGNtb042RDcyL0tnL25tMEZyTmErQUlHK1IyRlJsaEwv?=
 =?utf-8?B?ZllQTWF6dHdSc0tiMWlRejBhZ0Yrd0g1ZWU2bkIyOHBmVjlOVXBUS3NvKzdK?=
 =?utf-8?B?bmh3RnAzRktDbFFRZ2tiT21NNWYvVHZIcFM2ekhJQ1VvSjJqVDREN3lrTGhR?=
 =?utf-8?B?ZlV6Wkk0eG1nWXhTT3hsdCtLaTZKTUoway91U1JUR1l0TitweS9YQ1pFM3VB?=
 =?utf-8?B?TENOanRsUmpUT2Y3ZmkySUg3V2FSekx3Tm45aDdHK1FTZnd2aHo4TmRSY0xt?=
 =?utf-8?B?TEJCZUJsbnRhM1o4SEFicEJnWnJrVWl0VzQraFd0a2U0ZVVqRE1lMG9Ia20r?=
 =?utf-8?B?ZXRydmJKVVU4K1RwY05aa2VaN0w2ekIzbFEyWTJBNHhoT0xoVTB0cTdQN2Fn?=
 =?utf-8?B?RENnQ2FaSnFDTk5JY2didk1JWm9vbnRHTDFFeDZ1WW5DVXY3d3BTaVgzdWdh?=
 =?utf-8?B?ZFZ6S1BGb2FDeDd0M3NzR0tnSGlRZWw1SzM5L3RtVTlVa0FzSlBpN1VhV0RI?=
 =?utf-8?B?a0Y1S3RuTFQyZ1NZUjdyd3MvcUJZVld4QytwK1NXNGY0TFByaFpWdGhXRGVz?=
 =?utf-8?B?amdlaFJOcFZwbW1nNC9RcTdZVGZyRE5aQzZSWS9XMlA0TG9XU3Nnek9XRjZp?=
 =?utf-8?B?YkFqbDR3QUdHOUJpaDNYMUpGZzFMTXE1M1k1THdvdnRvalBmNlhOR1JtYW9U?=
 =?utf-8?B?Ti9PaXNOYVhuMkFhZXZpQ21nNHAyeHFsY3EzaHY4T25XWHFQbVdrZHV5NCtv?=
 =?utf-8?B?Zkw0UlJVYXVzSWZURUgyS0NweWNIYlRCNW4yY3dhYW1CdmlrQVNEMU12QU1j?=
 =?utf-8?B?Q0lFcUVZNGRFVld5bzBPK25vQlFuRmdibXhzNTVZVFl2TUVKSTB3VWZMY1J3?=
 =?utf-8?B?NUJvZktoOENSZ21NK0d3Mzlhblp6WDYxRmpTUTZJSG5oeDMwYnRGRVlZL2lQ?=
 =?utf-8?B?NXdYakRvMHdCQkMrT2pJUmVJaGdxdVZGZU1zSTRvbGJBeUgwc3dteXlKUjBV?=
 =?utf-8?B?N1FXVFJXdHczc2cxVDhvQ2tEVWdObDZodlNFdlhZVGhadzZmQVhid29KRWJQ?=
 =?utf-8?B?S0tsdkMxTThLMERXRG9YN1dySU9WMTBXL0QxRnU3SHBiT1E2K3ZnNkN1a3JW?=
 =?utf-8?B?RGxvZEZJRjY2N1F5N0hidEhlWkNtYVJZajVheUM5N2V5ZkgyL3lxc3c4TlJD?=
 =?utf-8?B?dG5tVnNseVJ5ZTA3TFRPcDlKZCt4MFR1ZEliRlNWaHBrdmRRbFNQNEt0eDg1?=
 =?utf-8?Q?3CEo2I0mhD843e37W0+eHUUdd?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9de740d-ebce-44e7-3ae5-08dbb80afdd7
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2023 05:49:15.0380 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BxqMoFbRTuM1vs0FQYiDb0xbIxyFpdCxp/EM2jEKS9mWv7i81CjEU0MyPP15iksTsLHKSUPp95Gz9YHUojIwGdD13CPZ62Qis0UsyjSfPe8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7727
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
 "Teng, Jin Chung" <jin.chung.teng@intel.com>, "Kim,
 Dongwon" <dongwon.kim@intel.com>, "Mazlan,
 Hazwan Arif" <hazwan.arif.mazlan@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkgRnJlZGlhbm8sDQoNCj4gPiBGcm9tOiBIYXp3YW4gQXJpZiBNYXpsYW4gPGhhendhbi5hcmlm
Lm1hemxhbkBpbnRlbC5jb20+DQo+ID4NCj4gPiBVc2luZyBOVjEyIGFzIHRoZSBvdXRwdXQgZm9y
bWF0IGZvciB0aGUgdmlkZW9jb252ZXJ0IGVsZW1lbnQgd291bGQNCj4gPiBhbGxvdyB1cyB0byBw
YWlyIGEgcy93IGJhc2VkIGVuY29kZXIgd2l0aCBhIGgvdyBiYXNlZCBkZWNvZGVyIGZvcg0KPiA+
IGRlY29kaW5nIHRoZSBzdHJlYW0gYXMgbW9zdCBoL3cgYmFzZWQgZGVjb2RlcnMgb25seSBhY2Nl
cHQgTlYxMiBhcw0KPiA+IHRoZSBpbnB1dCBmb3JtYXQgZ2l2ZW4gaXRzIHBvcHVsYXJpdHkuDQo+
ID4NCj4gDQo+IEkgZG9uJ3QgZnVsbHkgdW5kZXJzdGFuZCB0aGUgcmF0aW9uYWxlLg0KWWVhaCwg
SSBzaG91bGQgaGF2ZSBhZGRlZCBtb3JlIGRldGFpbHMuDQoNCj4gWWVzLCB0aGUgaC93IGNvZGVj
cyB1c3VhbGx5DQo+IHdvdWxkIGNvbnZlcnQgdGhpcyB0byBOVjEyIGhvd2V2ZXIgc2hvdWxkIG5v
dCB0aGlzIGJlIGRvbmUgYnkNCj4gZ3N0cmVhbWVyIGluc3RlYWQ/DQo+IFN1cmVseSBZVVYgY29u
dmVyc2lvbiBpcyB1c2VmdWwgYnV0IHdoYXQgaWYgYSBzb2Z0d2FyZSBjb252ZXJzaW9uDQo+IHdv
dWxkIGxpa2UgdG8gdXNlIFk0NDQgaW5zdGVhZD8gV2l0aCBOVjEyIHlvdSB3b3VsZCBsb3NlIGlt
YWdlDQo+IHF1YWxpdHkuDQo+IElzbid0IGdzdHJlYW1lciBzdXBwb3NlZCB0byBjb21lIG91dCB3
aXRoIHRoZSBiZXN0IGNvbWJpbmF0aW9uPw0KPiBNYXliZSBpdCB3b3VsZCBiZSBlYXNpZXIgdG8g
aGF2ZSBhIG1vcmUgY29tcGxldGUgcGlwZWxpbmUgc3RyaW5nDQo+IGluc3RlYWQgc3BlY2lmaWVk
IGZvciBlYWNoIGNvZGVjPw0KTXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IHRoZSBnb2FsIHdpdGgg
dGhpcyBwYXRjaCBpcyB0byBlbnN1cmUgdW5pZm9ybWl0eQ0Kb2YgdGhlIGZvcm1hdCBhbmQgc3Bl
Y2lmaWNhbGx5IGFkZHJlc3MgdGhlIGNhc2Ugd2hlcmUgd2UgdXNlIHgyNjRlbmMNCm9uIHRoZSBl
bmNvZGUgc2lkZSBhbmQgbXNka2gyNjRkZWMgb24gdGhlIGRlY29kZSBzaWRlLiBTaW5jZSBZNDQ0
DQppcyB0aGUgZGVmYXVsdCBpbnB1dCBmb3JtYXQgZm9yIHgyNjRlbmMsIHZpZGVvY29udmVydCBj
b252ZXJ0cyB0aGUgQkdSeA0KZGF0YSBpbnRvIFk0NDQuIEhvd2V2ZXIsIG9uIHRoZSBkZWNvZGUg
c2lkZSwgbXNka2gyNjRkZWMgY2FuIG9ubHkgd29yaw0Kd2l0aCBOVjEyOyBzbyB0aGlzIHBhdGNo
IGlzIGVuc3VyaW5nIHRoYXQgd2Ugc3RhcnQgd2l0aCBOVjEyIG9uIHRoZSBlbmNvZGUNCnNpZGUg
YXMgd2VsbC4gSmluIENodW5nLCBmZWVsIGZyZWUgdG8gYWRkIG1vcmUgZGV0YWlscyBpZiBJIG1p
c3NlZCBhbnl0aGluZy4NCg0KVGhhbmtzLA0KVml2ZWsNCg0KPiANCj4gPiBDYzogRnJlZGlhbm8g
WmlnbGlvIDxmcmVkZHk3N0BnbWFpbC5jb20+DQo+ID4gQ2M6IERvbmd3b24gS2ltIDxkb25nd29u
LmtpbUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSGF6d2FuIEFyaWYgTWF6bGFuIDxo
YXp3YW4uYXJpZi5tYXpsYW5AaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEppbiBDaHVu
ZyBUZW5nIDxqaW4uY2h1bmcudGVuZ0BpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogVml2
ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBz
ZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYyB8IDIgKy0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvc2VydmVy
L2dzdHJlYW1lci1lbmNvZGVyLmMgYi9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYw0KPiA+IGlu
ZGV4IGQ4YWY5MWYxLi4wNTc1MDliNSAxMDA2NDQNCj4gPiAtLS0gYS9zZXJ2ZXIvZ3N0cmVhbWVy
LWVuY29kZXIuYw0KPiA+ICsrKyBiL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jDQo+ID4gQEAg
LTkxOCw3ICs5MTgsNyBAQCBzdGF0aWMgZ2Jvb2xlYW4gY3JlYXRlX3BpcGVsaW5lKFNwaWNlR3N0
RW5jb2Rlcg0KPiAqZW5jb2RlcikNCj4gPiAgI2lmZGVmIEhBVkVfR1NUUkVBTUVSXzBfMTANCj4g
PiAgICAgIGNvbnN0IGdjaGFyICpjb252ZXJ0ZXIgPSAiZmZtcGVnY29sb3JzcGFjZSI7DQo+ID4g
ICNlbHNlDQo+ID4gLSAgICBjb25zdCBnY2hhciAqY29udmVydGVyID0gInZpZGVvY29udmVydCI7
DQo+ID4gKyAgICBjb25zdCBnY2hhciAqY29udmVydGVyID0gInZpZGVvY29udmVydCAhIHZpZGVv
L3gtcmF3LGZvcm1hdD1OVjEyIjsNCj4gPiAgI2VuZGlmDQo+ID4gICAgICBjb25zdCBnY2hhciog
Z3N0ZW5jX25hbWUgPSBnZXRfZ3N0X2NvZGVjX25hbWUoZW5jb2Rlcik7DQo+ID4gICAgICBpZiAo
IWdzdGVuY19uYW1lKSB7DQo+IA0KPiANCj4gRnJlZGlhbm8NCg==
