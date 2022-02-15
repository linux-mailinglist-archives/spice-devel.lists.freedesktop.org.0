Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6BB4B6FF5
	for <lists+spice-devel@lfdr.de>; Tue, 15 Feb 2022 16:52:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9011D10E474;
	Tue, 15 Feb 2022 15:52:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 430 seconds by postgrey-1.36 at gabe;
 Tue, 15 Feb 2022 15:47:35 UTC
Received: from esa18.fujitsucc.c3s2.iphmx.com (esa18.fujitsucc.c3s2.iphmx.com
 [216.71.158.38])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50D8310E4EF
 for <spice-devel@lists.freedesktop.org>; Tue, 15 Feb 2022 15:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
 t=1644940056; x=1676476056;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=EiodE7PnWUojbWhSK9JdGk36IcraTr+uhDyYy67EvtQ=;
 b=Dxg8kh7m+aJPYJGhYE//5eQL9UMkkP8m4NNXhYTICbeJKxM8eBpYMn6B
 YVp5EvLvXfhDOZ+F2pPuvj/UvT2gTc3QXnEm6DodPQt4sqjcERu1GXeCZ
 juULZxVIgdXmYEvaCZWmigY4toXE2YuVRcXvUrg/IvmUFwuOtQE3E6Kla
 yb0CPFEjGPR5wvUGxa/bZmd/qRSUoz7cTml7khQGoUlJyjTv5Ph74q0js
 MjEFPmpRFsFkK8mwfCp357gYZJ4aq3JLdtx1VzMi3aEfW9gy+meV+ys+1
 GRPKRj5Dr2BpZQSYHBQXvr/TkFlG0MBX3HMmYxhQ12N1vaRFFmKeVSH09 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="50805266"
X-IronPort-AV: E=Sophos;i="5.88,371,1635174000"; d="scan'208,217";a="50805266"
Received: from mail-os0jpn01lp2106.outbound.protection.outlook.com (HELO
 JPN01-OS0-obe.outbound.protection.outlook.com) ([104.47.23.106])
 by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 00:40:21 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Al2s34Fxz0N3psXlkha+/n06YKJRmrR5aWMqfFknZIkPCPH8oHTThJTzaRyhT22c2FcY6iN5ozzfL6GN5RyK7ajKS0zbpyi5NZb58YfuhdEJjia2AVaaEUX3ZuzKR/tpjymC138r4/KRsNyCwHx8ha06019YI2G23sx7bhqsksRztHd/0AA33GcWzbH0+KhisckcfuiG6lXWEtvTCFzbG1H3Qg+qNjR2S4HnV2dvZJSDHbAx+ujCHcsp8KLQkDM6pUGRx2sldcd7JCHx+mxWZYBXWFksXyLSsz9MLVOn+50dzZiieUkLO0gZzisDcttwqPAqxbek2rBeP2qJyZQOTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EiodE7PnWUojbWhSK9JdGk36IcraTr+uhDyYy67EvtQ=;
 b=gApxApzrkJOHQQpVksIN1ETopFHKLCJQoTlP7qarXJw0CS4qJdAiAshjSOez4bAaH0Iitw7uDx+/DZf/Q2TKER4eEEDysMSDmgQJpkzaxS2dctdZE0LvY/jk9YynCPk+WpHvWq2NPYL3jvNm6rMF5m42x0Ajdq+kHK9uuTQeiHgz5YrJnfxIP3YUcvfPMxYhmaQGYsDcUOub2l56XxS4AxbprH5yEk3+pwsx+RhzCpPIWCnFYBaEgM4JOw1oCw6P8qaOaJmVBpxsUYsaM3vKPS95J61Yg6NiELUw2oPFlcEUtr+rWPs79uLIH3meW7jeaDUVNvkITaqE8u7V453qGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EiodE7PnWUojbWhSK9JdGk36IcraTr+uhDyYy67EvtQ=;
 b=bV/tDOJwlRSG+U5qAn5pbVCzgylJ1/ofUbN9VDcyk27h935zTLdHmiAqsbABJA45AhYsfs2Okr6o9XH89JfwrwEFXW/NMGT2a5/hdnlyS4/B7IKC10GVh1uGwC8BjHZKh0ienl0d5XPzdSq9NlwGoPilnmG1Fab5n4q6OhNo0e8=
