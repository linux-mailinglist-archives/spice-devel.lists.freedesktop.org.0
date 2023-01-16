Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBBC66B99B
	for <lists+spice-devel@lfdr.de>; Mon, 16 Jan 2023 10:00:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E09FC10E2A3;
	Mon, 16 Jan 2023 09:00:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 202CE10E2A3
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Jan 2023 09:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673859606; x=1705395606;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9OtEjgHZBecCBhMxSvI9tlZRvZyo7QSjfociPVg4wNQ=;
 b=PhaqxOeU43bAsM5cu2eI3Qbs2Um4IgXoGq9rMqJ6FWPrz4jkJXQTJVJB
 lS/CTUW1yVopQQDdP+7LgwAb7bOF+mcSTjZ4oMogyUMpdEui7ekCsOWy7
 VfjOvDB/TxI5s5/t/0qXt/HHf3bTlwHUa7PUXP/vEGifqobHuZbmJRDMo
 ynvvNr9uXFBqSkkth2DnnM9O8R/YzjofbFG6LQOuU82gJU/acfPtos/Pu
 eYGM6FwjNFSyDvW/7gdjV9CFbtah6JLkwR4nGWVYSjwUUWsbV1qbv/N8Y
 mtyOB8VQbfQ2VsSIDcGpW+mQKCzAbWIj5BQN+kexFT1QL1MIvjT43CIi2 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="410664542"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="410664542"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 01:00:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="747643917"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="747643917"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Jan 2023 01:00:05 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 16 Jan 2023 01:00:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 16 Jan 2023 01:00:04 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 16 Jan 2023 01:00:04 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 16 Jan 2023 01:00:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YXrcC+M5EDAaA5xbGxn4yQFVcwgthjt3NXJRqgTCB6XKHwbz1XjgzJGNItF2+udIdasSGS0en/6DLJDbYeypCNVE+ckT5Uep2tLErLYP7KNovmIRu1FZPgjGdC3OMwd0hj6t8HxnRAEwrS6+WU1/C5h6F59ByqWhRv49rC1gggB3v57zW7eAie8HoTLNAchXyUt0OK4rSZRIG9lbTFksbFzl8xmmy16k1gfD9p8xcVupbXj+OABydWEoTwGQzAtP4Thn/DSCs6H5QS46QkARiENZAkfQjHVYsNsyl56YERuNephAeSJF4a0Ldp4LjScQAnL3Eb5l6/mXgs/Kn0SFQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9OtEjgHZBecCBhMxSvI9tlZRvZyo7QSjfociPVg4wNQ=;
 b=NOFNCSxtJ/e2jgS+le2psBQvhFW/f2YWM5HD4Q1ErQlaKlSrIqkQDiVHB+GKIGjggzqnnsM0o/4U63ui3oJxlK6PBwVrjAwJ9ZFDKwcForkAzROoCtDEd+qDD2jt6GHDT/kpzkCn7kPPZmQ9uagLUEyj0OidrRAjy/UN5SrTXxgPtzE9KcWuZKB7BDYE+bnii9JesVZehuJd0QESUVaQK4sTXH/7z+1P7tum/ZfVhF168lau/UK2mHIzUCzC9CZM8RiV2JTVeJM3PCCe2+GE3nhVt/gjTkPbQvm6eV0c5A80ofMoGStI3HZlg8pdsDRWgb1ODqsa4xu887CcSl1Xmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:443::14)
 by IA0PR11MB7188.namprd11.prod.outlook.com (2603:10b6:208:440::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.19; Mon, 16 Jan
 2023 09:00:01 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::6385:771:1bc4:2f6]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::6385:771:1bc4:2f6%4]) with mapi id 15.20.5986.019; Mon, 16 Jan 2023
 09:00:01 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>
Thread-Topic: [Spice-devel] [RFC v1 1/4] red-parse-qxl: Extract the dmabuf fd
 from the scanout
