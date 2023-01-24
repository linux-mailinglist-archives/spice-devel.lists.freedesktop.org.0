Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C14679136
	for <lists+spice-devel@lfdr.de>; Tue, 24 Jan 2023 07:44:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 974D110E619;
	Tue, 24 Jan 2023 06:44:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C21F310E60B
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Jan 2023 06:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674542651; x=1706078651;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZXMkZvM9kS5eG3iKtr3FKJAK39MaPMfzpgp4mOVrpbw=;
 b=UpGJFbU3JqcDsV0djT6/wnyoyhqgYQVULa6qkh2wao2tijMVjA9CNnKS
 Z41Q6jpcFelJK+XZjQhLwe0AG5MpuP4vZcOGVpPNM4gfuzchOOIbGssmT
 8MUloOY30xw+B+M4pIzO1LaqVs9HMIwoX338KJXtfrrlpbm6t3945RuzD
 vV4vewEOCm+VS4k2KFSpvJ3+p/etA/suqQ3C+xjg8fpKVPPRhHVGY0nSF
 9DHgNTNAmAKIEh6q7rLM5qFkY9MxeO5yE3oIdQd7UArFsHj2J9+m02b2l
 dZua5dPNXR76d2yNt1PmIDhMqRxg2rQCLM2sthWglrJ/iqy/xnga3ZCpd g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="323930292"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="323930292"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 22:44:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="990757343"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="990757343"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 23 Jan 2023 22:44:11 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 22:44:10 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 22:44:10 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 22:44:10 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 22:44:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SGPCIW1huWnkSG6C7DSKXutq4+dvaCx5kPzo2xchHXjmVOu2S+RzPpKiH9WfcrLjn884epnkHLBiwso78wRabcWU2Ca0duLwtYbcs271BNswnrumOEnc8UXTgaaaEPDJPdy2ZKJoZPR9SyH5hfs7+ZmfKRkhO7Ruw9KaWXA5mdxznvmnasVBrNDv/7t9guKyVhUehWOKV7/THIGsDKIvgygs8i6/NPVuwuG5lCWjbX1b+ImF1uvDHe6jUfbrEvjzUnkqJIY21TMstGvqHbWvBm/nQy8lHTU246Kpt8N7ojIKLShAmCUju6RSKIuO1oa5NQs3acljcQiRjVv25nSxNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZXMkZvM9kS5eG3iKtr3FKJAK39MaPMfzpgp4mOVrpbw=;
 b=m5d3OCj5vNguOKXpjY395vEYqFQM4V5gUq9nZZbkWu8vZTW3rW1GEuCgsEi8qkm9zcb+dg8Q7+4ZQ4WRyLIVpeZ3RjjQHBPBMHcRNjm4B8AkmaPVVOlucJoJYPzCslRFQlHw9KY/7+JjLhBjZcEoJNpHOu/AVEWd/7iW0qwQ0oknEsZzWShJf3Tui8Hl6cs0h3X4cGP4we5MPMCL6NzAd+vmKs6xM425Iyjv+7O5FUiatNGdXtIdmrOgTm+8pWA/ArFv4DHkYVPtVhmRHxVArVln/lw7QOdnrv83wRroDGB4r7PeYBZ4oirrq5ErTRkq0FEObQqNVEzBVZ07bkXC8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:443::14)
 by CY8PR11MB7779.namprd11.prod.outlook.com (2603:10b6:930:77::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 06:44:08 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::6385:771:1bc4:2f6]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::6385:771:1bc4:2f6%4]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 06:44:08 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>
Thread-Topic: [Spice-devel] [RFC v2 5/5] red-qxl: Add a new parameter to
 gl_scanout and gl_draw_async
Thread-Index: AQHZLwlF33X9i7DCe0Sz/0oevnecha6r9RqAgABt3bA=
Date: Tue, 24 Jan 2023 06:44:08 +0000
Message-ID: <IA0PR11MB718588FB1FE8D58C02D9855CF8C99@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20230123084123.1038341-1-vivek.kasireddy@intel.com>
 <20230123084123.1038341-6-vivek.kasireddy@intel.com>
 <CAHt6W4cp_pmt7FknKLQOierqZYT9uNjQWw91O6tvMnYFvs9vxw@mail.gmail.com>
