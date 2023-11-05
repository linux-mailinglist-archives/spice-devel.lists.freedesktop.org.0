Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 831E17E124C
	for <lists+spice-devel@lfdr.de>; Sun,  5 Nov 2023 06:13:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DFC410E24E;
	Sun,  5 Nov 2023 05:13:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C60810E24E
 for <spice-devel@lists.freedesktop.org>; Sun,  5 Nov 2023 05:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699161226; x=1730697226;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+Uy1Y9DE7EmwBaQBmGU0apcro8ZnuTBxRu7jQxDKPDc=;
 b=gnGALPIJo3InneyjVK50/Get0IYt/s3+SjJAYvT0KDZbyOzVIJaCWcDQ
 rFXvg9cz9pwbaeLyug6WYq2P0SPm6uUKCrFoMcPuxMRrFr+/c3Jf6G/Z4
 7GLBu5//P+WVJ3fYlicZHSrlQjWYFSWeuPCBwvuaQJlQUrcGpFVn2h//F
 DqvOLY/gVu2RUi5A21f91nC60ugLloWmntXHYSyH9y0A++e8L9cZHEtEF
 +JKLChF95OC8qFpyxJoIimdCRAvznnX9f7shIUwDlaDCZ3mjiL0/Yv3ia
 QcVR4RsPZn9g9wjhZKcNEotZ2zKPRLtF170WrNBSO0ulFkY1uV8j6Gv6d A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10884"; a="393015804"
X-IronPort-AV: E=Sophos;i="6.03,278,1694761200"; d="scan'208";a="393015804"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2023 22:13:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,278,1694761200"; d="scan'208";a="10142392"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2023 22:13:45 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sat, 4 Nov 2023 22:13:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sat, 4 Nov 2023 22:13:44 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sat, 4 Nov 2023 22:13:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fkqe/682YeX0R+EBpIjqnr3cjekLiY3ESsRjV40j98zEBDxFmFZz5SVf34yXID1wPx4TwUGK+O30CLrNq9bOoD4NsJR64UyliPcguOw+PvAdWnj4K//nWsPXW2F7AyekujeBnkTyH+lSEy/QYm5Y+1tpf3h94DJQtGUtL+O0/mdE//8x65EdR6/eNQOpPcLnjpeY1sGbZXRRHEQA+XRF7vricA14Oya/zIqAHaVwd+7NrXGtAF5PUEtelaGrIZzqfG46FD3xAoyXZjnXwCGHThA7vkFeb+qz/k4fRK+h9rYPMtlyrS2FGZHmR8MNhR2svT0D/gwVGnM8Lp49sAGJIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mbVnw5/G/EAhQA0jKV5VUwYomnoGxIRnbRDj25OMCKs=;
 b=TQd0KqExdk3bcW+PkY0lVu9LWsZipHeCT9MeVfDumWGZAfaaFKZG0c5VVSxJtUbaLgOycLwTgVQsdlajbmu9AiKInkP0yHQMJ9jiWnU2l0pAFOjnBKFXbHjpht/CXiepY6FXc+QSwwPwpTNP5rMi6pjtpDJb3s8LVbkf1j/vhPyFMkaEbEJVJs6sWQs+VrMlaX+iBE2LLjDc4qQFbX6XFkEnEz7trIQKFaornvh1ntfSJ0wb2jYNAoI5T0fzBzvnzMg9AWk/lcvyDY+o5/oRMiS1VeWg2hXxZDYad6Jht2DePL/ongokAEqKOMEK58iPdt+OfOTp9kPkmQc5m07B0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by IA1PR11MB7176.namprd11.prod.outlook.com (2603:10b6:208:418::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.25; Sun, 5 Nov
 2023 05:13:37 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::b6a:cf27:4d2d:1df4]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::b6a:cf27:4d2d:1df4%4]) with mapi id 15.20.6954.025; Sun, 5 Nov 2023
 05:13:37 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>, "spice-devel@lists.freedesktop.org"
 <spice-devel@lists.freedesktop.org>
Thread-Topic: [Spice-devel] [PATCH spice-gtk] gstreamer: Fallback to S/W
 decoder if H/W one is not working (v2)