Thread-Index: AQHZJX96+15xa8gQvE+AmI8giMOwXa6ZGEcAgACflOCAAOw6gIAA4xxAgADpEwCAAHv/IA==
Date: Mon, 16 Jan 2023 09:00:00 +0000
Message-ID: <IA0PR11MB71856ED6679A4CA79469E871F8C19@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20230111052239.781285-1-vivek.kasireddy@intel.com>
 <20230111052239.781285-2-vivek.kasireddy@intel.com>
 <CAHt6W4cgJcW2+2+A==q6n25FK0T9LV_Q=H6Fh7SEXWogcxfvvg@mail.gmail.com>
 <IA0PR11MB7185E2A4761E1AE80C9ABAC4F8FD9@IA0PR11MB7185.namprd11.prod.outlook.com>
 <CAHt6W4e3V_PeemUYZbiSMBKG2yZX_aZz+8GfSMzSQeVOkzS34w@mail.gmail.com>
 <IA0PR11MB7185354C3DDA03A4AEFCE76EF8C29@IA0PR11MB7185.namprd11.prod.outlook.com>
 <CAHt6W4cuFfknFJecgnpXY2zPf4apiLAUj=kV=-VjTkCYPyXgWQ@mail.gmail.com>
In-Reply-To: <CAHt6W4cuFfknFJecgnpXY2zPf4apiLAUj=kV=-VjTkCYPyXgWQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|IA0PR11MB7188:EE_
x-ms-office365-filtering-correlation-id: a7fc4dee-f599-4339-7534-08daf7a00cf1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bS0ZomS5CImh+z9F4Cif3rDXt0FsPGisA5ipdvNP/FEqYR0yJvtNgtprY0On3kxm9r0M5828AiaTz6G4zqDPirZs6giwgBHGD3oLHKO+rxYCzjbSkx11fc/keMyA4g7aiikpewJl5tVwl2XS9My8DCK3GX0AtvKGEn4Qzs1jPo1mEE5BwH2IXNCL432XKzNzv3v09wkZ4LFSdXSmb89ojG4Pj+BW5mmIdSGrPy5tQU5Bhi7JAhWbm4WmQiQC7VJMQ0Ee5kkz9iwvQrSuyX6E9ec7VacXUa1K+NQ7tSOzCvOQQ1Qe89CUoEVAPlPVyPHZMiVJZbenKocXfday17D93+fMwYYVpidh/LYQLKT8KsE6IboeRT1WEHxQavQ1vQOAbgTf1pIkgcyHjR7r0NarUBZqA3pVSYppFxk82GR2rIyJrUCrofiFVXLfqLGDBL812h2dP0FiSTgm65HykhHRFDWdoiV3Xw/jyBfh/UBZBYmzqPuT9w+Z9E1tDjtb4gG+u2RUUpv6X+od40EQbtdP+jcg1dtxCfn6Jn6ZhwlhpJB/VpGp8nC+fTEoPXFcoLLX7uWYOoXKj/cSMbFmort7MJ72Cln6qkk1grIU0ljVENA/T3MRETiUtmnlfXK+9W0OeRTMkO9GIJiyHGCMa7iR0O34Z5P6SB06t5rCHWeFouV8nEGJf8DfmRXVwAYXewJX28A8s3Fw7oekcbB9CaWueiDEqFzpf4GeN5350u0EZ4E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(396003)(39860400002)(376002)(346002)(451199015)(8936002)(52536014)(8676002)(41300700001)(76116006)(66476007)(64756008)(38070700005)(4326008)(66946007)(66446008)(66556008)(6916009)(316002)(54906003)(2906002)(33656002)(5660300002)(26005)(9686003)(71200400001)(7696005)(82960400001)(478600001)(6506007)(86362001)(186003)(55016003)(122000001)(38100700002)(966005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UVZCWG9DUmthMTdIbjFFWEtEbW1qUDhFalEwcUdRUE0wMHZYSmM4Z0RlbjdJ?=
 =?utf-8?B?azJsb05sUkZRYURVK2VNVFU2eHhjcW5VTzd4T255aUttZFh1V0dxSnY2L2VQ?=
 =?utf-8?B?dlFqc2x3emlzR3pMV3Mvb21uaDFCaUpnNmVXaWgxd3JDTnhWNXZlOVlxK1o2?=
 =?utf-8?B?TkhiejF1c2U4SWpHYzdlSEFzV280UkVCcGpaUGwrUUUrVllSRHRnNjJMYmh2?=
 =?utf-8?B?eHJzWFI5MXpUb21zeWVUOXZBOElBL1h6QS9aS2dyRkZxa3BhbmdCQUM5bktx?=
 =?utf-8?B?VG9EcnJQUVg2M2twMzVGTHkxeGs0cDhMRGdmRjB2dFc0S1NpY2NUQkFVMjZ1?=
 =?utf-8?B?ajBuMjgwQkNJU0VSQVA3b08rcUQxckYwWUtXZE5hWlR2Vzh3NDRJa2wxT1dl?=
 =?utf-8?B?d1F3VEVNV2ptMGQzZVh5VmYrMkxSUWEzQ204R1VDTEZFak9HUDNmNUx3ejIw?=
 =?utf-8?B?Nzd5eDgwWUREOFFTZ1ZRcWE3L2RpVWZlSzYrckhxTlFRTFJjZ1VnK21QMWtp?=
 =?utf-8?B?UGU3S1dhbE9FeDVBM2hMWDFRRWxndjEwemdOZHgzYWJNSFQ4c1Z5RUFrL2w4?=
 =?utf-8?B?T0NuZVR5eWVVZDIxZWFQVTlDVWpHWVJxaFU3SGJOS1BVZGpuOHp5R3RVNjlB?=
 =?utf-8?B?YjJQT0xrVFYwRVd6NlNkMnVlWkh3L1g4S1JYaElkQmlmdlRqbTFFTG9wRldQ?=
 =?utf-8?B?bnJGU2wzOGxYanBtSTFyTHE0WDVmMnE0elBHQWxpWmE4WitzUWtNWFFFQmli?=
 =?utf-8?B?dHAvcThZeXNoMXQzT1VNaDVxU1hGbEJlWGVuYjN0dUxLWWNBV3hIeG9wZlNo?=
 =?utf-8?B?b0lpcmNmWmhoQlJ6amZnWC9tdFFFeDdOaFB4L2s3UWM3OXVUZ0FIa1FqSkJi?=
 =?utf-8?B?UzJZRHl2bm1BQzhjSStzbHA5Q0pqb01USGgrWlVwYkwxM2lIZ2J4ZXRKaVNQ?=
 =?utf-8?B?SlZkZEJwQmcvRFRZU2h5Uy8rS3RnenJkMURQZlhhVTNFSlRhZnNrMm5uWXJ4?=
 =?utf-8?B?NGI2WGxaTzJyOWc1QmdETkVzOFpTdGtIaTUrWHJ6UmQ0UnVpNWw2L3ppUklJ?=
 =?utf-8?B?NUxCV0FHQkNidnhtNm5Ed2Q5SXl1S25DSHgzTk5TcXhTeTBxTnhuUmdKY3Y2?=
 =?utf-8?B?U0VtYkF2ajNyTUhoWjVTQmU3UTNlU0d5eTUxVmEyL3dYUk5adytlOFAwbGNv?=
 =?utf-8?B?akNTVHQ4dnVlRk85MHBnUUhFUkphSmh6RUxsclRHdWYwMmxnRDEvTEFvdGpl?=
 =?utf-8?B?enVGM0d0c3BQVGZibk8yVDRIaXB1WlBSOUllY1czcjcxRWZHYVdpUU5YN25p?=
 =?utf-8?B?TmpackNmS203YW9NR1JzQUJjYXExU3dDT1RidnY0OWVweFdxVWRzVmNYV3hw?=
 =?utf-8?B?a3BKZ0V3THR3bVBDSGlxTG1iZkRUTEhyeWZRbnpSZTFLejRRVXE3eFVJWVpD?=
 =?utf-8?B?TXI3ekxRaVdSMHlSWTZZWFhyUWxIYjNPU1pZU1VCYXdYUndSLy9VMEtTYlh3?=
 =?utf-8?B?Nk1xMmVYV3RYdG5ZdE9ya09PeE5mSy9MaW5UWjNFVlRSRVc0Q0NuREMrN0Ix?=
 =?utf-8?B?bVkwdzI2TU96R1NES0h6NytIM29iZmZiOHhwa20xR0RzQXk3SC9hVTJZeXRK?=
 =?utf-8?B?dEczUnMzMHU4NUJrK1hoMzBqSWZHN0NQbG13WWxuM1ZNcTlvOExJTzg0NElG?=
 =?utf-8?B?b1dHM1I2NmFUdWNGSmlGV2hva2xqeHJsZ2sxdm4xQlF0ZWk3TlVoT2ViL3lz?=
 =?utf-8?B?YWxLdmlBaWtrc0I0cjF4c00zSHloSDR6SCtaektxWEd2UTJRMGVXM3Nabndp?=
 =?utf-8?B?bi9VeVF0M2JXQkY0aGJ2OFNpYTVXM25EL0RFdHhvdFRoSmU1T25WaWd5WGxq?=
 =?utf-8?B?S1M5cW5jd205TE5WeW5HUC9YOE10WVREaVpLYndCOWhoQjBvanBmRlFHZ2Zi?=
 =?utf-8?B?RkdUYmpBZVB2WllyQ0c3aGcyQ0NCL3FSNkQ1cy9WMXh0MDQyd1JCMVVFRmJm?=
 =?utf-8?B?VXNUU3ZEaWJEekJybnN1ZzgyYXpHalAvS240THF3YTFwOSs0Q2dUR1Y1cStW?=
 =?utf-8?B?bUdkbm8xS2laeVNheDh6MURvOVRod09maytyZWh0SmF1MmdiR0kxOUt6TFl2?=
 =?utf-8?B?RW1RN0YvUzVaR3dXd3N5N2IrNzExc0YzQnJha2RmSW9ZTGtKaTBLVmVIeXgv?=
 =?utf-8?B?WkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7fc4dee-f599-4339-7534-08daf7a00cf1
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2023 09:00:00.9856 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NufLqH2LHha6Ik9BqtExYFBRJgohoABXXYX8glsl+LxtT23+B1yQJb9W3e1RQeUUfqvY8CaxLOdXHHh8MchmAdHuEpK3ASiN23+WrvJmMG0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7188
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

SGkgRnJlZGlhbm8sDQoNCj4gDQo+IElsIGdpb3JubyB2ZW4gMTMgZ2VuIDIwMjMgYWxsZSBvcmUg
MDQ6MDggS2FzaXJlZGR5LCBWaXZlaw0KPiA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4gaGEg
c2NyaXR0bzoNCj4gPg0KPiA+IEhpIEZyZWRpYW5vLA0KPiA+DQo+ID4gPg0KPiA+ID4gSWwgZ2lv
cm5vIGdpbyAxMiBnZW4gMjAyMyBhbGxlIG9yZSAwNzowMyBLYXNpcmVkZHksIFZpdmVrDQo+ID4g
PiA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4gaGEgc2NyaXR0bzoNCj4gPiA+ID4NCj4gPiA+
ID4gSGkgRnJlZGlhbm8sDQo+ID4gPiA+DQo+ID4gPiA+IFRoYW5rIHlvdSBmb3IgdGFraW5nIGEg
bG9vayBhdCB0aGlzIHBhdGNoIHNlcmllcy4NCj4gPiA+ID4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+
IElsIGdpb3JubyBtZXIgMTEgZ2VuIDIwMjMgYWxsZSBvcmUgMDU6NDIgVml2ZWsgS2FzaXJlZGR5
DQo+ID4gPiA+ID4gPHZpdmVrLmthc2lyZWRkeUBpbnRlbC5jb20+IGhhIHNjcml0dG86DQo+ID4g
PiA+ID4gPg0KPiA+ID4gPiA+ID4gSWYgdGhlIHNjYW5vdXQgaGFzIGEgdmFsaWQgZG1hYnVmIGZk
LCB0aGVuIGl0IGlzIGV4dHJhY3RlZCBhbmQgYQ0KPiA+ID4gPiA+ID4gY29weSAob2YgdGhlIGZk
KSBpcyBzdG9yZWQgaW4gdGhlIGRyYXdhYmxlLg0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IENj
OiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4NCj4gPiA+ID4gPiA+IENjOiBNYXJj
LUFuZHLDqSBMdXJlYXUgPG1hcmNhbmRyZS5sdXJlYXVAcmVkaGF0LmNvbT4NCj4gPiA+ID4gPiA+
IENjOiBEb25nd29uIEtpbSA8ZG9uZ3dvbi5raW1AaW50ZWwuY29tPg0KPiA+ID4gPiA+ID4gU2ln
bmVkLW9mZi1ieTogVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPg0K
PiA+ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gPiAgc2VydmVyL3JlZC1wYXJzZS1xeGwuY3BwIHwg
OCArKysrKysrKw0KPiA+ID4gPiA+ID4gIHNlcnZlci9yZWQtcGFyc2UtcXhsLmggICB8IDEgKw0K
PiA+ID4gPiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspDQo+ID4gPiA+ID4g
Pg0KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9yZWQtcGFyc2UtcXhsLmNwcCBiL3Nl
cnZlci9yZWQtcGFyc2UtcXhsLmNwcA0KPiA+ID4gPiA+ID4gaW5kZXggNjhiOTc1OWQuLjhkOWI4
MmZiIDEwMDY0NA0KPiA+ID4gPiA+ID4gLS0tIGEvc2VydmVyL3JlZC1wYXJzZS1xeGwuY3BwDQo+
ID4gPiA+ID4gPiArKysgYi9zZXJ2ZXIvcmVkLXBhcnNlLXF4bC5jcHANCj4gPiA+ID4gPiA+IEBA
IC0xMDM4LDYgKzEwMzgsNyBAQCBzdGF0aWMgYm9vbA0KPiByZWRfZ2V0X25hdGl2ZV9kcmF3YWJs
ZShRWExJbnN0YW5jZQ0KPiA+ID4gPiA+ICpxeGxfaW5zdGFuY2UsIFJlZE1lbVNsb3RJbmZvICpz
DQo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVkRHJh
d2FibGUgKnJlZCwgUVhMUEhZU0lDQUwgYWRkciwNCj4gdWludDMyX3QNCj4gPiA+IGZsYWdzKQ0K
PiA+ID4gPiA+ID4gIHsNCj4gPiA+ID4gPiA+ICAgICAgUVhMRHJhd2FibGUgKnF4bDsNCj4gPiA+
ID4gPiA+ICsgICAgU3BpY2VNc2dEaXNwbGF5R2xTY2Fub3V0VW5peCAqc2Nhbm91dDsNCj4gPiA+
ID4gPiA+ICAgICAgaW50IGk7DQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gICAgICBxeGwgPSBz
dGF0aWNfY2FzdDxRWExEcmF3YWJsZSAqPihtZW1zbG90X2dldF92aXJ0KHNsb3RzLCBhZGRyLA0K
PiA+ID4gPiA+IHNpemVvZigqcXhsKSwgZ3JvdXBfaWQpKTsNCj4gPiA+ID4gPiA+IEBAIC0xMDU5
LDYgKzEwNjAsMTMgQEAgc3RhdGljIGJvb2wNCj4gPiA+IHJlZF9nZXRfbmF0aXZlX2RyYXdhYmxl
KFFYTEluc3RhbmNlDQo+ID4gPiA+ID4gKnF4bF9pbnN0YW5jZSwgUmVkTWVtU2xvdEluZm8gKnMN
Cj4gPiA+ID4gPiA+ICAgICAgICAgIHJlZF9nZXRfcmVjdF9wdHIoJnJlZC0+c3VyZmFjZXNfcmVj
dHNbaV0sICZxeGwtPnN1cmZhY2VzX3JlY3RzW2ldKTsNCj4gPiA+ID4gPiA+ICAgICAgfQ0KPiA+
ID4gPiA+ID4NCj4gPiA+ID4gPiA+ICsgICAgcmVkLT5kbWFidWZfZmQgPSAwOw0KPiA+ID4gPiA+
DQo+ID4gPiA+ID4gMCBpcyBhIHBlcmZlY3RseSB2YWxpZCBmaWxlIGRlc2NyaXB0b3IsIHVzdWFs
bHkgaW52YWxpZCBmaWxlDQo+ID4gPiA+ID4gZGVzY3JpcHRvcnMgYXJlIGluaXRpYWxpemVkIHdp
dGggLTEuDQo+ID4gPiA+IFtLYXNpcmVkZHksIFZpdmVrXSBPaywgSSdsbCBpbml0aWFsaXplIGl0
IHRvIC0xLg0KPiA+ID4gPg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiArICAgIHNjYW5vdXQgPSBy
ZWRfcXhsX2dldF9nbF9zY2Fub3V0KHF4bF9pbnN0YW5jZSk7DQo+ID4gPiA+ID4gPiArICAgIGlm
IChzY2Fub3V0ICE9IG51bGxwdHIpIHsNCj4gPiA+ID4gPiA+ICsgICAgICAgIHJlZC0+ZG1hYnVm
X2ZkID0gc2Nhbm91dC0+ZHJtX2RtYV9idWZfZmQ7DQo+ID4gPiA+ID4gPiArICAgIH0NCj4gPiA+
ID4gPiA+ICsgICAgcmVkX3F4bF9wdXRfZ2xfc2Nhbm91dChxeGxfaW5zdGFuY2UsIHNjYW5vdXQp
Ow0KPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gICAgICByZWQtPnR5cGUgPSBxeGwtPnR5cGU7
DQo+ID4gPiA+ID4gPiAgICAgIHN3aXRjaCAocmVkLT50eXBlKSB7DQo+ID4gPiA+ID4gPiAgICAg
IGNhc2UgUVhMX0RSQVdfQUxQSEFfQkxFTkQ6DQo+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvc2Vy
dmVyL3JlZC1wYXJzZS1xeGwuaCBiL3NlcnZlci9yZWQtcGFyc2UtcXhsLmgNCj4gPiA+ID4gPiA+
IGluZGV4IDhiZjBlMmUzLi5kZWU1MDc0MyAxMDA2NDQNCj4gPiA+ID4gPiA+IC0tLSBhL3NlcnZl
ci9yZWQtcGFyc2UtcXhsLmgNCj4gPiA+ID4gPiA+ICsrKyBiL3NlcnZlci9yZWQtcGFyc2UtcXhs
LmgNCj4gPiA+ID4gPiA+IEBAIC02Nyw2ICs2Nyw3IEBAIHN0cnVjdCBSZWREcmF3YWJsZSBmaW5h
bDogcHVibGljDQo+ID4gPiA+ID4gUmVkUVhMUmVzb3VyY2U8UmVkRHJhd2FibGU+IHsNCj4gPiA+
ID4gPiA+ICAgICAgICAgIFNwaWNlV2hpdGVuZXNzIHdoaXRlbmVzczsNCj4gPiA+ID4gPiA+ICAg
ICAgICAgIFNwaWNlQ29tcG9zaXRlIGNvbXBvc2l0ZTsNCj4gPiA+ID4gPiA+ICAgICAgfSB1Ow0K
PiA+ID4gPiA+ID4gKyAgICBpbnQzMl90IGRtYWJ1Zl9mZDsNCj4gPiA+ID4gPiA+ICB9Ow0KPiA+
ID4gPiA+ID4NCj4gPiA+ID4gPiA+ICBzdHJ1Y3QgUmVkVXBkYXRlQ21kIGZpbmFsOiBwdWJsaWMg
UmVkUVhMUmVzb3VyY2U8UmVkVXBkYXRlQ21kPg0KPiB7DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBU
aGlzIHBhdGNoIGxvb2tzIHByZXR0eSBlcnJvciBwcm9uZSwgaXQncyBlYXN5IHRvIGdlbmVyYXRl
IGxlYWtzIG9yDQo+ID4gPiA+ID4gdXNlIGFmdGVyIGZyZWUgKG9mIGZpbGUgZGVzY3JpcHRvciku
DQo+ID4gPiA+IFtLYXNpcmVkZHksIFZpdmVrXSBBdC1sZWFzdCB3aXRoIFFlbXUsIHdlIHVzdWFs
bHkgaGFuZCBvdmVyIGEgZHVwIG9mIHRoZQ0KPiA+ID4gb3JpZ2luYWwNCj4gPiA+ID4gZmQgdG8g
U3BpY2Ugc2VydmVyIHdpdGggdGhlIGFzc3VtcHRpb24gdGhhdCB0aGUgc2VydmVyIHdpbGwgY2xv
c2UgaXQgYWZ0ZXIgaXQgaXMNCj4gPiA+ID4gZG9uZSB1c2luZyBpdC4NCj4gPiA+ID4NCj4gPiA+
ID4gPiBBbHNvIGl0IGFkZHMgdGhlIGFzc3VtcHRpb24gdGhhdCB0aGUgZHJhd2luZyBpcyBhbHdh
eXMgYXNzb2NpYXRlZCB3aXRoDQo+ID4gPiA+ID4gdGhlIERNQSBzdXJmYWNlIHdoaWNoIGlzIHJh
Y3kuDQo+ID4gPiA+IFtLYXNpcmVkZHksIFZpdmVrXSBJIHNlZSB0aGF0IGFjY2VzcyB0byB0aGUg
c2Nhbm91dCBhbmQgZHJtX2RtYV9idWZfZmQgaXMNCj4gPiA+IHByb3RlY3RlZA0KPiA+ID4gPiB3
aXRoIGEgc2Nhbm91dF9tdXRleC4gQXJlIHlvdSBzdWdnZXN0aW5nIHRoYXQgdXNpbmcNCj4gcmVk
X3F4bF9nZXQvcHV0X2dsX3NjYW5vdXQNCj4gPiA+IGlzDQo+ID4gPiA+IG5vdCBnb2luZyB0byBi
ZSBzdWZmaWNpZW50IHRvIHByZXZlbnQgcmFjZXM/DQo+ID4gPiA+DQo+ID4gPg0KPiA+ID4gTm8s
IG5vdyB5b3UgY3JlYXRlZCAzIGNvcGllcyBhbmQgb25seSBvbmUgaXMgcHJvdGVjdGVkIGJ5IHRo
YXQgbXV0ZXguDQo+ID4gPiBUaGUgcmFjZSBpcyBpbiByZXNvdXJjZSBtYW5hZ2VtZW50Lg0KPiA+
IFtLYXNpcmVkZHksIFZpdmVrXSBNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgYXBwbGljYXRpb25z
IGFyZSBzdXBwb3NlZCB0byB3YWl0DQo+IHVudGlsDQo+ID4gdGhlIGVuY29kaW5nIGlzIGRvbmUg
YmVmb3JlIHN1Ym1pdHRpbmcgYW5vdGhlciBmcmFtZS9mZC4gSSBhbSBub3Qgc3VyZSBpZiBpdCBp
cw0KPiBuYWl2ZQ0KPiA+IHRvIGFzc3VtZSB0aGF0LiBBbnl3YXksIHdoYXQgZG8geW91IHN1Z2dl
c3QgbmVlZHMgdG8gaGFwcGVuIGlmIHRoZXkgc3VibWl0DQo+ID4gYW5vdGhlciBmZCB3aGlsZSB0
aGUgZW5jb2Rpbmcgb2YgdGhlIHByZXZpb3VzIGZkIGhhcyBub3QgYmVlbiBjb21wbGV0ZWQgeWV0
Pw0KPiA+DQo+IA0KPiBIaSwNCj4gICAgbWF5YmUgYSBzdGVwIGJhY2sgaXMgaGVscGZ1bCBoZXJl
Lg0KPiANCj4gV2hhdCBpcywgZnJvbSBhIGhpZ2ggbGV2ZWwgcGVyc3BlY3RpdmUgKHRoYXQgaXMs
IHBvc3NpYmx5IG5vIGNvZGUNCj4gbGV2ZWwpIHlvdXIgb2JqZWN0aXZlPw0KPiBXaGF0J3MgdGhl
IHNldHVwPyB2aXJ0aW8tdmdhPyBSZW1vdGU/IExvY2FsPw0KW0thc2lyZWRkeSwgVml2ZWtdIE15
IG9iamVjdGl2ZSAoYW5kIHNldHVwKSBpcyBkZXNjcmliZWQgaW4gdGhlIGFzc29jaWF0ZWQgUWVt
dQ0KcGF0Y2ggc2VyaWVzIGhlcmU6IA0KaHR0cHM6Ly9saXN0cy5ub25nbnUub3JnL2FyY2hpdmUv
aHRtbC9xZW11LWRldmVsLzIwMjMtMDEvbXNnMDIwOTQuaHRtbA0KDQpJbiBhIG51dHNoZWxsLCBJ
J2QgbGlrZSB0byBzZW5kIHRoZSBmZCBhc3NvY2lhdGVkIHdpdGggdGhlIEd1ZXN0IGRlc2t0b3Ag
RnJhbWVidWZmZXINCih0aGF0IFFlbXUgb2J0YWlucykgdG8gdGhlIEdzdHJlYW1lciBlbmNvZGVy
ICh0aGF0IGlzIHBhcnQgb2YgU3BpY2UpIHRvIGhhdmUgaXQNCnN0cmVhbWVkIHRvIGEgcmVtb3Rl
IGNsaWVudC4NCg0KPiANCj4gQmFjayBhIGJpdCBvbiBBUEkgbGV2ZWwgYW5kIHlvdXIgc3BlY2lm
aWMgcXVlc3Rpb24sIHRoZXJlIGFyZSAyDQo+IGZ1bmN0aW9ucywgc3BpY2VfcXhsX2dsX3NjYW5v
dXQNCj4gYW5kIHNwaWNlX3F4bF9nbF9kcmF3X2FzeW5jLiBBbiBhcHBsaWNhdGlvbiAobGlrZSBR
ZW11KSBzaG91bGQgc2V0IHRoZQ0KPiBjdXJyZW50IGFjdGl2ZSBzY2Fub3V0IChhcyBkbWFidWYp
DQo+IHNwaWNlX3F4bF9nbF9zY2Fub3V0LiBUaGUgZG1hYnVmIG93bmVyc2hpcCBpcyBwYXNzZWQg
dG8gU1BJQ0UgKHdoaWNoDQo+IHdpbGwgdGFrZSBjYXJlIG9mIGNsb3NpbmcNCj4gdGhlIGZpbGUg
ZGVzY3JpcHRvcikuIFRoZSBhcHBsaWNhdGlvbiB3aWxsIHJlcXVlc3QgdG8gdXNlIHRoZSBjdXJy
ZW50DQo+IHNjYW5vdXQgdXNpbmcgc3BpY2VfcXhsX2dsX2RyYXdfYXN5bmMuDQo+IEFwcGxpY2F0
aW9uIHNob3VsZCB3YWl0IHRvIHVwZGF0ZSB0aGUgY3VycmVudCBzY2Fub3V0IHRpbGwgU1BJQ0UN
Cj4gZmluaXNoZXMgImRyYXdpbmciICh0aGF0IGlzIHVzaW5nIHRoZSBzY2Fub3V0DQo+IGNvbnRl
bnQpLg0KPiBBcHBsaWNhdGlvbiBjYW4gcmVxdWVzdCBtdWx0aXBsZSBkcmF3aW5ncyB1c2luZyB0
aGUgc2FtZSBzY2Fub3V0ICh0aGF0DQo+IGlzIGEgc2luZ2xlIHNwaWNlX3F4bF9nbF9zY2Fub3V0
DQo+IGNhbiBiZSBmb2xsb3dlZCBieSBtdWx0aXBsZSBzcGljZV9xeGxfZ2xfZHJhd19hc3luYyBj
YWxscykuDQpbS2FzaXJlZGR5LCBWaXZla10gVGhhbmsgeW91IGZvciB0aGUgZXhwbGFuYXRpb247
IGhvd2V2ZXIsIElJVUMsIHdoYXQgeW91DQpkZXNjcmliZWQgc2VlbXMgcmVsZXZhbnQgZm9yIGEg
bG9jYWwgY2xpZW50LiBJIHN1c3BlY3QgbW9zdCBvZiB3aGF0IHlvdSBzYWlkDQp3b3VsZCBwcm9i
YWJseSBiZSBhcHBsaWNhYmxlIGZvciBhIHJlbW90ZSBjbGllbnQgYXMgd2VsbCBnaXZlbiBteSB1
c2UtY2FzZQ0KKGZkIHRvIGVuY29kZXIpLg0KDQo+IA0KPiA+IEFsc28sIG15IGdvYWwgaXMgdG8g
c29tZWhvdyBnZXQgdGhlIGZkIGZyb20gdGhlIGFwcGxpY2F0aW9uIChRZW11KSB0byB0aGUNCj4g
ZW5jb2Rlci4NCj4gDQo+IFNQSUNFIGFscmVhZHkgaGFzIHRoZSBmZCBzbyBJTUhPIHlvdSBqdXN0
IG5lZWQgdG8gZm9yd2FyZCB0byB0aGUgZW5jb2Rlci4NCltLYXNpcmVkZHksIFZpdmVrXSBUaGlz
LCBJIHRoaW5rIGlzIHRoZSBjcnV4IG9mIHRoZSBpc3N1ZS4gVGhhdCBpcywgaG93IHRvIGZvcndh
cmQgDQp0aGUgZmQgKGZyb20gdGhlIHNjYW5vdXQgb2JqZWN0IHdoaWNoIGlzIGEgc2luZ2xldG9u
KSB0byB0aGUgZW5jb2RlciBpbiB0aGUgbW9zdA0KZWZmaWNpZW50IGFuZCByYWNlLWZyZWUgd2F5
LiBJIGNob3NlIHRvIHVzZSB0aGUgZHJhd2FibGUgYXMgYSBtZWFucyB0byBhY2NvbXBsaXNoDQp0
aGlzIGJ1dCBJIHRoaW5rIHRoZXJlIG1pZ2h0IGJlIGEgYmV0dGVyIHdheS4NCg0KVGhhbmtzLA0K
Vml2ZWsNCg0K
