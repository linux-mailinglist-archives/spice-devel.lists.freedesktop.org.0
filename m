Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1260293EA0
	for <lists+spice-devel@lfdr.de>; Tue, 20 Oct 2020 16:27:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BA8A6ECD4;
	Tue, 20 Oct 2020 14:27:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2054.outbound.protection.outlook.com [40.107.223.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1126C6EC9E;
 Tue, 20 Oct 2020 13:39:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eNLmLQEq2ogaJb89Y7a0DoyHU1dpu0akxG+g6Lj3M1spJtdg4xUXT5u3DWnog8xuhb4mHcDe4B5eFCGXwk7BJwkmsteVPmtz8Xy14cT6hiyaef0+Ih8M+CI7gxcp/vigxscIeESdvtqC/NiItwG6DJMLpl8iEU/1XU9puM/RCi+lRd0+TESk+HHMTxv3IcLZgaABA7GUj6CnDSJ5br8UhIz/+61FlhwrTRGmp0qD85QP/DCwd27VGkvji07Lf4kuzGv6aYDSDXX7cX7DjTct/gVg7/gwYUPM4KLrnUOH+4PNEcqO6EeHf0HylBajJD3a2uWq3SQGlQWX/usw5Kgmww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3cV8pVoP5z/fZz9XlAM66A4AVF1LwjqpED/6cqT1bI0=;
 b=CF240AmTPyDLWPLu3UPZ6ztQkl+vBNIRlafeSeiWU99XWWG8GF5w2+fn/m4TTecGNkyMLU34gotif7/5R8w4R1njtniZMmi6FeBNphabS+mrI3Uolm4ZrK/v9CglqjI/Gd9VYAacbdtWsyagqRdAwHmtlAnhdsd8TrqaJgfJTZmKRM2LqfaXmJphJ4F5AcSJr1EF+cuIpUux7r4TkPiV8/Ah0CoCkZPr9LeSktuSSkvIKoWhV2HzTRoBx0+hX8Hv/qd1T7wecnXYeIs65OJXv8B8rj409hoZ9oE/Khx2hT1q+1pF8wvVQwHqaJagXhEqGkgDmsJpNxaPz9scK07yiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3cV8pVoP5z/fZz9XlAM66A4AVF1LwjqpED/6cqT1bI0=;
 b=sNC0fNgcvJAL/2ngyx/k7DGHYrof8M4TBS9HwyJ/L6b8U0Kvvrt8MUGhR3rZPI2uKITS94I0vsHU/aHAaKcUXSez75ZRLT+G7LDytUAJ/W3lIvnTD6fFw7qy1CDP8hqCraXBPH3lRRVMpn/fJf1CNkEE+aUiv1HVO0uUa9HOp6A=
Authentication-Results: ffwll.ch; dkim=none (message not signed)
 header.d=none;ffwll.ch; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4357.namprd12.prod.outlook.com (2603:10b6:208:262::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Tue, 20 Oct
 2020 13:39:50 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::f8f7:7403:1c92:3a60]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::f8f7:7403:1c92:3a60%6]) with mapi id 15.20.3477.028; Tue, 20 Oct 2020
 13:39:50 +0000
To: Thomas Zimmermann <tzimmermann@suse.de>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@linux.ie,
 daniel@ffwll.ch, sam@ravnborg.org, alexander.deucher@amd.com,
 kraxel@redhat.com, l.stach@pengutronix.de, linux+etnaviv@armlinux.org.uk,
 christian.gmeiner@gmail.com, inki.dae@samsung.com, jy0922.shim@samsung.com,
 sw0312.kim@samsung.com, kyungmin.park@samsung.com, kgene@kernel.org,
 krzk@kernel.org, yuq825@gmail.com, bskeggs@redhat.com, robh@kernel.org,
 tomeu.vizoso@collabora.com, steven.price@arm.com,
 alyssa.rosenzweig@collabora.com, hjc@rock-chips.com, heiko@sntech.de,
 hdegoede@redhat.com, sean@poorly.run, eric@anholt.net,
 oleksandr_andrushchenko@epam.com, ray.huang@amd.com,
 sumit.semwal@linaro.org, emil.velikov@collabora.com, luben.tuikov@amd.com,
 apaneers@amd.com, linus.walleij@linaro.org, melissa.srw@gmail.com,
 chris@chris-wilson.co.uk, miaoqinglang@huawei.com