Received: from TYCPR01MB9305.jpnprd01.prod.outlook.com (2603:1096:400:196::10)
 by OSBPR01MB1749.jpnprd01.prod.outlook.com (2603:1096:603:4::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.14; Tue, 15 Feb
 2022 15:40:17 +0000
Received: from TYCPR01MB9305.jpnprd01.prod.outlook.com
 ([fe80::a83c:6b2f:3f10:b182]) by TYCPR01MB9305.jpnprd01.prod.outlook.com
 ([fe80::a83c:6b2f:3f10:b182%4]) with mapi id 15.20.4975.019; Tue, 15 Feb 2022
 15:40:17 +0000
From: "lizhijian@fujitsu.com" <lizhijian@fujitsu.com>
To: Uri Lublin <uril@redhat.com>
Thread-Topic: [Spice-devel] usbredir doesn't hide/filter specific usb devices
Thread-Index: AQHYInHEhAS02jznUUC9WzGA3QUJIqyUsaeAgAAMi2k=
Date: Tue, 15 Feb 2022 15:40:17 +0000
Message-ID: <TYCPR01MB9305A867046320ADF30122EBA5349@TYCPR01MB9305.jpnprd01.prod.outlook.com>
References: <676eae2b-bb7c-2e89-6d0d-9a1cbc03ffa8@cn.fujitsu.com>
 <CAAg9qJ0cBHDqHoGGPvwtb7GeGXuM5foGhoo3g9wp-5wpP58j_g@mail.gmail.com>
In-Reply-To: <CAAg9qJ0cBHDqHoGGPvwtb7GeGXuM5foGhoo3g9wp-5wpP58j_g@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 56ff237a-8acf-4ceb-c89b-08d9f0997742
x-ms-traffictypediagnostic: OSBPR01MB1749:EE_
x-microsoft-antispam-prvs: <OSBPR01MB1749048A400383905C76E9CFA5349@OSBPR01MB1749.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9uaXVIaKls38vOD3C3OjJl5N0glui3n65j/PMOg8Q14nqFDpJTEiP1X9SYBXRbnsnxpHdgfjBCCcJ0ohTp9wrzynA5fpz9loqfoN8AuU9mxTJBACqwrlqwv3Jc3c+3btoV0Y1LVOvR/uMN3fsexQh5XMYQ8hwhTn5+G0/keQBnKVwq/9wBp4dSZbX4Wj4g65fnIRt3AVMsxHbIczb9kvhBgbEMdIK6G1mDimKeYezY+yMeRv++xjxIMjoFmjb/YKLdWaRLYeWc4UWSeRMi4Bfd5u5RCUBfa7FgEONaef87gQfmcRQbRdNxSS0oVnNDUYGrh5BPhtMVJ9LWKhdJWj57Ny5mU9VQ5pHA1bqiG3j0/oqreZGf/N+2x/vUEtwBkwkrPRuJB1ChcM52s6CxRZ2Ac3+cq+0xoY8DsUTxdARv23oKCAYFCxArrLHHoRypvHrSS1DtrdKjyCDhK+fwSZS08duscKGfomVfOzupDvitLYvUK42/eWd39q11VfhasTH13+GnJ+t9KObkPhJnGvFBFbGMdDCCR/7rsa1klLAHdCxG69SR5geLNms7shXqw0tYsl2+xglVlVOw63QRaxPBvEFIBdM7X0tq4Gv9EpESFGWcRuL8PvV+Wjmp/ffGMin5j+DYwbRZA4Uez7ZhLDQ64q3Z2mGfm8HyzBN+PEjUzVTrfqb/pkF4shT+ynbCgITThke/VjV51yHInj6OFI+Dis9Bcy6sGFtpPZ6WCpWlhxVZn9O3Zkyss6m/A7SqhJaTEt+DItA34QfptVfwI8tz0ZzcI02lA8ZJjO2bCuX54=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYCPR01MB9305.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(7696005)(76116006)(122000001)(82960400001)(6916009)(9686003)(55016003)(55236004)(71200400001)(8676002)(91956017)(66556008)(64756008)(66476007)(66446008)(52536014)(66946007)(38100700002)(6506007)(33656002)(38070700005)(53546011)(5660300002)(4326008)(8936002)(21615005)(316002)(85182001)(2906002)(26005)(186003)(508600001)(166002)(86362001)(45080400002)(966005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?YVgyQmo1T01lUHQvRHcvWnZEZGdVUTZCcXdtamZqYUVBdFpFeUZ3V0EwY2NH?=
 =?gb2312?B?aWRYOG5WZVVGNFdvdGlLbFNXclBhMnB5TDVzT0VLcDZ5eEt4RUFnYTRQUFlW?=
 =?gb2312?B?MGFVMG1ucXVXRWw4VkNYdHVCN2I0Mmg3a1JrbjJhL1B0eXBXU0k4Y2NNSGhz?=
 =?gb2312?B?ZXRpT0d1NWhCbHhsUXY0dWVEZWhic2MvR2pwQmFLaUo0S2llTGdqak8xZkpP?=
 =?gb2312?B?aDV6TkVjU1BlUlFVeFg3UVlPaEY4MXhoeER6T1BzQkJuRWJpc25HeVFzdzBx?=
 =?gb2312?B?VDBibTJlSndVZTE3SW1ETlJUK3FFNW80VVhJTE9ydCttcmtXcXhBN0lQbmVj?=
 =?gb2312?B?NFZCRzF2a0p0b0pDTmZsVlIwZVR6MlYwZDJua0huTjZBV1A1MXJKU21zdVlU?=
 =?gb2312?B?YStjdGdRMmVsaTltaXc1ZVVieWV2WGZLa0c3V0FrUDc2TkRSUC9yRUhURWRj?=
 =?gb2312?B?ZkxKOXdwNXM4aUxYanVlN1d3dUdrV2dBWFJhWmVtaW12WnZZdlN6SWFaTVls?=
 =?gb2312?B?NDUxVFdROFZRWG0zeXl1V1pUZmZJUWtvL25iOEZKYWhyRElNdnZ3MkFqNnhV?=
 =?gb2312?B?OWR6QnNSeDhHSjRGZU95dEZYS0dmYzRQaFd3bElNU08wWEI2ZExwMjRWNVJH?=
 =?gb2312?B?WXVOR3MvMzJhYjhBcmVjbGo0MlljQ3ErN1lxUU9MekNDT3k2ZjBUMkNoODBP?=
 =?gb2312?B?Ymh3anVObnMrNHhjS1ZxMm5uVW83T29nek5LYTZMVWNSSGdwMXF1bDdJaFhn?=
 =?gb2312?B?Ky9aWnRtMmxqSW1WNml3N2pVUFBXU1FLbEJjU3l3c1MzMjhEZTlxWWtaYlhz?=
 =?gb2312?B?dm9KcFRBaWNudDVGOTRla1FTRXI4c05iZGZOaGswblRlUFhTYTlwZCtsbnBL?=
 =?gb2312?B?QkczYjNVbUJTeUhCdVpHZkx2ZFovcTBSZDlPUkVOK1NqZlB0MStLdytaazhK?=
 =?gb2312?B?dEcwUzl5c1RWQ0FiT0J2b1d6K1J1VitsYWVJV0RiL0QvM3NZaVgxL01lVXRN?=
 =?gb2312?B?cnRDMGE3U3QwbktVSXFWeTVJMkM0U3N0aThGMGxOVE51b05XR0hYakF3d3hu?=
 =?gb2312?B?dTR6WGFxcWFyNTNnSkJ3aTNlMnFzU3RDbXp6NTUyUkNnVXNlQ0hoaUpXeGlU?=
 =?gb2312?B?VnVJd0lHMVJZUmxJamhZMGJKb2tDTGRKb3FtbzcrTCtRa2o3bWZ3OTRPM3ow?=
 =?gb2312?B?cVNQRm9hSTJKbHFuTVpid1JNV2kzNmE0SnlKS1pKTFluUTF3S05BRjVzTit2?=
 =?gb2312?B?Wlp4T0JmVEdnSzFOR3ViekhkRGxseEovQW5NUmNkVUxwSnVJSks2RHdINld0?=
 =?gb2312?B?elcvR0FLK1FtWHZ3alhudXdvWHZhWGhCellPaW9NdUxTNWNyTlVrTTVzTUZm?=
 =?gb2312?B?MFhsRHdWc095QTBFTnNYS044SkNlMXA3VlNEU2tXeXZmbDdFQ3doM21wdnBx?=
 =?gb2312?B?aXFNTURiSnY2VGkxUzU3TXpkd3ozR2ZhUXM4Q3FkaDdPQmRxTVpBdFdKbWF0?=
 =?gb2312?B?MVlCZzJGaGlXTmo0NDFSK1lFc0pkajdjQmVweG1IYStSOHFTT1VKZmdPL0w0?=
 =?gb2312?B?cEk3bmVaTnVhTWx1WmVFak91eStWdFk5ZkFvOXVpaU4xMk5pSU55U1pqcmFn?=
 =?gb2312?B?ak1wNDd1bkVDbWNEZkErVEkzYlVpZlFGWDRRdzZ6R3dCY0lFdTZmWlh0am9O?=
 =?gb2312?B?OGQ1THF4WkFRVENEYmQyZVlla0RKN3c4U2dzVnVzbUtqUzVSbXJYR1VmWWV3?=
 =?gb2312?B?eC9ZT0RRQUg5VFVsYURUS011Z1lxOEV1YkRWMlNxOGJMVUtQY3grbElzQitZ?=
 =?gb2312?B?cjdTNHZpTXp2QlJjRmVjRW5STVBOSHBVaTkyZzJZR2lTUVovQm5wUEtxZDB1?=
 =?gb2312?B?dStNR05ib09RM0VPWDVSM2NYTEl4NzQ2WWFQdC9uTEk3L0VqaEVFOWoySkVp?=
 =?gb2312?B?Kzl4WHBUOWpCY3hqUU85WDNVYkdLL0ZSc0RIcFNBeElPL1VtVWlodlhuUC91?=
 =?gb2312?B?V0l4bVpwbm5INmgxWXB0OXN6NUJFSWNWMndRSU1kVFZ4T3ZCRDZMV0NUc2ZE?=
 =?gb2312?B?RXZvSGVZYWVGOU1rUkJLOFV0eDAwbThzUWs2Wi9WYTlWbUd0MzFnb29aclQ0?=
 =?gb2312?B?bUdlNEdrMmJUMHd4SkwyeVVNUE43RXFnWG45em1yZWMvZUFvUDFtOXI2alVm?=
 =?gb2312?Q?SzLlmj7Y56GVrgloVVYgWVzfsmrnXNrlDujN+pfrLy9k?=
Content-Type: multipart/alternative;
 boundary="_000_TYCPR01MB9305A867046320ADF30122EBA5349TYCPR01MB9305jpnp_"
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB9305.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56ff237a-8acf-4ceb-c89b-08d9f0997742
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2022 15:40:17.0538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8VGjFSYMXIv4uPe0twsBhZct3q7dNJhNrQoWGJliihgx1niDswOoz200S0VdxI4TM5wZmON3s8lk4bPk/sxcbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB1749
X-Mailman-Approved-At: Tue, 15 Feb 2022 15:52:00 +0000
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

--_000_TYCPR01MB9305A867046320ADF30122EBA5349TYCPR01MB9305jpnp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

PiBUaGUgYXV0by1yZWRpcmVjdC1maWx0ZXIgb25seSB3b3JrcyBmb3IgYXV0by1yZWRpcmVjdGVk
IFVTQiBkZXZpY2VzLg0KDQptYXkgaSBrbm93IHdoYXQgImF1dG8tcmVkaXJlY3RlZCB1c2IgZGV2
aWNlcyIgbWVhbiBoZXJlLiB3aGF0J3MgYXV0by1yZWRpcmVjdC1maWx0ZXIgdXNlciBjYXNlLg0K
DQoNCg0KPiBXaGVuIGEgdXNlciBpcyBjaG9vc2luZyBhIGRldmljZSBmcm9tIHRoZSBtZW51LCB0
aGUgZmlsdGVyIGRvZXMgbm90IGFwcGx5Lg0KDQphbnkgaWRlYSB0byBoaWRlIHNwZWNpZmljIGhv
c3QgdXNiIGRldmljZXMgZnJvbSBndWVzdCBieSBjdXJyZW50IHNjaGVtZQ0KDQoNCkdldCBPdXRs
b29rIGZvciBBbmRyb2lkPGh0dHBzOi8vYWthLm1zL0FBYjl5c2c+DQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQq3orz+yMs6IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4N
Creiy83KsbzkOiAyMDIyxOoy1MIxNcjV0MfG2rb+IDIyOjUwDQrK1bz+yMs6IExpLCBaaGlqaWFu
L8DuINbHvOENCrOty806IHNwaWNlLWRldmVsDQrW98ziOiBSZTogW1NwaWNlLWRldmVsXSB1c2Jy
ZWRpciBkb2Vzbid0IGhpZGUvZmlsdGVyIHNwZWNpZmljIHVzYiBkZXZpY2VzDQoNCkhpIFpoaWpp
YW4sDQoNCk9uIFR1ZSwgRmViIDE1LCAyMDIyIGF0IDM6NTIgUE0gTGksIFpoaWppYW4gPGxpemhp
amlhbkBjbi5mdWppdHN1LmNvbTxtYWlsdG86bGl6aGlqaWFuQGNuLmZ1aml0c3UuY29tPj4gd3Jv
dGU6DQpIaSBndXlzDQoNCkkgaW50ZW5kZWQgdG8gbm90IGFsbG93IHJlZGlyZWN0aW5nIHNvbWUg
b2YgbXkgdXNiIGRldmljZXMoSElEKSB0byB0aGUgZ3Vlc3QsIGkgdGhvdWdodCBodHRwczovL3d3
dy5zcGljZS1zcGFjZS5vcmcvdXNicmVkaXIuaHRtbA0KY291bGQgaGVscCBvbiB0aGlzLg0KDQpN
eSBob3N0IGhhcyBiZWxvdyB1c2IgZGV2aWNlcw0KDQpsaXpqQEZOU1RQQzp+L3dvcmtzcGFjZS92
Z3QvdmlydC12aWV3ZXIvc3JjJCBsc3VzYg0KQnVzIDAwMiBEZXZpY2UgMDAxOiBJRCAxZDZiOjAw
MDMgTGludXggRm91bmRhdGlvbiAzLjAgcm9vdCBodWINCkJ1cyAwMDEgRGV2aWNlIDAwNjogSUQg
MDRkODowYjJhIE1pY3JvY2hpcCBUZWNobm9sb2d5LCBJbmMuDQpCdXMgMDAxIERldmljZSAwMjE6
IElEIDA0NmQ6YzUzNCBMb2dpdGVjaCwgSW5jLiBVbmlmeWluZyBSZWNlaXZlcg0KQnVzIDAwMSBE
ZXZpY2UgMDA0OiBJRCAwNDI0OjIxMzcgU3RhbmRhcmQgTWljcm9zeXN0ZW1zIENvcnAuDQpCdXMg
MDAxIERldmljZSAwMDM6IElEIDBiZGE6ODE3NiBSZWFsdGVrIFNlbWljb25kdWN0b3IgQ29ycC4g
UlRMODE4OENVUw0KODAyLjExbiBXTEFOIEFkYXB0ZXINCkJ1cyAwMDEgRGV2aWNlIDAwMjogSUQg
MGJkYTo4NzcxIFJlYWx0ZWsgU2VtaWNvbmR1Y3RvciBDb3JwLg0KQnVzIDAwMSBEZXZpY2UgMDAx
OiBJRCAxZDZiOjAwMDIgTGludXggRm91bmRhdGlvbiAyLjAgcm9vdCBodWINCg0KJCByZW1vdGUt
dmlld2VyDQotLXNwaWNlLXVzYnJlZGlyLWF1dG8tcmVkaXJlY3QtZmlsdGVyPSItMSwweDBiZGEs
LTEsLTEsMCIgLS1zcGljZS1kZWJ1Zw0Kc3BpY2U6Ly9sb2NhbGhvc3Q6NTkwMA0KDQpGb3IgdGVz
dGluZywgaSBqdXN0IHdhbnQgdG8gaGlkZSBwcm9kdWNlIGlkIDB4MGJkYSBmcm9tIHJlbW90ZS12
aWV3ZXINCndpdGggYWJvdmUgY29tbWFuZCBsaW5lLiBCdXQgYWN1dGFsbHkNCg0KaSBhbSBzdGls
bCBhYmxlIHRvIHJlZGlyZWMgYm90aCBSZWFsdGVrIGRldmljZSB0byB0aGUgZ3Vlc3QgdGhyb3Vn
aA0KcmVtb3RlLXZpZXdlci4NCg0KU28gaXMgdGhlcmUgc29tZXRoaW5nIHdpdGggbXkgdXNhZ2Ug
PyBGZWVsIGZyZWUgdG8gbGV0IG1lIGtub3cgaWYgdGhlcmUNCmlzIHNvbWV0aGluZyB3cm9uZy4N
Cg0KVGhlIGF1dG8tcmVkaXJlY3QtZmlsdGVyIG9ubHkgd29ya3MgZm9yIGF1dG8tcmVkaXJlY3Rl
ZCBVU0IgZGV2aWNlcy4NCldoZW4gYSB1c2VyIGlzIGNob29zaW5nIGEgZGV2aWNlIGZyb20gdGhl
IG1lbnUsIHRoZSBmaWx0ZXIgZG9lcyBub3QgYXBwbHkuDQoNClJlZ2FyZHMsDQogICAgVXJpLlQN
Cg0KDQpUaGFua3MNCg0KWmhpamlhbg0KDQoNCg0KDQo=

--_000_TYCPR01MB9305A867046320ADF30122EBA5349TYCPR01MB9305jpnp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
</head>
<body>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
&gt; The auto-redirect-filter only works for auto-redirected USB devices.</=
div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
may i know what &quot;auto-redirected usb devices&quot; mean here. what's&n=
bsp;auto-redirect-filter user case.</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
<span>&gt; When a user is choosing a device from the menu, the filter does =
not apply.</span></div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"auto">
<div><br>
</div>
<div dir=3D"auto">any idea to hide specific host usb devices from guest by =
current scheme</div>
<div dir=3D"auto"><br>
</div>
<div><br>
</div>
Get <a href=3D"https://aka.ms/AAb9ysg">Outlook for Android</a></div>
<div id=3D"id-f6a8d475-5dcb-48a4-9fd6-b9df2cd42998" class=3D"ms-outlook-mob=
ile-reference-message">
<div style=3D"font-family: sans-serif; font-size: 12.48pt; color: rgb(0, 0,=
 0);"><br>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg"><strong>=B7=A2=BC=FE=C8=CB:</strong> Uri Lublin &=
lt;uril@redhat.com&gt;<br>
<strong>=B7=A2=CB=CD=CA=B1=BC=E4:</strong> 2022=C4=EA2=D4=C215=C8=D5=D0=C7=
=C6=DA=B6=FE 22:50<br>
<strong>=CA=D5=BC=FE=C8=CB:</strong> Li, Zhijian/=C0=EE =D6=C7=BC=E1<br>
<strong>=B3=AD=CB=CD:</strong> spice-devel<br>
<strong>=D6=F7=CC=E2:</strong> Re: [Spice-devel] usbredir doesn't hide/filt=
er specific usb devices<br>
</div>
<br>
<div dir=3D"ltr">
<div>Hi Zhijian,</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 15, 2022 at 3:52 PM Li, Z=
hijian &lt;<a href=3D"mailto:lizhijian@cn.fujitsu.com">lizhijian@cn.fujitsu=
.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
Hi guys<br>
<br>
I intended to not allow redirecting some of my usb devices(HID) to the gues=
t, i thought
<a href=3D"https://www.spice-space.org/usbredir.html" rel=3D"noreferrer" ta=
rget=3D"_blank">
https://www.spice-space.org/usbredir.html</a><br>
could help on this.<br>
<br>
My host has below usb devices<br>
<br>
lizj@FNSTPC:~/workspace/vgt/virt-viewer/src$ lsusb<br>
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub<br>
Bus 001 Device 006: ID 04d8:0b2a Microchip Technology, Inc.<br>
Bus 001 Device 021: ID 046d:c534 Logitech, Inc. Unifying Receiver<br>
Bus 001 Device 004: ID 0424:2137 Standard Microsystems Corp.<br>
Bus 001 Device 003: ID 0bda:8176 Realtek Semiconductor Corp. RTL8188CUS <br=
>
802.11n WLAN Adapter<br>
Bus 001 Device 002: ID 0bda:8771 Realtek Semiconductor Corp.<br>
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub<br>
<br>
$ remote-viewer <br>
--spice-usbredir-auto-redirect-filter=3D&quot;-1,0x0bda,-1,-1,0&quot; --spi=
ce-debug <br>
spice://localhost:5900<br>
</blockquote>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
<br>
For testing, i just want to hide produce id 0x0bda from remote-viewer <br>
with above command line. But acutally<br>
<br>
i am still able to redirec both Realtek device to the guest through <br>
remote-viewer.<br>
<br>
So is there something with my usage ? Feel free to let me know if there <br=
>
is something wrong.<br>
</blockquote>
<div><br>
</div>
<div>The auto-redirect-filter only works for auto-redirected USB devices.</=
div>
<div>When a user is choosing a device from the menu, the filter does not ap=
ply.</div>
<div><br>
</div>
<div>Regards,</div>
<div dir=3D"auto">&nbsp;&nbsp;&nbsp; Uri.T<br>
</div>
<div>&nbsp;</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
<br>
Thanks<br>
<br>
Zhijian<br>
<br>
<br>
<br>
</blockquote>
</div>
</div>
<br>
</div>
</body>
</html>

--_000_TYCPR01MB9305A867046320ADF30122EBA5349TYCPR01MB9305jpnp_--
