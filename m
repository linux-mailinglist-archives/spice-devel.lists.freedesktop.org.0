Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FC77E124B
	for <lists+spice-devel@lfdr.de>; Sun,  5 Nov 2023 06:13:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1E2E10E24D;
	Sun,  5 Nov 2023 05:13:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F297010E24D
 for <spice-devel@lists.freedesktop.org>; Sun,  5 Nov 2023 05:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699161180; x=1730697180;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0Kh8qM5V1tZos1RHnY5aRYmqj8e/TErfJfBU75DIc1I=;
 b=UK0q81bc24Mao7fVyxYW4R6oq8T63Zk1T9oPLe4NjsXY5W/G7OswclUF
 wiQsRRAD2kWgjECCej72EggXRD8r856CjlJouzDAniRZCcyfw1oKYqFG1
 UuDy5ILNgaEDS1fsYSPZmqqSTV/urBnD0v4AGlDUCcjzn/AqNTYxAMvhY
 ZKvUHq+qXY2Po/nOH5CehEulTviony/wECpdTgddOP3ekUYwQRT7plBJG
 BKCOa4vc8E96jAPg/QquA+Izx+eNKOxBvyDOGnckDM8qHq0VITZiyde+Y
 eSGmeiKkT+pZcgkwOGhFzRkVXsjkDrwpKw6ZvrheOSUbF6sgYW5PlCQPX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10884"; a="10662760"
X-IronPort-AV: E=Sophos;i="6.03,278,1694761200"; d="scan'208";a="10662760"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2023 22:12:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,278,1694761200"; 
   d="scan'208";a="3130271"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2023 22:12:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sat, 4 Nov 2023 22:12:58 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sat, 4 Nov 2023 22:12:57 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sat, 4 Nov 2023 22:12:57 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sat, 4 Nov 2023 22:12:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g8VcWRBab+NSWnVvaXdVv1SJyU7zy5i1gkpkS6catorlMflEUVTWZ12zfIivEUcQUCRioQO5cEBl5/47eJQjlsOxBXw1ND9iTJOJP1OOxppwGtkxaLij6G8ZnvbZ7C40UefJSxh1AXXDB5wHu5UgE1Y3ahPssTWGmiTIJNXjNYxOlw441qLjzuER8lDTw9bfOOEk9J8GR1isVYhof6vpZkHAdt9LH8CFsfJMn25bAL7Z4KYNp5tJfblBYsQTtGOYSfdWuCtZpkgF2NjDuW0XNd4+cBYLyIYW1hIeWlwlOa3/mhw/tvC+y6F5Mdvg0GTG82k36QU1WMn1v8fosRMFVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VGbI4BkRnRFbaESpajLL6mf8tDGcGjK8d1K+gziaFY4=;
 b=mLNrXFFvKFhPDTIG+waXf3/8DeinDjVnC9GyalSS98qTOQhBg5exrWNvTGDB9X5iVoNOrVOZCwCz01xgqG7mACUUos+oGKqlcq5y5drgofxIAP0WOE3OosF2DC5Sn+EMaOBfO0EDqSFlYTapj6P/Jz2sJHCsfXZvtQRN7tqUpDI7nydbTPplkBpXR4z4ylOUh2Ph3nBpD7CEvFhMFdS2Vptgzzyv6+omY/nIfKjnH4AgX4G2TdOAeVvaPb7WWkcbScCpqRbh74XbKtEWrbadc9qv3QCSY0DPzAecZQDip/os+zvwcNklWMFQlr4LhjeH5bfxNpfgryx/A06n7qix9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by IA1PR11MB7176.namprd11.prod.outlook.com (2603:10b6:208:418::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.25; Sun, 5 Nov
 2023 05:12:56 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::b6a:cf27:4d2d:1df4]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::b6a:cf27:4d2d:1df4%4]) with mapi id 15.20.6954.025; Sun, 5 Nov 2023
 05:12:55 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>, "spice-devel@lists.freedesktop.org"
 <spice-devel@lists.freedesktop.org>
Thread-Topic: [Spice-devel] [PATCH spice-gtk] gstreamer: Fix leak using GstBus
 watch (v2)
