Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0475E7E1056
	for <lists+spice-devel@lfdr.de>; Sat,  4 Nov 2023 17:19:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAF0710E0E2;
	Sat,  4 Nov 2023 16:19:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DFAA10E0E2
 for <spice-devel@lists.freedesktop.org>; Sat,  4 Nov 2023 16:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699114778; x=1730650778;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+NoRPAtFZ3X33vcepyRIwOSyJOJa/VcjyAv/b2NKp/s=;
 b=YcEnC4FlPYpWtrn0NGjSNFDLJ0pgrX551oZ0b41O7ClCzhx+UiQD/CBw
 KuzSl//nR7MwWJ+qx+V853Y3XRXXKAD+teL5FwOttGy2gxABdD4oX2gnl
 KVFIZm1X4T/8boFk+91GrWaRt2lmI3CxbQM+o+y+PfoBXdRaG+BMhhuV4
 ubJnjRhgD2VxqBCY4CKxeJzKDKGPp/Qp2TulFVuq6wOug6/kvciGat940
 5vqWqDl0bYVdhqxEoWsfUwTBmJC+6sqFbSr/mMpETdnNbvqSn0qHrCybf
 yg7ANQew8AFcQKPVaa9ZsNNZ5ZyeqHbl3A3/L6MjdXnDW56N6Ud/Duuaa w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10884"; a="453396580"
X-IronPort-AV: E=Sophos;i="6.03,277,1694761200"; d="scan'208";a="453396580"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2023 09:19:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10884"; a="765549346"
X-IronPort-AV: E=Sophos;i="6.03,277,1694761200"; d="scan'208";a="765549346"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2023 09:19:30 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sat, 4 Nov 2023 09:19:30 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sat, 4 Nov 2023 09:19:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sat, 4 Nov 2023 09:19:29 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sat, 4 Nov 2023 09:19:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oB6vbYv04aLrPl9gEIBW75O6P3LHtrtYT6c81YCCusMqgRX/vjrPHgJw3qT34EXElt5hYq9Q/x+ZjTGWubF+IQoXDD9asJIEJXNdY0ak7RYgzWt9S8XuG9SJviG5X9jyOlXoI8/yGW+AV3howw2ygojFeN4HCuBHvrgPS9FurLlqg7980/dv3K731CuqN32mD3MxZvtIKXp9EfJNiV9vkNaeFYcC/oOIfIiVLNj6Pjetrq8w7J3mua6o4mrJdHI8HACTzE6MwUMcx9TN41fvWpztuYiwV9vtibWQBPD2RQopiJ4n2+j7vAXLmprKL6klmzaqS3WQLk+c20nGaElJSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BECPMU9PgQlbesSqM4e7p1/0RZehQxuU/tITe2rCRho=;
 b=ksth2hRDUmeRwjdJioAQx6FWN/m0nhQbfoNdsdbeubuC2XQRNDHbSRxRJ3UGc8T5BBQyavsn9e6QuPVB0M9qpU8lOhgg4SZB4NtZiHFgz8jKvB+pzbKr8rlmsZaYKRfuynqi0/e1jHYPvLqW5Ll+BF+z2tsuZoHD4nBg40C/0lOPHaBs729KOYt+L0anDKdTim67AUOQ987OvTMGm/MpL1O4dRz16lNRG33UrW06hypzewDLIQikC4MdHuTO/9JDpfQlaySD4PzMxmF++N8nh7twuUrZzJEP0jkwlkKDDIpwElJsWmeKl+EVJBAM1wgxgPDJ4xiQg+gZmKpUY/fG7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by PH7PR11MB6523.namprd11.prod.outlook.com (2603:10b6:510:211::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Sat, 4 Nov
 2023 16:19:27 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::b6a:cf27:4d2d:1df4]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::b6a:cf27:4d2d:1df4%4]) with mapi id 15.20.6954.025; Sat, 4 Nov 2023
 16:19:26 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>, "spice-devel@lists.freedesktop.org"
 <spice-devel@lists.freedesktop.org>
Thread-Topic: [Spice-devel] [PATCH spice-gtk 2/2] gstreamer: Fallback to S/W
 decoder if H/W one is not working
Thread-Index: AQHaDjL+3d1dT2JOlk++nuJEPqnFILBpGCdA
Date: Sat, 4 Nov 2023 16:19:25 +0000
Message-ID: <IA0PR11MB7185721625533B50371249EAF8A4A@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20231103085120.1339-1-freddy77@gmail.com>
 <20231103085120.1339-2-freddy77@gmail.com>