References: <20201020122046.31167-1-tzimmermann@suse.de>
 <20201020122046.31167-6-tzimmermann@suse.de>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <0d936127-ff9b-ace1-97b8-bdbc01921a65@amd.com>
Date: Tue, 20 Oct 2020 15:39:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20201020122046.31167-6-tzimmermann@suse.de>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-ClientProxiedBy: AM0PR01CA0137.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::42) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM0PR01CA0137.eurprd01.prod.exchangelabs.com (2603:10a6:208:168::42) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.21 via Frontend
 Transport; Tue, 20 Oct 2020 13:39:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 43684d1a-3b9c-422c-7318-08d874fd9dc0
X-MS-TrafficTypeDiagnostic: MN2PR12MB4357:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB435723291B1DCFBCFEB8E74F831F0@MN2PR12MB4357.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QvusYaEJ9X1ocSxHJDO7zzVLFArw/xLRGeFQXXgs7ue5Et0DBV4W6wnP4nEGhplE0exsjKFdih5AFpaO4cRf+9cEhaztFsYxgPCeKBP5LDg4cNOhNt7VS0VvO3IEhKrN0dJ/6IvsgQx0svWkwWT4GJibLAilL+G7Hqwf4Up08W5sGYUwJfLAAMFhPdbdYxLTZEDRY+dvuGNTmZ2DdN5OER2B+NFrFk/n6r6HCq2tGMKNadvZ3nkFj68UbUjLGUNFl3ZAVYCK1DybuiQ1AUzVrLk11bX5g2ElEIDEW6u6V58rS0mACUKNRIcaK4AufpG34SoBgRmGIgmbUc+P3m3ztXoJb+SjtDiV31oRg97i96ghJor4+MGVk3XMmx3vHYfBg+Pz8/nKEoojK4Cm0bHc6Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(346002)(39860400002)(376002)(136003)(7416002)(36756003)(316002)(7406005)(8676002)(31696002)(6486002)(2906002)(4326008)(16526019)(186003)(478600001)(2616005)(52116002)(8936002)(66946007)(66476007)(66556008)(83380400001)(86362001)(5660300002)(6666004)(31686004)(921003)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: mqlMkNwHEJI59+/j1v0Zjx12kRVJNDKvDQwM7o75w/UVI9jURs9OzV26jg8oM+Rf24H25I+lfqn3fhn5foYIhnEuRbMimlcZdeqYJJ9ASilw7SfS1zNBfdaCFiIRKNBijtbmkB57WJ2KWCY/Zrwkqy1eNrP/UBWH4SX/j5jbosrwpOZ8MRDGDqTo8QM/r1ccqcaluycGIq6v9x7aBvLwX4RqoyNeTpu4d0zB/SNzd+sE8OUuyQ8uIxidM09wPZXMSxSB/a00xnuu3g7iS9+QSFfICP/PbPbZcOhs/OlEeD58RoJcY9FiN++KGkVOLwhJRIrU1nitJXeNpkAmDZ53qInJQuDzkr6fREoVPokUN6itjq8B1ZuzC6bCDTUaTfda4EUKv4vmEUosOh4k3w9Q4T+LA1Uu9lnz8VkkI7fCjrozJ06tIfG6auK6IOs2Z79VclTFZEz5OijRM72378deskaBNn1aRZgs5FUgrjFlXIFkf6jEidr3yR7FMLb8O4fNa+UxBdRk/DKkxcjD14rcmXHj1b+9sOYlM2MSOeboPlYzlxTOGU1kyWPibQWR8crb1OHtzAqy+w7N3MZVjovknQTnMfB9f1irm83sgHEbYKbGK+Yc9gE6DKOlK2rF3JTUVRflMd8NQ2zY3bUcwcZharKy/+hCcZ6iUXmgDLmOsrisAmAvE+qRM91VTSQ7VGuUX6TcdlZrSuyzxFQnILrb5g==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43684d1a-3b9c-422c-7318-08d874fd9dc0
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2020 13:39:50.1814 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c8RgvKt9S4Nq3RhDPJfN3dHb/5uTiTRNW42pC37NdmMjd5S95Q3zNocaKAgu3yIa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4357
X-Mailman-Approved-At: Tue, 20 Oct 2020 14:27:21 +0000
Subject: Re: [Spice-devel] [PATCH v5 05/10] drm/ttm: Add vmap/vunmap to TTM
 and TTM GEM helpers
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
Cc: linux-samsung-soc@vger.kernel.org, lima@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 etnaviv@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 xen-devel@lists.xenproject.org, spice-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

