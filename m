Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E811666B5E
	for <lists+spice-devel@lfdr.de>; Thu, 12 Jan 2023 08:03:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7701D10E883;
	Thu, 12 Jan 2023 07:03:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 677BE10E883
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Jan 2023 07:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673506997; x=1705042997;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6e4GD7yzrqTS3eyZ2ZXBJig5XT0caxYJJqfLLIkGOY0=;
 b=i+A+yIrjI23/9D4Jc8AU5QfqR6otZpR9Ky+lQ6FvIE4cEskJkUZ/Nc/k
 HcTifmPekCz1uT/GhGmKS5Oyk9PYMG+oyDoJm8bONITFec8ieUnDi5xxJ
 FPzPurFan7HQ27sw9M3DOpZkrz5gf+MItRDqRm2FfW4gLzS2By0TiZ00C
 p6/wgrVuvGehdcThVfbN5+elBCLpour9AuhcKLBVSaMxMbQiLRsieOXS7
 7BOCHHPyS+4gD6vpUV2RKPJAWiLMS7TVPcz4lexEltiuWu/UsWRUSBLfo
 TFw+2qvpV+AOjBdFmLL1w+fbAZDSWrsBoB3OMIkOLEfuem+/q9wZX6Qdh w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="321321307"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="321321307"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 23:03:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="690017899"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="690017899"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 11 Jan 2023 23:03:15 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 23:03:15 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 23:03:14 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 11 Jan 2023 23:03:14 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 11 Jan 2023 23:03:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YLJKa6jUzHZMw4YYUAy03E0In6lXHnFdo3GeZNSYi4zYuCzLxkxgsXajEUTuYrCXsa4Dzvl0eo2VJUywaChnY5m7Vz9+5Sjg4vCC3P64qM/u7og2QB462L0+8ZuANcFnf86Y7wWbScm/RaR0kLwMzmxJPlAxPqt4kI7vA8JTAIbQ8SBXEnJrvCg9zkd2mIKhfL5pAKhsy7RzFXHDM4udZ7M/2DOwDYrBVtSF62uma4xtase2crhScKOHfO62Vl+2xpqV99Znv6xfFT4uEVdutahEj+l/ivaWHZ/uaFSr1W9gOxkKP01Zc7Qp/5rSn5YigYuDU9sbs+yEuxncQFYZDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6e4GD7yzrqTS3eyZ2ZXBJig5XT0caxYJJqfLLIkGOY0=;
 b=NuL1HlVk8lhxfMdy2e2YlOVVyeByuohzz4tRDA0KPvSM8ujQXEiEzJovhR7TGdxnQXLxweQTdX735FCePKb1yRksqc2k5amhZA217NKNiUCfIu70jMVTnAE3QbRELRTpfYU6eQeG8foTlaFKQ34rf5wGNOjolcaPbbFmoD3s/ViSGDZKR9IsZGlRIqiHBDS6c3bw/aEALhoF4h6eoYcrNMmN02pzr4xlqsdEusaeb639U7CfQXkx9leL92jWOaD9cjscTWBMmdxwSQLLV3arprzsqnlMwR5y6v9mkX5zlTjFW1vK8s4Vkm7wJG4iA87R1NEw1g91hh6O5+LmfjS4qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:443::14)
 by IA1PR11MB6265.namprd11.prod.outlook.com (2603:10b6:208:3e7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Thu, 12 Jan
 2023 07:03:12 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::6385:771:1bc4:2f6]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::6385:771:1bc4:2f6%4]) with mapi id 15.20.5986.018; Thu, 12 Jan 2023
 07:03:12 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>
Thread-Topic: [Spice-devel] [RFC v1 2/4] display-channel: Add the asyncs
 associated with dmabuf encode
Thread-Index: AQHZJX950rKUYpqyEkW+pcv7mBVUKq6ZGl6AgACdlAA=
Date: Thu, 12 Jan 2023 07:03:12 +0000
Message-ID: <IA0PR11MB71853B6E9AC8B35FA2026C8CF8FD9@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20230111052239.781285-1-vivek.kasireddy@intel.com>
 <20230111052239.781285-3-vivek.kasireddy@intel.com>
 <CAHt6W4cVJP4stB7j0S+ZG3gdgq1NAyRi0EyERcHeOw0ydeapWg@mail.gmail.com>