In-Reply-To: <CAHt6W4cp_pmt7FknKLQOierqZYT9uNjQWw91O6tvMnYFvs9vxw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|CY8PR11MB7779:EE_
x-ms-office365-filtering-correlation-id: dafbc448-9ae4-4173-6863-08dafdd664f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8sQEyWKO8t+M+XvoUYd6jlFKYG4V0vMMZzRn74JA8HWfJmifI5/HYPeaI0G9oJ8zlK03CdZtc2lKt9MNGQg9R6/5NbfR4fMArdGJ5SP0MFJMNkqa330JHNjpJ1MQNdpY2ruQ4/h2KLHUcqGGbb+or0BjxKt34XdtfP4vJzYVFLsYW3fB9qIIXdiQYu/ycqm8OBrladqQ1TH2sXCQe91veq62Wm5k2It4PWdVbArJfIs5J1naEn46801yeAfo2YBBSSuMN/Uyb/fiAsgI0EZeh9B3zum6D3CKkwvJJxA0Axsofk03lZ5tk0tQ3RNTNmnSE/w17orlTibmMV/PArIWeK/gkxDnnAh7lB3RaJJurwCuQu9tFPRb+tw1TvH+3lAw7062ftUumwldxYRP/Mej/P3Q6lHYPhE/4rNtVXwDjUYrmgCYx5i0FCe4e5uMHBuWWpoheMSsvw/KBZZdZVsg6OK/uL6Zf7ZrYPZf5lpvP1FX/p7nfXeSOqj4vNLk25NkI+bBTvmCnECw2pIvI+49TOOCtrLXj2wFo8ERQ5mjsQQUfjf3MncK7xGgfmOiInVACaUKm9x8ry5TU9qN79f2LOFD5sBgZ3tSyPyaeVnpqyIDCm3npwmp9GB1dn1vIEjrFkGOcVODnXq9CGU5gbRyDBS602/SXP8ouiVmI9rVlkER0SaRWQs5RF0QriAFz66G
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(366004)(136003)(396003)(39860400002)(451199015)(66899015)(38070700005)(2906002)(5660300002)(38100700002)(82960400001)(52536014)(8936002)(4326008)(41300700001)(122000001)(83380400001)(86362001)(33656002)(66446008)(71200400001)(478600001)(7696005)(66476007)(6916009)(6506007)(26005)(186003)(9686003)(316002)(55016003)(8676002)(76116006)(66946007)(54906003)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aUtYdXhsUW5vUmR0RnFvaUYvUEdoOVB2YVNzbTFYUTVzeit4Q0g1Yzdmbk0r?=
 =?utf-8?B?RmhMenB0V1JUR1poN2kvN2pmaVRBL2REZ25kSDd3VEdwUk9HU1BUdk5ndUxl?=
 =?utf-8?B?Yy9aQmEzMmNEUE5DdzNUTDNrM1M1NVdTdEZ0TkE5UUtTWnRBbVVVTm4xTkh4?=
 =?utf-8?B?WjY5L2VxYW1sTW1IUWVqbDBuYzhoU3BKSDM5QzJCOFViZ0tMdlhVeXdXcTZq?=
 =?utf-8?B?MjNnTUxub0RQVVBCbHNka2xteFpKTncyUlRvVCtlVy9CMVdCVHNIZ0dLdGs0?=
 =?utf-8?B?TEpBR2tEZlZieG1HVmdlUmdLbWJqeUd4eXJHVXNlTEJ3WWwrd0phMHZtYmJ3?=
 =?utf-8?B?Z1ZLTHBIZzdoRE1GVjZvZE9xVnUxV2ZUZmxmMkg0NGFFNFY1RUI1ME5teVBp?=
 =?utf-8?B?MVM1cDkrQ1VnMW9OYjIxNjIwUm5oZDI3YnBiNjY2Um9PaW5aWlNZU3JWR25T?=
 =?utf-8?B?U0ZReHpCWUxZM09CbUlVc1BmcU53TGVlb09OcDlNM1Zha1ZIWHhMNnRMeG00?=
 =?utf-8?B?MWNIWG8wUzNKV0ZNTTVsanVML1Z0OG8zczVmcGdIbDlvQnp2QzRHeUJGeVEx?=
 =?utf-8?B?TXQ5OXNCOG1RWFJ4OGlYcjdrOElGWmJ6bjJGa0lrcFR6RVpkSWlDaGFwSlVC?=
 =?utf-8?B?ME1QV1p1ZitaSHY3dXdEd3VKbTlBeDN3Y1JlMWRmdW9QRitpQzhabEhBdENo?=
 =?utf-8?B?YXZtRVJzWjhtek1zeSsxdFAvN0g5WU5ZTTcrQUFJY1gwemc0STl5WURzZk5R?=
 =?utf-8?B?Z0xwaHFQSDczM1RTRXhMenFGRmtMdTNOclh5Nm1SV2NsNFY3T2Fqc3ZlTk9U?=
 =?utf-8?B?UUk3TFpEa0JBZjJLbXFLdlJZUmlIamxKZnJLRjlSVDlTbzhoamRYQzA5dG1H?=
 =?utf-8?B?bkZPdmtEOTU4MnBlcHV4U0YvSjBKTngxY3pFL2E3OCtySXRSMEk1Z2Nibnh3?=
 =?utf-8?B?TU93Y0dqbVJwZGxWY2ptTFY2NzZGTXlUdmtaa3k1UEt1aWcwdEdiWlIrMFFi?=
 =?utf-8?B?QXNNSytzWHdmNm8rZHl4TzhKUEh2cVZ4SHhRcUw2ZGxBQkJPdmhOZkxUU3Vm?=
 =?utf-8?B?YnBRMTczMitib2xSdm5DZHcvOUFxd0hpNTBJV2syeU1GWktCN0Zuc29MQlhj?=
 =?utf-8?B?MzRqU1ZZbUxMZU5iQlljdC95UWZvZ1REbjdyaDF1MUNUQW9Ca0pBSVdySmZ6?=
 =?utf-8?B?TkxPMEtYZkZMU0lzNWtTNWRvK3FIa2g0bFNBSXJsMWp0K2VkQmxVZ1U1K2Zt?=
 =?utf-8?B?U2x3ZVZWSGRCRUtuL2dzS2NUMHIycm83UlIvVzZVQ2d2SS8xczcvVzd4azk1?=
 =?utf-8?B?VHdybTEvWUN4Y1o3L21XNXlPek1ka0ZnVk52UVVRd3VjY2pvaEVFT3FqdFZn?=
 =?utf-8?B?VWx0RDRKV05UdVEzTFY1bnh3UkxpdEdwVnBoT1QyRExwdG82ZW0xZWVaVHc1?=
 =?utf-8?B?VWJ4cFdMYWNiYjB1OG1TeWx2U3JuRFJpK0VsZkVZbTlRM2lSYnBPVEFYYmdE?=
 =?utf-8?B?R0NhbVBDVG5PaDBUSDJxeXpMaHhmOUZzVy9VeW9LMDVYNEgwZzNpT1VabXVt?=
 =?utf-8?B?alFOR2lDUXlXMU9GT3dnTjVuZUY2MjdVQjFWVy96MTl0L1d2OE52YVlKMXk1?=
 =?utf-8?B?d0ZiYmlsdGRSMnhUNjhJZElsMUlPcUVUbGR2eEpjTDhseG5KUXdlV3pLM0tK?=
 =?utf-8?B?ZU9SSnBINDN2aEpvdndDakI0M3d3L0labS9uRHJrMUF4VVYxMkxDdGFOM2Yz?=
 =?utf-8?B?ckYwSE9QN0dwdit4TnZOSms2cnpUU09ESWxpcnE5Q3VmNTJQQnJNUXdZdEI4?=
 =?utf-8?B?NU4yNkJySnBMalFxT2dKc1RUU1BsR2Jncmo3NmZEYUtuYzlqQmEvMnN1Y1o2?=
 =?utf-8?B?enQ1YU0xU2xpN2QyOWQ0c3V3Vlo0MUtIdHYxUGNscjUzUlJoR1drcDlaRTJ4?=
 =?utf-8?B?cG1qbktKTGZkaGVPbmVIaGg2UWFWdFNSeTUxazl5Y3ZMaHozVjRaYTBjaFRk?=
 =?utf-8?B?d0EwNUpCVWVGVTFJN2lSRjhlbjZMMDd3eFQyNyt0bERXeHdBRHErN3lQSVdL?=
 =?utf-8?B?TVd0L3M2b093VHUyTnRpSmZubmtEaElObHhWNGQrL0VRU3Iwa1kzSXBzelR5?=
 =?utf-8?B?N1hlOHB3NmVEUG5VTUg2bFdPL0lvUFZjRFYraEkxYVEvS2IyV2xqc2FYaEJK?=
 =?utf-8?B?V2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dafbc448-9ae4-4173-6863-08dafdd664f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2023 06:44:08.5085 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VufyfZt3Gpedczhia5u+iuSYOFaYCig/lJ5jbHBmbMovplWKc6pncZTZpbiJxHaOFXFqvuIvxh0BLAFfVvaRwi5LfJzY8UFz2ynU88MzKJM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7779