In-Reply-To: <20231103085120.1339-2-freddy77@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|PH7PR11MB6523:EE_
x-ms-office365-filtering-correlation-id: 6c0496ae-2dd4-4bd0-9a2f-08dbdd51cfeb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k7wezoMhwfFGDCrqDRLPnjPVG/L8BRDxbA4QWhhp2RDoQo/SCasYY82+bgxiKEn217+DoDo2cBUeGpkkzqB0PuHHTLg1CiXSdE80KAiOeZpzBUyo+iOwRk/Wufs048K3rxz7wEzcenI6HMYrn3YdsJdc4EJOa9WCV3jAGIUbrXp5tUG8tFyb4T1BF6uZaesVc1NlJyIVZiGVqkr/CXti+LsRm5cpVXBWCybUdwZhMpGsUkXHFPUjD9tWxt8+kS5bgXVgh0zrPZwfHll07yQVAnjwLf3MYvyIYIOwVRmvBD2zlL6jNjoKPvwNNikNV++pNT7Z1QtNDzFgsoarppXdRXTvFyuJ/FuBRRA0aJsXp7U+3MHJwSmmCfAzV+hpzegRmFxtlF3dS+w39UzABEbsoQhaj0qLL1Nz4zTIdV+JI+VE2r6zK4aIfQF5S0Hg/oLQPre2RQ2rb5Wk7gwG5loVI5t9/GM7uOTPC268u+blfaZfGlJJ3mLi4yoQhApNoUo0BqVL+CJXxRthSftOr3MtsnysOoqOL4jo2hfhaGZMhjGE3MbNF8mQnSyRqBH0d/2BoiCLLI2WbuILKbfUXQAiZZoAZMLmje/0ZM62jCnq1C27OlEZL/H+kd0U75J4hxWp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(39860400002)(376002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(26005)(41300700001)(6506007)(7696005)(9686003)(86362001)(122000001)(33656002)(38070700009)(82960400001)(38100700002)(83380400001)(66476007)(76116006)(110136005)(64756008)(5660300002)(66556008)(55016003)(2906002)(8936002)(316002)(8676002)(66946007)(66446008)(52536014)(478600001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tQXzzcTV8d6uJgH8xSwBcEXLqfTuRmIbeuESv1ArvrBZFjobD5DXzgVFvJ3t?=
 =?us-ascii?Q?WUmi2BXcSjBn7M+aAhpOW2vUXGBfLp+SgHDoPN1EsNezSUih1Vr14kLSoVPb?=
 =?us-ascii?Q?DBlpCu9nHryCO3+XqFim0qjG5gjabXe78cqrzO4TJPIbTgndI/h9KSrPU/kg?=
 =?us-ascii?Q?CCuVzquCljNbPjLmwH0me1T0OuX4KZdfNhA3AhOtRLWCpDFdM5r5xrD/FnnU?=
 =?us-ascii?Q?8UhBIp4pd6FIv2RGzuC2iHUbumsFhUtskqeuxGjRvV5IKbTn9/5FpiBqJlMV?=
 =?us-ascii?Q?E/4+JCw3p0JWsLja9Lae9er16J/KA+He3GCwnFjcNEXem4Lg1tK/NeMIxJCm?=
 =?us-ascii?Q?b9wHq8g8usoYN/Tj0WzMCb3jLyHDslKvWnXxCfBNqC1TWcUVAeoppgLNgkCm?=
 =?us-ascii?Q?wl0fotdT4o3buayuydOa68qtMuJq2svr8oZ3MhDB36ThyaoqtpJ/DLgwfLGJ?=
 =?us-ascii?Q?XF3oYcfZjVzb6QD9ZHqASXOf937s7St09jO+//zK6FRRgs6/POltIDt+hcmm?=
 =?us-ascii?Q?4u6PmmOBfYtL67qwGPaoMgaEpBiabXvUd255CLCEHvxEx76/k/CNOtqihvq2?=
 =?us-ascii?Q?pOAKJhkXR3g2oDrdp8UpAol8FbrAvP5BbjbnZVmSyIzqV0k53eBNYDn7nnZa?=
 =?us-ascii?Q?WvR32QVxhxWSj1+ygnWXoiodWNPkO8ldXmVDMegAfq6MpzKqwoRCQrI+5kVc?=
 =?us-ascii?Q?PeS/VVFliQimW383iaeJX8VL3QVNrc51HNacrQaRMLxkB25Z6J9qK8Zhx/Mj?=
 =?us-ascii?Q?v7XrpIVZqg+LdbbPCqdSlElm+Mvw/S1msAqfgz5eFpoGe7zcczZRAJ1Npy/2?=
 =?us-ascii?Q?47SHdvaerDBgrJD0/slbZaxHM1PB3AQYd/1xlVFJO2L74AwrAjQyiW0Q3H8v?=
 =?us-ascii?Q?/wfKeGlLn9cSQtPhvtH+L+3jI3EKKJTTTWn5xltzoTdCuzS4aRq63eO1tmLJ?=
 =?us-ascii?Q?K2GZgFAxGM7Pe/BoxpfPhXPOadqvv8cbWjg0AEngR2a7t2PBGxKWDlymKEZA?=
 =?us-ascii?Q?joQkBH6LH1qk1z5cgMoC8vCHAZikf/N1yZI6pcOlRQgwWxxkvCTTr8JTv/gr?=
 =?us-ascii?Q?QExxeSTRCsOQ9GJAigKyOWkn5ZoZ89KlWE65HEP71J47u5KSIwekRKF+vFTH?=
 =?us-ascii?Q?USGg/dwS1pUxPI8PmzEvoguxqh6Og7KSWWWAUb1x5zF2BFJDkoP/34ClqXoV?=
 =?us-ascii?Q?urIPwV67kk1Y4b71mPaRkx2qDF5fIBfWkv5TpPnfSKCVFLSUfzUmSjKxMLLN?=
 =?us-ascii?Q?fmY1budb4e4IMxeLBylFhfB7y6vMbVv0m/8d39rwBq5kUdi30RxpxPp3Aoj2?=
 =?us-ascii?Q?XirltrwOnMPMsw7o0Rj3aeOPa6jlIFdKeCj7Bqejla8F+NC3VjAN+VouMGWb?=
 =?us-ascii?Q?lZ2LKRHKHyP887T+nRNhxENSkFMHZ8cHrve5pTQBhbYI9GekSAijewlcd9jC?=
 =?us-ascii?Q?62JOhxqbXAECCAu1bR+BP9FYzkncKBUKEv3igIqXtbTlOwMNyDf6Ui7psySg?=
 =?us-ascii?Q?Nfc+aFwpDZWvksWDlKCBM+vnkIiiYxDfVNkZJpxN5TkGNibOCtiJn6taIj/4?=
 =?us-ascii?Q?rHUY5vYnZwXuqgeSNuaFKV41vTFdC7DmrLmksKGq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c0496ae-2dd4-4bd0-9a2f-08dbdd51cfeb
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2023 16:19:25.2923 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kllOyEXkJLcZOPJwot4qWjzwjO9eYYzKnAd/d+za5j488zVbGGO/u5XHBc0D04rcK6+25EZ9zmg/VDupcPrJQGcwiw6NvWVrEnqlhB9lhjs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6523
X-OriginatorOrg: intel.com
Subject: Re: [Spice-devel] [PATCH spice-gtk 2/2] gstreamer: Fallback to S/W
 decoder if H/W one is not working
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

Hi Frediano,

>=20
> In case the H/W decoder is not able to decode the stream (like too high
> profile) try the S/W version.
> This is done detecting the failure and trying to recreate the pipeline
> in case:
> - we are using a H/W pipeline;
> - we didn't decode any frame (otherwise it means we lost the beginning
>   or it was not a problem of H/W decoder).
>=20
> Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
> ---
>  src/channel-display-gst.c | 43 ++++++++++++++++++++++++++++++++++-----
>  1 file changed, 38 insertions(+), 5 deletions(-)
>=20
> diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> index 6e126000..1238c943 100644
> --- a/src/channel-display-gst.c
> +++ b/src/channel-display-gst.c
> @@ -48,6 +48,8 @@ typedef struct SpiceGstDecoder {
>      GstElement *pipeline;
>      GstClock *clock;
>      GstBus *bus;
> +    bool is_hw_pipeline;
> +    bool frame_removed;
>=20
>      /* ---------- Decoding and display queues ---------- */
>=20
> @@ -125,6 +127,7 @@ static void free_gst_frame(SpiceGstFrame *gstframe)
>  /* ---------- GStreamer pipeline ---------- */
>=20
>  static void schedule_frame(SpiceGstDecoder *decoder);
> +static void try_sw_pipeline(SpiceGstDecoder *decoder);
>=20
>  RECORDER(frames_stats, 64, "Frames statistics");
>=20
> @@ -231,6 +234,7 @@ static guint32 pop_up_to_frame(SpiceGstDecoder
> *decoder, const SpiceGstFrame *po
>      SpiceGstFrame *gstframe;
>      guint32 freed =3D 0;
>=20
> +    decoder->frame_removed =3D true;
>      while ((gstframe =3D g_queue_pop_head(decoder->decoding_queue)) !=3D
> popframe) {
>          free_gst_frame(gstframe);
>          freed++;
> @@ -371,6 +375,7 @@ static void free_pipeline(SpiceGstDecoder *decoder)
>      decoder->clock =3D NULL;
>      gst_object_unref(decoder->pipeline);
>      decoder->pipeline =3D NULL;
> +    decoder->is_hw_pipeline =3D false;
>  }
>=20
>  static gboolean handle_pipeline_message(GstBus *bus, GstMessage *msg,
> gpointer video_decoder)
> @@ -390,8 +395,12 @@ static gboolean handle_pipeline_message(GstBus
> *bus, GstMessage *msg, gpointer v
>          }
>          g_clear_error(&err);
>=20
> -        /* We won't be able to process any more frame anyway */
> -        free_pipeline(decoder);
If you keep the above line, I think you can avoid the else below;
given that you are freeing the pipeline anyway in try_sw_pipeline?

> +        if (decoder->is_hw_pipeline && !decoder->frame_removed) {
> +            try_sw_pipeline(decoder);
> +        } else {
> +            /* We won't be able to process any more frame anyway */
> +            free_pipeline(decoder);
> +        }
>          break;
>      }
>      case GST_MESSAGE_STREAM_START: {
> @@ -670,6 +679,7 @@ static bool try_intel_hw_pipeline(SpiceGstDecoder
> *decoder)
>      }
>=20
>      decoder->pipeline =3D pipeline;
> +    decoder->is_hw_pipeline =3D true;
>      return launch_pipeline(decoder);
>=20
>  err:
> @@ -702,7 +712,7 @@ err:
>      return false;
>  }
>=20
> -static gboolean create_pipeline(SpiceGstDecoder *decoder)
> +static gboolean create_pipeline(SpiceGstDecoder *decoder, bool
> try_hw_pipeline)
>  {
>      GstElement *playbin, *sink;
>      SpiceGstPlayFlags flags;
> @@ -712,7 +722,7 @@ static gboolean create_pipeline(SpiceGstDecoder
> *decoder)
>=20
>      if (vendor =3D=3D VENDOR_GPU_DETECTED ||
>          vendor =3D=3D VENDOR_GPU_UNKNOWN) {
> -        if (try_intel_hw_pipeline(decoder)) {
> +        if (try_hw_pipeline && try_intel_hw_pipeline(decoder)) {
>              return TRUE;
>          }
>      }
> @@ -995,7 +1005,7 @@ VideoDecoder* create_gstreamer_decoder(int
> codec_type, display_stream *stream)
>          g_mutex_init(&decoder->queues_mutex);
>          decoder->decoding_queue =3D g_queue_new();
>=20
> -        if (!create_pipeline(decoder)) {
> +        if (!create_pipeline(decoder, true)) {
>              decoder->base.destroy((VideoDecoder*)decoder);
>              decoder =3D NULL;
>          }
> @@ -1064,3 +1074,26 @@ gboolean gstvideo_has_codec(int codec_type)
>      gst_plugin_feature_list_free(all_decoders);
>      return TRUE;
>  }
> +
> +static void try_sw_pipeline(SpiceGstDecoder *decoder)
> +{
> +    // try to create a S/W pipeline
> +    free_pipeline(decoder);
> +    if (!create_pipeline(decoder, false)) {
> +        return;
> +    }
> +
> +    // reply the old queue
replay?

Thanks,
Vivek
> +    g_mutex_lock(&decoder->queues_mutex);
> +    GList *l =3D g_queue_peek_head_link(decoder->decoding_queue);
> +    while (l) {
> +        const SpiceGstFrame *gstframe =3D l->data;
> +        GstBuffer *buf =3D gst_buffer_ref(gstframe->encoded_buffer);
> +        if (gst_app_src_push_buffer(decoder->appsrc, buf) !=3D GST_FLOW_=
OK) {
> +            SPICE_DEBUG("GStreamer error: unable to push frame");
> +            stream_dropped_frame_on_playback(decoder->base.stream);
> +        }
> +        l =3D l->next;
> +    }
> +    g_mutex_unlock(&decoder->queues_mutex);
> +}
> --
> 2.41.0