In-Reply-To: <CAHt6W4cVJP4stB7j0S+ZG3gdgq1NAyRi0EyERcHeOw0ydeapWg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|IA1PR11MB6265:EE_
x-ms-office365-filtering-correlation-id: 73bf6469-1dcd-42a3-acbb-08daf46b1213
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Iw4kWxr9Jozdeb7Okwo/8YoJC8CfhVKjMmPmX8EargEFGTik4PMPtsicn0RKOoHQOC4Xy6pXdK9SXIocq5Ztclk4neHA6M8BCMyse5AhNlMxhFhOr73kw4G7baxWrv6XhCZaVpujbSgVH908W8ZWWT3Rmn7rWUHkrQb/23CSv0gq/TLzlPa1QU6gINcbqK2I+enKsC1q1EaF/ucog+rPUUHpTrnF0oBkmH1CJfBStRQwAeuuNc7+RTN+EY5ckGVUFEiZWdUZ8MY6u2PB2ULNaylstrDO+XNuf8vliBHceJKBBqkfFlmkEiwxVoM//lM44llp/J3wE2DE6Lv7H/o+5T25XtzIuoYa1kXYc8SKd+KaFFOFtqj8BYniyzlpgYKgwHJphvYcSEGDq9uLHO2Qzv713qsbTyDzk89fTXHaWobNyLi5ABtNOdImXGCllfMIlk6euqzar7muGqRtNuhkE+6qaUqqOizJvuQImITJg854UMQBBmhNKAB2y1CI5uWxhaXAkhsdf3XnDcF0O7gpUQ3DRURPSVGp9n6XMeH3nV7slmQi68HP8tVVwqgnJw/rMBscqJSEtnWh3o9jS9+K7ZSvhfO9HsXsuSs7FFK5JCWUlMKI9X3LiN7zJwWaYoxIEVIHGdWJYzioeKehC4HL2SCBubntoc8PXmN2P4IsugIMeqcJxRyfA6Ms3Ggrsokz/O4kaCwODLwWLowj6nt/LQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(396003)(346002)(136003)(366004)(451199015)(33656002)(122000001)(38100700002)(82960400001)(76116006)(71200400001)(6916009)(8676002)(66446008)(66946007)(4326008)(55016003)(186003)(86362001)(26005)(9686003)(316002)(38070700005)(64756008)(54906003)(7696005)(478600001)(66476007)(5660300002)(2906002)(52536014)(41300700001)(8936002)(6506007)(66556008)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T2dpS0lORktDVmpaRWQwWDBSNU85QjNKK3hYRVJMZnoxRVlHclJXeXNNTEY0?=
 =?utf-8?B?Kzc2eFBEM3gwYzZJZmVZeUl4eG1KQmdvN1RTT1JDWGlMUW1FdXZsSStnbytZ?=
 =?utf-8?B?TGNtWGVLbVFFRlhkN0N0YjIwTWhYbXpaU2Nqb0pScldRVUZ5VWJZTFJnYmpt?=
 =?utf-8?B?c2dZTlVqZlFnUkJMZHltelRoRlNWR2d6cm5uYXY2RXZySEhXVHp2dHBrQnFI?=
 =?utf-8?B?UDZ5bXNGN25KZHdwTkZBaGl6QzN6K01PdWxSRFRxU2FOK3JLam11MVFTSTZp?=
 =?utf-8?B?NGt4RnhWbVlhVC9BN0d0ems0bDBHMWtJZnF6QlFqck04WE9YM3hSaklJaEhp?=
 =?utf-8?B?YVZHNFJDRE1KT1M1L3AwYkNTSW84M25qYSsvNXF4ME1GSTZKbG5GVjBldm1j?=
 =?utf-8?B?MWUzVHdhN0ZzUTVOaTZkY3N1ZlZldVl1eXJlTExTQUdkZHdjT1pNckoxVUp3?=
 =?utf-8?B?RnRYdWZObFZzTmxYcXJYTU9RMEZmYi9BS0pNZnh4ZS9pZUNtdThJVWJSTEdC?=
 =?utf-8?B?ZzF3dFlxS3VFQnBkcTc1NTlkNjh0dCtNeW9oNkNCOTBobnhvSGhJQWZRbVFR?=
 =?utf-8?B?TFN3VVlDdlFVVkIreUwrNkpWd1N4d1F6MzhNZllzUEhJZWZqc282NWFRNXht?=
 =?utf-8?B?UWcrODdyWGMyZFFIcmFrTTY0NWxWeVlHM3RteGttRjk4YmpsZ0dnajl2MVM4?=
 =?utf-8?B?TGlvTUNUNVR5cXlsZlUvWWpqVWo2QTk1WG5MRXN6Q3JCbkM0NXZHR2QrZi9E?=
 =?utf-8?B?UFRLOVdXV2xCUnA2OFBRSE14aUd4NmNUOVVvcXlDdVNtT2ZoZnVaVkNJazc4?=
 =?utf-8?B?T01QeUtJTHRWSDdIWmNLd3NEMFp4Tytjak9yaHdOWmdHWXBQQkFZTllueHQ1?=
 =?utf-8?B?UGgxeGdKWnQ5NVNDMXIyM1hTZTZrTmcyU2c4VERMUHJWTHVEdy9JL2Vnc3B3?=
 =?utf-8?B?K2t6THUyUlVESnlJMXowblE3OS9UQXVxSHYvczhBTE9oSTIrZ041Y1d6UFEv?=
 =?utf-8?B?bFRpblY1SzFxR282WnVmOXBNMUplQTArS3VBVk91RFdvSE9sVEh5MnFIZHpO?=
 =?utf-8?B?UkFqSklWVFVTNkZFdlJKSTVVRFkxUmw5ZVNhS2c1UE5YUm9PUkROUWhCMFQ4?=
 =?utf-8?B?VWZIbFBFU2dURkFUQ0NzWXE2RFZ1T3VCZzduZHBVTW4yWnc4MG1ZbVplY3VK?=
 =?utf-8?B?QU5PUzQzbDNEWE5EbFJyc3Z6UngxOGRCWll1eUs4eFp0aUF4S0pEOEJhVnR1?=
 =?utf-8?B?LzdaNm90eE9NbjdiQ0pma0Vsano4a1NrNkhaS3NnVmpCREFXcFVnVHZiOGlZ?=
 =?utf-8?B?MmQ5b2JacDRRMEx6MkY0TExDVUZnbFJBV2tiRE01MUM5UE4xY1FGWC9hRmp1?=
 =?utf-8?B?NVN3VlNoS0FvSi8wUVBaTlVXeklHTEpza20yN3IrcWZJRU9CMlkxUFVlRTVG?=
 =?utf-8?B?MTZkMzQrekJzV1Nvbk9EZ2prczN3Z0hjcTRXQ1lIbDJKbmdmdEsyMnU0SnNJ?=
 =?utf-8?B?b2lqSjhwbUtRd2JPOUw4SWQyU3dZTDFYdGVTNHIzekpIdXlZUm8wcGdXc21z?=
 =?utf-8?B?OVhCYkJueFFpRnBNTTJ6VC9EZEpOQitkaWFOUjJwelpvUTgrYmNUVE5lVkg5?=
 =?utf-8?B?OGM4dXpWM01BV291ay9hczJ5bmJ6dnVSNkFaeGR4RExqSUVQU3laRmRJaW9T?=
 =?utf-8?B?K1pGU3FEc2s3U2U2QU83ck82Zk00cnFwV2NHcXZWSSszaWlmV2VyR0N5TWg5?=
 =?utf-8?B?SG4rOHExSEs0c2cvRURVQTJya3RyY0dFMVJiNGh1enNJaTQwUGNTZkJ4SXF0?=
 =?utf-8?B?cHFnRmxVK1h3RVlYQ0JwMC9yL0JGVWk3Y002OUpIRzl5M21uT0JoVXUyaWVL?=
 =?utf-8?B?eDRmUWt5N0g2Y2ZyaFQ3VjE2RDErK2p0N2daWHFqdG1kZ3pFVDVVcjBLR0tS?=
 =?utf-8?B?QlA0YWlSWi9Qa2hLaDVMVXp1aCtvc2FOQzF2NGoxNE5qWU1RZzdGSmhyWU9o?=
 =?utf-8?B?NFNEMTJ0djRrWVF3WjZPVWpaSUFUTnpBSkFwR3VySVlhOWUwVVJtMTJaTmIx?=
 =?utf-8?B?SVZpVkwwUzhHK25LTm5oTUhnNlNPRVBRQXJWaTl4Wnl4Y2pwNFVhOWRrN2pB?=
 =?utf-8?B?VEd2eTFsUTBpOTlGWnV2QmVwOSttMG5NTlJRMGRxYUZkNTE1MCtDcDlKLzQx?=
 =?utf-8?B?K1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73bf6469-1dcd-42a3-acbb-08daf46b1213
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2023 07:03:12.7678 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9S9aSSKTRrzvyioVXEzxtdg8ZLLhILqEyUFjB4uOx0IxIFXq8QQuztqES3ErQ2Nb7X31QSfNSFref8WqzWIS/RoHPxBfzTpbho3SjqBiRAg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6265
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

