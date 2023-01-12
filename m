Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 058B3666B5D
	for <lists+spice-devel@lfdr.de>; Thu, 12 Jan 2023 08:03:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 803F010E882;
	Thu, 12 Jan 2023 07:03:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33A2A10E882
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Jan 2023 07:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673506994; x=1705042994;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8dD8uD/e15gwE62JFEJM2t9uDPgTzFkoav6mO8B9P48=;
 b=Gef9ilg429TT6Ye24PO5Fvx1/3AtYPVARsslcZVKZelZREaHhDt0NW+3
 901Ipro/iV4ULYFNkB3E4MBhc4XOHWVD+DYaA1o+M6jKswGGqAQ7s01Vf
 VgubM4m1TcltH7nPWNuxsSQihfFdG+E3/qZKMsg3Vdx/zc8NtcJXEXy6+
 fT1TbvwVTK+IHufknfUKksHRq0+pLFo3sOKeHW+tWo0oWkKLGh08XaqnE
 8rpoxtjB3tRGVho9I4PGzEvHuUHe7n4Ry3LWAnYTK+IrerfiszANq+Nfw
 E4noj9Ix9Tyxpw/TY/OojqodurL5x2K8fb1MM2zb0dF1Gjtrl6WpaTSEa g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="350857189"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="350857189"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 23:03:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="765492671"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="765492671"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 11 Jan 2023 23:03:13 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 23:03:12 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 11 Jan 2023 23:03:12 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 11 Jan 2023 23:03:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=am1jc4wL+Zp4lm3K4+90ZnTxvuowq2eFSEgkbkLorSTklgpLy/bR1PDdgmmsO7BdPSTTthBM6MAUjillCHVw5RDcysCpzVXFesnwBCL/XEW4No6rJ0j0VTWxP/dyu0xeNOmV0tUIRSYScAR1cFkbni4YJ5AUBap9sujCZDFUlDqZ5qGYX88sXc2WIcrJ0M1dSqPfG/X1TK+79D6OQxjBbMdgrpUczQO5KfcKAJvDZDLOVeUTbq19yvVB29Ou6sH8RKm6yKkhxluYqAUa8QpbRF7N9Kjy6HvjGQWIjdvgMa29h/3lHjxrCvlOBpfk8X1vjD4+oqUZ7GSgzXXrKKQZvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8dD8uD/e15gwE62JFEJM2t9uDPgTzFkoav6mO8B9P48=;
 b=Uyk4NZKRbhUxG8lfBZAIqnyZf/Bs+sxrGiJ6RrVp1kGth2yBS/HJdVi1h8aco4oNsNx+7hd5ztD7U/ep1TPO7HkYxiMjZYxR9tOsbzbi3aWOMSIJnlNhMkttbNXMNCHa0uQxAdhbxk1kwC1dXWs02YD8tSrDBs3bVDdfFJ6xhXM3KP2w2O9K+ASFAbbyAFFAwJoCt75LX7XQYZP3UdIBY5w1nmRgzBErZ/7aE77/aBe41o/8wpRxuChVXcs3/2crnunAkJDpWRBWDOx2OPa3MdlFXMBr1tpuOA/eVAzws3nMLtAN2jV+4oyYCe3Egdvhj7y+d51ADNF8iy3ZasDdVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:443::14)
 by IA1PR11MB6265.namprd11.prod.outlook.com (2603:10b6:208:3e7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Thu, 12 Jan
 2023 07:03:10 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::6385:771:1bc4:2f6]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::6385:771:1bc4:2f6%4]) with mapi id 15.20.5986.018; Thu, 12 Jan 2023
 07:03:09 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>
Thread-Topic: [Spice-devel] [RFC v1 1/4] red-parse-qxl: Extract the dmabuf fd
 from the scanout
