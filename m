Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A61E6F659D
	for <lists+spice-devel@lfdr.de>; Thu,  4 May 2023 09:17:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF10B10E3A3;
	Thu,  4 May 2023 07:16:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from MW2PR02CU002.outbound.protection.outlook.com
 (mail-westus2azon11013008.outbound.protection.outlook.com [52.101.49.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DF3810E193;
 Thu,  4 May 2023 01:43:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a/ssnypCom02XH5SKwciFHq6X618kdFpznD45L6RM+X2gcgbHdlYYTTk0VnuNyoJzVkwh+qCQWrglSVfjOlgqgU7ukcAXqm5GkTORLhPCI8UexJt7S3whvHUJbU5TKs6uJBuAQqFJFIUYj1vtxxjI4zcuQig+/sk2ZnyljiQYusswbCPvLUW8qC9GbNqXEZ8UhttuKuPMtQHf7wSxFcTsET6xm5+1t49y6tgeIG4zg0YwgkR2sPiR74BWYsb6TryfED+huiK9X0Awd+gIUlOelFrMLNr1hfAIlP9qIwqEMhVh7igGkVtF8WB3+b06DXPRngSxINyhyATbVDl8noF4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DPTU+KP3D7BlriW1FqfddxAKMjuoSRBsk1TWfWLzdxA=;
 b=ALMo7wgbqf5/85zYw2kXBCHYYCX9bRATcU/VQQeAya5sL1OFr0vB+BXi9kEeaTC7KAOIoLVbbDzkrslUiJR8M0HMnTaEuqTd4gt6okHOv8D+oH13nvmqEzdrb2yZ7rt/VtPsEy4Ur0M8l5pkSsPk16wjeI2lz/GW+NNE1Cf5KPb+/F22iEUgbhEeZkpZLVhFY5Gy+he5TCo9kWmGssftO1zP06crRePD7o52yqnMq5OovCcA3vHLQN510TA5hy4DhIluYVSFCxVwrzQHJgM0+nl75x4HXSZZfH7aRT4Q/XKf5cgYRVDYj0e798dBQDseTOrRMrNE6R/J3DUJIZbuSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vmware.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DPTU+KP3D7BlriW1FqfddxAKMjuoSRBsk1TWfWLzdxA=;
 b=L5U/InyB8JnN5JWp9wqD5HoOyaPBKlHXswyiuch7RNqb322UNrn87ToHVSq1ojSYAJ2JBx0Y4YwTJOpERevolOyGiavQ3a1Fhh/ftwAIGZijEYemQL2C3aE6hhmtLPuqOFJGpUaG3NE60DEoSAzIE9k1c/tM9N0T2POaRLBJi8c=
Received: from CH3PR05MB10206.namprd05.prod.outlook.com
 (2603:10b6:610:155::10) by MN2PR05MB6798.namprd05.prod.outlook.com
 (2603:10b6:208:184::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.31; Thu, 4 May
 2023 01:43:52 +0000
Received: from CH3PR05MB10206.namprd05.prod.outlook.com
 ([fe80::b4c3:9441:f0:efb8]) by CH3PR05MB10206.namprd05.prod.outlook.com
 ([fe80::b4c3:9441:f0:efb8%7]) with mapi id 15.20.6340.031; Thu, 4 May 2023
 01:43:51 +0000
From: Zack Rusin <zackr@vmware.com>
To: "ppaalanen@gmail.com" <ppaalanen@gmail.com>
Thread-Topic: [PATCH v2 1/8] drm: Disable the cursor plane on atomic contexts
 with virtualized drivers
Thread-Index: AQHYlaAcTLxMgQIkC0KZLn5/g6usj62ohIeAgaACNYCAAS6fAIAASE6AgAEq1gA=
Date: Thu, 4 May 2023 01:43:51 +0000
Message-ID: <00621684a619329ba758f4a7212a591121633198.camel@vmware.com>
References: <20220712033246.1148476-1-zack@kde.org>
 <20220712033246.1148476-2-zack@kde.org>
 <YvPfedG/uLQNFG7e@phenom.ffwll.local>
 <87lei7xemy.fsf@minerva.mail-host-address-is-not-set>
 <0dd2fa763aa0e659c8cbae94f283d8101450082a.camel@vmware.com>
 <20230503105415.62aa7a8d@eldfell>
In-Reply-To: <20230503105415.62aa7a8d@eldfell>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.48.0-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vmware.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR05MB10206:EE_|MN2PR05MB6798:EE_
x-ms-office365-filtering-correlation-id: e71fe635-b6f3-4be6-fefe-08db4c410368
x-ld-processed: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nKVJUElaq3C0jeSy1iy8dSGd4LVwuhiC/sCle8Cb/lO8FLM9PRgBl456y3vFQgPz8HX9DjfDAK98lwjTIxiZaWKiC8/rak1RPxA+qZccZWMF3NFrpgvxefOvMu2R2yunakwTii5bVQ5HYzjS6xJeXKwJ8/GZgu2ds/JX9M2o3cLrC+kU4twhwfdBPy485bQo2SpRAGU8R+pmzfS0bYaR9K2bjxOeFHgSLq3sf2vzY5kesNJr2/GHSVDCmbI+auK6weJGGTFHlNpsuOKo9QCmY6iycPbd867OwIii+emEa43lcnsmEYXPwzmmqMgra/l1JsovSJW44mfkpxKrB/IYw9a8DEJ48ExNHPANbaTKVtrlZhQWI/bGKbzqfxmPDqTzG/cdEjsVoSXFem/CAzixHHLUDtX0QYy/6F0wyo4PjXUd5keB9IKF0JJypyucjaq8hUXv8QFNyL42rTG32gAOFe67YdUalKEVbAkTZf/GEMsIVo9wxtZNgErDPOwkRWq9vlc/qz89zZjf9tBGsZsf+wjhGC8BJHrzhBTJ8I3qmVgZOpHRaBkz2QLJXgbsUG2UG9MIwM8OuvgpfV/LT5xKQQ7m7WpH7ZC11FnDnCgNEhGVBVSIi8S2OdwOhANSTFwDUorSoDdrtDqQApby5y/OgPHr3nU4CZBAOsvwQICgJCg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR05MB10206.namprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(376002)(346002)(396003)(39860400002)(366004)(451199021)(54906003)(478600001)(8936002)(7416002)(8676002)(36756003)(66946007)(2906002)(38070700005)(86362001)(66556008)(316002)(4326008)(64756008)(66446008)(6916009)(5660300002)(66476007)(91956017)(122000001)(38100700002)(41300700001)(2616005)(26005)(6506007)(6512007)(186003)(76116006)(6486002)(71200400001)(83380400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dllXUG1oVTlnRUNMeXVLeW5zKzJhb1d2VTNvOEJEWFFjT3JwSGZZdTNjbTZ6?=
 =?utf-8?B?UGJXY1ZpbU9JVU9pNUhySnNhRWdzUEZUbkFuQW5ZbGxJSDhVVGd5ZzBjem9k?=
 =?utf-8?B?Y3dmL2U1NGtlU3NTdUJFaE01UTUrVklCbzJGRU5IUHRGcjdNQnFySGtTclp6?=
 =?utf-8?B?TFNua1BqZXJrQ2RnZzdYK3VZKzRBZGRReVlqMXJ6R1RYa2dmSFJiTXMxMUFl?=
 =?utf-8?B?Y204NU92RzRxU3NacUIxTXAxUFdxY3p3SkVTWjFPMjdVdlpIRUNIMjFubW9T?=
 =?utf-8?B?b0U3ZnhpaE9nYnhFYlRndmR2a1RJWkVtb0wzbTJ5akFpN3JtcDl5dlJuZVRM?=
 =?utf-8?B?QnJsekhtbE1RdDBzaVBYd3JDS1RINW9vcnJXcExHQXJKQjBiSThBZFRrYjNK?=
 =?utf-8?B?cWtwYXVDZStqOG9PN2ZoSmZMRk5rUVFYcXN2UkNwdnZXRllQRVJoU0JlRFVt?=
 =?utf-8?B?S1JuY1MwQXBEdm9qOGZwQzltSzEzKzkzQ1g4QWIxMDdCQW9Jelk0Z1dsMWI3?=
 =?utf-8?B?NU5zOVpGUkFVQzVTUDBwK2hIQzFuN01EU0hwZXVJQzZneE9SRmlVcS9WVzJ1?=
 =?utf-8?B?RTdhbWR0SzNDVDRnV0QxQ2thK2l1eXlaVjhYaTVvVEFmL3pwQkljdGQvVHJs?=
 =?utf-8?B?TGNCdE9jSzU4cy9ITkVuYUszbkxXS3c1Zkx3d2J0aUxyKzB6MS9xOHkzTzdK?=
 =?utf-8?B?TVRzcDNzRkJIaWEzVUxDWVEvNUtnZDJCUVdvN0x6TnVNNVpVZ3Z6L3loRG9x?=
 =?utf-8?B?RVZDU0F2NTJQcjVaZTJZSC9jNFhYN0U2R2VPVC9qMUZhdkxacHpwdnlJTnZy?=
 =?utf-8?B?ZFQ4dUZDeGUxbFRNNzJpa1JBMWFqSDFyRkJKN0RxaHpHSi9rM0dtRXV6bXhB?=
 =?utf-8?B?dzBuVUxkVkNmemdqcjdrSzIyOHNxNWJMUEV4anBMRkdTOGxxL0Z4ZkdwQmFU?=
 =?utf-8?B?ZnpLU2xDMVRqUUpLM3I4RjNxZHZ4dVh3bU8vU25BdUU3bDd6SEZJQzF4VmNT?=
 =?utf-8?B?UFR4N1c3N3ozQVg3R2hyS0pqZDJTYXowY0htbVFFUlpIUmpXdHI1MjUreDU5?=
 =?utf-8?B?MjNCb0cvNm1DNUxaRys4eG1wMklKR3FwSWZwUW9RTUMxYkN4T3NqVCtCTFVT?=
 =?utf-8?B?WUZGSTBnSjQ3T2xlczZnVkxFNk45UnJqc29oc2lnM0lLZ3lva2kvMnZ2b05F?=
 =?utf-8?B?TVBJOFM2QWZTaGJCWFVsSEtHZXYvM0dvYzB2ejFHRlVEUUtWdDlEZnRod0R0?=
 =?utf-8?B?U2s1aGp1VGp3T1QzOS8rM3RHUkR0dWgxdTdBRFVNM3V3ZFV1dW9jN3FWalVa?=
 =?utf-8?B?OVU0WHRGaDNVRVJLQWlEdGFHaUhER04vd253c3B1NnBlRlY0dkZjMENPbU96?=
 =?utf-8?B?OSt2WEd2ek1ZU1lKMUlSa3U5UHdlaml2S0pqL2N3Yi9xLzRWQVpYUmgvNDJa?=
 =?utf-8?B?NUxFdEJTeEV0VENLM0xYZFJxS05GajNwWUtkaHU0YUpJNDdxQlUyckN6VWYx?=
 =?utf-8?B?dXY0bFM3TWZPT3Z2VjM4c254NGNadXh2Z0wyS3NNSVFraVhjOG8vWGpnK3lr?=
 =?utf-8?B?TkUwWVN0VGJFaUhHS3NpVjN5aFJ6MU44OFk5MFRtU2x1ZHpiemc0Wmtoa2Jj?=
 =?utf-8?B?Y3J2NE5rdm93OVMzSDlQNU9UcURMQkt1Sm9RQmN3WkpiWkVwWnZzN2Nhc2g4?=
 =?utf-8?B?MmRDN1BWWE5pWldrWjNUL2ZJOUxjakN3TzdqNzRDVDN1a21DU2FWM2Q5WVBP?=
 =?utf-8?B?bEVoSFE1a24wRmd1emdPRmFMZmpRNVVzdWQ4RlJUY3BxWnpZbGk5OUpWcXdI?=
 =?utf-8?B?WUZFcWJYWHUrRlRQYWJBKzU0UHNPQk9CWHdad0xNSmpxbmtucm5BYnhFYmNo?=
 =?utf-8?B?aEJzZDlXZThoQ1RCS0FXU0t0SzhXa2xwUllSUWtTb21zQ3puT0JqTWM3aGZt?=
 =?utf-8?B?Zklua083N3dISTFvRUdwVG9mTVlRajVBOVl2aldkUzBUR0ZLTWhMTXJ3dFlY?=
 =?utf-8?B?T0hyRVlmdHk0akxuRzZIOHhyTUVranh0elcvaW43ZDRidUtHMkkwRUFHZmlY?=
 =?utf-8?B?S3BLN3RsQTdHeVVqV1Vramg0UFhNeWt0dzBoWGdUYkdFMG5TQ2lvOWpRcWcy?=
 =?utf-8?Q?Jsyq+EBPsSCbe1Mx89vItXL6S?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <18E1D0E783B1EB4990B45F1033D02B79@namprd05.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR05MB10206.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e71fe635-b6f3-4be6-fefe-08db4c410368
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2023 01:43:51.6247 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JOrLkvzWfB0uu4wSp3UY9UCabW3ZZnU/c6XTY3CNihrOgmnZvdpQON7JF0GuUZHQWAVVMHIdBXIH+4L0RJZkzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR05MB6798
X-Mailman-Approved-At: Thu, 04 May 2023 07:16:58 +0000
Subject: Re: [Spice-devel] [PATCH v2 1/8] drm: Disable the cursor plane on
 atomic contexts with virtualized drivers
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
Cc: "daniel@ffwll.ch" <daniel@ffwll.ch>, "jadahl@gmail.com" <jadahl@gmail.com>,
 "hdegoede@redhat.com" <hdegoede@redhat.com>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "contact@emersion.fr" <contact@emersion.fr>,
 "belmouss@redhat.com" <belmouss@redhat.com>,
 "javierm@redhat.com" <javierm@redhat.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "gurchetansingh@chromium.org" <gurchetansingh@chromium.org>,
 Martin Krastev <krastevm@vmware.com>,
 Linux-graphics-maintainer <Linux-graphics-maintainer@vmware.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 "airlied@redhat.com" <airlied@redhat.com>,
 "virtualization@lists.linux-foundation.org"
 <virtualization@lists.linux-foundation.org>,
 Maaz Mombasawala <mombasawalam@vmware.com>,
 "kraxel@redhat.com" <kraxel@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTA1LTAzIGF0IDEwOjU0ICswMzAwLCBQZWtrYSBQYWFsYW5lbiB3cm90ZToN
Cj4gT24gV2VkLCAzIE1heSAyMDIzIDAzOjM1OjI5ICswMDAwDQo+IFphY2sgUnVzaW4gPHphY2ty
QHZtd2FyZS5jb20+IHdyb3RlOg0KPiANCj4gPiBPbiBUdWUsIDIwMjMtMDUtMDIgYXQgMTE6MzIg
KzAyMDAsIEphdmllciBNYXJ0aW5leiBDYW5pbGxhcyB3cm90ZToNCj4gPiA+ICEhIEV4dGVybmFs
IEVtYWlsDQo+ID4gPiANCj4gPiA+IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4gd3Jp
dGVzOg0KPiA+ID4gwqAgDQo+ID4gPiA+IE9uIE1vbiwgSnVsIDExLCAyMDIyIGF0IDExOjMyOjM5
UE0gLTA0MDAsIFphY2sgUnVzaW4gd3JvdGU6wqAgDQo+ID4gPiA+ID4gRnJvbTogWmFjayBSdXNp
biA8emFja3JAdm13YXJlLmNvbT4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBDdXJzb3IgcGxhbmVz
IG9uIHZpcnR1YWxpemVkIGRyaXZlcnMgaGF2ZSBzcGVjaWFsIG1lYW5pbmcgYW5kIHJlcXVpcmUN
Cj4gPiA+ID4gPiB0aGF0IHRoZSBjbGllbnRzIGhhbmRsZSB0aGVtIGluIHNwZWNpZmljIHdheXMs
IGUuZy4gdGhlIGN1cnNvciBwbGFuZQ0KPiA+ID4gPiA+IHNob3VsZCByZWFjdCB0byB0aGUgbW91
c2UgbW92ZW1lbnQgdGhlIHdheSBhIG1vdXNlIGN1cnNvciB3b3VsZCBiZQ0KPiA+ID4gPiA+IGV4
cGVjdGVkIHRvIGFuZCB0aGUgY2xpZW50IGlzIHJlcXVpcmVkIHRvIHNldCBob3RzcG90IHByb3Bl
cnRpZXMgb24gaXQNCj4gPiA+ID4gPiBpbiBvcmRlciBmb3IgdGhlIG1vdXNlIGV2ZW50cyB0byBi
ZSByb3V0ZWQgY29ycmVjdGx5Lg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFRoaXMgYnJlYWtzIHRo
ZSBjb250cmFjdCBhcyBzcGVjaWZpZWQgYnkgdGhlICJ1bml2ZXJzYWwgcGxhbmVzIi4gRml4IGl0
DQo+ID4gPiA+ID4gYnkgZGlzYWJsaW5nIHRoZSBjdXJzb3IgcGxhbmVzIG9uIHZpcnR1YWxpemVk
IGRyaXZlcnMgd2hpbGUgYWRkaW5nDQo+ID4gPiA+ID4gYSBmb3VuZGF0aW9uIG9uIHRvcCBvZiB3
aGljaCBpdCdzIHBvc3NpYmxlIHRvIHNwZWNpYWwgY2FzZSBtb3VzZSBjdXJzb3INCj4gPiA+ID4g
PiBwbGFuZXMgZm9yIGNsaWVudHMgdGhhdCB3YW50IGl0Lg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+
IERpc2FibGluZyB0aGUgY3Vyc29yIHBsYW5lcyBtYWtlcyBzb21lIGttcyBjb21wb3NpdG9ycyB3
aGljaCB3ZXJlIGJyb2tlbiwNCj4gPiA+ID4gPiBlLmcuIFdlc3RvbiwgZmFsbGJhY2sgdG8gc29m
dHdhcmUgY3Vyc29yIHdoaWNoIHdvcmtzIGZpbmUgb3IgYXQgbGVhc3QNCj4gPiA+ID4gPiBiZXR0
ZXIgdGhhbiBjdXJyZW50bHkgd2hpbGUgaGF2aW5nIG5vIGVmZmVjdCBvbiBvdGhlcnMsIGUuZy4g
Z25vbWUtc2hlbGwNCj4gPiA+ID4gPiBvciBrd2luLCB3aGljaCBwdXQgdmlydHVhbGl6ZWQgZHJp
dmVycyBvbiBhIGRlbnktbGlzdCB3aGVuIHJ1bm5pbmcgaW4NCj4gPiA+ID4gPiBhdG9taWMgY29u
dGV4dCB0byBtYWtlIHRoZW0gZmFsbGJhY2sgdG8gbGVnYWN5IGttcyBhbmQgYXZvaWQgdGhpcyBp
c3N1ZS4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBaYWNrIFJ1c2luIDx6
YWNrckB2bXdhcmUuY29tPg0KPiA+ID4gPiA+IEZpeGVzOiA2ODFlN2VjNzMwNDQgKCJkcm06IEFs
bG93IHVzZXJzcGFjZSB0byBhc2sgZm9yIHVuaXZlcnNhbCBwbGFuZSBsaXN0DQo+ID4gPiA+ID4g
KHYyKSIpwqAgDQo+ID4gPiANCj4gPiA+IFsuLi5dDQo+ID4gPiDCoCANCj4gPiA+ID4gPiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2Rydi5oIGIvaW5jbHVkZS9kcm0vZHJtX2Rydi5oDQo+
ID4gPiA+ID4gaW5kZXggZjYxNTlhY2I4ODU2Li5jNGNkN2ZjMzUwZDkgMTAwNjQ0DQo+ID4gPiA+
ID4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2Rydi5oDQo+ID4gPiA+ID4gKysrIGIvaW5jbHVkZS9k
cm0vZHJtX2Rydi5oDQo+ID4gPiA+ID4gQEAgLTk0LDYgKzk0LDE2IEBAIGVudW0gZHJtX2RyaXZl
cl9mZWF0dXJlIHsNCj4gPiA+ID4gPiDCoMKgwqDCoMKgICogc3luY2hyb25pemF0aW9uIG9mIGNv
bW1hbmQgc3VibWlzc2lvbi4NCj4gPiA+ID4gPiDCoMKgwqDCoMKgICovDQo+ID4gPiA+ID4gwqDC
oMKgwqAgRFJJVkVSX1NZTkNPQkpfVElNRUxJTkXCoMKgwqDCoMKgwqDCoMKgID0gQklUKDYpLA0K
PiA+ID4gPiA+ICvCoMKgwqAgLyoqDQo+ID4gPiA+ID4gK8KgwqDCoMKgICogQERSSVZFUl9WSVJU
VUFMOg0KPiA+ID4gPiA+ICvCoMKgwqDCoCAqDQo+ID4gPiA+ID4gK8KgwqDCoMKgICogRHJpdmVy
IGlzIHJ1bm5pbmcgb24gdG9wIG9mIHZpcnR1YWwgaGFyZHdhcmUuIFRoZSBtb3N0IHNpZ25pZmlj
YW50DQo+ID4gPiA+ID4gK8KgwqDCoMKgICogaW1wbGljYXRpb24gb2YgdGhpcyBpcyBhIHJlcXVp
cmVtZW50IG9mIHNwZWNpYWwgaGFuZGxpbmcgb2YgdGhlDQo+ID4gPiA+ID4gK8KgwqDCoMKgICog
Y3Vyc29yIHBsYW5lIChlLmcuIGN1cnNvciBwbGFuZSBoYXMgdG8gYWN0dWFsbHkgdHJhY2sgdGhl
IG1vdXNlDQo+ID4gPiA+ID4gK8KgwqDCoMKgICogY3Vyc29yIGFuZCB0aGUgY2xpZW50cyBhcmUg
cmVxdWlyZWQgdG8gc2V0IGhvdHNwb3QgaW4gb3JkZXIgZm9yDQo+ID4gPiA+ID4gK8KgwqDCoMKg
ICogdGhlIGN1cnNvciBwbGFuZXMgdG8gd29yayBjb3JyZWN0bHkpLg0KPiA+ID4gPiA+ICvCoMKg
wqDCoCAqLw0KPiA+ID4gPiA+ICvCoMKgwqAgRFJJVkVSX1ZJUlRVQUzCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgID0gQklUKDcpLMKgIA0KPiA+ID4gPiANCj4gPiA+ID4gSSB0aGlu
ayB0aGUgbmFtaW5nIGhlcmUgaXMgdW5mb3J0dW5hdGUsIGJlY2F1c2UgcGVvcGxlIHdpbGwgdm9u
ZGVyIHdoeQ0KPiA+ID4gPiBlLmcuIHZrbXMgZG9lc24ndCBzZXQgdGhpcywgYW5kIHRoZW4gYWRk
IGl0LCBhbmQgY29uZnVzZSBzdHVmZiBjb21wbGV0ZWx5Lg0KPiA+ID4gPiANCj4gPiA+ID4gQWxz
byBpdCBmZWVscyBhIGJpdCB3cm9uZyB0byBwdXQgdGhpcyBvbnRvIHRoZSBkcml2ZXIsIHdoZW4g
cmVhbGx5IGl0J3MgYQ0KPiA+ID4gPiBjdXJzb3IgZmxhZy4gSSBndWVzcyB5b3UgY2FuIG1ha2Ug
aXQgc29tZSBraW5kIG9mIGZsYWcgaW4gdGhlIGRybV9wbGFuZQ0KPiA+ID4gPiBzdHJ1Y3R1cmUs
IG9yIGEgbmV3IHBsYW5lIHR5cGUsIGJ1dCBwdXR0aW5nIGl0IHRoZXJlIGluc3RlYWQgb2YgaW50
byB0aGUNCj4gPiA+ID4gInJhbmRvbSBwaWxlIG9mIG1pZGxheWVyLW1pc3Rha2UgZHJpdmVyIGZs
YWdzIiB3b3VsZCBiZSBhIGxvdCBiZXR0ZXIuDQo+ID4gPiA+IA0KPiA+ID4gPiBPdGhlcndpc2Ug
SSB0aGluayB0aGUgc2VyaWVzIGxvb2tzIHJvdWdobHkgaG93IEknZCBleHBlY3QgaXQgdG8gbG9v
ay4NCj4gPiA+ID4gLURhbmllbA0KPiA+ID4gPiDCoCANCj4gPiA+IA0KPiA+ID4gQUZBSUNUIHRo
aXMgaXMgdGhlIG9ubHkgcmVtYWluaW5nIHRoaW5nIHRvIGJlIGFkZHJlc3NlZCBmb3IgdGhpcyBz
ZXJpZXMgP8KgIA0KPiA+IA0KPiA+IE5vLCB0aGVyZSB3YXMgbW9yZS4gdGJoIEkgaGF2ZW4ndCBo
YWQgdGhlIHRpbWUgdG8gdGhpbmsgYWJvdXQgd2hldGhlciB0aGUgYWJvdmUNCj4gPiBtYWtlcyBz
ZW5zZSB0byBtZSwgZS5nLiBJJ20gbm90IHN1cmUgaWYgaGF2aW5nIHZpcnR1YWxpemVkIGRyaXZl
cnMgZXhwb3NlDQo+ID4gInN1cHBvcnQNCj4gPiB1bml2ZXJzYWwgcGxhbmVzIiBhbmQgYWRkaW5n
IGFub3RoZXIgcGxhbmUgd2hpY2ggaXMgbm90IHVuaXZlcnNhbCAodGhlIG9ubHkNCj4gPiAidW5p
dmVyc2FsIiBwbGFuZSBvbiB0aGVtIGJlaW5nIHRoZSBkZWZhdWx0IG9uZSkgbWFrZXMgbW9yZSBz
ZW5zZSB0aGFuIGEgZmxhZw0KPiA+IHRoYXQNCj4gPiBzYXlzICJ0aGlzIGRyaXZlciByZXF1aXJl
cyBhIGN1cnNvciBpbiB0aGUgY3Vyc29yIHBsYW5lIi4gVGhlcmUncyBjZXJ0YWlubHkgYQ0KPiA+
IGh1Z2UNCj4gPiBkaWZmZXJlbmNlIGluIGhvdyB1c2Vyc3BhY2Ugd291bGQgYmUgcmVxdWlyZWQg
dG8gaGFuZGxlIGl0IGFuZCBpdCdzIHdheSB1Z2xpZXINCj4gPiB3aXRoDQo+ID4gdHdvIGRpZmZl
cmVudCBjdXJzb3IgcGxhbmVzLiBpLmUuIHRoZXJlJ3MgYSBsb3Qgb2Ygd2F5cyBpbiB3aGljaCB0
aGlzIGNvdWxkIGJlDQo+ID4gY2xlYW5lciBpbiB0aGUga2VybmVsIGJ1dCB0aGV5IGFsbCByZXF1
aXJlIHNpZ25pZmljYW50IGNoYW5nZXMgdG8gdXNlcnNwYWNlLA0KPiA+IHRoYXQgZ28NCj4gPiB3
YXkgYmV5b25kICJhdHRhY2ggaG90c3BvdCBpbmZvIHRvIHRoaXMgcGxhbmUiLg0KPiANCj4gPiBJ
J2QgbGlrZSB0byBhdm9pZCBhcHByb2FjaGVzIHRoYXQNCj4gPiBtZWFuIHJ1bm5pbmcgd2l0aCBh
dG9taWMga21zIHJlcXVpcmVzIGNvbXBsZXRlbHkgc2VwYXJhdGUgcGF0aHMgZm9yIHZpcnR1YWxp
emVkDQo+ID4gZHJpdmVycyBiZWNhdXNlIG5vIG9uZSB3aWxsIGV2ZXIgc3VwcG9ydCBhbmQgbWFp
bnRhaW4gaXQuDQo+IA0KPiBIaSBaYWNrLA0KPiANCj4geW91J2QgbGlrZSB0byBhdm9pZCB0aGF0
LCBidXQgZnVuZGFtZW50YWxseSB0aGF0IHJlYWxseSBpcyB3aGF0IGhhcyB0bw0KPiBoYXBwZW4g
aW4gdXNlcnNwYWNlIGZvciAqbmVzdGVkKiBLTVMgZHJpdmVycyAoVktNUyBpcyBhIHZpcnR1YWwg
ZHJpdmVyDQo+IGJ1dCBub3QgcGFydCBvZiB0aGUgaW50ZXJlc3QgZ3JvdXAgaGVyZSkgdG8gcmVh
Y2ggb3B0aW1hbGl0eS4NCj4gDQo+IEl0IHJlYWxseSBpcyBhIGRpZmZlcmVudCBwYXRoLiBJIHNl
ZSBubyB3YXkgYXJvdW5kIHRoYXQuIEJ1dCBpZiB5b3UNCj4gYWNjZXB0IHRoYXQgZmFjdCwgdGhl
biB5b3UgY291bGQgcG9zc2libHkgZ2FpbiBhIGxvdCBtb3JlIGJlbmVmaXRzIGJ5DQo+IGFza2lu
ZyB1c2Vyc3BhY2UgdG8gaGFuZGxlIG5lc3RlZCBLTVMgZHJpdmVycyBkaWZmZXJlbnRseS4gV2hh
dCB0aG9zZQ0KPiBiZW5lZml0cyBhcmUgZXhhY3RseSBJJ20gbm90IHN1cmUsIGJ1dCBJIGhhdmUg
YSBmZWVsaW5nIHRoZXJlIHNob3VsZCBiZQ0KPiBzb21lLCB3aGVyZSB0aGUga25vd2xlZGdlIG9m
IHJ1bm5pbmcgb24gYSBuZXN0ZWQgS01TIGRyaXZlciBhbGxvd3MgZm9yDQo+IGJldHRlciBkZWNp
c2lvbnMgdGhhdCBhcmUgbm90IHBvc3NpYmxlIGlmIHRoZSBuZXN0ZWQgS01TIGRyaXZlciBqdXN0
DQo+IHByZXRlbmRzIHRvIGJlIGxpa2UgYW55IG90aGVyIEtNUyBoYXJkd2FyZSBkcml2ZXIuDQoN
CkknbSBub3QgcXVpdGUgc3VyZSBJIGJ1eSB0aGUgInZpcnR1YWxpemVkIGRyaXZlcnMgcmV0dXJu
IGltbWVkaWF0ZWx5IGZyb20gYSBmbGlwIGFuZA0KcmVxdWlyZSB0d28gZXh0cmEgaW50ZWdlcnMg
b24gdGhlIGN1cnNvciBwbGFuZSwgc28gdGhlcmUncyBubyBwb3NzaWJsZSB3YXkgZHJtIGFwaQ0K
Y291bGQgaGFuZGxlIHRoYXQiIGFyZ3VtZW50IGJlY2F1c2UgaXQgc2VlbXMgcmF0aGVyIGZsaW1z
eS4gSWYgdGhlIHByZW1pc2UgaXMgdGhhdA0KdGhlIHBhcmF2aXJ0dWFsaXplZCBkcml2ZXJzIGFy
ZSBzbyBkaWZmZXJlbnQgdGhhdCBkcm0gdWFwaSBjYW4gbm90IGhhbmRsZSB0aGVtIHRoZW4NCndo
eSB3b3VsZCB0aGV5IHN0YXkgaW4gZHJtPyBXaGF0J3MgdGhlIGJlbmVmaXQgaWYgdGhleSdsbCBo
YXZlIHRoZWlyIG93biB1YXBpIGFuZA0KdGhlaXIgb3duIGludGVyZmFjZXM/DQoNCkknZCBmbGlw
IHRoZSBhcmd1bWVudCBhbmQgc2F5IHlvdSdkIGJlIGEgbG90IGhhcHBpZXIgaWYgeW91IGFjY2Vw
dGVkIHRoYXQgdW5pdmVyc2FsDQpwbGFuZXMgYXJlbid0IHJlYWxseSB1bml2ZXJzYWwgbm8gbWF0
dGVyIHdoYXQuIElmIHdlc3RvbiBwdXRzIGEgc3ByZWFkc2hlZXQgYXBwIGluIGENCmN1cnNvciBw
bGFuZSBwcmVzdW1hYmx5IHVzZXJzIHdvdWxkIGJlIGNvbmNlcm5lZCB0aGF0IHRoZWlyIG1vdXNl
IGN1cnNvciBkaXNhcHBlYXJzDQp3aGVuIHRoZXkgZW50ZXIgdGhlIHNwcmVhZHNoZWV0IGFwcCBh
bmQgcmVzcG9uZGluZyB0byB0aGVpciBjb25jZXJucyB3aXRoICJpdCdzDQpjb29sLCB0aGUgcGxh
bmVzIGFyZSB1bml2ZXJzYWwiIHdvdWxkbid0IHF1aXRlIHdvcmsuIFNvbWV0aGluZyBuZWVkcyB0
byBzcGVjaWFsIGNhc2UNCmN1cnNvciBwbGFuZSBubyBtYXR0ZXIgd2hhdC4gQW55d2F5LCBJIHRo
aW5rIHdlIHdlbnQgdGhyb3VnaCB0aGlzIGFyZ3VtZW50IG9mIHdoYXQNCmV4YWN0bHkgInVuaXZl
cnNhbCIgcmVmZXJzIHRvIGFuZCB3aGF0ZXZlciB0aGUgZGVmaW5pdGlvbiBvZiBpdCBpcyB3aHkg
SSBkb24ndCBzZWUNCndoeSB0d28gZXh0cmEgaW50ZWdlcnMgb24gY3Vyc29yIHBsYW5lcyB2aW9s
YXRlcyBhbnkgcGFydCBvZiBpdCBzbyBJJ2xsIGxldCBpdCBnby7CoA0KDQpJIGhhdmUgbm90aGlu
ZyBhZ2FpbnN0IGFueSBvZiB0aG9zZSBzb2x1dGlvbnMgLSBmcm9tIGNyZWF0aW5nIHdob2xlIG5l
dyBrbXMgdWFwaSBmb3INCnBhcmF2aXJ0dWFsaXplZCBkcml2ZXJzLCB0aHJvdWdoIGNyZWF0aW5n
IGEgbmV3IHN1YnN5c3RlbSBmb3IgcGFyYXZpcnR1YWxpemVkDQpkcml2ZXJzLiBJIGp1c3QgaGF2
ZSBubyBpbnRlcmVzdCBpbiBpbXBsZW1lbnRpbmcgdGhvc2UgbXlzZWxmIHJpZ2h0IG5vdyBidXQg
aWYNCnNvbWVvbmUgaW1wbGVtZW50ZWQgbXV0dGVyL2t3aW4gY29kZSBvbiB0b3Agb2YgZWl0aGVy
IGEgbmV3IHN1YnN5c3RlbSBmb3INCnBhcmF2aXJ0dWFsaXplZCBkcml2ZXJzIG9yIGltcGxlbWVu
dGVkIGF0b21pYyBrbXMgb24gdG9wIG9mIHNvbWUgbmV3IGFwaSdzIGZvciB0aGVtLA0Kd2UnbGwg
YmUgc3VyZSB0byBwb3J0IHZtd2dmeCB0byB0aGF0LiANCg0Keg0KDQo=