QW0gMjAuMTAuMjAgdW0gMTQ6MjAgc2NocmllYiBUaG9tYXMgWmltbWVybWFubjoKPiBUaGUgbmV3
IGZ1bmN0aW9ucyB0dG1fYm9fe3ZtYXAsdnVubWFwfSgpIG1hcCBhbmQgdW5tYXAgYSBUVE0gQk8g
aW4ga2VybmVsCj4gYWRkcmVzcyBzcGFjZS4gVGhlIG1hcHBpbmcncyBhZGRyZXNzIGlzIHJldHVy
bmVkIGFzIHN0cnVjdCBkbWFfYnVmX21hcC4KPiBFYWNoIGZ1bmN0aW9uIGlzIGEgc2ltcGxpZmll
ZCB2ZXJzaW9uIG9mIFRUTSdzIGV4aXN0aW5nIGttYXAgY29kZS4gQm90aAo+IGZ1bmN0aW9ucyBy
ZXNwZWN0IHRoZSBtZW1vcnkncyBsb2NhdGlvbiBhbmkvb3Igd3JpdGVjb21iaW5lIGZsYWdzLgo+
Cj4gT24gdG9wIFRUTSdzIGZ1bmN0aW9ucywgR0VNIFRUTSBoZWxwZXJzIGdvdCBkcm1fZ2VtX3R0
bV97dm1hcCx2dW5tYXB9KCksCj4gdHdvIGhlbHBlcnMgdGhhdCBjb252ZXJ0IGEgR0VNIG9iamVj
dCBpbnRvIHRoZSBUVE0gQk8gYW5kIGZvcndhcmQgdGhlIGNhbGwKPiB0byBUVE0ncyB2bWFwL3Z1
bm1hcC4gVGhlc2UgaGVscGVycyBjYW4gYmUgZHJvcHBlZCBpbnRvIHRoZSByc3AgR0VNIG9iamVj
dAo+IGNhbGxiYWNrcy4KPgo+IHY1Ogo+IAkqIHVzZSBzaXplX3QgZm9yIHN0b3JpbmcgbWFwcGlu
ZyBzaXplIChDaHJpc3RpYW4pCj4gCSogaWdub3JlIHByZW1hcHBlZCBtZW1vcnkgYXJlYXMgY29y
cmVjdGx5IGluIHR0bV9ib192dW5tYXAoKQo+IAkqIHJlYmFzZSBvbnRvIGxhdGVzdCBUVE0gaW50
ZXJmYWNlcyAoQ2hyaXN0aWFuKQo+IAkqIHJlbW92ZSBCVUcoKSBmcm9tIHR0bV9ib192bWFwKCkg
KENocmlzdGlhbikKPiB2NDoKPiAJKiBkcm9wIHR0bV9rbWFwX29ial90b19kbWFfYnVmKCkgaW4g
ZmF2b3Igb2Ygdm1hcCBoZWxwZXJzIChEYW5pZWwsCj4gCSAgQ2hyaXN0aWFuKQo+Cj4gU2lnbmVk
LW9mZi1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+Cj4gQWNrZWQt
Ynk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4gVGVzdGVkLWJ5OiBT
YW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+CgpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9kcm1fZ2VtX3R0bV9oZWxwZXIuYyB8IDM4ICsrKysrKysrKysrKysrKwo+ICAgZHJpdmVycy9n
cHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jICAgIHwgNzIgKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+ICAgaW5jbHVkZS9kcm0vZHJtX2dlbV90dG1faGVscGVyLmggICAgIHwgIDYgKysrCj4g
ICBpbmNsdWRlL2RybS90dG0vdHRtX2JvX2FwaS5oICAgICAgICAgfCAyOCArKysrKysrKysrKwo+
ICAgaW5jbHVkZS9saW51eC9kbWEtYnVmLW1hcC5oICAgICAgICAgIHwgMjAgKysrKysrKysKPiAg
IDUgZmlsZXMgY2hhbmdlZCwgMTY0IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vZHJtX2dlbV90dG1faGVscGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dl
bV90dG1faGVscGVyLmMKPiBpbmRleCAwZTRmYjliYTQzYWQuLmRiNGMxNGQ3OGEzMCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV90dG1faGVscGVyLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vZHJtX2dlbV90dG1faGVscGVyLmMKPiBAQCAtNDksNiArNDksNDQgQEAgdm9p
ZCBkcm1fZ2VtX3R0bV9wcmludF9pbmZvKHN0cnVjdCBkcm1fcHJpbnRlciAqcCwgdW5zaWduZWQg
aW50IGluZGVudCwKPiAgIH0KPiAgIEVYUE9SVF9TWU1CT0woZHJtX2dlbV90dG1fcHJpbnRfaW5m
byk7Cj4gICAKPiArLyoqCj4gKyAqIGRybV9nZW1fdHRtX3ZtYXAoKSAtIHZtYXAgJnR0bV9idWZm
ZXJfb2JqZWN0Cj4gKyAqIEBnZW06IEdFTSBvYmplY3QuCj4gKyAqIEBtYXA6IFtvdXRdIHJldHVy
bnMgdGhlIGRtYS1idWYgbWFwcGluZy4KPiArICoKPiArICogTWFwcyBhIEdFTSBvYmplY3Qgd2l0
aCB0dG1fYm9fdm1hcCgpLiBUaGlzIGZ1bmN0aW9uIGNhbiBiZSB1c2VkIGFzCj4gKyAqICZkcm1f
Z2VtX29iamVjdF9mdW5jcy52bWFwIGNhbGxiYWNrLgo+ICsgKgo+ICsgKiBSZXR1cm5zOgo+ICsg
KiAwIG9uIHN1Y2Nlc3MsIG9yIGEgbmVnYXRpdmUgZXJybm8gY29kZSBvdGhlcndpc2UuCj4gKyAq
Lwo+ICtpbnQgZHJtX2dlbV90dG1fdm1hcChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmdlbSwKPiAr
CQkgICAgIHN0cnVjdCBkbWFfYnVmX21hcCAqbWFwKQo+ICt7Cj4gKwlzdHJ1Y3QgdHRtX2J1ZmZl
cl9vYmplY3QgKmJvID0gZHJtX2dlbV90dG1fb2ZfZ2VtKGdlbSk7Cj4gKwo+ICsJcmV0dXJuIHR0
bV9ib192bWFwKGJvLCBtYXApOwo+ICsKPiArfQo+ICtFWFBPUlRfU1lNQk9MKGRybV9nZW1fdHRt
X3ZtYXApOwo+ICsKPiArLyoqCj4gKyAqIGRybV9nZW1fdHRtX3Z1bm1hcCgpIC0gdnVubWFwICZ0
dG1fYnVmZmVyX29iamVjdAo+ICsgKiBAZ2VtOiBHRU0gb2JqZWN0Lgo+ICsgKiBAbWFwOiBkbWEt
YnVmIG1hcHBpbmcuCj4gKyAqCj4gKyAqIFVubWFwcyBhIEdFTSBvYmplY3Qgd2l0aCB0dG1fYm9f
dnVubWFwKCkuIFRoaXMgZnVuY3Rpb24gY2FuIGJlIHVzZWQgYXMKPiArICogJmRybV9nZW1fb2Jq
ZWN0X2Z1bmNzLnZtYXAgY2FsbGJhY2suCj4gKyAqLwo+ICt2b2lkIGRybV9nZW1fdHRtX3Z1bm1h
cChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmdlbSwKPiArCQkJc3RydWN0IGRtYV9idWZfbWFwICpt
YXApCj4gK3sKPiArCXN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8gPSBkcm1fZ2VtX3R0bV9v
Zl9nZW0oZ2VtKTsKPiArCj4gKwl0dG1fYm9fdnVubWFwKGJvLCBtYXApOwo+ICt9Cj4gK0VYUE9S
VF9TWU1CT0woZHJtX2dlbV90dG1fdnVubWFwKTsKPiArCj4gICAvKioKPiAgICAqIGRybV9nZW1f
dHRtX21tYXAoKSAtIG1tYXAgJnR0bV9idWZmZXJfb2JqZWN0Cj4gICAgKiBAZ2VtOiBHRU0gb2Jq
ZWN0Lgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGlsLmMgYi9k
cml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGlsLmMKPiBpbmRleCBiYTdhYjVlZDg1ZDAuLjVj
Nzk0MTg0MDVlYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGls
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGlsLmMKPiBAQCAtMzIsNiAr
MzIsNyBAQAo+ICAgI2luY2x1ZGUgPGRybS90dG0vdHRtX2JvX2RyaXZlci5oPgo+ICAgI2luY2x1
ZGUgPGRybS90dG0vdHRtX3BsYWNlbWVudC5oPgo+ICAgI2luY2x1ZGUgPGRybS9kcm1fdm1hX21h
bmFnZXIuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2RtYS1idWYtbWFwLmg+Cj4gICAjaW5jbHVkZSA8
bGludXgvaW8uaD4KPiAgICNpbmNsdWRlIDxsaW51eC9oaWdobWVtLmg+Cj4gICAjaW5jbHVkZSA8
bGludXgvd2FpdC5oPgo+IEBAIC01MjcsNiArNTI4LDc3IEBAIHZvaWQgdHRtX2JvX2t1bm1hcChz
dHJ1Y3QgdHRtX2JvX2ttYXBfb2JqICptYXApCj4gICB9Cj4gICBFWFBPUlRfU1lNQk9MKHR0bV9i
b19rdW5tYXApOwo+ICAgCj4gK2ludCB0dG1fYm9fdm1hcChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmpl
Y3QgKmJvLCBzdHJ1Y3QgZG1hX2J1Zl9tYXAgKm1hcCkKPiArewo+ICsJc3RydWN0IHR0bV9yZXNv
dXJjZSAqbWVtID0gJmJvLT5tZW07Cj4gKwlpbnQgcmV0Owo+ICsKPiArCXJldCA9IHR0bV9tZW1f
aW9fcmVzZXJ2ZShiby0+YmRldiwgbWVtKTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsK
PiArCj4gKwlpZiAobWVtLT5idXMuaXNfaW9tZW0pIHsKPiArCQl2b2lkIF9faW9tZW0gKnZhZGRy
X2lvbWVtOwo+ICsJCXNpemVfdCBzaXplID0gYm8tPm51bV9wYWdlcyA8PCBQQUdFX1NISUZUOwo+
ICsKPiArCQlpZiAobWVtLT5idXMuYWRkcikKPiArCQkJdmFkZHJfaW9tZW0gPSAodm9pZCBfX2lv
bWVtICopbWVtLT5idXMuYWRkcjsKPiArCQllbHNlIGlmIChtZW0tPmJ1cy5jYWNoaW5nID09IHR0
bV93cml0ZV9jb21iaW5lZCkKPiArCQkJdmFkZHJfaW9tZW0gPSBpb3JlbWFwX3djKG1lbS0+YnVz
Lm9mZnNldCwgc2l6ZSk7Cj4gKwkJZWxzZQo+ICsJCQl2YWRkcl9pb21lbSA9IGlvcmVtYXAobWVt
LT5idXMub2Zmc2V0LCBzaXplKTsKPiArCj4gKwkJaWYgKCF2YWRkcl9pb21lbSkKPiArCQkJcmV0
dXJuIC1FTk9NRU07Cj4gKwo+ICsJCWRtYV9idWZfbWFwX3NldF92YWRkcl9pb21lbShtYXAsIHZh
ZGRyX2lvbWVtKTsKPiArCj4gKwl9IGVsc2Ugewo+ICsJCXN0cnVjdCB0dG1fb3BlcmF0aW9uX2N0
eCBjdHggPSB7Cj4gKwkJCS5pbnRlcnJ1cHRpYmxlID0gZmFsc2UsCj4gKwkJCS5ub193YWl0X2dw
dSA9IGZhbHNlCj4gKwkJfTsKPiArCQlzdHJ1Y3QgdHRtX3R0ICp0dG0gPSBiby0+dHRtOwo+ICsJ
CXBncHJvdF90IHByb3Q7Cj4gKwkJdm9pZCAqdmFkZHI7Cj4gKwo+ICsJCXJldCA9IHR0bV90dF9w
b3B1bGF0ZShiby0+YmRldiwgdHRtLCAmY3R4KTsKPiArCQlpZiAocmV0KQo+ICsJCQlyZXR1cm4g
cmV0Owo+ICsKPiArCQkvKgo+ICsJCSAqIFdlIG5lZWQgdG8gdXNlIHZtYXAgdG8gZ2V0IHRoZSBk
ZXNpcmVkIHBhZ2UgcHJvdGVjdGlvbgo+ICsJCSAqIG9yIHRvIG1ha2UgdGhlIGJ1ZmZlciBvYmpl
Y3QgbG9vayBjb250aWd1b3VzLgo+ICsJCSAqLwo+ICsJCXByb3QgPSB0dG1faW9fcHJvdChibywg
bWVtLCBQQUdFX0tFUk5FTCk7Cj4gKwkJdmFkZHIgPSB2bWFwKHR0bS0+cGFnZXMsIGJvLT5udW1f
cGFnZXMsIDAsIHByb3QpOwo+ICsJCWlmICghdmFkZHIpCj4gKwkJCXJldHVybiAtRU5PTUVNOwo+
ICsKPiArCQlkbWFfYnVmX21hcF9zZXRfdmFkZHIobWFwLCB2YWRkcik7Cj4gKwl9Cj4gKwo+ICsJ
cmV0dXJuIDA7Cj4gK30KPiArRVhQT1JUX1NZTUJPTCh0dG1fYm9fdm1hcCk7Cj4gKwo+ICt2b2lk
IHR0bV9ib192dW5tYXAoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywgc3RydWN0IGRtYV9i
dWZfbWFwICptYXApCj4gK3sKPiArCXN0cnVjdCB0dG1fcmVzb3VyY2UgKm1lbSA9ICZiby0+bWVt
Owo+ICsKPiArCWlmIChkbWFfYnVmX21hcF9pc19udWxsKG1hcCkpCj4gKwkJcmV0dXJuOwo+ICsK
PiArCWlmICghbWFwLT5pc19pb21lbSkKPiArCQl2dW5tYXAobWFwLT52YWRkcik7Cj4gKwllbHNl
IGlmICghbWVtLT5idXMuYWRkcikKPiArCQlpb3VubWFwKG1hcC0+dmFkZHJfaW9tZW0pOwo+ICsJ
ZG1hX2J1Zl9tYXBfY2xlYXIobWFwKTsKPiArCj4gKwl0dG1fbWVtX2lvX2ZyZWUoYm8tPmJkZXYs
ICZiby0+bWVtKTsKPiArfQo+ICtFWFBPUlRfU1lNQk9MKHR0bV9ib192dW5tYXApOwo+ICsKPiAg
IHN0YXRpYyBpbnQgdHRtX2JvX3dhaXRfZnJlZV9ub2RlKHN0cnVjdCB0dG1fYnVmZmVyX29iamVj
dCAqYm8sCj4gICAJCQkJIGJvb2wgZHN0X3VzZV90dCkKPiAgIHsKPiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9kcm0vZHJtX2dlbV90dG1faGVscGVyLmggYi9pbmNsdWRlL2RybS9kcm1fZ2VtX3R0bV9o
ZWxwZXIuaAo+IGluZGV4IDExOGNlZjc2Zjg0Zi4uN2M2ZDg3NDkxMGI4IDEwMDY0NAo+IC0tLSBh
L2luY2x1ZGUvZHJtL2RybV9nZW1fdHRtX2hlbHBlci5oCj4gKysrIGIvaW5jbHVkZS9kcm0vZHJt
X2dlbV90dG1faGVscGVyLmgKPiBAQCAtMTAsMTEgKzEwLDE3IEBACj4gICAjaW5jbHVkZSA8ZHJt
L3R0bS90dG1fYm9fYXBpLmg+Cj4gICAjaW5jbHVkZSA8ZHJtL3R0bS90dG1fYm9fZHJpdmVyLmg+
Cj4gICAKPiArc3RydWN0IGRtYV9idWZfbWFwOwo+ICsKPiAgICNkZWZpbmUgZHJtX2dlbV90dG1f
b2ZfZ2VtKGdlbV9vYmopIFwKPiAgIAljb250YWluZXJfb2YoZ2VtX29iaiwgc3RydWN0IHR0bV9i
dWZmZXJfb2JqZWN0LCBiYXNlKQo+ICAgCj4gICB2b2lkIGRybV9nZW1fdHRtX3ByaW50X2luZm8o
c3RydWN0IGRybV9wcmludGVyICpwLCB1bnNpZ25lZCBpbnQgaW5kZW50LAo+ICAgCQkJICAgIGNv
bnN0IHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqZ2VtKTsKPiAraW50IGRybV9nZW1fdHRtX3ZtYXAo
c3RydWN0IGRybV9nZW1fb2JqZWN0ICpnZW0sCj4gKwkJICAgICBzdHJ1Y3QgZG1hX2J1Zl9tYXAg
Km1hcCk7Cj4gK3ZvaWQgZHJtX2dlbV90dG1fdnVubWFwKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAq
Z2VtLAo+ICsJCQlzdHJ1Y3QgZG1hX2J1Zl9tYXAgKm1hcCk7Cj4gICBpbnQgZHJtX2dlbV90dG1f
bW1hcChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmdlbSwKPiAgIAkJICAgICBzdHJ1Y3Qgdm1fYXJl
YV9zdHJ1Y3QgKnZtYSk7Cj4gICAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vdHRtL3R0bV9i
b19hcGkuaCBiL2luY2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmgKPiBpbmRleCAzNzEwMmU0NWU0
OTYuLjJjNTlhNzg1Mzc0YyAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2RybS90dG0vdHRtX2JvX2Fw
aS5oCj4gKysrIGIvaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19hcGkuaAo+IEBAIC00OCw2ICs0OCw4
IEBAIHN0cnVjdCB0dG1fYm9fZ2xvYmFsOwo+ICAgCj4gICBzdHJ1Y3QgdHRtX2JvX2RldmljZTsK
PiAgIAo+ICtzdHJ1Y3QgZG1hX2J1Zl9tYXA7Cj4gKwo+ICAgc3RydWN0IGRybV9tbV9ub2RlOwo+
ICAgCj4gICBzdHJ1Y3QgdHRtX3BsYWNlbWVudDsKPiBAQCAtNDk0LDYgKzQ5NiwzMiBAQCBpbnQg
dHRtX2JvX2ttYXAoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywgdW5zaWduZWQgbG9uZyBz
dGFydF9wYWdlLAo+ICAgICovCj4gICB2b2lkIHR0bV9ib19rdW5tYXAoc3RydWN0IHR0bV9ib19r
bWFwX29iaiAqbWFwKTsKPiAgIAo+ICsvKioKPiArICogdHRtX2JvX3ZtYXAKPiArICoKPiArICog
QGJvOiBUaGUgYnVmZmVyIG9iamVjdC4KPiArICogQG1hcDogcG9pbnRlciB0byBhIHN0cnVjdCBk
bWFfYnVmX21hcCByZXByZXNlbnRpbmcgdGhlIG1hcC4KPiArICoKPiArICogU2V0cyB1cCBhIGtl
cm5lbCB2aXJ0dWFsIG1hcHBpbmcsIHVzaW5nIGlvcmVtYXAgb3Igdm1hcCB0byB0aGUKPiArICog
ZGF0YSBpbiB0aGUgYnVmZmVyIG9iamVjdC4gVGhlIHBhcmFtZXRlciBAbWFwIHJldHVybnMgdGhl
IHZpcnR1YWwKPiArICogYWRkcmVzcyBhcyBzdHJ1Y3QgZG1hX2J1Zl9tYXAuIFVubWFwIHRoZSBi
dWZmZXIgd2l0aCB0dG1fYm9fdnVubWFwKCkuCj4gKyAqCj4gKyAqIFJldHVybnMKPiArICogLUVO
T01FTTogT3V0IG9mIG1lbW9yeS4KPiArICogLUVJTlZBTDogSW52YWxpZCByYW5nZS4KPiArICov
Cj4gK2ludCB0dG1fYm9fdm1hcChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLCBzdHJ1Y3Qg
ZG1hX2J1Zl9tYXAgKm1hcCk7Cj4gKwo+ICsvKioKPiArICogdHRtX2JvX3Z1bm1hcAo+ICsgKgo+
ICsgKiBAYm86IFRoZSBidWZmZXIgb2JqZWN0Lgo+ICsgKiBAbWFwOiBPYmplY3QgZGVzY3JpYmlu
ZyB0aGUgbWFwIHRvIHVubWFwLgo+ICsgKgo+ICsgKiBVbm1hcHMgYSBrZXJuZWwgbWFwIHNldCB1
cCBieSB0dG1fYm9fdm1hcCgpLgo+ICsgKi8KPiArdm9pZCB0dG1fYm9fdnVubWFwKHN0cnVjdCB0
dG1fYnVmZmVyX29iamVjdCAqYm8sIHN0cnVjdCBkbWFfYnVmX21hcCAqbWFwKTsKPiArCj4gICAv
KioKPiAgICAqIHR0bV9ib19tbWFwX29iaiAtIG1tYXAgbWVtb3J5IGJhY2tlZCBieSBhIHR0bSBi
dWZmZXIgb2JqZWN0Lgo+ICAgICoKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtYnVm
LW1hcC5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLW1hcC5oCj4gaW5kZXggZmQxYWJhNTQ1ZmRm
Li4yZThiYmVjYjUwOTEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLW1hcC5o
Cj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLW1hcC5oCj4gQEAgLTQ1LDYgKzQ1LDEyIEBA
Cj4gICAgKgo+ICAgICoJZG1hX2J1Zl9tYXBfc2V0X3ZhZGRyKCZtYXAuIDB4ZGVhZGJlYWYpOwo+
ICAgICoKPiArICogVG8gc2V0IGFuIGFkZHJlc3MgaW4gSS9PIG1lbW9yeSwgdXNlIGRtYV9idWZf
bWFwX3NldF92YWRkcl9pb21lbSgpLgo+ICsgKgo+ICsgKiAuLiBjb2RlLWJsb2NrOjogYwo+ICsg
Kgo+ICsgKglkbWFfYnVmX21hcF9zZXRfdmFkZHJfaW9tZW0oJm1hcC4gMHhkZWFkYmVhZik7Cj4g
KyAqCj4gICAgKiBUZXN0IGlmIGEgbWFwcGluZyBpcyB2YWxpZCB3aXRoIGVpdGhlciBkbWFfYnVm
X21hcF9pc19zZXQoKSBvcgo+ICAgICogZG1hX2J1Zl9tYXBfaXNfbnVsbCgpLgo+ICAgICoKPiBA
QCAtMTE4LDYgKzEyNCwyMCBAQCBzdGF0aWMgaW5saW5lIHZvaWQgZG1hX2J1Zl9tYXBfc2V0X3Zh
ZGRyKHN0cnVjdCBkbWFfYnVmX21hcCAqbWFwLCB2b2lkICp2YWRkcikKPiAgIAltYXAtPmlzX2lv
bWVtID0gZmFsc2U7Cj4gICB9Cj4gICAKPiArLyoqCj4gKyAqIGRtYV9idWZfbWFwX3NldF92YWRk
cl9pb21lbSAtIFNldHMgYSBkbWEtYnVmIG1hcHBpbmcgc3RydWN0dXJlIHRvIGFuIGFkZHJlc3Mg
aW4gSS9PIG1lbW9yeQo+ICsgKiBAbWFwOgkJVGhlIGRtYS1idWYgbWFwcGluZyBzdHJ1Y3R1cmUK
PiArICogQHZhZGRyX2lvbWVtOglBbiBJL08tbWVtb3J5IGFkZHJlc3MKPiArICoKPiArICogU2V0
cyB0aGUgYWRkcmVzcyBhbmQgdGhlIEkvTy1tZW1vcnkgZmxhZy4KPiArICovCj4gK3N0YXRpYyBp
bmxpbmUgdm9pZCBkbWFfYnVmX21hcF9zZXRfdmFkZHJfaW9tZW0oc3RydWN0IGRtYV9idWZfbWFw
ICptYXAsCj4gKwkJCQkJICAgICAgIHZvaWQgX19pb21lbSAqdmFkZHJfaW9tZW0pCj4gK3sKPiAr
CW1hcC0+dmFkZHJfaW9tZW0gPSB2YWRkcl9pb21lbTsKPiArCW1hcC0+aXNfaW9tZW0gPSB0cnVl
Owo+ICt9Cj4gKwo+ICAgLyoqCj4gICAgKiBkbWFfYnVmX21hcF9pc19lcXVhbCAtIENvbXBhcmVz
IHR3byBkbWEtYnVmIG1hcHBpbmcgc3RydWN0dXJlcyBmb3IgZXF1YWxpdHkKPiAgICAqIEBsaHM6
CVRoZSBkbWEtYnVmIG1hcHBpbmcgc3RydWN0dXJlCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwK
