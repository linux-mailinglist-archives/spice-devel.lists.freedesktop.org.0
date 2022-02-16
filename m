Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BADA34B803C
	for <lists+spice-devel@lfdr.de>; Wed, 16 Feb 2022 06:36:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08FB410E66A;
	Wed, 16 Feb 2022 05:36:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 430 seconds by postgrey-1.36 at gabe;
 Wed, 16 Feb 2022 01:53:48 UTC
Received: from esa11.fujitsucc.c3s2.iphmx.com (esa11.fujitsucc.c3s2.iphmx.com
 [216.71.156.121])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70CBB10E5E5
 for <spice-devel@lists.freedesktop.org>; Wed, 16 Feb 2022 01:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
 t=1644976428; x=1676512428;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QhAOa3Wa6HcHh9RBqhMWzno3SDZQJ/j8Y8f2+Clh4Xg=;
 b=Ft5OsukEmM/UafmFf96jd90niLvB70BOHOa/bj/RqM3tEMFZPf+mCbYt
 EOtca1fG292Ed9Tl0sZYLmPdCzesmtNZ98xLUmb83y/bUY8AJ0n15TSij
 eGzuFuEN5XbcJasKsqG4lF55AIdDB9X8z54OjMdgZA2DaorrV5P7Q+yho
 Ngo6YJbtF0FaEo1+YV23DqRoHNZjWtOzHdTeTvlYOJMGdUEBlH1hYvFYz
 y60bLVDUXD93s3mJAGPqxVCq7o97cl9bGpk6GFWB3p+jX5GeTw76yQU6L
 cUx3oSS4WICQNtOU9exAO+zzGvhKUHP6QX88ehJSCj58bloEPTslKUd7V A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="50098484"
X-IronPort-AV: E=Sophos;i="5.88,371,1635174000"; d="scan'208";a="50098484"
Received: from mail-os0jpn01lp2111.outbound.protection.outlook.com (HELO
 JPN01-OS0-obe.outbound.protection.outlook.com) ([104.47.23.111])
 by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 10:46:34 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RETSDN6GrkBpQltEEnwDVgopSfRWa4wOdCLcna9E0jxXNetx2dlhyl7ouzYzurz+B4mO+4XWbUsQCxfPXDWp92tNlg5IzaYrQ7e11+gQr6iv0japh1tDKS/uWIEgB5VR6erEHaNvcAuVrsh4xDubRlV3bexdUcvEy1sypRdwozgQ9Uc3SZDekPpS7pMeUddR6Rhiwc8fTTbgiSnapPoVmWYKYQRzypl6umGJh+0OgMtleRsd3Q90dT1CRd2LvWOMqvS/vkbfjozwmo3tfLzr+8LKf5E87/8xH+h0vHOjQn0xhHNpDl5ay/I6ePsMe1Lgle72tnU2dpBRdZ6TdOBMMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QhAOa3Wa6HcHh9RBqhMWzno3SDZQJ/j8Y8f2+Clh4Xg=;
 b=Mt8b8azAZ0AhN4Ch1xOIEQwkemG8kayi1ctxtLQs5s0khwo47GzWxe9XbWnsyfvywGWotbzc02Q+Vu342OtAIb7OGqnCww+WEkqRdoZ6VBgEMsTxOa0DqrA6LDCq0VvsqRMz9mAOs5VlNWvkDdpLbNxk3F33XFJ5YZQfo3ty/hiLRLQR9xeWfhUvdWK2PoEW1G87XJ7QUzeoDdf1KIvHuLxmtuMcZawuzm9BfVBVbQ/76EdZ5hQelHMV9N9xvJNml3mp/7Ogw+I8hMg6/1U3E3IQ5+Srn6FH8lhlNSEaWSdI6u+0ke/9XU8TcGJTOH24ijWaTjL2AKjtQC1g4M2HVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QhAOa3Wa6HcHh9RBqhMWzno3SDZQJ/j8Y8f2+Clh4Xg=;
 b=cOK+wZh9kf1PT+Yyv54iz8ClkihMpqA/8HnhQj//Z5yjiF0qmZwFHVJNwqx1wM17AIz/tEBNa5fMu1oKqZ/5b6aPLDteJr4PqXD/mNoEwO9U79sN9ZXJHnzroxmg2z0xwnIStRuVjrSl5BXk6JEOhSPS2Aucr640SyXV/t5nfKg=