Thread-Index: AQHZJX96+15xa8gQvE+AmI8giMOwXa6ZGEcAgACflOA=
Date: Thu, 12 Jan 2023 07:03:09 +0000
Message-ID: <IA0PR11MB7185E2A4761E1AE80C9ABAC4F8FD9@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20230111052239.781285-1-vivek.kasireddy@intel.com>
 <20230111052239.781285-2-vivek.kasireddy@intel.com>
 <CAHt6W4cgJcW2+2+A==q6n25FK0T9LV_Q=H6Fh7SEXWogcxfvvg@mail.gmail.com>
In-Reply-To: <CAHt6W4cgJcW2+2+A==q6n25FK0T9LV_Q=H6Fh7SEXWogcxfvvg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|IA1PR11MB6265:EE_
x-ms-office365-filtering-correlation-id: 8c1bf8d6-2aa4-4e88-36b6-08daf46b1053
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qZ5/knXRefcuhD+9uwNNUa9O1DgbWjWZgDrGGsvfn4Ef0eBPoEH1Ep0IxsqzU28rCGQ3DDWeqkxiWGA5KNVgQQlKjF1nB2AR1z3WUDXBHDqgPJhu3m3Obcf5JqLsRaPSynKC8O992BYQxk8PkcRpv+enqfX44TShFtQgFDCWHLtAYFtobGMmtZCGqopBxCsScDTt4y3fktQj3BTTR5euqzxk044RZ/Zcjoeo36Byogom6Yv8mB5+I9Hz+UMvAlVvMtQXFe+yGqEzqFUsWv8AvRuV37hBacYupvJm34PzR6waBv/tsgKmLqyYlVZg9h/V63Tk7evqFKggcRAqJNyjVcSqWE87jhcDX8iY7lP/OqxyEsxNcNaFZ+M751duvp7OtwxBbzFajktBtJqCczip32TrRH8OkZLGkqYYbuILwvKM4iECiIH2o928U4kLwKNmLXeTjgPP/+0Kk34O4+cwwAKtX/cZSiOZZZmcP6HxGQjr67V53a1aSPXGU+WCUupA0g0fT+f8R+mgCrpeN7AxkbxwIuJ3xl8Uflh6VkBWOymXV16STZwKfd/2lxc9stDK6h/m+RL1nTjDZoZ55dkow95LkJ2GKV6s4CBCA0CIGHU/61lJg9FS5bujrF4xr3Y/f4I8Elx/HaHhNJY5cRsRSG65b6F0zP+bN921Knm1UKKANJSRl8+RVus4vw8kCghNQYVTMwEzQBZMTfjsQVU4/w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(396003)(346002)(136003)(366004)(451199015)(33656002)(122000001)(38100700002)(82960400001)(76116006)(71200400001)(6916009)(8676002)(66446008)(66946007)(4326008)(55016003)(186003)(86362001)(26005)(9686003)(316002)(38070700005)(64756008)(54906003)(7696005)(478600001)(66476007)(5660300002)(2906002)(52536014)(41300700001)(8936002)(6506007)(66556008)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q3hFNGc4Yy9IN3p1ODBVZXYwR0ozN0MxSU5ubllTNTNPZUtoNmdHTGVqMVhv?=
 =?utf-8?B?WjN4ZDNNZ3dvU3dpbVl6anh0eXpyY3p5OENPK1AvZ2ZJQjc4a0FiellDT2lH?=
 =?utf-8?B?YjFtR0RUMFpGNHdrVVBwaVFDR0Npc3RUWmljMFlYRXRrY0FuQ2FCNzY3cER0?=
 =?utf-8?B?dWcxY1lkaGRUc3hFb1pIR0JtL0dvRnErNURXU0VzZThXVkNUZGQvTCtWUzZZ?=
 =?utf-8?B?VWlDNXhMRDNkaGdrR0lFQUJyMkVETkY1THpsQlVmT0R6eFUyMkNldWNEU2wr?=
 =?utf-8?B?aXlmc0JBdTNsbWl0N2ZLYUNjSkZ2WFFSSDJLVi8xbnplbzAzS05xOEdpYlRB?=
 =?utf-8?B?enhMNjZXc2t5V3oxTmtLbHV1NUdJdkF4QzZVNWtGTzI1ZkgvV2c2K3ZPT3lK?=
 =?utf-8?B?NHZVTUF6cmFZVkc4VFBsRlB6YWFCalJBcWJqV3dxUnBnU0hUY2ZwVXg1K0F5?=
 =?utf-8?B?dmljUXNyNFpMVFhxY0c2eXpudlJhUi9VR0s0bTZtOENGdHNpWmY4eUo1VHlh?=
 =?utf-8?B?SkFhallpZmFVZGJNY0ZxaU5ha01hNGVtOXVWWExKZVJONHh2VVhoQjVodEY3?=
 =?utf-8?B?OG5qa3Y2dWl6VEhZdU9SUjJpcDhNUjEzazZPTExhSEwvV1p4VXp1b2dPUzVM?=
 =?utf-8?B?bnJoUnhXVTIwWWs5ckVsdEVReEZLSDN6aWg4RkhMQWFXbHg1aDFGbkhNbGE4?=
 =?utf-8?B?NEY5bjNOdGdITWhHS1cxdDFSMG1IYjczb0duUGpEblg4M2IyUDY3bE94TWN5?=
 =?utf-8?B?Vkh5V2dsWEFlUUZ1UGo0WC9Gd3NqNTJhSnZBUWpGYll2YXZNV1haYVlwT2F5?=
 =?utf-8?B?SkRQY29KZHRBQU5PamJwNG15bldLQ2FIMklQSFV1TmtBcldzTFVLYUZFNmRR?=
 =?utf-8?B?LzErcStESW1aR09Bc3BHYVZWQU5MWmpBVWRRaVM0SFF2dG1uZkZSV2xnd3hX?=
 =?utf-8?B?YSs2dGp0VzUzSVJoOWJCTWVSL2k3MDUxNnd1Mm5qM3gvT0pFTDUvWjFqTE9L?=
 =?utf-8?B?Mndtc1crbmVvY0J3aXR2R2UyR1U3YWxWQlFaM3A2V2dZRDhuSFhrN21XZ0Vz?=
 =?utf-8?B?UWhhQktPOC9OMk9PNFY2ZUQrRkJod1pHSTdqUVowMCtjeXQxbWtuUTdJcUxH?=
 =?utf-8?B?STljdnFhMFd3Q2g0YUtNK3NvM3UwTWVwZzVueUxCUDlvcy9STHk2MUlPWlBm?=
 =?utf-8?B?V3B6Wk1GSXpkVnNVMDRtT0ZSK1NpV0Fxa2Q3RVA0UHVBZVIvSENxd0ZHSVBs?=
 =?utf-8?B?TktsSTA1MnVJQ002dHZLVEtiSFczV2ZPbVd1UWVqMWJUOGdtNmZudEcySitt?=
 =?utf-8?B?QUxlZ0lsd2JLVjBLRGVJYzNLUlU2eDRjZXdWcHF6ME9pbUJhU1JRK3dhc3RX?=
 =?utf-8?B?YXJoY0hROTljWU1oRlVmSTU2STJGcnlPWFZjdFkzeG8zblJ0Sk9uSHNsWWJS?=
 =?utf-8?B?QW0rTjJ6TkdubUErVFlqVlR2ZFZwRkxzWU9qVDhjZExGa0ZQRjdPenlvazhy?=
 =?utf-8?B?K3hIS2xJQk9NSUxJclZZOVBSZUdNekpqT0Z1VnFaS2svdUxWTllOSHEzME1q?=
 =?utf-8?B?VHdlSUkzL2hmL3BEZ0tuVVJoam1HRElyVVZjYVNZMnFpbnpMOXJ0bEJVb3g3?=
 =?utf-8?B?SDJBQkJYRTZzOW1hYlU1VVo4a0x2S0w5MHdlRDZGOFpzR2R2bGJKb3FsWEdw?=
 =?utf-8?B?dHNlYXV4anBtd3BpWjZ6R284TWlLMmt3VUUwa09BZWpTSTJmTUM2QmV6bGp4?=
 =?utf-8?B?dEowQ2t0MTZ1K1ZVd2JuV2Nhcm5zZW5OWlFCdU50VHVBSCttM2tvWG9IZlNn?=
 =?utf-8?B?Vi9GUTlVTEwyN25yQVV5SVFCNVZ4TGplQ1JnT0x0QXJHd1Z5WkVwMzFXV05Z?=
 =?utf-8?B?TkVydzZ4aFpyZjY4QnVqZ0ZYQlNtMm14bG9NeVkzTi9uY0ErdS9sMnVwVnBt?=
 =?utf-8?B?bjdjUFhaQTdhQzlqQkVXaklXNGxXaXVLcTJFMmg4czNpL0tvam9LYVlybEI1?=
 =?utf-8?B?VVRwT0I2VGNoa0V0amNGUzh4djBBTHpGckVESjVUeUwvRnVGSXJCa2FHbXVa?=
 =?utf-8?B?SEZFWHQ5MndqUUNZMW9EWnB2bS9BWDluZXdBUzc4cjhsOEVzeUJsUEtFY0VC?=
 =?utf-8?B?K3hmeC9lQ21wT2JBdEVDSW1jcXJoTUxJNSsvbEY4ZGphOGVZc3NZUGJzblBu?=
 =?utf-8?B?REE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c1bf8d6-2aa4-4e88-36b6-08daf46b1053
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2023 07:03:09.8589 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qCpIyAJ2NgM4TRupNbtj9Z+ioFYN+Uzres0B+jUbLtov2qgAq3vZ8cXnfO75rPYfrDaH65QnAbhgdloS6+Y99RrHZ70aR6BtArqHzjd0+ZY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6265
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

