Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A74027E8B1
	for <lists+spice-devel@lfdr.de>; Wed, 30 Sep 2020 14:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91DB389271;
	Wed, 30 Sep 2020 12:39:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2060.outbound.protection.outlook.com [40.107.223.60])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45F5989A1A;
 Wed, 30 Sep 2020 12:34:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GUyjDRs03o3fS2d+iCsNTk52XbkEAjW0ujRpgpm4NpgyB3GiI9zj5ZUWzo3QgsP3a7wq0zzbUkr0L9lvgBAlbwZwbY6qs5Q2IjbcH2V+RTZ2FJBo/up1zhnkgO5Kkp9meSzSEh4k/pZ7OMJJSQGgbp0WC8BLPwzG5L1QWeEr88SMTen/DMO2SJSixEU3yF1MPyi08a/PnI5R3QE6mX3LXlWEShbm4yQoCSpoe1iBixJpKncfb4M66QxW/HIhSlAhhMzgv1GCoJlQW4Cl1zOUXiSXsjOa4ZkKD3xllN/whQCQwPT8wZZEYVhSJslYYfQv0PyMcW01gxyR6YhHgD+2RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6MM+NUl/QvXystjP4gcGoQ2HZT79wiYrMdP9jTNoLMQ=;
 b=OQJ/LpHJwjx48oqYuGdCq/bUwvx34P+QYDB8kaVwud1TJ/myF8Jle9nygxG8ZKhM1mu2j58AHceiWtrNpr9m/p5da1LljVVYR01bNVmPSoNQiKnLZ1no5VQHEGylOUkiHZBSx4WMvoh+nPDwfk3ekmP2F+5RePhcvK7ViSPV+s3WuSZenaSv2L6+7alaG7yY+KL5kiCBZhBNBXH0EVAxr1eL8EURNKVw8yHDpLADISHMeJ4Zf/8XTuniD7nCbN/5Xve0gv8SrtkffgQxKfx6ZG9erFS7qJYWU7Iw+r4RTmJjIjgECuXBdP23bthqtqrARGJOAp9P3AgzCkDhA5hXyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6MM+NUl/QvXystjP4gcGoQ2HZT79wiYrMdP9jTNoLMQ=;
 b=SG0R+FeL5yzKqnC6AfSYUbMN4gslzztmFeK7+tV4DN1hGLKEK7Dh8Ub+OmD8CPwAwyAyctmIgmJCTShzxXdDsfWjrk3BzW8MDE7vUm3Si2LtudX0Ic4/oPJ0MXv9BSto45nEJ3UGWh/CGbGQG8D/uAbuQtHq4EOW8xZx33CTViM=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB4690.namprd12.prod.outlook.com (2603:10b6:208:8e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.22; Wed, 30 Sep
 2020 12:34:36 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::f8f7:7403:1c92:3a60]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::f8f7:7403:1c92:3a60%6]) with mapi id 15.20.3433.032; Wed, 30 Sep 2020
 12:34:36 +0000
To: Daniel Vetter <daniel@ffwll.ch>
References: <20200929151437.19717-1-tzimmermann@suse.de>
 <20200929151437.19717-3-tzimmermann@suse.de>
 <8fad0114-064a-4ed5-c21d-d1b4294de0a1@amd.com>
 <2614314a-81f7-4722-c400-68d90e48e09a@suse.de>
 <8a84f62b-33f3-f44c-52af-c859a0e0d1fb@gmail.com>
 <07972ada-9135-3743-a86b-487f610c509f@suse.de>
 <b569b7e3-68f0-edcc-c8f4-170e9042d348@gmail.com>
 <20200930094712.GW438822@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <8479d0aa-3826-4f37-0109-55daca515793@amd.com>
Date: Wed, 30 Sep 2020 14:34:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20200930094712.GW438822@phenom.ffwll.local>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-ClientProxiedBy: FRYP281CA0009.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::19)
 To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 FRYP281CA0009.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.17 via Frontend Transport; Wed, 30 Sep 2020 12:34:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: acb83a58-db16-48eb-58af-08d8653d3084
X-MS-TrafficTypeDiagnostic: BL0PR12MB4690:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BL0PR12MB46909AB050EA28CB43985C7983330@BL0PR12MB4690.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HGasQQyCz3od76EXrpm7Ocwk0HubtvHNpeelZ/TVcyEUuAHo4AfAZk7j/l0ng47PEZhFHILOkJ1t9heLd4CCB3VSyLmOTaVRlyZLQh9rZESwhntrdE9WQTI9Ipt93qyDvJhM/OymkrYEawQKeslveORWIbpiCPrCnGERWUefEO4UYDGKl+JVS+U67AegAoCQ3Cka+USXs4NSPFDFGebNHhJLiEH6YbfdrR9BW8wfKtRLApdwQtx2YrsHuuOCGNZyVyS34ssq0n6HscXTT11uZtBNEIiwKaAIAxKARph0Lf0CE3hKjhIihy1fp4fM1BXjc8DRFBNM57ZYGmMSRelAzu40w5HiJ+GvqqsxkFuivXInxWzd8FnLnXJ7bKahqYg6fOF2icN4HwZC48wzXPTMz91ZgtgcnFZMp6FbCvVu2doFNeZ57lVUT7no1EzsBxAxzLS2T1MkyF+PywDooZJzRA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(346002)(376002)(396003)(39860400002)(16526019)(186003)(6666004)(2616005)(316002)(8936002)(52116002)(478600001)(45080400002)(66946007)(6486002)(5660300002)(966005)(6916009)(4326008)(2906002)(8676002)(7416002)(31686004)(86362001)(83380400001)(66574015)(31696002)(66476007)(66556008)(7406005)(36756003)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Go+F4xJjH3Eu6rFpPTYagWuv5YPbYXHddlDD2hC0uRbHtrlnGkSPqPKI2l16/iZS0/IL7QYsm+K71wPOF+ic87auzFilf9E9qhCAtaH9sW0TPOGLDnx9J+9HICNlON8Z90J5RiDeQlUz4GnkJd/hH8fVviBtJFACBOuaG4ir2XFTcm9K63CplYcQNQNNtWTTSrPFtGvSm5VgqiiX6fVhH9GcQPHC3qt2hihj8/ol9sfMNaPy2zF0sNzItX6TJoEG0/3vEvKiAbW9kMlhGBH5pWTZYmrG0V1ysjD2DuuuQ91IPDn62JQVF2UWSVpDLh5waCiVEyYrHuNRnQH+C3B94FxuCb5T1PO8kDdy6mMq1RzKJRrWiZEuy/8cWC1Ad4E+pcCA22b9+bWXa2Eb0+cVGQPCUuRcgOtpjmJcdb7cSdrLVrLQZH8UlGvDSwX2PMf75WTwWjBp5c3bNOeZ+JSQkVACja/QDm6iqkd7UJiz1a32k05l1MkdVFnf5DDi4QKAoV59jw8wF2+va+hlpsKE38J0SBxwxXYt8u+VSdesBOT3yovbr24z6So2IV/IROo6EDzTo3yIn6nE0d6LRGMKtEhyybj7rN4gS9Xu7SwFngRZHY6tIMYDCw6ZrMt0krcoKPRQYAQ0nBfnYZ2lEJ4fuhQ2tT0xjrZ9MaXHVNsdMgU5b/jN/Sl8gCjcFybydrsNM49dd4Of/JKL34rGjD7e8Q==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acb83a58-db16-48eb-58af-08d8653d3084
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2020 12:34:35.9732 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4TfNRqsaURmaOucoedExQXau2nSxBXSwJPSmEqnqwr/dcl5pHxdqUn9W/GBjXLOR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4690
X-Mailman-Approved-At: Wed, 30 Sep 2020 12:39:46 +0000
Subject: Re: [Spice-devel] [PATCH v3 2/7] drm/ttm: Add
 ttm_kmap_obj_to_dma_buf_map() for type conversion
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
Cc: luben.tuikov@amd.com, heiko@sntech.de, airlied@linux.ie,
 nouveau@lists.freedesktop.org, linus.walleij@linaro.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 melissa.srw@gmail.com, eric@anholt.net, ray.huang@amd.com, kraxel@redhat.com,
 sam@ravnborg.org, sumit.semwal@linaro.org, emil.velikov@collabora.com,
 robh@kernel.org, linux-samsung-soc@vger.kernel.org, jy0922.shim@samsung.com,
 lima@lists.freedesktop.org, oleksandr_andrushchenko@epam.com, krzk@kernel.org,
 steven.price@arm.com, linux-rockchip@lists.infradead.org, kgene@kernel.org,
 alyssa.rosenzweig@collabora.com, linux+etnaviv@armlinux.org.uk,
 spice-devel@lists.freedesktop.org, bskeggs@redhat.com,
 maarten.lankhorst@linux.intel.com, etnaviv@lists.freedesktop.org,
 mripard@kernel.org, inki.dae@samsung.com, hdegoede@redhat.com,
 christian.gmeiner@gmail.com, xen-devel@lists.xenproject.org,
 virtualization@lists.linux-foundation.org, sean@poorly.run, apaneers@amd.com,
 linux-arm-kernel@lists.infradead.org, linaro-mm-sig@lists.linaro.org,
 amd-gfx@lists.freedesktop.org, tomeu.vizoso@collabora.com,
 sw0312.kim@samsung.com, hjc@rock-chips.com, kyungmin.park@samsung.com,
 miaoqinglang@huawei.com, yuq825@gmail.com,
 Thomas Zimmermann <tzimmermann@suse.de>, alexander.deucher@amd.com,
 linux-media@vger.kernel.org, l.stach@pengutronix.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

QW0gMzAuMDkuMjAgdW0gMTE6NDcgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFdlZCwgU2Vw
IDMwLCAyMDIwIGF0IDEwOjM0OjMxQU0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IEFtIDMwLjA5LjIwIHVtIDEwOjE5IHNjaHJpZWIgVGhvbWFzIFppbW1lcm1hbm46Cj4+PiBIaQo+
Pj4KPj4+IEFtIDMwLjA5LjIwIHVtIDEwOjA1IHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5pZzoKPj4+
PiBBbSAyOS4wOS4yMCB1bSAxOTo0OSBzY2hyaWViIFRob21hcyBaaW1tZXJtYW5uOgo+Pj4+PiBI
aSBDaHJpc3RpYW4KPj4+Pj4KPj4+Pj4gQW0gMjkuMDkuMjAgdW0gMTc6MzUgc2NocmllYiBDaHJp
c3RpYW4gS8O2bmlnOgo+Pj4+Pj4gQW0gMjkuMDkuMjAgdW0gMTc6MTQgc2NocmllYiBUaG9tYXMg
WmltbWVybWFubjoKPj4+Pj4+PiBUaGUgbmV3IGhlbHBlciB0dG1fa21hcF9vYmpfdG9fZG1hX2J1
ZigpIGV4dHJhY3RzIGFkZHJlc3MgYW5kIGxvY2F0aW9uCj4+Pj4+Pj4gZnJvbSBhbmQgaW5zdGFu
Y2Ugb2YgVFRNJ3Mga21hcF9vYmogYW5kIGluaXRpYWxpemVzIHN0cnVjdCBkbWFfYnVmX21hcAo+
Pj4+Pj4+IHdpdGggdGhlc2UgdmFsdWVzLiBIZWxwZnVsIGZvciBUVE0tYmFzZWQgZHJpdmVycy4K
Pj4+Pj4+IFdlIGNvdWxkIGNvbXBsZXRlbHkgZHJvcCB0aGF0IGlmIHdlIHVzZSB0aGUgc2FtZSBz
dHJ1Y3R1cmUgaW5zaWRlIFRUTSBhcwo+Pj4+Pj4gd2VsbC4KPj4+Pj4+Cj4+Pj4+PiBBZGRpdGlv
bmFsIHRvIHRoYXQgd2hpY2ggZHJpdmVyIGlzIGdvaW5nIHRvIHVzZSB0aGlzPwo+Pj4+PiBBcyBE
YW5pZWwgbWVudGlvbmVkLCBpdCdzIGluIHBhdGNoIDMuIFRoZSBUVE0tYmFzZWQgZHJpdmVycyB3
aWxsCj4+Pj4+IHJldHJpZXZlIHRoZSBwb2ludGVyIHZpYSB0aGlzIGZ1bmN0aW9uLgo+Pj4+Pgo+
Pj4+PiBJIGRvIHdhbnQgdG8gc2VlIGFsbCB0aGF0IGJlaW5nIG1vcmUgdGlnaHRseSBpbnRlZ3Jh
dGVkIGludG8gVFRNLCBidXQKPj4+Pj4gbm90IGluIHRoaXMgc2VyaWVzLiBUaGlzIG9uZSBpcyBh
Ym91dCBmaXhpbmcgdGhlIGJvY2hzLW9uLXNwYXJjNjQKPj4+Pj4gcHJvYmxlbSBmb3IgZ29vZC4g
UGF0Y2ggNyBhZGRzIGFuIHVwZGF0ZSB0byBUVE0gdG8gdGhlIERSTSBUT0RPIGxpc3QuCj4+Pj4g
SSBzaG91bGQgaGF2ZSBhc2tlZCB3aGljaCBkcml2ZXIgeW91IHRyeSB0byBmaXggaGVyZSA6KQo+
Pj4+Cj4+Pj4gSW4gdGhpcyBjYXNlIGp1c3Qga2VlcCB0aGUgZnVuY3Rpb24gaW5zaWRlIGJvY2hz
IGFuZCBvbmx5IGZpeCBpdCB0aGVyZS4KPj4+Pgo+Pj4+IEFsbCBvdGhlciBkcml2ZXJzIGNhbiBi
ZSBmaXhlZCB3aGVuIHdlIGdlbmVyYWxseSBwdW1wIHRoaXMgdGhyb3VnaCBUVE0uCj4+PiBEaWQg
eW91IHRha2UgYSBsb29rIGF0IHBhdGNoIDM/IFRoaXMgZnVuY3Rpb24gd2lsbCBiZSB1c2VkIGJ5
IFZSQU0KPj4+IGhlbHBlcnMsIG5vdXZlYXUsIHJhZGVvbiwgYW1kZ3B1IGFuZCBxeGwuIElmIHdl
IGRvbid0IHB1dCBpdCBoZXJlLCB3ZQo+Pj4gaGF2ZSB0byBkdXBsaWNhdGUgdGhlIGZ1bmN0aW9u
YWxpdHkgaW4gZWFjaCBpZiB0aGVzZSBkcml2ZXJzLiBCb2Nocwo+Pj4gaXRzZWxmIHVzZXMgVlJB
TSBoZWxwZXJzIGFuZCBkb2Vzbid0IHRvdWNoIHRoZSBmdW5jdGlvbiBkaXJlY3RseS4KPj4gQWgs
IG9rIGNhbiB3ZSBoYXZlIHRoYXQgdGhlbiBvbmx5IGluIHRoZSBWUkFNIGhlbHBlcnM/Cj4+Cj4+
IEFsdGVybmF0aXZlIHlvdSBjb3VsZCBnbyBhaGVhZCBhbmQgdXNlIGRtYV9idWZfbWFwIGluIHR0
bV9ib19rbWFwX29iago+PiBkaXJlY3RseSBhbmQgZHJvcCB0aGUgaGFjayB3aXRoIHRoZSBUVE1f
Qk9fTUFQX0lPTUVNX01BU0suCj4+Cj4+IFdoYXQgSSB3YW50IHRvIGF2b2lkIGlzIHRvIGhhdmUg
YW5vdGhlciBjb252ZXJzaW9uIGZ1bmN0aW9uIGluIFRUTSBiZWNhdXNlCj4+IHdoYXQgaGFwcGVu
cyBoZXJlIGlzIHRoYXQgd2UgYWxyZWFkeSBjb252ZXJ0IGZyb20gdHRtX2J1c19wbGFjZW1lbnQg
dG8KPj4gdHRtX2JvX2ttYXBfb2JqIGFuZCB0aGVuIHRvIGRtYV9idWZfbWFwLgo+IEhtIEknbSBu
b3QgcmVhbGx5IHNlZWluZyBob3cgdGhhdCBoZWxwcyB3aXRoIGEgZ3JhZHVhbCBjb252ZXJzaW9u
IG9mCj4gZXZlcnl0aGluZyBvdmVyIHRvIGRtYV9idWZfbWFwIGFuZCBhc3NvcnRlZCBoZWxwZXJz
IGZvciBhY2Nlc3M/IFRoZXJlJ3MKPiB0b28gbWFueSBwbGFjZXMgaW4gdHRtIGRyaXZlcnMgd2hl
cmUgaXNfaW9tZW0gYW5kIHJlbGF0ZWQgc3R1ZmYgaXMgdXNlZCB0bwo+IGJlIGFibGUgdG8gY29u
dmVydCBpdCBhbGwgaW4gb25lIGdvLiBBbiBpbnRlcm1lZGlhdGUgc3RhdGUgd2l0aCBhIGJ1bmNo
IG9mCj4gY29udmVyc2lvbnMgc2VlbXMgZmFpcmx5IHVuYXZvaWRhYmxlIHRvIG1lLgoKRmFpciBl
bm91Z2guIEkgd291bGQganVzdCBoYXZlIHN0YXJ0ZWQgYm90dG9tIHVwIGFuZCBub3QgdG9wIGRv
d24uCgpBbnl3YXkgZmVlbCBmcmVlIHRvIGdvIGFoZWFkIHdpdGggdGhpcyBhcHByb2FjaCBhcyBs
b25nIGFzIHdlIGNhbiByZW1vdmUgCnRoZSBuZXcgZnVuY3Rpb24gYWdhaW4gd2hlbiB3ZSBjbGVh
biB0aGF0IHN0dWZmIHVwIGZvciBnb29kLgoKQ2hyaXN0aWFuLgoKPiAtRGFuaWVsCj4KPj4gVGhh
bmtzLAo+PiBDaHJpc3RpYW4uCj4+Cj4+PiBCZXN0IHJlZ2FyZHMKPj4+IFRob21hcwo+Pj4KPj4+
PiBSZWdhcmRzLAo+Pj4+IENocmlzdGlhbi4KPj4+Pgo+Pj4+PiBCZXN0IHJlZ2FyZHMKPj4+Pj4g
VGhvbWFzCj4+Pj4+Cj4+Pj4+PiBSZWdhcmRzLAo+Pj4+Pj4gQ2hyaXN0aWFuLgo+Pj4+Pj4KPj4+
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5k
ZT4KPj4+Pj4+PiAtLS0KPj4+Pj4+PiAgIMKgIGluY2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmgg
fCAyNCArKysrKysrKysrKysrKysrKysrKysrKysKPj4+Pj4+PiAgIMKgIGluY2x1ZGUvbGludXgv
ZG1hLWJ1Zi1tYXAuaMKgIHwgMjAgKysrKysrKysrKysrKysrKysrKysKPj4+Pj4+PiAgIMKgIDIg
ZmlsZXMgY2hhbmdlZCwgNDQgaW5zZXJ0aW9ucygrKQo+Pj4+Pj4+Cj4+Pj4+Pj4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmggYi9pbmNsdWRlL2RybS90dG0vdHRtX2Jv
X2FwaS5oCj4+Pj4+Pj4gaW5kZXggYzk2YTI1ZDU3MWM4Li42MmQ4OWYwNWE4MDEgMTAwNjQ0Cj4+
Pj4+Pj4gLS0tIGEvaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19hcGkuaAo+Pj4+Pj4+ICsrKyBiL2lu
Y2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmgKPj4+Pj4+PiBAQCAtMzQsNiArMzQsNyBAQAo+Pj4+
Pj4+ICAgwqAgI2luY2x1ZGUgPGRybS9kcm1fZ2VtLmg+Cj4+Pj4+Pj4gICDCoCAjaW5jbHVkZSA8
ZHJtL2RybV9oYXNodGFiLmg+Cj4+Pj4+Pj4gICDCoCAjaW5jbHVkZSA8ZHJtL2RybV92bWFfbWFu
YWdlci5oPgo+Pj4+Pj4+ICsjaW5jbHVkZSA8bGludXgvZG1hLWJ1Zi1tYXAuaD4KPj4+Pj4+PiAg
IMKgICNpbmNsdWRlIDxsaW51eC9rcmVmLmg+Cj4+Pj4+Pj4gICDCoCAjaW5jbHVkZSA8bGludXgv
bGlzdC5oPgo+Pj4+Pj4+ICAgwqAgI2luY2x1ZGUgPGxpbnV4L3dhaXQuaD4KPj4+Pj4+PiBAQCAt
NDg2LDYgKzQ4NywyOSBAQCBzdGF0aWMgaW5saW5lIHZvaWQgKnR0bV9rbWFwX29ial92aXJ0dWFs
KHN0cnVjdAo+Pj4+Pj4+IHR0bV9ib19rbWFwX29iaiAqbWFwLAo+Pj4+Pj4+ICAgwqDCoMKgwqDC
oCByZXR1cm4gbWFwLT52aXJ0dWFsOwo+Pj4+Pj4+ICAgwqAgfQo+Pj4+Pj4+ICAgwqAgKy8qKgo+
Pj4+Pj4+ICsgKiB0dG1fa21hcF9vYmpfdG9fZG1hX2J1Zl9tYXAKPj4+Pj4+PiArICoKPj4+Pj4+
PiArICogQGttYXA6IEEgc3RydWN0IHR0bV9ib19rbWFwX29iaiByZXR1cm5lZCBmcm9tIHR0bV9i
b19rbWFwLgo+Pj4+Pj4+ICsgKiBAbWFwOiBSZXR1cm5zIHRoZSBtYXBwaW5nIGFzIHN0cnVjdCBk
bWFfYnVmX21hcAo+Pj4+Pj4+ICsgKgo+Pj4+Pj4+ICsgKiBDb252ZXJ0cyBzdHJ1Y3QgdHRtX2Jv
X2ttYXBfb2JqIHRvIHN0cnVjdCBkbWFfYnVmX21hcC4gSWYgdGhlIG1lbW9yeQo+Pj4+Pj4+ICsg
KiBpcyBub3QgbWFwcGVkLCB0aGUgcmV0dXJuZWQgbWFwcGluZyBpcyBpbml0aWFsaXplZCB0byBO
VUxMLgo+Pj4+Pj4+ICsgKi8KPj4+Pj4+PiArc3RhdGljIGlubGluZSB2b2lkIHR0bV9rbWFwX29i
al90b19kbWFfYnVmX21hcChzdHJ1Y3QgdHRtX2JvX2ttYXBfb2JqCj4+Pj4+Pj4gKmttYXAsCj4+
Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc3RydWN0IGRtYV9idWZfbWFwICptYXApCj4+Pj4+Pj4gK3sKPj4+Pj4+PiArwqDCoMKgIGJv
b2wgaXNfaW9tZW07Cj4+Pj4+Pj4gK8KgwqDCoCB2b2lkICp2YWRkciA9IHR0bV9rbWFwX29ial92
aXJ0dWFsKGttYXAsICZpc19pb21lbSk7Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICvCoMKgwqAgaWYgKCF2
YWRkcikKPj4+Pj4+PiArwqDCoMKgwqDCoMKgwqAgZG1hX2J1Zl9tYXBfY2xlYXIobWFwKTsKPj4+
Pj4+PiArwqDCoMKgIGVsc2UgaWYgKGlzX2lvbWVtKQo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBk
bWFfYnVmX21hcF9zZXRfdmFkZHJfaW9tZW0obWFwLCAodm9pZCBfX2ZvcmNlIF9faW9tZW0gKil2
YWRkcik7Cj4+Pj4+Pj4gK8KgwqDCoCBlbHNlCj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGRtYV9i
dWZfbWFwX3NldF92YWRkcihtYXAsIHZhZGRyKTsKPj4+Pj4+PiArfQo+Pj4+Pj4+ICsKPj4+Pj4+
PiAgIMKgIC8qKgo+Pj4+Pj4+ICAgwqDCoCAqIHR0bV9ib19rbWFwCj4+Pj4+Pj4gICDCoMKgICoK
Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLW1hcC5oIGIvaW5jbHVk
ZS9saW51eC9kbWEtYnVmLW1hcC5oCj4+Pj4+Pj4gaW5kZXggZmQxYWJhNTQ1ZmRmLi4yZThiYmVj
YjUwOTEgMTAwNjQ0Cj4+Pj4+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLW1hcC5oCj4+
Pj4+Pj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLW1hcC5oCj4+Pj4+Pj4gQEAgLTQ1LDYg
KzQ1LDEyIEBACj4+Pj4+Pj4gICDCoMKgICoKPj4+Pj4+PiAgIMKgwqAgKsKgwqDCoCBkbWFfYnVm
X21hcF9zZXRfdmFkZHIoJm1hcC4gMHhkZWFkYmVhZik7Cj4+Pj4+Pj4gICDCoMKgICoKPj4+Pj4+
PiArICogVG8gc2V0IGFuIGFkZHJlc3MgaW4gSS9PIG1lbW9yeSwgdXNlIGRtYV9idWZfbWFwX3Nl
dF92YWRkcl9pb21lbSgpLgo+Pj4+Pj4+ICsgKgo+Pj4+Pj4+ICsgKiAuLiBjb2RlLWJsb2NrOjog
Ywo+Pj4+Pj4+ICsgKgo+Pj4+Pj4+ICsgKsKgwqDCoCBkbWFfYnVmX21hcF9zZXRfdmFkZHJfaW9t
ZW0oJm1hcC4gMHhkZWFkYmVhZik7Cj4+Pj4+Pj4gKyAqCj4+Pj4+Pj4gICDCoMKgICogVGVzdCBp
ZiBhIG1hcHBpbmcgaXMgdmFsaWQgd2l0aCBlaXRoZXIgZG1hX2J1Zl9tYXBfaXNfc2V0KCkgb3IK
Pj4+Pj4+PiAgIMKgwqAgKiBkbWFfYnVmX21hcF9pc19udWxsKCkuCj4+Pj4+Pj4gICDCoMKgICoK
Pj4+Pj4+PiBAQCAtMTE4LDYgKzEyNCwyMCBAQCBzdGF0aWMgaW5saW5lIHZvaWQgZG1hX2J1Zl9t
YXBfc2V0X3ZhZGRyKHN0cnVjdAo+Pj4+Pj4+IGRtYV9idWZfbWFwICptYXAsIHZvaWQgKnZhZGRy
KQo+Pj4+Pj4+ICAgwqDCoMKgwqDCoCBtYXAtPmlzX2lvbWVtID0gZmFsc2U7Cj4+Pj4+Pj4gICDC
oCB9Cj4+Pj4+Pj4gICDCoCArLyoqCj4+Pj4+Pj4gKyAqIGRtYV9idWZfbWFwX3NldF92YWRkcl9p
b21lbSAtIFNldHMgYSBkbWEtYnVmIG1hcHBpbmcgc3RydWN0dXJlIHRvCj4+Pj4+Pj4gYW4gYWRk
cmVzcyBpbiBJL08gbWVtb3J5Cj4+Pj4+Pj4gKyAqIEBtYXA6wqDCoMKgwqDCoMKgwqAgVGhlIGRt
YS1idWYgbWFwcGluZyBzdHJ1Y3R1cmUKPj4+Pj4+PiArICogQHZhZGRyX2lvbWVtOsKgwqDCoCBB
biBJL08tbWVtb3J5IGFkZHJlc3MKPj4+Pj4+PiArICoKPj4+Pj4+PiArICogU2V0cyB0aGUgYWRk
cmVzcyBhbmQgdGhlIEkvTy1tZW1vcnkgZmxhZy4KPj4+Pj4+PiArICovCj4+Pj4+Pj4gK3N0YXRp
YyBpbmxpbmUgdm9pZCBkbWFfYnVmX21hcF9zZXRfdmFkZHJfaW9tZW0oc3RydWN0IGRtYV9idWZf
bWFwICptYXAsCj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgdm9pZCBfX2lvbWVtICp2YWRkcl9pb21lbSkKPj4+Pj4+PiArewo+Pj4+
Pj4+ICvCoMKgwqAgbWFwLT52YWRkcl9pb21lbSA9IHZhZGRyX2lvbWVtOwo+Pj4+Pj4+ICvCoMKg
wqAgbWFwLT5pc19pb21lbSA9IHRydWU7Cj4+Pj4+Pj4gK30KPj4+Pj4+PiArCj4+Pj4+Pj4gICDC
oCAvKioKPj4+Pj4+PiAgIMKgwqAgKiBkbWFfYnVmX21hcF9pc19lcXVhbCAtIENvbXBhcmVzIHR3
byBkbWEtYnVmIG1hcHBpbmcgc3RydWN0dXJlcwo+Pj4+Pj4+IGZvciBlcXVhbGl0eQo+Pj4+Pj4+
ICAgwqDCoCAqIEBsaHM6wqDCoMKgIFRoZSBkbWEtYnVmIG1hcHBpbmcgc3RydWN0dXJlCj4+Pj4+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4g
ZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+Pj4+Pj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+Pj4+Pj4gaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNv
bS8/dXJsPWh0dHBzJTNBJTJGJTJGbGlzdHMuZnJlZWRlc2t0b3Aub3JnJTJGbWFpbG1hbiUyRmxp
c3RpbmZvJTJGZHJpLWRldmVsJmFtcDtkYXRhPTAyJTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQw
YW1kLmNvbSU3QzQ3MmMzZDY1NWE2MTQxMWRlYjY3MDhkODY1MjVkMWI4JTdDM2RkODk2MWZlNDg4
NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzM3MDU2MDQzODk2NTAxMyZhbXA7c2Rh
dGE9SGRIT0ElMkYxVmNJWCUyRjdZdGZZVGlBcVlFdnc3QWclMkZTJTJCeFM1VndKS092NXkwJTNE
JmFtcDtyZXNlcnZlZD0wCj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+Pj4+IGFtZC1nZnggbWFpbGluZyBsaXN0Cj4+Pj4+IGFtZC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4+Pj4+IGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rp
b24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmxpc3RzLmZyZWVkZXNrdG9wLm9yZyUy
Rm1haWxtYW4lMkZsaXN0aW5mbyUyRmFtZC1nZngmYW1wO2RhdGE9MDIlN0MwMSU3Q2NocmlzdGlh
bi5rb2VuaWclNDBhbWQuY29tJTdDNDcyYzNkNjU1YTYxNDExZGViNjcwOGQ4NjUyNWQxYjglN0Mz
ZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4MmQ5OTRlMTgzZCU3QzAlN0MwJTdDNjM3MzcwNTYwNDM4OTY1
MDEzJmFtcDtzZGF0YT1IJTJCNUhLQ3NUcmtzUlYyRXlFaUZHU1R5Uzc5anNXQ21KaW1TTW9KWXVz
eDglM0QmYW1wO3Jlc2VydmVkPTAKPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPj4+PiBkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+Pj4gaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJv
dGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGbGlzdHMuZnJlZWRlc2t0b3Au
b3JnJTJGbWFpbG1hbiUyRmxpc3RpbmZvJTJGZHJpLWRldmVsJmFtcDtkYXRhPTAyJTdDMDElN0Nj
aHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3QzQ3MmMzZDY1NWE2MTQxMWRlYjY3MDhkODY1MjVk
MWI4JTdDM2RkODk2MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzM3MDU2
MDQzODk2NTAxMyZhbXA7c2RhdGE9SGRIT0ElMkYxVmNJWCUyRjdZdGZZVGlBcVlFdnc3QWclMkZT
JTJCeFM1VndKS092NXkwJTNEJmFtcDtyZXNlcnZlZD0wCj4+Pj4KPj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBhbWQtZ2Z4IG1haWxpbmcgbGlz
dAo+Pj4gYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4+IGh0dHBzOi8vbmFtMTEuc2Fm
ZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmxpc3RzLmZy
ZWVkZXNrdG9wLm9yZyUyRm1haWxtYW4lMkZsaXN0aW5mbyUyRmFtZC1nZngmYW1wO2RhdGE9MDIl
N0MwMSU3Q2NocmlzdGlhbi5rb2VuaWclNDBhbWQuY29tJTdDNDcyYzNkNjU1YTYxNDExZGViNjcw
OGQ4NjUyNWQxYjglN0MzZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4MmQ5OTRlMTgzZCU3QzAlN0MwJTdD
NjM3MzcwNTYwNDM4OTY1MDEzJmFtcDtzZGF0YT1IJTJCNUhLQ3NUcmtzUlYyRXlFaUZHU1R5Uzc5
anNXQ21KaW1TTW9KWXVzeDglM0QmYW1wO3Jlc2VydmVkPTAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo=