SGkgRnJlZGlhbm8sDQoNCj4gDQo+IElsIGdpb3JubyBtZXIgMTEgZ2VuIDIwMjMgYWxsZSBvcmUg
MDU6NDIgVml2ZWsgS2FzaXJlZGR5DQo+IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPiBoYSBz
Y3JpdHRvOg0KPiA+DQo+ID4gVGhpcyBhc3luYyBpcyB0cmlnZ2VyZWQgYnkgdGhlIGVuY29kZXIg
aW5kaWNhdGluZyB0aGF0IHRoZQ0KPiA+IGVuY29kaW5nIHByb2Nlc3MgaXMgY29tcGxldGVkLg0K
PiA+DQo+IA0KPiBUaGlzIGRlc2NyaXB0aW9uIGRvZXMgbm90IG1ha2UgbXVjaCBzZW5zZSB0byBt
ZS4NCj4gWW91IGFyZSBhZGRpbmcgYSBwdWJsaWMgZnVuY3Rpb24gd2hpY2gsIEkgc3VwcG9zZSwg
c2hvdWxkIGJlIGNhbGxlZCBieQ0KPiBRZW11IGJ1dCB5b3UgYXJlIHN0YXRpbmcgdGhlIGVuY29k
ZXIgaXMgY2FsbGluZyBpdC4NCj4gVW5sZXNzIFFlbXUgaXMgdGhlIGVuY29kZXIgaXQgZG9lcyBu
b3QgbWFrZSBzZW5zZS4NCltLYXNpcmVkZHksIFZpdmVrXSBTb3JyeSBmb3IgdGhlIHBvb3IsIG1p
c2xlYWRpbmcgZGVzY3JpcHRpb24uIEkgb3JpZ2luYWxseQ0KaGFkIHRoaXMgcGF0Y2ggc3BsaXQg
aW50byB0d28sIG9uZSBmb3IgZWFjaCBhc3luYyBmdW5jdGlvbiBhbmQgZm9yZ290IHRvIA0KdXBk
YXRlIHRoZSBjb21taXQgbWVzc2FnZSB3aGVuIEkgbWVyZ2VkIHRoZW0uIEknbGwgdXBkYXRlIHRo
ZSANCmNvbW1pdCBtZXNzYWdlIGluIHYyIHdoaWNoIHdvdWxkIHByb2JhYmx5IGhhdmUgdGhlIGZv
bGxvd2luZyBkZXNjOg0KIlRoaXMgcGF0Y2ggbWFpbmx5IGFkZHMgdHdvIGFzeW5jIGZ1bmN0aW9u
czogYSBwdWJsaWMgb25lIGFuZCBhbg0KaW50ZXJuYWwgb25lLiBUaGUgcHVibGljIGZ1bmN0aW9u
IHNwaWNlX3F4bF9kbWFidWZfZW5jb2RlX2FzeW5jIGlzDQp1c2VkIGJ5IGFwcGxpY2F0aW9ucyB0
aGF0IHdvdWxkIHNoYXJlIHRoZWlyIGZkIHdpdGggdGhlIFNwaWNlIHNlcnZlci4NClRoZSBpbnRl
cm5hbCBmdW5jdGlvbiByZWRfcXhsX2RtYWJ1Zl9lbmNvZGVfYXN5bmNfY29tcGxldGUgaXMgb25s
eQ0KdXNlZCBieSB0aGUgU3BpY2Ugc2VydmVyIHRvIGluZGljYXRlIGNvbXBsZXRpb24gb2YgdGhl
IGVuY29kaW5nIHByb2Nlc3MNCmFuZCBzZW5kIHRoZSBjb21wbGV0aW9uIGNvb2tpZSB0byBhcHBs
aWNhdGlvbnMuIg0KDQo+IA0KPiA+IENjOiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNv
bT4NCj4gPiBDYzogTWFyYy1BbmRyw6kgTHVyZWF1IDxtYXJjYW5kcmUubHVyZWF1QHJlZGhhdC5j
b20+DQo+ID4gQ2M6IERvbmd3b24gS2ltIDxkb25nd29uLmtpbUBpbnRlbC5jb20+DQo+ID4gU2ln
bmVkLW9mZi1ieTogVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPg0K
PiA+IC0tLQ0KPiA+ICBzZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmNwcCB8ICA5ICsrKysrKysrKw0K
PiA+ICBzZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmggICB8ICAyICsrDQo+ID4gIHNlcnZlci9yZWQt
cXhsLmNwcCAgICAgICAgIHwgMjYgKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gPiAgc2Vy
dmVyL3JlZC1xeGwuaCAgICAgICAgICAgfCAgMSArDQo+ID4gIHNlcnZlci9zcGljZS1xeGwuaCAg
ICAgICAgIHwgIDIgKysNCj4gPiAgc2VydmVyL3NwaWNlLXNlcnZlci5zeW1zICAgfCAgMSArDQo+
ID4gIDYgZmlsZXMgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdp
dCBhL3NlcnZlci9kaXNwbGF5LWNoYW5uZWwuY3BwIGIvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5j
cHANCj4gPiBpbmRleCA0YmQwY2Y0MS4uODFkZjU0MjAgMTAwNjQ0DQo+ID4gLS0tIGEvc2VydmVy
L2Rpc3BsYXktY2hhbm5lbC5jcHANCj4gPiArKysgYi9zZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmNw
cA0KPiA+IEBAIC0yMzM0LDYgKzIzMzQsMTUgQEAgdm9pZA0KPiBkaXNwbGF5X2NoYW5uZWxfZ2xf
ZHJhd19kb25lKERpc3BsYXlDaGFubmVsICpkaXNwbGF5KQ0KPiA+ICAgICAgc2V0X2dsX2RyYXdf
YXN5bmNfY291bnQoZGlzcGxheSwgZGlzcGxheS0+cHJpdi0+Z2xfZHJhd19hc3luY19jb3VudCAt
IDEpOw0KPiA+ICB9DQo+ID4NCj4gPiArdm9pZCBkaXNwbGF5X2NoYW5uZWxfZW5jb2RlX2RvbmUo
RGlzcGxheUNoYW5uZWwgKmRpc3BsYXksDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIFJlZERyYXdhYmxlICpyZWRfZHJhd2FibGUpDQo+ID4gK3sNCj4gPiArICAgIGlmIChy
ZWRfZHJhd2FibGUtPmRtYWJ1Zl9mZCA+IDApIHsNCj4gPiArICAgICAgICByZWRfcXhsX2RtYWJ1
Zl9lbmNvZGVfYXN5bmNfY29tcGxldGUoZGlzcGxheS0+cHJpdi0+cXhsKTsNCj4gPiArICAgICAg
ICByZWRfZHJhd2FibGUtPmRtYWJ1Zl9mZCA9IDA7DQo+ID4gKyAgICB9DQo+ID4gK30NCj4gPiAr
DQo+ID4gIGludCBkaXNwbGF5X2NoYW5uZWxfZ2V0X3ZpZGVvX3N0cmVhbV9pZChEaXNwbGF5Q2hh
bm5lbCAqZGlzcGxheSwNCj4gVmlkZW9TdHJlYW0gKnN0cmVhbSkNCj4gPiAgew0KPiA+ICAgICAg
cmV0dXJuIHN0YXRpY19jYXN0PGludD4oc3RyZWFtIC0gZGlzcGxheS0+cHJpdi0+c3RyZWFtc19i
dWYuZGF0YSgpKTsNCj4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5oIGIv
c2VydmVyL2Rpc3BsYXktY2hhbm5lbC5oDQo+ID4gaW5kZXggYzU0ZGYyNWMuLjBhMWU1MjBjIDEw
MDY0NA0KPiA+IC0tLSBhL3NlcnZlci9kaXNwbGF5LWNoYW5uZWwuaA0KPiA+ICsrKyBiL3NlcnZl
ci9kaXNwbGF5LWNoYW5uZWwuaA0KPiA+IEBAIC0xMjcsNiArMTI3LDggQEAgdm9pZCAgICAgICAg
ICAgICAgICAgICAgICAgZGlzcGxheV9jaGFubmVsX2dsX3NjYW5vdXQNCj4gKERpc3BsYXlDaGEN
Cj4gPiAgdm9pZCAgICAgICAgICAgICAgICAgICAgICAgZGlzcGxheV9jaGFubmVsX2dsX2RyYXcg
ICAgICAgICAgICAgICAgICAgKERpc3BsYXlDaGFubmVsDQo+ICpkaXNwbGF5LA0KPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgU3BpY2VNc2dEaXNwbGF5R2xEcmF3ICpkcmF3KTsNCj4gPiAgdm9pZCAgICAgICAg
ICAgICAgICAgICAgICAgZGlzcGxheV9jaGFubmVsX2dsX2RyYXdfZG9uZSAgICAgICAgICAgICAg
KERpc3BsYXlDaGFubmVsDQo+ICpkaXNwbGF5KTsNCj4gPiArdm9pZCAgICAgICAgICAgICAgICAg
ICAgICAgZGlzcGxheV9jaGFubmVsX2VuY29kZV9kb25lICAgICAgICAgICAgICAgKERpc3BsYXlD
aGFubmVsDQo+ICpkaXNwbGF5LA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVkRHJhd2FibGUgKmRyYXdh
YmxlKTsNCj4gPg0KPiA+ICB2b2lkIGRpc3BsYXlfY2hhbm5lbF9wcm9jZXNzX2RyYXcoRGlzcGxh
eUNoYW5uZWwgKmRpc3BsYXksDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICByZWQ6OnNoYXJlZF9wdHI8UmVkRHJhd2FibGU+ICYmcmVkX2RyYXdhYmxlLA0KPiA+IGRpZmYg
LS1naXQgYS9zZXJ2ZXIvcmVkLXF4bC5jcHAgYi9zZXJ2ZXIvcmVkLXF4bC5jcHANCj4gPiBpbmRl
eCA0OGMyOTNhZS4uNDJhNDAyOWIgMTAwNjQ0DQo+ID4gLS0tIGEvc2VydmVyL3JlZC1xeGwuY3Bw
DQo+ID4gKysrIGIvc2VydmVyL3JlZC1xeGwuY3BwDQo+ID4gQEAgLTQ5Myw2ICs0OTMsMzIgQEAg
dm9pZCByZWRfcXhsX2dsX2RyYXdfYXN5bmNfY29tcGxldGUoUVhMSW5zdGFuY2UNCj4gKnF4bCkN
Cj4gPiAgICAgIHJlZF9xeGxfYXN5bmNfY29tcGxldGUocXhsLCBjb29raWUpOw0KPiA+ICB9DQo+
ID4NCj4gPiArU1BJQ0VfR05VQ19WSVNJQkxFDQo+ID4gK3ZvaWQgc3BpY2VfcXhsX2RtYWJ1Zl9l
bmNvZGVfYXN5bmMoUVhMSW5zdGFuY2UgKnF4bCwNCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBpbnQgZmQsIHVpbnQ2NF90IGNvb2tpZSkNCj4gPiArew0KPiA+ICsgICAg
UVhMU3RhdGUgKnF4bF9zdGF0ZTsNCj4gPiArDQo+ID4gKyAgICBzcGljZV9yZXR1cm5faWZfZmFp
bChxeGwgIT0gbnVsbHB0cik7DQo+ID4gKyAgICBxeGxfc3RhdGUgPSBxeGwtPnN0Ow0KPiA+ICsN
Cj4gPiArICAgIHF4bF9zdGF0ZS0+c2Nhbm91dC5kcm1fZG1hX2J1Zl9mZCA9IGZkOw0KPiA+ICsg
ICAgcXhsX3N0YXRlLT5nbF9kcmF3X2Nvb2tpZSA9IGNvb2tpZTsNCj4gDQo+IFRoaXMgYmVoYXZp
b3VyIGlzIHByb25lIHRvIGxlYWsgcmVzb3VyY2VzLg0KW0thc2lyZWRkeSwgVml2ZWtdIEkgZ3Vl
c3MgSSBjb3VsZCBkbyB3aGF0IHNwaWNlX3F4bF9nbF9zY2Fub3V0IGRvZXM6DQp0aGF0IGlzLCBw
cmV2ZW50IHRoZSAoR3N0cmVhbWVyKSBlbmNvZGVyIGZyb20gY2xvc2luZyB0aGUgZmQgYW5kIGlu
c3RlYWQNCmRvIHRoZSBmb2xsb3dpbmcgaGVyZToNCiAgICBwdGhyZWFkX211dGV4X2xvY2soJnF4
bF9zdGF0ZS0+c2Nhbm91dF9tdXRleCk7DQoNCiAgICBpZiAocXhsX3N0YXRlLT5zY2Fub3V0LmRy
bV9kbWFfYnVmX2ZkID49IDApIHsNCiAgICAgICAgY2xvc2UocXhsX3N0YXRlLT5zY2Fub3V0LmRy
bV9kbWFfYnVmX2ZkKTsNCiAgICB9DQoNCkRvIHlvdSB0aGluayB0aGlzIHdvdWxkIGhlbHA/DQoN
ClRoYW5rcywNClZpdmVrDQoNCj4gDQo+ID4gK30NCj4gPiArDQo+ID4gK3ZvaWQgcmVkX3F4bF9k
bWFidWZfZW5jb2RlX2FzeW5jX2NvbXBsZXRlKFFYTEluc3RhbmNlICpxeGwpDQo+ID4gK3sNCj4g
PiArICAgIFFYTFN0YXRlICpxeGxfc3RhdGUgPSBxeGwtPnN0Ow0KPiA+ICsgICAgdWludDY0X3Qg
Y29va2llID0gcXhsLT5zdC0+Z2xfZHJhd19jb29raWU7DQo+ID4gKw0KPiA+ICsgICAgaWYgKGNv
b2tpZSA9PSBHTF9EUkFXX0NPT0tJRV9JTlZBTElEKSB7DQo+ID4gKyAgICAgICAgcmV0dXJuOw0K
PiA+ICsgICAgfQ0KPiA+ICsgICAgcXhsX3N0YXRlLT5zY2Fub3V0LmRybV9kbWFfYnVmX2ZkID0g
MDsNCj4gPiArICAgIHF4bC0+c3QtPmdsX2RyYXdfY29va2llID0gR0xfRFJBV19DT09LSUVfSU5W
QUxJRDsNCj4gPiArICAgIHJlZF9xeGxfYXN5bmNfY29tcGxldGUocXhsLCBjb29raWUpOw0KPiA+
ICt9DQo+ID4gKw0KPiA+ICBTUElDRV9HTlVDX1ZJU0lCTEUNCj4gPiAgdm9pZCBzcGljZV9xeGxf
c2V0X2RldmljZV9pbmZvKFFYTEluc3RhbmNlICppbnN0YW5jZSwNCj4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGNvbnN0IGNoYXIgKmRldmljZV9hZGRyZXNzLA0KPiA+IGRpZmYg
LS1naXQgYS9zZXJ2ZXIvcmVkLXF4bC5oIGIvc2VydmVyL3JlZC1xeGwuaA0KPiA+IGluZGV4IDIw
ODRhY2IxLi5lOGU3YzM3MyAxMDA2NDQNCj4gPiAtLS0gYS9zZXJ2ZXIvcmVkLXF4bC5oDQo+ID4g
KysrIGIvc2VydmVyL3JlZC1xeGwuaA0KPiA+IEBAIC00MCw2ICs0MCw3IEBAIGJvb2wgcmVkX3F4
bF9nZXRfYWxsb3dfY2xpZW50X21vdXNlKFFYTEluc3RhbmNlICpxeGwsDQo+IGludCAqeF9yZXMs
IGludCAqeV9yZXMsIGluDQo+ID4gIFNwaWNlTXNnRGlzcGxheUdsU2Nhbm91dFVuaXggKnJlZF9x
eGxfZ2V0X2dsX3NjYW5vdXQoUVhMSW5zdGFuY2UgKnF4bCk7DQo+ID4gIHZvaWQgcmVkX3F4bF9w
dXRfZ2xfc2Nhbm91dChRWExJbnN0YW5jZSAqcXhsLA0KPiBTcGljZU1zZ0Rpc3BsYXlHbFNjYW5v
dXRVbml4ICpzY2Fub3V0KTsNCj4gPiAgdm9pZCByZWRfcXhsX2dsX2RyYXdfYXN5bmNfY29tcGxl
dGUoUVhMSW5zdGFuY2UgKnF4bCk7DQo+ID4gK3ZvaWQgcmVkX3F4bF9kbWFidWZfZW5jb2RlX2Fz
eW5jX2NvbXBsZXRlKFFYTEluc3RhbmNlICpxeGwpOw0KPiA+ICBpbnQgcmVkX3F4bF9jaGVja19x
eGxfdmVyc2lvbihRWExJbnN0YW5jZSAqcXhsLCBpbnQgbWFqb3IsIGludCBtaW5vcik7DQo+ID4g
IFNwaWNlU2VydmVyKiByZWRfcXhsX2dldF9zZXJ2ZXIoUVhMU3RhdGUgKnF4bCk7DQo+ID4gIHVp
bnQzMl90IHJlZF9xeGxfbWFyc2hhbGxfZGV2aWNlX2Rpc3BsYXlfaW5mbyhjb25zdCBRWExJbnN0
YW5jZSAqcXhsLA0KPiBTcGljZU1hcnNoYWxsZXIgKm0pOw0KPiA+IGRpZmYgLS1naXQgYS9zZXJ2
ZXIvc3BpY2UtcXhsLmggYi9zZXJ2ZXIvc3BpY2UtcXhsLmgNCj4gPiBpbmRleCBiZjE3NDc2Yi4u
Y2E5ODE2ZWMgMTAwNjQ0DQo+ID4gLS0tIGEvc2VydmVyL3NwaWNlLXF4bC5oDQo+ID4gKysrIGIv
c2VydmVyL3NwaWNlLXF4bC5oDQo+ID4gQEAgLTkyLDYgKzkyLDggQEAgdm9pZCBzcGljZV9xeGxf
Z2xfZHJhd19hc3luYyhRWExJbnN0YW5jZSAqcXhsLA0KPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHVpbnQzMl90IHgsIHVpbnQzMl90IHksDQo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdWludDMyX3QgdywgdWludDMyX3QgaCwNCj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB1aW50NjRfdCBjb29raWUpOw0KPiA+ICt2b2lkIHNwaWNlX3F4bF9kbWFi
dWZfZW5jb2RlX2FzeW5jKFFYTEluc3RhbmNlICpxeGwsDQo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgaW50IGZkLCB1aW50NjRfdCBjb29raWUpOw0KPiA+DQo+ID4gIC8q
IHNpbmNlIHNwaWNlIDAuMTQuMiAqLw0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9zcGlj
ZS1zZXJ2ZXIuc3ltcyBiL3NlcnZlci9zcGljZS1zZXJ2ZXIuc3ltcw0KPiA+IGluZGV4IDhkYTQ2
YzIwLi45NzQ4Y2MyNCAxMDA2NDQNCj4gPiAtLS0gYS9zZXJ2ZXIvc3BpY2Utc2VydmVyLnN5bXMN
Cj4gPiArKysgYi9zZXJ2ZXIvc3BpY2Utc2VydmVyLnN5bXMNCj4gPiBAQCAtMTgyLDQgKzE4Miw1
IEBAIFNQSUNFX1NFUlZFUl8wLjE0LjMgew0KPiA+ICBnbG9iYWw6DQo+ID4gICAgICBzcGljZV9z
ZXJ2ZXJfZ2V0X3ZpZGVvX2NvZGVjczsNCj4gPiAgICAgIHNwaWNlX3NlcnZlcl9mcmVlX3ZpZGVv
X2NvZGVjczsNCj4gPiArICAgIHNwaWNlX3F4bF9kbWFidWZfZW5jb2RlX2FzeW5jOw0KPiA+ICB9
IFNQSUNFX1NFUlZFUl8wLjE0LjI7DQo+IA0KPiBGcmVkaWFubw0K