SGkgRnJlZGlhbm8sDQoNClRoYW5rIHlvdSBmb3IgdGFraW5nIGEgbG9vayBhdCB0aGlzIHBhdGNo
IHNlcmllcy4NCg0KPiANCj4gSWwgZ2lvcm5vIG1lciAxMSBnZW4gMjAyMyBhbGxlIG9yZSAwNTo0
MiBWaXZlayBLYXNpcmVkZHkNCj4gPHZpdmVrLmthc2lyZWRkeUBpbnRlbC5jb20+IGhhIHNjcml0
dG86DQo+ID4NCj4gPiBJZiB0aGUgc2Nhbm91dCBoYXMgYSB2YWxpZCBkbWFidWYgZmQsIHRoZW4g
aXQgaXMgZXh0cmFjdGVkIGFuZCBhDQo+ID4gY29weSAob2YgdGhlIGZkKSBpcyBzdG9yZWQgaW4g
dGhlIGRyYXdhYmxlLg0KPiA+DQo+ID4gQ2M6IEdlcmQgSG9mZm1hbm4gPGtyYXhlbEByZWRoYXQu
Y29tPg0KPiA+IENjOiBNYXJjLUFuZHLDqSBMdXJlYXUgPG1hcmNhbmRyZS5sdXJlYXVAcmVkaGF0
LmNvbT4NCj4gPiBDYzogRG9uZ3dvbiBLaW0gPGRvbmd3b24ua2ltQGludGVsLmNvbT4NCj4gPiBT
aWduZWQtb2ZmLWJ5OiBWaXZlayBLYXNpcmVkZHkgPHZpdmVrLmthc2lyZWRkeUBpbnRlbC5jb20+
DQo+ID4gLS0tDQo+ID4gIHNlcnZlci9yZWQtcGFyc2UtcXhsLmNwcCB8IDggKysrKysrKysNCj4g
PiAgc2VydmVyL3JlZC1wYXJzZS1xeGwuaCAgIHwgMSArDQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwg
OSBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1wYXJzZS1x
eGwuY3BwIGIvc2VydmVyL3JlZC1wYXJzZS1xeGwuY3BwDQo+ID4gaW5kZXggNjhiOTc1OWQuLjhk
OWI4MmZiIDEwMDY0NA0KPiA+IC0tLSBhL3NlcnZlci9yZWQtcGFyc2UtcXhsLmNwcA0KPiA+ICsr
KyBiL3NlcnZlci9yZWQtcGFyc2UtcXhsLmNwcA0KPiA+IEBAIC0xMDM4LDYgKzEwMzgsNyBAQCBz
dGF0aWMgYm9vbCByZWRfZ2V0X25hdGl2ZV9kcmF3YWJsZShRWExJbnN0YW5jZQ0KPiAqcXhsX2lu
c3RhbmNlLCBSZWRNZW1TbG90SW5mbyAqcw0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBSZWREcmF3YWJsZSAqcmVkLCBRWExQSFlTSUNBTCBhZGRyLCB1aW50MzJfdCBm
bGFncykNCj4gPiAgew0KPiA+ICAgICAgUVhMRHJhd2FibGUgKnF4bDsNCj4gPiArICAgIFNwaWNl
TXNnRGlzcGxheUdsU2Nhbm91dFVuaXggKnNjYW5vdXQ7DQo+ID4gICAgICBpbnQgaTsNCj4gPg0K
PiA+ICAgICAgcXhsID0gc3RhdGljX2Nhc3Q8UVhMRHJhd2FibGUgKj4obWVtc2xvdF9nZXRfdmly
dChzbG90cywgYWRkciwNCj4gc2l6ZW9mKCpxeGwpLCBncm91cF9pZCkpOw0KPiA+IEBAIC0xMDU5
LDYgKzEwNjAsMTMgQEAgc3RhdGljIGJvb2wgcmVkX2dldF9uYXRpdmVfZHJhd2FibGUoUVhMSW5z
dGFuY2UNCj4gKnF4bF9pbnN0YW5jZSwgUmVkTWVtU2xvdEluZm8gKnMNCj4gPiAgICAgICAgICBy
ZWRfZ2V0X3JlY3RfcHRyKCZyZWQtPnN1cmZhY2VzX3JlY3RzW2ldLCAmcXhsLT5zdXJmYWNlc19y
ZWN0c1tpXSk7DQo+ID4gICAgICB9DQo+ID4NCj4gPiArICAgIHJlZC0+ZG1hYnVmX2ZkID0gMDsN
Cj4gDQo+IDAgaXMgYSBwZXJmZWN0bHkgdmFsaWQgZmlsZSBkZXNjcmlwdG9yLCB1c3VhbGx5IGlu
dmFsaWQgZmlsZQ0KPiBkZXNjcmlwdG9ycyBhcmUgaW5pdGlhbGl6ZWQgd2l0aCAtMS4NCltLYXNp
cmVkZHksIFZpdmVrXSBPaywgSSdsbCBpbml0aWFsaXplIGl0IHRvIC0xLiANCg0KPiANCj4gPiAr
ICAgIHNjYW5vdXQgPSByZWRfcXhsX2dldF9nbF9zY2Fub3V0KHF4bF9pbnN0YW5jZSk7DQo+ID4g
KyAgICBpZiAoc2Nhbm91dCAhPSBudWxscHRyKSB7DQo+ID4gKyAgICAgICAgcmVkLT5kbWFidWZf
ZmQgPSBzY2Fub3V0LT5kcm1fZG1hX2J1Zl9mZDsNCj4gPiArICAgIH0NCj4gPiArICAgIHJlZF9x
eGxfcHV0X2dsX3NjYW5vdXQocXhsX2luc3RhbmNlLCBzY2Fub3V0KTsNCj4gPiArDQo+ID4gICAg
ICByZWQtPnR5cGUgPSBxeGwtPnR5cGU7DQo+ID4gICAgICBzd2l0Y2ggKHJlZC0+dHlwZSkgew0K
PiA+ICAgICAgY2FzZSBRWExfRFJBV19BTFBIQV9CTEVORDoNCj4gPiBkaWZmIC0tZ2l0IGEvc2Vy
dmVyL3JlZC1wYXJzZS1xeGwuaCBiL3NlcnZlci9yZWQtcGFyc2UtcXhsLmgNCj4gPiBpbmRleCA4
YmYwZTJlMy4uZGVlNTA3NDMgMTAwNjQ0DQo+ID4gLS0tIGEvc2VydmVyL3JlZC1wYXJzZS1xeGwu
aA0KPiA+ICsrKyBiL3NlcnZlci9yZWQtcGFyc2UtcXhsLmgNCj4gPiBAQCAtNjcsNiArNjcsNyBA
QCBzdHJ1Y3QgUmVkRHJhd2FibGUgZmluYWw6IHB1YmxpYw0KPiBSZWRRWExSZXNvdXJjZTxSZWRE
cmF3YWJsZT4gew0KPiA+ICAgICAgICAgIFNwaWNlV2hpdGVuZXNzIHdoaXRlbmVzczsNCj4gPiAg
ICAgICAgICBTcGljZUNvbXBvc2l0ZSBjb21wb3NpdGU7DQo+ID4gICAgICB9IHU7DQo+ID4gKyAg
ICBpbnQzMl90IGRtYWJ1Zl9mZDsNCj4gPiAgfTsNCj4gPg0KPiA+ICBzdHJ1Y3QgUmVkVXBkYXRl
Q21kIGZpbmFsOiBwdWJsaWMgUmVkUVhMUmVzb3VyY2U8UmVkVXBkYXRlQ21kPiB7DQo+IA0KPiBU
aGlzIHBhdGNoIGxvb2tzIHByZXR0eSBlcnJvciBwcm9uZSwgaXQncyBlYXN5IHRvIGdlbmVyYXRl
IGxlYWtzIG9yDQo+IHVzZSBhZnRlciBmcmVlIChvZiBmaWxlIGRlc2NyaXB0b3IpLg0KW0thc2ly
ZWRkeSwgVml2ZWtdIEF0LWxlYXN0IHdpdGggUWVtdSwgd2UgdXN1YWxseSBoYW5kIG92ZXIgYSBk
dXAgb2YgdGhlIG9yaWdpbmFsDQpmZCB0byBTcGljZSBzZXJ2ZXIgd2l0aCB0aGUgYXNzdW1wdGlv
biB0aGF0IHRoZSBzZXJ2ZXIgd2lsbCBjbG9zZSBpdCBhZnRlciBpdCBpcw0KZG9uZSB1c2luZyBp
dC4NCg0KPiBBbHNvIGl0IGFkZHMgdGhlIGFzc3VtcHRpb24gdGhhdCB0aGUgZHJhd2luZyBpcyBh
bHdheXMgYXNzb2NpYXRlZCB3aXRoDQo+IHRoZSBETUEgc3VyZmFjZSB3aGljaCBpcyByYWN5Lg0K
W0thc2lyZWRkeSwgVml2ZWtdIEkgc2VlIHRoYXQgYWNjZXNzIHRvIHRoZSBzY2Fub3V0IGFuZCBk
cm1fZG1hX2J1Zl9mZCBpcyBwcm90ZWN0ZWQNCndpdGggYSBzY2Fub3V0X211dGV4LiBBcmUgeW91
IHN1Z2dlc3RpbmcgdGhhdCB1c2luZyByZWRfcXhsX2dldC9wdXRfZ2xfc2Nhbm91dCBpcw0Kbm90
IGdvaW5nIHRvIGJlIHN1ZmZpY2llbnQgdG8gcHJldmVudCByYWNlcz8NCg0KVGhhbmtzLA0KVml2
ZWsNCg0KPiANCj4gRnJlZGlhbm8NCg==