X-OriginatorOrg: intel.com
Subject: Re: [Spice-devel] [RFC v2 5/5] red-qxl: Add a new parameter to
 gl_scanout and gl_draw_async
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
Y3JpdHRvOg0KPiA+DQo+ID4gVGhpcyBuZXcgcGFyYW1ldGVyIChuYW1lZCBsb2NhbF9kaXNwbGF5
KSBjYW4gYmUgdXNlZCBieSBhcHBsaWNhdGlvbnMNCj4gPiB0byBpbmRpY2F0ZSB3aGV0aGVyIHRo
ZXkgYXJlIGRlYWxpbmcgd2l0aCBhIGxvY2FsIG9yIHJlbW90ZSBjbGllbnQuDQo+ID4gVGhpcyBj
YW4gYmUgdXNlZnVsIHRvIGVuc3VyZSB0aGF0IGdsX2RyYXcgb3Igb3RoZXIgYXNzb2NpYXRlZA0K
PiA+IG1lc3NhZ2VzIGFyZSBvbmx5IHNlbnQgdG8gbG9jYWwgY2xpZW50cy4NCj4gPg0KPiANCj4g
SXQncyBzcGljZSBzZXJ2ZXIgdGhhdCBrbm93cyBpZiB0aGUgY2xpZW50IGFyZSBsb2NhbCBvciBy
ZW1vdGUsDQo+IHRoZXJlJ3Mgbm8gbmVlZCB0byBoYXZlIGEgY29uZmlndXJhdGlvbiBpbiBRZW11
Lg0KW0thc2lyZWRkeSwgVml2ZWtdIE9rLCBJIGNhbiBnZXQgcmlkIG9mIHRoaXMgcGFyYW1ldGVy
LiBIb3dldmVyLCBmcm9tIHRoZQ0KU3BpY2Ugc2VydmVyIHNpZGUsIGRvIHlvdSB0aGluayBjaGVj
a2luZyBmb3IgcmVkcy0+Y29uZmlnLT5zcGljZV9wb3J0ID4gMA0Kd291bGQgYmUgYSByZWFzb25h
YmxlIHdheSB0byBkZXRlcm1pbmUgYSBsb2NhbCB2cyByZW1vdGUgY2xpZW50Pw0KDQo+IA0KPiA+
IENjOiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4NCj4gPiBDYzogTWFyYy1BbmRy
w6kgTHVyZWF1IDxtYXJjYW5kcmUubHVyZWF1QHJlZGhhdC5jb20+DQo+ID4gQ2M6IERvbmd3b24g
S2ltIDxkb25nd29uLmtpbUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogVml2ZWsgS2Fz
aXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBzZXJ2ZXIv
cmVkLXF4bC5jcHAgfCAxNCArKysrKysrKysrLS0tLQ0KPiA+ICBzZXJ2ZXIvc3BpY2UtcXhsLmgg
fCAgNCArKy0tDQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNiBkZWxl
dGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkLXF4bC5jcHAgYi9zZXJ2
ZXIvcmVkLXF4bC5jcHANCj4gPiBpbmRleCA0OGMyOTNhZS4uMTQzODBhNjAgMTAwNjQ0DQo+ID4g
LS0tIGEvc2VydmVyL3JlZC1xeGwuY3BwDQo+ID4gKysrIGIvc2VydmVyL3JlZC1xeGwuY3BwDQo+
ID4gQEAgLTQyNiw3ICs0MjYsOCBAQCB2b2lkIHNwaWNlX3F4bF9nbF9zY2Fub3V0KFFYTEluc3Rh
bmNlICpxeGwsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IGZkLA0KPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90IHdpZHRoLCB1aW50MzJfdCBoZWlnaHQs
DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDMyX3Qgc3RyaWRlLCB1aW50MzJf
dCBmb3JtYXQsDQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IHlfMF90b3ApDQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IHlfMF90b3AsDQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgdWludDMyX3QgbG9jYWxfZGlzcGxheSkNCj4gPiAgew0KPiA+ICAg
ICAgUmVkV29ya2VyTWVzc2FnZUdsU2Nhbm91dCBwYXlsb2FkID0geyAvKiBlbXB0eSAqLyB9Ow0K
PiA+ICAgICAgc3BpY2VfcmV0dXJuX2lmX2ZhaWwocXhsICE9IG51bGxwdHIpOw0KPiA+IEBAIC00
NTIsNyArNDUzLDkgQEAgdm9pZCBzcGljZV9xeGxfZ2xfc2Nhbm91dChRWExJbnN0YW5jZSAqcXhs
LA0KPiA+ICAgICAgcHRocmVhZF9tdXRleF91bmxvY2soJnF4bF9zdGF0ZS0+c2Nhbm91dF9tdXRl
eCk7DQo+ID4NCj4gPiAgICAgIC8qIEZJWE1FOiBmaW5kIGEgd2F5IHRvIGNvYWxsZXNjZSBhbGwg
cGVuZGluZyBTQ0FOT1VUcyAqLw0KPiA+IC0gICAgcXhsX3N0YXRlLT5zZW5kX21lc3NhZ2UocGF5
bG9hZCk7DQo+ID4gKyAgICBpZiAobG9jYWxfZGlzcGxheSkgew0KPiA+ICsgICAgICAgIHF4bF9z
dGF0ZS0+c2VuZF9tZXNzYWdlKHBheWxvYWQpOw0KPiA+ICsgICAgfQ0KPiA+ICAgICAgcmVkc191
cGRhdGVfY2xpZW50X21vdXNlX2FsbG93ZWQocXhsX3N0YXRlLT5yZWRzKTsNCj4gPiAgfQ0KPiA+
DQo+ID4gQEAgLTQ2MCw3ICs0NjMsOCBAQCBTUElDRV9HTlVDX1ZJU0lCTEUNCj4gPiAgdm9pZCBz
cGljZV9xeGxfZ2xfZHJhd19hc3luYyhRWExJbnN0YW5jZSAqcXhsLA0KPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHVpbnQzMl90IHgsIHVpbnQzMl90IHksDQo+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgdWludDMyX3QgdywgdWludDMyX3QgaCwNCj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB1aW50NjRfdCBjb29raWUpDQo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgdWludDY0X3QgY29va2llLA0KPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHVpbnQzMl90IGxvY2FsX2Rpc3BsYXkpDQo+ID4gIHsNCj4gPiAgICAgIFFY
TFN0YXRlICpxeGxfc3RhdGU7DQo+ID4gICAgICBSZWRXb3JrZXJNZXNzYWdlR2xEcmF3IGRyYXcg
PSB7DQo+ID4gQEAgLTQ4Miw3ICs0ODYsOSBAQCB2b2lkIHNwaWNlX3F4bF9nbF9kcmF3X2FzeW5j
KFFYTEluc3RhbmNlICpxeGwsDQo+ID4gICAgICBzcGljZV9yZXR1cm5faWZfZmFpbChxeGxfc3Rh
dGUtPmdsX2RyYXdfY29va2llID09DQo+IEdMX0RSQVdfQ09PS0lFX0lOVkFMSUQpOw0KPiA+DQo+
ID4gICAgICBxeGxfc3RhdGUtPmdsX2RyYXdfY29va2llID0gY29va2llOw0KPiA+IC0gICAgcXhs
X3N0YXRlLT5zZW5kX21lc3NhZ2UoZHJhdyk7DQo+ID4gKyAgICBpZiAobG9jYWxfZGlzcGxheSkg
ew0KPiA+ICsgICAgICAgIHF4bF9zdGF0ZS0+c2VuZF9tZXNzYWdlKGRyYXcpOw0KPiA+ICsgICAg
fQ0KPiA+ICB9DQo+ID4NCj4gPiAgdm9pZCByZWRfcXhsX2dsX2RyYXdfYXN5bmNfY29tcGxldGUo
UVhMSW5zdGFuY2UgKnF4bCkNCj4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL3NwaWNlLXF4bC5oIGIv
c2VydmVyL3NwaWNlLXF4bC5oDQo+ID4gaW5kZXggYmYxNzQ3NmIuLjI3NDlmMWM5IDEwMDY0NA0K
PiA+IC0tLSBhL3NlcnZlci9zcGljZS1xeGwuaA0KPiA+ICsrKyBiL3NlcnZlci9zcGljZS1xeGwu
aA0KPiA+IEBAIC04NywxMSArODcsMTEgQEAgdm9pZCBzcGljZV9xeGxfZ2xfc2Nhbm91dChRWExJ
bnN0YW5jZSAqcXhsLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludCBmZCwNCj4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50MzJfdCB3aWR0aCwgdWludDMyX3QgaGVp
Z2h0LA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90IHN0cmlkZSwgdWlu
dDMyX3QgZm9ybWF0LA0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgIGludCB5XzBfdG9w
KTsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgeV8wX3RvcCwgdWludDMyX3Qg
bG9jYWxfZGlzcGxheSk7DQo+ID4gIHZvaWQgc3BpY2VfcXhsX2dsX2RyYXdfYXN5bmMoUVhMSW5z
dGFuY2UgKnF4bCwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50MzJfdCB4
LCB1aW50MzJfdCB5LA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90
IHcsIHVpbnQzMl90IGgsDQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDY0
X3QgY29va2llKTsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50NjRfdCBj
b29raWUsIHVpbnQzMl90IGxvY2FsX2Rpc3BsYXkpOw0KPiA+DQo+IA0KPiBZb3UgY2Fubm90IGFk
ZCBhIHBhcmFtZXRlciwgdGhpcyB3aWxsIGJyZWFrIGJvdGggQVBJIGFuZCBBQkkuDQpbS2FzaXJl
ZGR5LCBWaXZla10gT2ssIEkgZ3Vlc3MgSSdsbCBoYXZlIHRvIGZpZ3VyZSBvdXQgYW4gYWx0ZXJu
YXRpdmUgd2F5DQp0byBkZXRlY3QgbG9jYWwgdnMgcmVtb3RlIGNsaWVudHMuDQoNClRoYW5rcywN
ClZpdmVrDQoNCj4gDQo+ID4gIC8qIHNpbmNlIHNwaWNlIDAuMTQuMiAqLw0KPiA+DQo+IA0KPiBG
cmVkaWFubw0K