Thread-Index: AQHaD1/eiruNPCz0pUibcQcxtRzfw7BrLpRw
Date: Sun, 5 Nov 2023 05:12:55 +0000
Message-ID: <IA0PR11MB7185EA350352A571427D205DF8ABA@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20231104204512.232-1-freddy77@gmail.com>
In-Reply-To: <20231104204512.232-1-freddy77@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|IA1PR11MB7176:EE_
x-ms-office365-filtering-correlation-id: 8c76ea1b-ea78-4fe9-d84e-08dbddbddea8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KXAQcW64VmrJMkyt+K1kIEcd/f8ULph5Z5dD0tCA1qnzG1o5rO5ZGcPr1V3H24GslMLCe0FPpFuFC5cSTx1YoTv7XUKzssqJWH/jE+0M9EDaK7f3X6DHPgwNVK7IsfL397IGUTOxWXsSecKIjwneesjJH8lPqgqaDfB9y+xXeVkIJIfeHllncWoIFBKCUI2Ns2zr12nZLdN4dwvswisXqkE0x/q9VlByZFnDx5OhXaHpHqVZfuK8K4uDsK5LfN4V2IsbmxGc5/z+GtnK0e204NUlLRZNE+9QnAyDZbE8Jq0dcIEaXowcRinfj+euY2/7eb8a0t53wuoeM11GU1vziejy5bJ7wS3n3QTCvQsUUXlaoVmKkmAz1+L/qTGE+h8MaHW8uyrlXpkmsfD1rJtzkaPXszGN8Iqy4aRuoCPV42RH3oS65Nx8gRHU7xI77+2yOroukofCmitlmB/ZbyyC6PbRFoMXXGYMcDx61T1N2PbS38DvC5Y399ReAjUL1sSMWDI9a5Ses6t2VrQB/G9uGPNtJlLrqUAB/H9HanEqpd9OOs6REWk/Ocf47EvfFYm8nwaCU1LVYpTV4DVWO/DcdBTIMLfnbkIwFZrfFbknZPzKNhAol5br01od3JCodzfH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(39860400002)(376002)(136003)(346002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(55016003)(33656002)(8676002)(8936002)(52536014)(86362001)(122000001)(82960400001)(38070700009)(38100700002)(64756008)(83380400001)(478600001)(26005)(7696005)(9686003)(6506007)(71200400001)(41300700001)(66556008)(76116006)(110136005)(66446008)(66476007)(66946007)(316002)(2906002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?D/dbv1zL8tixQlgKx0kLJfkb6QUoYlrGdzVzPFqanE+B2fF367LuCpR6XNy2?=
 =?us-ascii?Q?mvem1mDt6+wVLRmQ8pUmozWufhFpBayvPjcatz4sLWevf6Sr1oyDj9TxCwQO?=
 =?us-ascii?Q?ckU3H+krd6zOl75f5fnTLwbeh/+Vkk9NAs9yesYBL9dSx0wTTZqyHUwYUl0r?=
 =?us-ascii?Q?gU7OYknfIHBX7YzE4Y/yq9Q2v7Rm5MDCthn7Gb+LjnEA+B2pIgsu2KqKTTZO?=
 =?us-ascii?Q?gSu4KsrjSXtIutvi0ce11L+gK+7NJkyT4mgeVTq2rd7+V79i8ti+uypVFh7e?=
 =?us-ascii?Q?5vtHc/0RYF6eTlpOPaeXuTOoFiR2+UqR/GYKdhgCYDamAck1TYDlqN7qMQwY?=
 =?us-ascii?Q?JRO2TwWHi4CMnJFKxmRCQCsBmDgX3ZcnZlPg+RvXRAQPvHDp3p/LAWgQSYpN?=
 =?us-ascii?Q?c1sUpDq3L5g3CvAAtw4IbbUXi2ANf0HLmdv782D7AgQb2zNxl8sYfB4Y2ZvX?=
 =?us-ascii?Q?excCAEOxpZt7cVDJRZrd7OCMNrAsLiAXT42QV/3DRUTYQqPysuZHPVUWYjkJ?=
 =?us-ascii?Q?jKeD4uFEICYSLziaTXPfvJkf8Yv+0flnGpKjcw+WLxsjc9WnVV0oYWVpBjgu?=
 =?us-ascii?Q?GPopflxyb2DwcOMi7vVz2+0tuYhi1jmSmGTW3wt2gZcYqRqatkATEbPBMLMy?=
 =?us-ascii?Q?FIHSFtvPJJkcC9Ovpo5Lo7rYzq6YLw8uq/xTxv1egYM4vLdeQfnv9M5Ao80E?=
 =?us-ascii?Q?NmcH2qBU0Nu11AZyfuTEZf9Zcmf6EAPWJFsyfdwvryMRfUTQnBXAkqfrE5CK?=
 =?us-ascii?Q?zw0VnhBV9VIBNHp2ikypiofcYCRGzwpVrrON6012SL87i+438xT9E3QF+VT/?=
 =?us-ascii?Q?iS6MrkTEDyOasFrb0YkK4NHr01GXdU31rgAroeQqDHzTP0XZli5gwwavahIA?=
 =?us-ascii?Q?ArErYJ+TLhLzFJsyN1Rr0mSS012ULIh+zMc1cz1hYpxiIiV+xp6jDAMD6EV3?=
 =?us-ascii?Q?4SxD4kf0H7o3T9CYCbqnL4niSi0bh9LJN6yTRWcmdq7S2vguLDbbD/SfEmT8?=
 =?us-ascii?Q?p/rjWzz4lI8DQ+1PhAr6H4oTNbLKttfZFVYA+OebLOPbXt+JJT7fe4LkuXzk?=
 =?us-ascii?Q?5a+2GQhD9oXLgI21LhKDBai6FHHb29MnAF/MhHS57i5guRrQK3B8Ad6jMzYj?=
 =?us-ascii?Q?EJPe5lCvqocvnBjLxUpzoLgOYTjOW++axCP8M4IYgZrKYaghUSZs8h/OPocy?=
 =?us-ascii?Q?3jKq8r3St4t1GvATVeI8WMp80PcnnK8AeXHQ2Uvf0UqOkMCZd2oDqsUelhPG?=
 =?us-ascii?Q?yriX6N22dFjzaxbexgie5jvyy5nvfjz/9796RMK4PP8xl7s4wKq3olmCI/BG?=
 =?us-ascii?Q?QOyav1Ia8qaKcg4dJTopo+WlSqVkxRpGwYqRel0UN+8L72BnfvlHUhG0KFuN?=
 =?us-ascii?Q?K9nQD2Zi2nluljkibRNdLw/VVlh2oAaQbrqqhhjxAWxF2nTs4IzHMIHjabyA?=
 =?us-ascii?Q?lh/6ygyivxy7SP75LAi2UagsF/mBedAexLNMdzWozDAWN7JFr3bZ6wpWeMlJ?=
 =?us-ascii?Q?aAkG5AwixOqLrKuozoUhyFoCu6GLIjmlN3ICKxPoZYxHFBF3oQSS39rq5E2G?=
 =?us-ascii?Q?x8M4UMhhOkHIuXmjPUzZiQioFCktAxy2rkJ+8hyF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c76ea1b-ea78-4fe9-d84e-08dbddbddea8
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2023 05:12:55.6991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e2eWgQl4ULPmuy4t3Qfwi3GJcOvTr1ztB8VFLPUjVRSsMFMkyreeJ5YZCdu6S8zeIExS3Ysa9MjdpvPmDZDRWM/SySHEGYC50TiXSwW4TGU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7176
X-OriginatorOrg: intel.com
Subject: Re: [Spice-devel] [PATCH spice-gtk] gstreamer: Fix leak using
 GstBus watch (v2)
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

Acked-by: Vivek Kasireddy <vivek.kasireddy@intel.com>

>=20
> This patch fixes a leak due to not freeing GstBus watch.
> The watch is attached (as GSource) to the main loop and retains
> a pointer to the bus so we need to remove it to release the bus
> when we release the pipeline.
> This was detected forcibly creating and destroying lot of streams.
> After a while the client program consumed all file descriptors
> and stopped working. This as GstBus retains a GPoll which,
> under Unix, uses 2 file descriptors.
> For some reasons using gst_pipeline_get_bus again in free_pipeline
> do not fix entirely the leak so keep a pointer to the exact
> bus we set our watch on.
>=20
> Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
> ---
> Changes since v1:
> - added comment.
> ---
>  src/channel-display-gst.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>=20
>=20
> diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> index 3b372dc0..2734a546 100644
> --- a/src/channel-display-gst.c
> +++ b/src/channel-display-gst.c
> @@ -47,6 +47,7 @@ typedef struct SpiceGstDecoder {
>      GstAppSink *appsink;
>      GstElement *pipeline;
>      GstClock *clock;
> +    GstBus *bus;
>=20
>      /* ---------- Decoding and display queues ---------- */
>=20
> @@ -352,6 +353,13 @@ static void free_pipeline(SpiceGstDecoder
> *decoder)
>          return;
>      }
>=20
> +    GstBus *bus =3D decoder->bus;
> +    if (bus) {
> +        gst_bus_remove_watch(bus);
> +        gst_object_unref(bus);
> +        decoder->bus =3D NULL;
> +    }
> +
>      gst_element_set_state(decoder->pipeline, GST_STATE_NULL);
>      gst_object_unref(decoder->appsrc);
>      decoder->appsrc =3D NULL;
> @@ -534,7 +542,9 @@ static bool launch_pipeline(SpiceGstDecoder
> *decoder)
>      }
>      bus =3D gst_pipeline_get_bus(GST_PIPELINE(decoder->pipeline));
>      gst_bus_add_watch(bus, handle_pipeline_message, decoder);
> -    gst_object_unref(bus);
> +    // Retains the bus object to be able to release the watch.
> +    // We keep the reference to avoid a dangling pointer.
> +    decoder->bus =3D bus;
>=20
>      decoder->clock =3D gst_pipeline_get_clock(GST_PIPELINE(decoder-
> >pipeline));
>=20
> --
> 2.41.0

