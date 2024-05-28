Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBC78D148D
	for <lists+spice-devel@lfdr.de>; Tue, 28 May 2024 08:38:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1161710E1E4;
	Tue, 28 May 2024 06:38:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GQYSRabQ";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 024C510E1E4
 for <spice-devel@lists.freedesktop.org>; Tue, 28 May 2024 06:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716878279; x=1748414279;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SfsmkYr1TUtiYRq/8JwGFkRJ+i9TO6XYkiK5jVuEi+w=;
 b=GQYSRabQFVNvm3KEOhwiA+f8mQotfE5v93u5mBkT4XtBoqOk6A7Zo/vd
 7PWtExAEm0GXOC4HUP1M6BbI+qx2cuIG9F3AeaCFunbjFYEm+xFN0MHrJ
 AGljUHCR3sG8o2ZXFQJhYv1nCPHyoZEva/8u+vVufelp+WTY8AS5XGbKc
 zWYrsGtCTTQzmn3y/i9saeiEVPSN+qbLurgTyT1ee84a5RZEumGF2HCc/
 d45pxno/395Zv+4s2ayYb03XV9oyKEAIJZPd5loX2fB69D7Z3P41z72dw
 t7XsUMC5ENmzic7yanp0CDIfNnyAEniaPrGPEP+gTOXWBxtaZSTZp2u/Z A==;
X-CSE-ConnectionGUID: KKD5h9LXT5Opqhf2eT06dg==
X-CSE-MsgGUID: A4YPFW6aSMO2FsAE0+6Abg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13325123"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="13325123"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 23:37:56 -0700
X-CSE-ConnectionGUID: VJz3cOJ4QXS2r9CVZ+3gYA==
X-CSE-MsgGUID: Vgxm31ejR+ODtrh/uSUQKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="34883744"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 23:37:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 23:37:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 23:37:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 23:37:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XprQeao7VV6gNddGOLS5Lp4SS/XVtlKhYKezQaDw74OaXDyUpNWewLGg9lZq4f15ytStoy+I3dC7nFvGCgwuatcmOLTCL6g00Myfj3d/MlwXhc46whKOnWy22Wr6wNtdKo3wGgss4s70i4Mauax6puzDLVCbhHRw0xMtvhw99Lybf0j4r4Yyf5xP823ph+fnYtpvZNGxsHyhz5ZdEPsZxM+SmGi/fs6g4w0jcy+VXk0U/NFBYjE8znsAMrkGxxGd+wnsV5NSVbdVqcM2yZGCylix297IqlCl5Prnhs0rRZ/KNBuGZUBvq5/jaI2w/eqTlnSHNAJEwP58xhCpmj0C7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SfsmkYr1TUtiYRq/8JwGFkRJ+i9TO6XYkiK5jVuEi+w=;
 b=Rr5ySCVbkcUZ7FBlZHxcgNSNttBWvOfsUYkqICXH/r9p6PU4XTRhao8sRRAu+QdsOsr/FWZldrLbqy3vXHS+sQzRjwux5Gvw1mF8lbPFTeeIT4pQlX8aVgURrof4fgS+4GjINtGxS8Ikkk8xE+ox468gM667ERy0J/sRtFFXv7k+XfbNQroNVNOEKV+mPxSSfRz4D3PNf5ENuGoOmgNN7WB/xAxfVgxYEdrhVXMKC1Ejyxlhj70n07fluU3KgBRhKwdBGuG0MyP+SSM99/Dw0GRvAx+9nFaj1RsOUEJ5pBxzz6zb62K6bB5/i7zJFjSKS9eGENaYdvFcUGuKiahTRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by SJ2PR11MB8324.namprd11.prod.outlook.com (2603:10b6:a03:538::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 06:37:52 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::dd3b:ce77:841a:722b]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::dd3b:ce77:841a:722b%6]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 06:37:51 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>
CC: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 Gerd Hoffmann <kraxel@redhat.com>, =?utf-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?=
 <marcandre.lureau@redhat.com>, "Kim, Dongwon" <dongwon.kim@intel.com>
Subject: RE: [PATCH v6 0/5] dcc: Create a stream for non-gl/remote clients
 that want to use dmabuf (v6)
Thread-Topic: [PATCH v6 0/5] dcc: Create a stream for non-gl/remote clients
 that want to use dmabuf (v6)