Received: from TYCPR01MB9305.jpnprd01.prod.outlook.com (2603:1096:400:196::10)
 by OSBPR01MB3432.jpnprd01.prod.outlook.com (2603:1096:604:4f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.14; Wed, 16 Feb
 2022 01:46:32 +0000
Received: from TYCPR01MB9305.jpnprd01.prod.outlook.com
 ([fe80::a83c:6b2f:3f10:b182]) by TYCPR01MB9305.jpnprd01.prod.outlook.com
 ([fe80::a83c:6b2f:3f10:b182%4]) with mapi id 15.20.4975.019; Wed, 16 Feb 2022
 01:46:31 +0000
From: "lizhijian@fujitsu.com" <lizhijian@fujitsu.com>
To: Uri Lublin <uril@redhat.com>
Thread-Topic: [Spice-devel] usbredir doesn't hide/filter specific usb devices
Thread-Index: AQHYInHEhAS02jznUUC9WzGA3QUJIqyUsaeAgAAMi2mAAKrnAA==
Date: Wed, 16 Feb 2022 01:46:31 +0000
Message-ID: <73a20e4e-4e2f-6cea-95e3-f9681835ae77@fujitsu.com>
References: <676eae2b-bb7c-2e89-6d0d-9a1cbc03ffa8@cn.fujitsu.com>
 <CAAg9qJ0cBHDqHoGGPvwtb7GeGXuM5foGhoo3g9wp-5wpP58j_g@mail.gmail.com>
 <TYCPR01MB9305A867046320ADF30122EBA5349@TYCPR01MB9305.jpnprd01.prod.outlook.com>
In-Reply-To: <TYCPR01MB9305A867046320ADF30122EBA5349@TYCPR01MB9305.jpnprd01.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe2243f2-0f08-495c-646b-08d9f0ee281a
x-ms-traffictypediagnostic: OSBPR01MB3432:EE_
x-microsoft-antispam-prvs: <OSBPR01MB34322D423DA6A6D6D6F4F244A5359@OSBPR01MB3432.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KjrFjDlOiB5aRL0FcdsbtO1kCnuDsFZKbJrEKbaoZkH6IsOMnBNpxX8wqmKjC91M4rbjIm5xbPP1fwMf96cHfkL4kpyg7w1lM3cI6XzlVvY3dinP4fnW2uyosZYyircV/LryurXlAt1pr+uBE2RCiT8KkfBY05fwz3Wm6txDqzuFrD/pI/KBEVFkrp72nPo0irPV3AjqrSIvrPxks0Dg7i5mjUoLjhAnegLToI4fnRtZm1P7+/GjJZE9dYihPvRo28L9jp4b2B6HGxe+p0awkxRSnllBcoc23mVL6sQHz0omJM9ADuMO4hbZfxUGsWGnQcq1aUyRnq5Vf44OQ/QDDWydnLnz5xY+2R6sKUcrgNTP0e02wdQBmh/a39tg1xmBsXnePuZeA/18U8i7fDH0qJy1HSsQAiu687Fca7GnQKKnlDKdiln7gYBwn9T8b0hH36A9D2JbBUGer68wneIh7/aiFb5UZzi/As4Ku1wBHy5G24qxqfTszgNAfBHZXgZW6/sCk1bbWSvTBTl4+fEDuWcK5Z30yuZGUHsTrZ8eV4tM5BUAYckU6kzi8IQQBp1NzCSe9EL9VKJwe9sK6QHJ2E7Yc2pcqFN4qYMvNzgjgwNm/hvhzrHZoyOyijHG/U2x90z1PM22ZvSFS9T7VMVko5zFt5zUsu89ToAFNFY75SblQTldhRN8MydLI9pftebV+/EUJONTDcnfb+LxYv99JIIGOHsMTZBSyVv8hHtzox304BJ/1SLh96fLf7fj5pD5QXJhBAA9RjhXsiazoDFoCRfj5XUzSwp47WQjOVj2J5l6I8xQ9hQhWrB5FlgmovRLHf3CIUe8HHdUXdA9IJpuFmpmnGIJI1Af8zHfSsM7+Dc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYCPR01MB9305.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(82960400001)(64756008)(4326008)(6486002)(8676002)(91956017)(6916009)(316002)(76116006)(66946007)(66556008)(45080400002)(508600001)(38100700002)(31696002)(966005)(122000001)(66446008)(85182001)(86362001)(36756003)(38070700005)(26005)(5660300002)(2616005)(6506007)(186003)(53546011)(71200400001)(6512007)(31686004)(66476007)(2906002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NktsTVZMV1Ryd3VJQThtdjBZVE5CNyttUE10VjNpYXFuaDlNREJDZFF6SXhU?=
 =?utf-8?B?MzljSFBCR21WaDNCdHM3OVA3cVpFeWh1bFNLMmpoQW1jVXozYXRDZWVKS292?=
 =?utf-8?B?N05kcS9kQTlnbDNWQm1ORGRPS0pXU2pmRHVsK1VhQ1R5L2RuRjBQTXlnMUNl?=
 =?utf-8?B?bzIySE9zbEs2bTZpSEVQWlFNeHFTMVpiK2Fhb1VUdmJ5SGd2LzVLMFVWYnJC?=
 =?utf-8?B?QkQwYzNNc0x4bW9GY3BCZXZOa0V6SjlNVTB6S3ZYRVNYY28yQUZBS2Z0UHA5?=
 =?utf-8?B?eHo4dEd0UkMyL0QvRVhDOEgxaDYzalROYnFuZjNNZWxQcjlKZVpQT0kvN1JQ?=
 =?utf-8?B?ZjBONWRwWk9sVzU4c0FSRVp4N1VPK3RKVGY2SHFhTHJHdlUzR3FkeUo4a0hi?=
 =?utf-8?B?QzJqU1ppVHRHWThySW5MSnhuQXlJZ0t4WjhSWkxuTk9xUm1zbFh3czR0WXRs?=
 =?utf-8?B?K0tkdTRHa0JSWnVOYUVHTG8raUZTWVFqWlRuWnhPbnJlUTJvdnVWQTU5dHZB?=
 =?utf-8?B?MU1HYS8rTkVwdlhzU09XMzk3cXBMNTQzcDgvNTZpS1FCYlJZVlFYZDNqenNJ?=
 =?utf-8?B?Z042Mi9sdG1hNVFxNzhjTWUzY2VXSXo5cXhEdVIyQ3hyRHJvbFVrbDhnbE1t?=
 =?utf-8?B?bThqZTdWekJvN3UwVWY5N0tmZVBkbXUyS01KanZ4ZkdmZXBBWCtXTU9TWHhq?=
 =?utf-8?B?Z3QyeGFUTHphQlpKZ0grWWJsMUd6Q0x6eVpjaFpJVVZkQzFWZWNOdnd4QXB4?=
 =?utf-8?B?VUJQWkFvTCs2bktBeXNOU002NWlhbXpWellVWm5uWUQ1WkxnUVJjUG5weEpT?=
 =?utf-8?B?WllJeExkbCtPT1VVR2xKREcwdlN3dVVBMFllM2xWbm1XeWpVS2o1b2NWSyta?=
 =?utf-8?B?KytyU1RWRUN1alFWTzcyWmNkSlpqc2RNR0duNnFtQUNpa0o2c2J6OWJBbDFP?=
 =?utf-8?B?aE5vdUxsSEkrOFNTUmRWTDNwRmVMOGluUWdkd3A2WHF4SlFFQTQxUmxxRVA5?=
 =?utf-8?B?Wk51NEpCMk9pWjZVSlYxZkxpdHdqSXM2WkNnT1lWNW93RUl4MklDSVplRjE2?=
 =?utf-8?B?SDhzOUF6dVNKa2lUWlRZSzZZY1g1ek5XcmhEb1N5U2N0ditHcitrWWNxSmt4?=
 =?utf-8?B?Q2R1N0VhM09XMGNXcHYvV212VU1nMjZSV0FVTVFhanBkVzRtR1ZLUmNtaEpG?=
 =?utf-8?B?NHA5OTRLMlZlZUhVNXlScGJkNTNqSGZ4ZTBDa2orQXJoV1lua25YR1d0L1NG?=
 =?utf-8?B?akV0eE9EYXNJNGRqYklqdWlMenlQQWNSS3RaTkNVdzBIVjRHaE9iTlhHVmpv?=
 =?utf-8?B?UkJ0K2V3dGE2QVN4UGdmdHVxOFMyc3pnSEd1SU5BWGJKd2taY2ZQMTZyNnIr?=
 =?utf-8?B?V05iQ25hVUh6REhPYWF0SnV1azd1cUt5YmJ3cC9WL3ZUb3FOU2MyV2R1SE92?=
 =?utf-8?B?clRuTG90WGYrWkNrcExweStvZnZZTmVNQ09ZcEQyMWNOQUtlQW1YaFhlZURE?=
 =?utf-8?B?S2dZM05LSURNb2JqM3R3SGtibS9MSnA0bTFPM1pUYStLcGlQSDVHcnk0M3VM?=
 =?utf-8?B?MU1KRHg4YitRam1HWEpoTkorVDFsOTlDRnBTQlFIMFpiSitnYXRwOEtKdVZm?=
 =?utf-8?B?VWlicUdUNTNTc3FOVHM1M1QvUktLdERnWGM4TWpXSDYzVEp0L1JjR1BzdHhN?=
 =?utf-8?B?LzJsa1FUb0pkMnVzUFN6ZnB1UGRFSlgxUmlWRTZQVVVqcGZCR3NFMWhRZ1kw?=
 =?utf-8?B?aVFpK1ZwQXJ1czhzYkQwRDdXR0dZMU10VmE3K1h2eEVNSE1hZHl6cCt3K0o4?=
 =?utf-8?B?d2xDS2lRVmdKSVArM1FsMTVBTjViWS8rdG1iemVqbXpGOGxmR3FmVTV2OUd3?=
 =?utf-8?B?OFVQU2VBRDR3ZlFub0tXRlpoaFBrdjFUNWhFb3FBdXIzM3dRSGY0cHlPeDE0?=
 =?utf-8?B?VUo4YytGRnRydWpIdVNrWXFvZHRTK1IwMEJHaFZXQXpVaCtla0NwTnc4bHFY?=
 =?utf-8?B?YTFQY3V4a2c0N2QzWUt4Q1lXeDlTM09mVlpFK2t1S2VTMHprU1l1dTk2Q2kr?=
 =?utf-8?B?S0ZCOXNEVzh1aWxFNFpFclBtVmoreHZBd05WOHphd3lzZHNlM3dtU0JkNUtT?=
 =?utf-8?B?M0Rnc09PVmRPN2U0a1hqOENId2dLZnRuUWZrc1EwUzZxQzIxS3o0d2VNejlH?=
 =?utf-8?Q?TaAZPSG1c1D1wYZQgy9/5AQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <60F2FCAEEEBAFE4FAE84FA7FAA7A2FDA@jpnprd01.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB9305.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe2243f2-0f08-495c-646b-08d9f0ee281a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2022 01:46:31.4867 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xrWt+6Y4rvVsmX34xN74vf8ki0514RS3HnYCQtx11ceCNFwwXNwssnluZGhcrzXthjSW84cjayRmqikXWU0/mA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB3432
X-Mailman-Approved-At: Wed, 16 Feb 2022 05:36:10 +0000
Subject: Re: [Spice-devel] usbredir doesn't hide/filter specific usb devices
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

DQoNCk9uIDE1LzAyLzIwMjIgMjM6NDAsIGxpemhpamlhbkBmdWppdHN1LmNvbSB3cm90ZToNCj4g
PiBUaGUgYXV0by1yZWRpcmVjdC1maWx0ZXIgb25seSB3b3JrcyBmb3IgYXV0by1yZWRpcmVjdGVk
IFVTQiBkZXZpY2VzLg0KPg0KPiBtYXkgaSBrbm93IHdoYXQgImF1dG8tcmVkaXJlY3RlZCB1c2Ig
ZGV2aWNlcyIgbWVhbiBoZXJlLiB3aGF0J3PCoGF1dG8tcmVkaXJlY3QtZmlsdGVyIHVzZXIgY2Fz
ZS4NCj4NCj4NCj4NCj4gPiBXaGVuIGEgdXNlciBpcyBjaG9vc2luZyBhIGRldmljZSBmcm9tIHRo
ZSBtZW51LCB0aGUgZmlsdGVyIGRvZXMgbm90IGFwcGx5Lg0KPg0KPiBhbnkgaWRlYSB0byBoaWRl
IHNwZWNpZmljIGhvc3QgdXNiIGRldmljZXMgZnJvbSBndWVzdCBieSBjdXJyZW50IHNjaGVtZQ0K
DQpJIGZpbmFsbHkgZ290IGl0IHdvcmtzIGJ5IHJlZmVycmluZyBbSG9zdCBGaWx0ZXJpbmddIHNl
Y3Rpb24gaW4gaHR0cHM6Ly93d3cuc3BpY2Utc3BhY2Uub3JnL3VzYnJlZGlyLmh0bWwNCg0KDQp0
aGFua3MgeW91IGFsbA0KDQpUaGFua3MNClpoaWppYW4NCg0KDQo+DQo+DQo+IEdldCBPdXRsb29r
IGZvciBBbmRyb2lkIDxodHRwczovL2FrYS5tcy9BQWI5eXNnPg0KPg0KPiAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0NCj4gKuWPkeS7tuS6ujoqIFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4NCj4g
KuWPkemAgeaXtumXtDoqIDIwMjLlubQy5pyIMTXml6XmmJ/mnJ/kuowgMjI6NTANCj4gKuaUtuS7
tuS6ujoqIExpLCBaaGlqaWFuL+adjiDmmbrlnZoNCj4gKuaKhOmAgToqIHNwaWNlLWRldmVsDQo+
ICrkuLvpopg6KiBSZTogW1NwaWNlLWRldmVsXSB1c2JyZWRpciBkb2Vzbid0IGhpZGUvZmlsdGVy
IHNwZWNpZmljIHVzYiBkZXZpY2VzDQo+DQo+IEhpIFpoaWppYW4sDQo+DQo+IE9uIFR1ZSwgRmVi
IDE1LCAyMDIyIGF0IDM6NTIgUE0gTGksIFpoaWppYW4gPGxpemhpamlhbkBjbi5mdWppdHN1LmNv
bT4gd3JvdGU6DQo+DQo+ICAgICBIaSBndXlzDQo+DQo+ICAgICBJIGludGVuZGVkIHRvIG5vdCBh
bGxvdyByZWRpcmVjdGluZyBzb21lIG9mIG15IHVzYiBkZXZpY2VzKEhJRCkgdG8gdGhlIGd1ZXN0
LCBpIHRob3VnaHQgaHR0cHM6Ly93d3cuc3BpY2Utc3BhY2Uub3JnL3VzYnJlZGlyLmh0bWwNCj4g
ICAgIGNvdWxkIGhlbHAgb24gdGhpcy4NCj4NCj4gICAgIE15IGhvc3QgaGFzIGJlbG93IHVzYiBk
ZXZpY2VzDQo+DQo+ICAgICBsaXpqQEZOU1RQQzp+L3dvcmtzcGFjZS92Z3QvdmlydC12aWV3ZXIv
c3JjJCBsc3VzYg0KPiAgICAgQnVzIDAwMiBEZXZpY2UgMDAxOiBJRCAxZDZiOjAwMDMgTGludXgg
Rm91bmRhdGlvbiAzLjAgcm9vdCBodWINCj4gICAgIEJ1cyAwMDEgRGV2aWNlIDAwNjogSUQgMDRk
ODowYjJhIE1pY3JvY2hpcCBUZWNobm9sb2d5LCBJbmMuDQo+ICAgICBCdXMgMDAxIERldmljZSAw
MjE6IElEIDA0NmQ6YzUzNCBMb2dpdGVjaCwgSW5jLiBVbmlmeWluZyBSZWNlaXZlcg0KPiAgICAg
QnVzIDAwMSBEZXZpY2UgMDA0OiBJRCAwNDI0OjIxMzcgU3RhbmRhcmQgTWljcm9zeXN0ZW1zIENv
cnAuDQo+ICAgICBCdXMgMDAxIERldmljZSAwMDM6IElEIDBiZGE6ODE3NiBSZWFsdGVrIFNlbWlj
b25kdWN0b3IgQ29ycC4gUlRMODE4OENVUw0KPiAgICAgODAyLjExbiBXTEFOIEFkYXB0ZXINCj4g
ICAgIEJ1cyAwMDEgRGV2aWNlIDAwMjogSUQgMGJkYTo4NzcxIFJlYWx0ZWsgU2VtaWNvbmR1Y3Rv
ciBDb3JwLg0KPiAgICAgQnVzIDAwMSBEZXZpY2UgMDAxOiBJRCAxZDZiOjAwMDIgTGludXggRm91
bmRhdGlvbiAyLjAgcm9vdCBodWINCj4NCj4gICAgICQgcmVtb3RlLXZpZXdlcg0KPiAgICAgLS1z
cGljZS11c2JyZWRpci1hdXRvLXJlZGlyZWN0LWZpbHRlcj0iLTEsMHgwYmRhLC0xLC0xLDAiIC0t
c3BpY2UtZGVidWcNCj4gICAgIHNwaWNlOi8vbG9jYWxob3N0OjU5MDANCj4NCj4NCj4gICAgIEZv
ciB0ZXN0aW5nLCBpIGp1c3Qgd2FudCB0byBoaWRlIHByb2R1Y2UgaWQgMHgwYmRhIGZyb20gcmVt
b3RlLXZpZXdlcg0KPiAgICAgd2l0aCBhYm92ZSBjb21tYW5kIGxpbmUuIEJ1dCBhY3V0YWxseQ0K
Pg0KPiAgICAgaSBhbSBzdGlsbCBhYmxlIHRvIHJlZGlyZWMgYm90aCBSZWFsdGVrIGRldmljZSB0
byB0aGUgZ3Vlc3QgdGhyb3VnaA0KPiAgICAgcmVtb3RlLXZpZXdlci4NCj4NCj4gICAgIFNvIGlz
IHRoZXJlIHNvbWV0aGluZyB3aXRoIG15IHVzYWdlID8gRmVlbCBmcmVlIHRvIGxldCBtZSBrbm93
IGlmIHRoZXJlDQo+ICAgICBpcyBzb21ldGhpbmcgd3JvbmcuDQo+DQo+DQo+IFRoZSBhdXRvLXJl
ZGlyZWN0LWZpbHRlciBvbmx5IHdvcmtzIGZvciBhdXRvLXJlZGlyZWN0ZWQgVVNCIGRldmljZXMu
DQo+IFdoZW4gYSB1c2VyIGlzIGNob29zaW5nIGEgZGV2aWNlIGZyb20gdGhlIG1lbnUsIHRoZSBm
aWx0ZXIgZG9lcyBub3QgYXBwbHkuDQo+DQo+IFJlZ2FyZHMsDQo+IMKgwqDCoCBVcmkuVA0KPg0K
Pg0KPiAgICAgVGhhbmtzDQo+DQo+ICAgICBaaGlqaWFuDQo+DQo+DQo+DQo+DQoNCg==