Thread-Index: AQHaD2DptYimgydBVkuHBFtCjdy2ULBrLsrg
Date: Sun, 5 Nov 2023 05:13:37 +0000
Message-ID: <IA0PR11MB7185AB9F6159DBA04E8FC9FBF8ABA@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20231104205215.929-1-freddy77@gmail.com>
In-Reply-To: <20231104205215.929-1-freddy77@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|IA1PR11MB7176:EE_
x-ms-office365-filtering-correlation-id: e9929c48-0bdd-4603-e780-08dbddbdf7ce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dtKprvoKncAN+wXbV7FzQn2a1JkmC4YqAXitc1i/7YfHFxUk+KSCx8zSievXVUHyff8bORuiIyKF4q9+6R/WuF9yW4+C9KWj9NObwmXy9VL/BXz9sHueA+/D2vafI/3S5VqPAmgtiws5DOnv2g+E9CQTFF9R1oYHgikEAu3CbkiSfTMSkeuOKp1QKozQqGtgzdi5gHDnZo/jz2SKoGpeo5+APn7K3N2hLR3NuXFo+fvdwL3y6R+BlM6Ciy3lEaGJKptXql0ChxMgWAQNEolVFin6zq/oeq0D5qe4LcQgVoelrq7q+/mNASEOmM+y5hzzFHWLiOaLITYvezpmZG5BEjnkIlLAZkdidBgMMcGVgGdk5WsXx+rU8mlQ+arQwZ8a0PPJnvNLtQTSAo6vxnqrYqJMVl3NX5g+OqcpJ004WzaCJrRlGS79nfxJHyoPuh6BK6BPgrtBN7HDTHmiD2MmeK+JE8A8RyWzp/zsUpvPlht7rAliFA7LGDkgsKb4sUtsRvT6gU0Zx92mqgXVgb2nezuXudw7TlUX7TQaw7a0n4+YgI98z5gPyhv6AbV6Tmj1SlS6XcXebj1LHGkJ3OxDUhcbPfZqeE9invKbOe7c6qdhHJIONsCRY5dIf7eroWOU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(39860400002)(376002)(136003)(346002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(55016003)(33656002)(8676002)(8936002)(52536014)(86362001)(122000001)(82960400001)(38070700009)(38100700002)(64756008)(83380400001)(478600001)(26005)(7696005)(9686003)(6506007)(71200400001)(41300700001)(66556008)(76116006)(110136005)(66446008)(66476007)(66946007)(316002)(2906002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MK1AuwCC9vVOyocF+k0JQXB84ceFYtNPqkgyhTpMTnWaPwPB+qq/fTjgXaqv?=
 =?us-ascii?Q?GR/Iy8MMNtLS7X09YfKnqr2EJ7gN3IVSwek94xP2uFFws0LRrTDddPfhPuga?=
 =?us-ascii?Q?1U1fubKyaE08anKMgRtHHXDpwJMPjoJJfsu5JiHQjKWckwoLlCfExBZehb6u?=
 =?us-ascii?Q?JCvUq/9N3Gu1NYbTTUPdEr50qF0MAyDpsSkkSKUSoV6tn7q11HfO2ytqfKFU?=
 =?us-ascii?Q?97W9YjOeSqou9CKyjmWImcoHEAI0JIheojMAgaWlUn6q6AS9T95/1LZ74C/z?=
 =?us-ascii?Q?qvsMNxIksyX6lGPN5oasY1wyHVemvn1pawMUgbZPB571oFD2nXIFKBWmPdWy?=
 =?us-ascii?Q?WISY8TVqQYmJeWIldd5WhrMO/gkylUipsYX6OlKeL/+K00kT0EQPqHKnbRqO?=
 =?us-ascii?Q?zLDgIeJxooW1u96C25PprjXrB8AvomEYNn5fI1Jkc6ndrl7UwWulUhKMN0e4?=
 =?us-ascii?Q?8mTua6gkIJo3sI+1/hv14c93SByF7YUccpeFjIUx7Dv5NORWSEbWFTsU+N1R?=
 =?us-ascii?Q?HhaN/vJBWqn6gZTlebGgDHoqIOCofdNmDIWn28s19X1dpdirJfakzCkYMlRj?=
 =?us-ascii?Q?M/DQWxOxx9lB2qeL2bnnca09rZyhUszhYSyMvyOj4b3F3NC9Zdf+HjNhpY6k?=
 =?us-ascii?Q?jnPgoS5I5E5WNStxMt3ITN47NiFmv2D9S4LLpeNdczvJ2301KqgxfFVz9nBD?=
 =?us-ascii?Q?UXF1k6j2mwfW2QiMQDG7+d7zzDg5GwsGJzNXj8CqD/2bonacXIx2gWwKQVeU?=
 =?us-ascii?Q?LdK4/uDx3pZfknr3R9R5LtIb6T+/3pJh9I0MLrdjWaz2AXhLKyeiWtgJMZ/G?=
 =?us-ascii?Q?7j14G4hoRu0UoxVtJ+5eBWApfANHmQ55wIl/1ChkzzXgJdnqscKf3FBRGMaB?=
 =?us-ascii?Q?IRHv0NJWJdPVI8wu11rAGxpued31bF2lqJxyIhh3y6Rc1GGZhaze0LxS8USU?=
 =?us-ascii?Q?5FqDw9OXXHzVZfMAqmrTkGERm+TGjBO1Le+V4yywjJ6R8OAcegF9dKsraja8?=
 =?us-ascii?Q?gWzxh+lkvs4j2PhgN1SbFP8GUqGZkRpf6WVVgn2ZqvSnXwJ9+Fzmk0wHXfb8?=
 =?us-ascii?Q?19Jn7yGvwTvfgoezdCvftpOm6zfYBIRa1a/vXWJKwIgyZOt3QZVnF4SsOcK8?=
 =?us-ascii?Q?/qDHvTjTShvPqQX2eCJlzecCBUYENqJ9c7lJVbNDmm8JAypfpBWHRI/pMBMF?=
 =?us-ascii?Q?c4OdH40/wmTle8Dr4ht1bsASKbNRy0y++0kmfrnituuUtIUFSBz+rgMGqjaX?=
 =?us-ascii?Q?586Qd9hOCsMNMzT5/9Fs47aZGxxF/ahdPSA1EkMlPx9e3886KHZUyWYxYiYl?=
 =?us-ascii?Q?RJXbTl8EsDEA6xKOPUpQaZURg02q9wgh4uRT0WRyWDX3H1x7BhzIo8cO8re+?=
 =?us-ascii?Q?er1hTEFSOAATey3OeOmBa9AyVJAkhnt4EXyONLwReN0DkLeOaDoO7EoAlWGX?=
 =?us-ascii?Q?TJHauv4/PkAmAP4huEct3gJpE1MIaxCkjihYdxe/2MctifeqSHOg6xqYUuy3?=
 =?us-ascii?Q?NgjHVSgJKLa7U2YKr6PpVWrRnVqyHnvH4H5hP47AbzHnwUaB1qYjAQgIczwS?=
 =?us-ascii?Q?IHANRDrZ9vEmDy2PCKJPDKx13kCMBnqNJX2ilesr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9929c48-0bdd-4603-e780-08dbddbdf7ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2023 05:13:37.9101 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6jhcKxiv4b2B8+k93ct90uXQPnghh7RxwYlaF9F0e395dzcbxOlWHCGVK4/G7ENeWeAQBJ7piiyDGLUSbxYnjD5cTJxIG/qtzoeouqP5j9I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7176
X-OriginatorOrg: intel.com
Subject: Re: [Spice-devel] [PATCH spice-gtk] gstreamer: Fallback to S/W
 decoder if H/W one is not working (v2)
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
> Changes since v1:
> - avoid a if/else (Vivek);
> - fix typo in comment (Vivek).
> ---
>  src/channel-display-gst.c | 39 +++++++++++++++++++++++++++++++++++----
>  1 file changed, 35 insertions(+), 4 deletions(-)
>=20
> diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> index 2734a546..78b4985e 100644
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
> @@ -390,8 +395,11 @@ static gboolean handle_pipeline_message(GstBus
> *bus, GstMessage *msg, gpointer v
>          }
>          g_clear_error(&err);
>=20
> -        /* We won't be able to process any more frame anyway */
> +        bool was_hw =3D decoder->is_hw_pipeline;
>          free_pipeline(decoder);
> +        if (was_hw && !decoder->frame_removed) {
> +            try_sw_pipeline(decoder);
> +        }
>          break;
>      }
>      case GST_MESSAGE_STREAM_START: {
> @@ -672,6 +680,7 @@ static bool try_intel_hw_pipeline(SpiceGstDecoder
> *decoder)
>      }
>=20
>      decoder->pipeline =3D pipeline;
> +    decoder->is_hw_pipeline =3D true;
>      return launch_pipeline(decoder);
>=20
>  err:
> @@ -704,7 +713,7 @@ err:
>      return false;
>  }
>=20
> -static gboolean create_pipeline(SpiceGstDecoder *decoder)
> +static gboolean create_pipeline(SpiceGstDecoder *decoder, bool
> try_hw_pipeline)
>  {
>      GstElement *playbin, *sink;
>      SpiceGstPlayFlags flags;
> @@ -714,7 +723,7 @@ static gboolean create_pipeline(SpiceGstDecoder
> *decoder)
>=20
>      if (vendor =3D=3D VENDOR_GPU_DETECTED ||
>          vendor =3D=3D VENDOR_GPU_UNKNOWN) {
> -        if (try_intel_hw_pipeline(decoder)) {
> +        if (try_hw_pipeline && try_intel_hw_pipeline(decoder)) {
>              return TRUE;
>          }
>      }
> @@ -997,7 +1006,7 @@ VideoDecoder* create_gstreamer_decoder(int
> codec_type, display_stream *stream)
>          g_mutex_init(&decoder->queues_mutex);
>          decoder->decoding_queue =3D g_queue_new();
>=20
> -        if (!create_pipeline(decoder)) {
> +        if (!create_pipeline(decoder, true)) {
>              decoder->base.destroy((VideoDecoder*)decoder);
>              decoder =3D NULL;
>          }
> @@ -1066,3 +1075,25 @@ gboolean gstvideo_has_codec(int codec_type)
>      gst_plugin_feature_list_free(all_decoders);
>      return TRUE;
>  }
> +
> +static void try_sw_pipeline(SpiceGstDecoder *decoder)
> +{
> +    // try to create a S/W pipeline
> +    if (!create_pipeline(decoder, false)) {
> +        return;
> +    }
> +
> +    // replay the old queue
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