Thread-Index: AQHasBS6wuueyzgCr0+/sOy4kGMXKrGr0lNw
Date: Tue, 28 May 2024 06:37:51 +0000
Message-ID: <IA0PR11MB718560DE13EB722D5549D969F8F12@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20240304104643.1462676-1-vivek.kasireddy@intel.com>
 <CAHt6W4d9BZqctBRUVRJms-hrHC7bmqHifaLOgGqKnchhNM=r7g@mail.gmail.com>
In-Reply-To: <CAHt6W4d9BZqctBRUVRJms-hrHC7bmqHifaLOgGqKnchhNM=r7g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|SJ2PR11MB8324:EE_
x-ms-office365-filtering-correlation-id: 99baf1ee-4fb6-4b63-b71e-08dc7ee0b2e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?eHJWUU13TWw1L0x1ZHJjZGR6Tk9seGdWOGJQTkZUQTI5emFabG55YTBVbWky?=
 =?utf-8?B?OU90VFB1Sm43RndyUS9NdWwweld4Zmc5bGNJSmRWbWVFcFA3UW9uSmd2QkMy?=
 =?utf-8?B?VGpubG5xeGpnZDJBS2xTT0xBYUszWTl2YUJhdjZCSy9KSTF4T0s5NXp1TWZ0?=
 =?utf-8?B?aDNMSWh3K2hJVy85dkIxWnF4dnBrSnp3dENmZVRpa2NibEdwOWhZSDdHMmVu?=
 =?utf-8?B?TURmenYrMlFmQThHajI3UXFCdlV6OEdIYVFZbndOeTFoUzZlQm1VUzJ1Mjd2?=
 =?utf-8?B?STU4ZlRUWEFKVktFREc1azNUeXlGL1lxak1hV3MvY1FEcWdMallMT0FkUVBt?=
 =?utf-8?B?eGpGd3haTW9aUEhERFdnNHBSZDdkNFF2YXV2ek9oSFArYnMzeXZaRm1vK3Mz?=
 =?utf-8?B?NWo3U3grQWFvdk5GOHNhNEZXZ0IwbE5JMGwyTk1qU01BWUtRTGVoTXFVUTRw?=
 =?utf-8?B?ckk1VUh2ZS8rdTNsSU41cEJoQWlGY0gvY3dCK0ZUQ255T2NpTVg3UUt5cDd0?=
 =?utf-8?B?UDBBWUZBMzk1VW5YUlVUbC9nV0FwZWwyU1I4LzhwY2lHU3pzZ09PZ1MzaE0x?=
 =?utf-8?B?cXc5SHZLczl0VXF1WnpxQTZrT29nc09DVkRyQTBzSW1MSnYwSXp1TXFrKzB3?=
 =?utf-8?B?WDkzd2RpOU1ZRlFTNUJYRnkzWU1wT2pnZU5jQ09NL2dPSHREZUFxMC9qNkRh?=
 =?utf-8?B?MG9xNUJhRDNRUncrdG82MGhaekNyZ0xPUmVtclBJbUtIcGp0K3hzY0FINjRx?=
 =?utf-8?B?M1JCMHhvclFzWmJ6amV6aU5BeFA4bXlWU0FYaGNIL1hqaWZHaW1KQkRPOGlH?=
 =?utf-8?B?dFdVR2RvdzlobFRQNzd6YU9vU29rNkFzYlMrcDR6L1RRZWR6Y3FzZ0x0eXJR?=
 =?utf-8?B?VVM3N29sMVRxQ1p3dlUxTzRSREtVWVRRS25vWDFmR0JFazFVOGx1Sy9PYzNh?=
 =?utf-8?B?MURkemhxM3V2Qi9yQUhxbnpYOHJ2YXB5eGgxWDVyWFg3cXFaOFplQUwzQSsr?=
 =?utf-8?B?WkhYaFZhU3hRbXVVS1BLWVJFZFByejJzaytQTW96SitzOHQ0TVhQUzVjTFB2?=
 =?utf-8?B?ZVJkakZwZFRsS2JCeFducExLdVZsdXZVdDhJYXpJZlhMREZxS3JEWHlDU2ZE?=
 =?utf-8?B?R3RuWWhjUElBc3NQYmdIVXRSQmU4RElQTEYvR1NrUW1CV0FEbHFGcmxWRVdY?=
 =?utf-8?B?dkl2SitLc2JKdzRhL3UzTmhCTnpyTXdHQkhvY3gxOFZYOFdCcU02enJ1aVRy?=
 =?utf-8?B?eHdmU012Wm9COUtwVlV1Z3NnL0p0ZEdCQmtKMERIZlAyWlIxZWJ3Z0RNYXFh?=
 =?utf-8?B?Sk13NHFucVpaMW9WR21WckpCMGp4cFliSjIzbWpSWEx6aCt3VUVVTXNyVzQv?=
 =?utf-8?B?c0JiUCsvVkxjd3pzQWwzbm42aVFXMzM5cjUxc0hGVEV3a0dKajVTYXpnaGU0?=
 =?utf-8?B?RG9zVWRUcGJaRGh2aG1yZHNCNzhYSzJEcXJRdjZmOW85OFBhVW9OWi9IYW1I?=
 =?utf-8?B?dlpMeVdKRXlLUGdPSDRTRDd1U0daeGRrL0phZGh3MGFGWk9vdytOQ0dzM09o?=
 =?utf-8?B?UjAwTUFFV05tK3BrMVZhQ2VDSUpGb3ViU3crNjNJSkc3RlFDMmxPL09lOTFU?=
 =?utf-8?B?N1VieGVVN3RDa045NXRoNzlNR1pEWnhSUjkxMlhwYit3azFpelBDM1BYRzlE?=
 =?utf-8?B?OHRMNTdPdGRsVWxLRjRBMFJ6aTZST2FmY1BWaXo0WGI0UTlHcEdDRFZHaHVI?=
 =?utf-8?Q?IKNiWtggKJikN9idTM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MkJoMGVKbmxhQ2pwQ1paV0ZVcFQ1bHZmN05QOHVDVm51UVduUzd4K3dmL2c5?=
 =?utf-8?B?eHJ0NHRkcmJySVZxME1Bc2lvLy9ydnhCQUNmbW96azJZV2dtekR0TzJORStW?=
 =?utf-8?B?aklZQW52NDUvRWJoMXV6dkNhQy9xWFFNK0ZreldoQ2dSTGJEMkQ0dysvdEJh?=
 =?utf-8?B?TGFhRlFwV3dlU1F5VDAzaitjNmlSSEk5dUlJQXk5Mm8yWWpQQW8wd2JrUDZr?=
 =?utf-8?B?MUhjdmFjbU1SZlE5Sjd2MUlVQmpOcHU4RW9OSitZSjU1MkI2YklDVW1KekZt?=
 =?utf-8?B?VThVSHNDS2kyaGgxM2tNUW13RDN3c2MvTUJ3bVFoeFZrc1QvYkRnbE5IcXhw?=
 =?utf-8?B?NjVjdDlkVjh0UHJpNk1CeStDTU1nSDYwK1lMbGt3b3g5YndUM1luVUhJSjBX?=
 =?utf-8?B?RWtZazN2ZUlSZG42WDBqSGNxREdqZDBJZzkwSmlmU3JES1dicGZvZ3BGV200?=
 =?utf-8?B?M3ZBdVJleDRLL2lyWVRjMDgwZ3pRTmkzbXQvNm82R1NuTTNwTU9Vc3FISytK?=
 =?utf-8?B?aUxjM0c2SzFWa1FRbkdIcFJwWlhjcTJHOHlwN2ZzNFRwak1oWFBLb1NDZk93?=
 =?utf-8?B?ZlNpanhMSDNQR0dvcUdUcVlkUzdQS01tdHhYcHlEN09sSEYyK3VwRWliQ3p0?=
 =?utf-8?B?OE5DYlVqT2gwQkFUV2owQ1FxQjY3MlUxT2dCQ0x0OVFPQ0UvOVR5OXN5S1g3?=
 =?utf-8?B?L3ZVRXQ2T000YTk1SHFqbXUxTkRhbjlLUzlHbGRGRkRjT01sTFZKZVh5aTZw?=
 =?utf-8?B?STVSTzhzTHBpVEpoRkJ4NzRqQUpZbG41MkJhekRMRTc4VFRla1hDcjJxTVU5?=
 =?utf-8?B?TDZVelI2cXRQZjZrd3Q4akF3KzVydDR0QS9PVkNUSjRLblNTOFZENi9mOFF6?=
 =?utf-8?B?YXlmKytEbFNFR0IxeVhaemEyc2VoajdhUkFyRzVNeWxseUxIYy9aY2RZRjEw?=
 =?utf-8?B?Z1BzQ2Njc2dKLytZekZvS0hVclVrb2J6cmw5emdGOEpqOWozZ1RHMGo1M2hX?=
 =?utf-8?B?S25QVHZTY0IyOC9kMld3ZzNQNkV0a2ZwSmhoblFYQWJ5VlhhcDQ2YTZ5R2tn?=
 =?utf-8?B?R0krUEJoQ00xMDdCd0duWmNKNjBYL3hZR0xJVmJBNk9HcjBsS2tybDRlcDln?=
 =?utf-8?B?Vi9DZXhmL0Zhc3VWL0E5QmxDWUZ5VWk2V29aQ2paZnFUTndXMW1RUU1reHVT?=
 =?utf-8?B?bEpLSTVsNDd3M1FaNlZ1MmZFWTJmUzFxMGladkN5UFR4V0VTWXUyMUY2QWpv?=
 =?utf-8?B?Znh1L3EzckhhZFNETWZGanlRTXFyVDZrM0VEMjdNbkk1Tnh6MmpxeVZKZXJH?=
 =?utf-8?B?MTNoUDZKUDBYUmZWVEFwTHlwOFZ0K3VaYUdNRlBNZWRQQlowVkVzM1ZQUVpY?=
 =?utf-8?B?MG1mWEZYYXFaVlp4b2lldkFiMVdUT1U5dmFRbzVmWCszQ3dxYlkrQ1JYN212?=
 =?utf-8?B?aEVhWkswMklXOTgwZFQxbXBEUmk1Nkx2Zkk5TXJPbnFZeE42YUY4bnBMcjNC?=
 =?utf-8?B?dmlKeThsekJGWWNEK1o2ZXhCYlhoc09HV0thUE9FbGIwTWhXNlAxVHBSNUEz?=
 =?utf-8?B?YU1EUkE3WEl0ZG4ydWJVcXNwazR1TGd0UjZlaGxvYklMOVFLQ2QwSlNVM1JH?=
 =?utf-8?B?YjFOS0l2VmxueGFTQTFtNHJsSkt3UDBudWZsYzFMcXJVNmxnZnJCZGE3Q2Uz?=
 =?utf-8?B?bkRIVWJGTDM1WDFPN1hFZUtwQ1I1Vzg0TFk0MWNSYzZMd3FHYmdoaHBlVU5x?=
 =?utf-8?B?SXpZUjhkWGxhR1E4MmZPR2RmZmF0NUpVSExtWFdpYVJZZVN4aCtORHpidDlU?=
 =?utf-8?B?TkpLa2V3K1hXeURUa2Z0U20zK21xQTVIYXhhVDVmRXQzWUhGSDhSV1ZnMWhy?=
 =?utf-8?B?RFdrcGFXQ3cwL01ubWZPTkdyOElUSFlUYUpnOHFnY2Rab0xhKzl4QWh2MkV1?=
 =?utf-8?B?bWRKc3JZeFZrZkw4N0V5bTNwVTBHR3NQVnFMRFAzK3hlZWZzdUpoajM5V04w?=
 =?utf-8?B?WVc2a3g2L1I5S0lSVU9EaWo0eUl2cWM5QUx3Rk9VOUdUSEJMN0dTOXJoUXZY?=
 =?utf-8?B?RUpRMVhKYml0blAxdHpNNVY5RE5mendnVDV6VTVWaHVtWUdwUm54SXVmKzFr?=
 =?utf-8?Q?17/pTVUOCBsw3WlOktbepg9Eq?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99baf1ee-4fb6-4b63-b71e-08dc7ee0b2e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 06:37:51.8725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gpjJgdkpHogkINq3JdZ7Fjot/sNweDyZHOrNdA6Giq1/+9crjXDGaGM+/qIygzFo8iGEtPw26EW7QUKe3cKeVpr9hBFqN9dLmtZSpgPXkxw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8324
X-OriginatorOrg: intel.com
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkgRnJlZGlhbm8sDQoNCj4gPg0KPiA+IEZvciBjbGllbnRzIHRoYXQgY2Fubm90IGFjY2VwdCBh
IGRtYWJ1ZiBmZCBkaXJlY3RseSAoc3VjaCBhcyB0aG9zZQ0KPiA+IHJ1bm5pbmcgb24gYSByZW1v
dGUgc3lzdGVtKSwgdGhpcyBwYXRjaCBzZXJpZXMgcHJvdmlkZXMgYSB3YXkgZm9yDQo+ID4gdGhl
IFNwaWNlIHNlcnZlciB0byBzdHJlYW0gdGhlIGdsL2RtYWJ1ZiBkYXRhL2J1ZmZlciBpbnN0ZWFk
LiBUaGlzDQo+ID4gaXMgbW9zdGx5IGRvbmUgYnkgZW5hYmxpbmcgdGhlIGNyZWF0aW9uIG9mIEdz
dCBtZW1vcnkgdXNpbmcgYSBkbWFidWYNCj4gPiBmZCBhcyB0aGUgc291cmNlLiBUaGlzIGFiaWxp
dHkgaXMgdXNlZnVsIGdpdmVuIHRoYXQgZG1hYnVmIGlzIHRoZQ0KPiA+IHN0YW5kYXJkIG1lY2hh
bmlzbSBmb3Igc2hhcmluZyBidWZmZXJzIGJldHdlZW4gdmFyaW91cyBkcml2ZXJzIGFuZA0KPiA+
IHVzZXJzcGFjZSBpbiBtYW55IEdyYXBoaWNzIGFuZCBNZWRpYSB1c2VjYXNlcy4gQ3VycmVudGx5
LCB0aGlzIGlzDQo+ID4gdGVzdGVkIHdpdGggUWVtdSBhbmQgcmVtb3RlLXZpZXdlciB1c2luZyB0
aGUgeDI2NGVuYy9hdmRlY19oMjY0DQo+ID4gYW5kIG1zZGtoMjY0ZW5jL2RlYyBwbHVnaW5zIHRv
IHN0cmVhbSB0aGUgR3Vlc3QvVk0gZGVza3RvcCBidXQgaXQNCj4gPiBjYW4gYmUgZWFzaWx5IGV4
dGVuZGVkIHRvIG90aGVyIHBsdWdpbnMgYW5kIGFwcGxpY2F0aW9ucy4NCj4gPg0KPiA+IEhlcmUg
aXMgcm91Z2hseSBob3cgdGhpbmdzIHdvcms6DQo+ID4gLSBUaGUgYXBwbGljYXRpb24gKGUuZywg
UWVtdSkgY2hvb3NlcyBpdHMgcHJlZmVycmVkIGNvZGVjIChhIEdzdHJlYW1lcg0KPiA+ICAgb25l
KSBhbmQgY2FsbHMgZ2xfc2Nhbm91dCAodG8gdXBkYXRlIHRoZSBmZCkgZm9sbG93ZWQgYnkgZ2xf
ZHJhdy4NCj4gPiAtIEluIHJlc3BvbnNlLCB0aGUgU3BpY2Ugc2VydmVyIGNoZWNrcyB0byBzZWUg
aWYgdGhlIGNsaWVudCBpcyBjYXBhYmxlDQo+ID4gICBvZiBhY2NlcHRpbmcgYSBkbWFidWYgZmQg
ZGlyZWN0bHkgb3Igbm90LiBJZiB5ZXMsIHRoZSBmZCBpcyBmb3J3YXJkZWQNCj4gPiAgIGRpcmVj
dGx5IHRvIHRoZSBjbGllbnQ7IG90aGVyd2lzZSwgYSBuZXcgc3RyZWFtIGlzIGNyZWF0ZWQuDQo+
ID4gLSBUaGUgU3BpY2Ugc2VydmVyIHRoZW4gc2VuZHMgdGhlIGRtYWJ1ZiBmZCB0byB0aGUgR3N0
cmVhbWVyIGVuY29kZXINCj4gPiAgIHdoaWNoIHVzZXMgaXQgYXMgYW4gaW5wdXQgZm9yIGNyZWF0
aW5nIGFuIGVuY29kZWQgYnVmZmVyIHdoaWNoIGlzIHRoZW4NCj4gPiAgIHNlbnQgdG8gdGhlIGNs
aWVudC4NCj4gPiAtIE9uY2UgdGhlIGVuY29kaW5nIHByb2Nlc3MgaXMgZG9uZSwgYW4gYXN5bmMg
Y29tcGxldGlvbiBjb29raWUgaXMgc2VudA0KPiA+ICAgdG8gdGhlIGFwcGxpY2F0aW9uLg0KPiA+
DQo+ID4gSGVyZSBpcyBhIGxpbmsgdG8gdGhlIHByZXZpb3VzIHZlcnNpb24gdGhhdCB1c2VkIGEg
ZHJhd2FibGUgdG8gc2hhcmUNCj4gPiB0aGUgZG1hYnVmIGZkIHdpdGggdGhlIEdzdHJlYW1lciBl
bmNvZGVyOg0KPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVzL3NwaWNl
LWRldmVsLzIwMjMtDQo+IEphbnVhcnkvMDUyOTQ4Lmh0bWwNCj4gPg0KPiA+IFRoaXMgdmVyc2lv
biBpcyB0ZXN0ZWQgdG9nZXRoZXIgd2l0aCBmb2xsb3dpbmcgKHJlcXVpcmVkKSBwYXRjaGVzIGlu
IHFlbXU6DQo+ID4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL1ZpdmVrL3FlbXUvLS9j
b21taXRzL3NwaWNlX2dsX29uX3YyDQo+ID4NCj4gPiBDaGFuZ2Vsb2c6DQo+ID4NCj4gPiB2Njog
KEZyZWRpYW5vKQ0KPiA+IC0gUHJvcGVybHkgc2hhcmUgb3duZXJzaGlwIG9mIHRoZSBkbWFidWYg
ZmQgYmV0d2VlbiBzdHJlYW0gYW5kIHNjYW5vdXQNCj4gPiAtIEVuc3VyZSB0aGF0IGEgbmV3bHkg
Y3JlYXRlZCBzdHJlYW0gaXMgYXNzb2NpYXRlZCB3aXRoIGFsbCBjb25uZWN0ZWQgY2xpZW50cw0K
PiA+DQo+ID4gdjU6DQo+ID4gLSBBZGRyZXNzZWQgcmV2aWV3IGNvbW1lbnRzIGZyb20gRnJlZGlh
bm8gbWFpbmx5IHJlZ2FyZGluZyBhZGRpbmcNCj4gYXV0b2NvbmYNCj4gPiAgIHN1cHBvcnQgZm9y
IGdzdHJlYW1lci1hbGxvY2F0b3JzIGRlcGVuZGVuY3kgYW5kIG5vdCBuZWVkaW5nIHRvIGFjY2Vz
cw0KPiA+ICAgc2Nhbm91dCBhcyBwYXJ0IG9mIGdsIGRyYXcgb3BlcmF0aW9uDQo+ID4NCj4gPiB2
NDoNCj4gPiAtIFRlc3Qgd2l0aCBWaXJnbCBlbmFibGVkDQo+ID4gLSBBc3NvY2lhdGUgZG1hYnVm
J3MgeTBfdG9wIHdpdGggc3RyZWFtJ3MgdG9wX2Rvd24gdmFyaWFibGUNCj4gPg0KPiA+IHYzOg0K
PiA+IC0gVXBkYXRlZCB0aGUgc2Vjb25kIHBhdGNoIHRvIGhhdmUgYSBuZXcgcHJpbWFyeSBzdXJm
YWNlIGNyZWF0ZWQNCj4gPiAgIHdoZW5ldmVyIGEgbmV3IHN0cmVhbSBnZXRzIGNyZWF0ZWQuIFRo
aXMgd2lsbCBhdm9pZCBoYXZpbmcgdG8NCj4gPiAgIHRyaWdnZXIgcHJpbWFyeSBzdXJmYWNlIGNy
ZWF0aW9uIGZyb20gUWVtdS4gQW5kLCB0aGlzIGNoYW5nZQ0KPiA+ICAgYWxzbyBmaXhlcyB0aGUg
Zm9sbG93aW5nIGVycm9yIHNlZW4gd2l0aCB2MjoNCj4gPiAgIC4uL3NlcnZlci9kaXNwbGF5LWNo
YW5uZWwuY3BwOjIwNzQ6ZGlzcGxheV9jaGFubmVsX2NyZWF0ZV9zdXJmYWNlOg0KPiA+ICAgY29u
ZGl0aW9uIGAhZGlzcGxheS0+cHJpdi0+c3VyZmFjZXNbc3VyZmFjZV9pZF0nIGZhaWxlZA0KPiA+
IC0gUmViYXNlIGFsbCBwYXRjaGVzIG9uIG1hc3Rlcg0KPiA+DQo+ID4gdjI6DQo+ID4gLSBVcGRh
dGUgYWxsIHBhdGNoZXMgdG8gYWRkcmVzcyByZXZpZXcgY29tbWVudHMgZnJvbSBGcmVkaWFubw0K
PiA+IC0gVGVzdGVkIHRoaXMgc2VyaWVzIHdpdGggbXNka2gyNjRlbmMvZGVjIHBsdWdpbnMgdGhh
dCB3aWxsIGJlIGFkZGVkDQo+ID4gICBpbiBhbm90aGVyIHBhdGNoIHNlcmllcw0KPiA+DQo+ID4g
Q2M6IEZyZWRpYW5vIFppZ2xpbyA8ZnJlZGR5NzdAZ21haWwuY29tPg0KPiA+IENjOiBHZXJkIEhv
ZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4NCj4gPiBDYzogTWFyYy1BbmRyw6kgTHVyZWF1IDxt
YXJjYW5kcmUubHVyZWF1QHJlZGhhdC5jb20+DQo+ID4gQ2M6IERvbmd3b24gS2ltIDxkb25nd29u
LmtpbUBpbnRlbC5jb20+DQo+ID4NCj4gPg0KPiA+IFZpdmVrIEthc2lyZWRkeSAoNSk6DQo+ID4g
ICBkY2M6IENoZWNrIHRvIHNlZSBpZiB0aGUgY2xpZW50IHN1cHBvcnRzIG11bHRpcGxlIGNvZGVj
cyAodjIpDQo+ID4gICBkY2M6IENyZWF0ZSBhIHN0cmVhbSBhc3NvY2lhdGVkIHdpdGggZ2xfZHJh
dyBmb3Igbm9uLWdsIGNsaWVudHMgKHY1KQ0KPiA+ICAgZGNjLXNlbmQ6IEVuY29kZSBhbmQgc2Vu
ZCBnbF9kcmF3IHN0cmVhbSBkYXRhIHRvIHRoZSByZW1vdGUgY2xpZW50DQo+ID4gICAgICh2MykN
Cj4gPiAgIGdzdHJlYW1lci1lbmNvZGVyOiBBZGQgYW4gZW5jb2RlciBmdW5jdGlvbiB0aGF0IHRh
a2VzIGRtYWJ1ZiBmZCBhcw0KPiA+ICAgICBpbnB1dCAodjMpDQo+ID4gICB2aWRlby1zdHJlYW06
IERvbid0IHN0b3AgYSBzdHJlYW0gYXNzb2NpYXRlZCB3aXRoIGdsX2RyYXcgKHYyKQ0KPiA+DQo+
ID4gIGNvbmZpZ3VyZS5hYyAgICAgICAgICAgICAgICAgICAgIHwgICAyICstDQo+ID4gIG1lc29u
LmJ1aWxkICAgICAgICAgICAgICAgICAgICAgIHwgICAyICstDQo+ID4gIHNlcnZlci9kY2Mtc2Vu
ZC5jcHAgICAgICAgICAgICAgIHwgMTUwICsrKysrKysrKysrKysrKysrKy0tLS0tDQo+ID4gIHNl
cnZlci9kY2MuY3BwICAgICAgICAgICAgICAgICAgIHwgIDM2ICsrKystLQ0KPiA+ICBzZXJ2ZXIv
ZGNjLmggICAgICAgICAgICAgICAgICAgICB8ICAgNiArDQo+ID4gIHNlcnZlci9kaXNwbGF5LWNo
YW5uZWwtcHJpdmF0ZS5oIHwgICAxICsNCj4gPiAgc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jcHAg
ICAgICAgfCAgIDEgKw0KPiA+ICBzZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYyAgICAgICB8IDE2
NSArKysrKysrKysrKysrKysrKysrKy0tLS0tDQo+ID4gIHNlcnZlci92aWRlby1lbmNvZGVyLmgg
ICAgICAgICAgIHwgIDEzICsrDQo+ID4gIHNlcnZlci92aWRlby1zdHJlYW0uY3BwICAgICAgICAg
IHwgMjAyICsrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0NCj4gPiAgc2VydmVyL3ZpZGVv
LXN0cmVhbS5oICAgICAgICAgICAgfCAgIDUgKw0KPiA+ICAxMSBmaWxlcyBjaGFuZ2VkLCA0Nzkg
aW5zZXJ0aW9ucygrKSwgMTA0IGRlbGV0aW9ucygtKQ0KPiA+DQo+IA0KPiBIaSwNCj4gICAgSSBm
aW5hbGx5IG1hbmFnZWQgdG8gdHJ5IHRoZSBzZXJpZXMuIERpZCBpdCB3b3JrIG9uIHlvdXIgc2lk
ZT8NCkl0IGRpZG4ndCB3b3JrIGluIGFsbCBjYXNlcy4NCg0KPiBMb29rcyBsaWtlIHRoaXMgc2Vy
aWVzIGlzIHN0aWxsIFdJUC9FWFAvUkZDIHF1YWxpdHksIGF0IHRoaXMgdGltZSBJDQo+IHN1cHBv
c2VkIGl0IHNob3VsZCBiZSBjb252ZXJnaW5nIHRvIGEgd29ya2luZyBzdGF0ZS4NCj4gQnkgdGhl
IHdheSwgaXQgYmxpbmtzIGEgbG90IGR1cmluZyBib290LCB0aGVuIHdoZW4gdGhlIG1hY2hpbmUN
Cj4gc3dpdGNoZXMgdG8gdGhlIGZpbmFsIGRlc2t0b3AgaXQgZ2V0cyBibGFuay4gQXQgdGhhdCBw
b2ludCBldmVuIGlmIHlvdQ0KPiBjbG9zZSBhbmQgcmVvcGVuIHRoZSBjbGllbnQgeW91IGdldCBh
IGJsYW5rIHNjcmVlbi4NClllYWgsIHRoZXNlIGFyZSBzb21lIG9mIHRoZSBjYXNlcyB3aGVyZSBp
dCBkb2VzIG5vdCBzZWVtIHRvIHdvcmsuDQpUaGlzIGlzIG1vc3RseSBiZWNhdXNlIHRoZSBpZGVh
IG9mIHNoYXJpbmcgZmQgKGRtYWJ1Zikgb3duZXJzaGlwIGJldHdlZW4NCnNjYW5vdXQgYW5kIHN0
cmVhbSBmYWlscyB0byB3b3JrIGluIGEgZmV3IGNvcm5lciBjYXNlcy4gVGhlc2UgY2FuIGJlIGZp
eGVkDQpidXQgaXQgcmVxdWlyZXMgbm9uLXRyaXZpYWwgYW1vdW50IG9mIGNvZGUgY2hhbmdlcyBm
cm9tIHdoYXQgSSBjYW4gc2VlLg0KDQpJIHRoaW5rIHRoZSBwcmV2aW91cyBkZXNpZ24gKHY0KSBz
dGlsbCBsb29rcyBsaWtlIHRoZSBtb3N0IHJlYXNvbmFibGUgdGhpbmcNCnRvIGRvLCB3aGVyZSB0
aGUgZmQgb3duZXJzaGlwIGlzIGxpbWl0ZWQgb25seSB0byB0aGUgc2Nhbm91dC4gSG93ZXZlciwg
dGhlDQptYWluIGNvbmNlcm4geW91IGhhdmUgZXhwcmVzc2VkIHdpdGggdGhpcyBpZGVhIGlzIHRo
YXQgaXQgcmVxdWlyZXMgdXMgdG8gbG9vaw0KYXQgdGhlIHBhcmFtcyBhc3NvY2lhdGVkIHdpdGgg
c2Nhbm91dCBzdWNoIGFzIGZsYWdzLCBzdHJpZGUsIGV0YyBhcyBwYXJ0IG9mDQpnbF9kcmF3LCBw
YXJ0aWN1bGFybHkgd2hlbiBjcmVhdGluZyBhIG5ldyBzdHJlYW0uIEkgZG9uJ3Qgc2VlIGFueSBw
cm9ibGVtDQp3aXRoIHRoaXMgYXMgdGhpcyBpcyBkaWZmZXJlbnQgZnJvbSB0aGUgbG9jYWwgZGlz
cGxheSB1c2UtY2FzZSB3aGVyZSB0aGUgZmQgaXMNCnNoYXJlZCB3aXRoIHRoZSBjbGllbnQgYW5k
IGdsX2RyYXcgY2FuIGJlIGNhbGxlZCBzdWJzZXF1ZW50bHkuIA0KDQpQbGVhc2UgbGV0IG1lIGtu
b3cgaWYgdGhlcmUgYXJlIGFueSBiZXR0ZXIgaWRlYXMgZm9yIGhhbmRsaW5nIHRoaXMgc3VjaCBh
cw0Kc3Rhc2hpbmcgYXdheSB0aGVzZSBzY2Fub3V0IHBhcmFtcyBzb21ld2hlcmUgc2FmZSwgZXRj
LiANCg0KVGhhbmtzLA0KVml2ZWsNCg0KPiANCj4gUmVnYXJkcywNCj4gICAgRnJlZGlhbm8NCg==
