Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEC37DE085
	for <lists+spice-devel@lfdr.de>; Wed,  1 Nov 2023 12:48:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1979610E6CC;
	Wed,  1 Nov 2023 11:48:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com
 [IPv6:2607:f8b0:4864:20::c2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C46110E6CC
 for <spice-devel@lists.freedesktop.org>; Wed,  1 Nov 2023 11:48:26 +0000 (UTC)
Received: by mail-oo1-xc2c.google.com with SMTP id
 006d021491bc7-57ad95c555eso4179980eaf.3
 for <spice-devel@lists.freedesktop.org>; Wed, 01 Nov 2023 04:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698839305; x=1699444105; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wxqea4YGNiuCeLb7eI+xt+fiM5VmRxpM0NfSJ1aVe2A=;
 b=FxjmP4E8P5QtkPfYRfAOyDm1CrpYKeaY65M3dHWqsx22CE2nfdxSXjhNqkskvWfC7P
 xsAP5mYbd9tlQXzjXeJq8YhqJoV2cWpJkaQAzMksd0kYGhxQV/GuD0T9rPGL2jgXjTIF
 LBYrCPR/4DAX9JCcD48NtrutVgi/UuWBldatYSBvat65OLUian/uvz9GtBP3BA6wFG6X
 hmMH8yqtSe08yuw3CC2J5iB86Ct9A6nDuBZhZ4LNPQTqBWIMMYn0JWOA79ejKmiUwump
 vU1EGDA8szn9HZeSMX6YGQh5h7Kg734F5Lhj4vqdHa2Mqgk9PwYTuVMg4OHU0ewksxHC
 bdmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698839305; x=1699444105;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wxqea4YGNiuCeLb7eI+xt+fiM5VmRxpM0NfSJ1aVe2A=;
 b=Io5cpVwHdHAkzoQpaHTIsxtt/IjWcCRBwHNdwXVNSWT9oMz+jOXu4jkRFnnS/AQO4W
 gALN/9il13YQzQU3wD9r7RYMXgeLsC3szKVk59izhiI/DXRHFdrYIzjASmYUZVQztkbl
 pkCHWDi6zXQTaBQnVQtfBsszXUEYDHLpzuHJqHqmYGupxCPadMwAQLZkKw237Xd2wFtG
 DK9o2XgiHxza0ayvAGl0GAsVB+Z2ulTuJ2DtIwut6LzEzFBRVpx2RI4wACJNW6bLrVtk
 rO/3/3csogFFE8nvV836NgsxcL66ZPpj2wQ5sWWihYkdZWiH2HWDh9ekgkLqr7QBDupb
 VCwg==
X-Gm-Message-State: AOJu0YzP6NJDkcsFD5mJCGe+2W8xQGUM4/MM0JPe+ch5VZtWFrZ+/DR5
 Vi/WbFZJzId6Iz3jsObnDZBTqhtq28lcHNjbmR0=
X-Google-Smtp-Source: AGHT+IEW0kvTEuQvnwgmHQ9HPTtnjMW+T3AAG9sbkbJafctXM7UANXbV8Kcd6nZPK1dJPjwpWyhlMUBqOCSEqUWBAUY=
X-Received: by 2002:a4a:ba06:0:b0:582:99ae:ca47 with SMTP id
 b6-20020a4aba06000000b0058299aeca47mr15036092oop.3.1698839305266; Wed, 01 Nov
 2023 04:48:25 -0700 (PDT)
MIME-Version: 1.0
References: <20231017072549.4013564-1-vivek.kasireddy@intel.com>
 <CAHt6W4fHRGUGKX9Vn3xSMqfYFcdsRSeYR73tVDms+53Pp3pd9g@mail.gmail.com>
 <CAHt6W4c6TogEpJSn71=73BeT3X14zimB1G3nqj-n5LQOuJ3k5Q@mail.gmail.com>
 <IA0PR11MB718564F1687C640D4CBF44D1F8A7A@IA0PR11MB7185.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB718564F1687C640D4CBF44D1F8A7A@IA0PR11MB7185.namprd11.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Wed, 1 Nov 2023 11:48:14 +0000
Message-ID: <CAHt6W4cOi-=W5Z6OY1rQ-QhUdwUN00jxcotYAVtK0hUmR4Yutw@mail.gmail.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [PATCH v4] channel-display-gst: Use h/w based
 decoders with Intel GPUs if possible (v4)
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
Cc: "Kim, Dongwon" <dongwon.kim@intel.com>, "Mazlan,
 Hazwan Arif" <hazwan.arif.mazlan@intel.com>, Gerd Hoffmann <kraxel@redhat.com>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno mer 1 nov 2023 alle ore 05:27 Kasireddy, Vivek
<vivek.kasireddy@intel.com> ha scritto:
>
> Hi Frediano,
>
> >
> > Hi Vivek,
> >    I finally came up with something better.
> >
> > See https://gitlab.freedesktop.org/fziglio/spice-gtk/-
> > /commits/hw_decoding/,
> > it contains
> > - https://gitlab.freedesktop.org/fziglio/spice-gtk/-
> > /commit/52d8622bf620f2ad47d6f001926ed918d50d30cd,
> > fix some leaks, not due to your patch but good for testing, opened a
> > reparate PR at https://gitlab.freedesktop.org/spice/spice-gtk/-
> > /merge_requests/123;
> > - https://gitlab.freedesktop.org/fziglio/spice-gtk/-
> > /commit/de6d228349607d8d0d711f5c2a11f791167c8c25
> > required update for spice-common submodule;
> > - https://gitlab.freedesktop.org/fziglio/spice-gtk/-
> > /commit/e481a2b84e3d02e5d0c38ee5ae8d268fba15dc77
> > fix dangling pointers in free_pipeline (remove some warnings running
> > your patch);
> > - https://gitlab.freedesktop.org/fziglio/spice-gtk/-
> > /commit/8d59e88e88553497049a9fc380cac7395225bc75
> > (fixup) the proposed change in the previous mail to avoid some leaks
> > and memory errors;
> > - https://gitlab.freedesktop.org/fziglio/spice-gtk/-
> > /commit/c01fa619b836b413fecd594a97a03cbf4b655b04
> > (fixup) really minor style change;
> I looked at the commits and they indeed look better. Thank you for taking
> the time to add these fixups; I'll include them in the next version.
>
> > - https://gitlab.freedesktop.org/fziglio/spice-gtk/-
> > /commit/22c032c67528e0899b6e2faf56ffa9584c208755
> > the fallback patch I described in previous email, turned out it was
> > easier than expected.
> Nice! This does make the decoding process more robust. I am curious how
> you tested this fallback scenario though?
>

This was actually pretty easy. Server using software encoder, client
using your patch. GST_DEBUG was defined to 3 to see more events.
Without fallback patch streaming was failing and there were quite a
lot of warnings. With the patch there was a warning from GStreamer
(due to GST_DEBUG) then streaming was working (no other warnings).

Memory issues were more tough to diagnose and fix.

Regards,
   Frediano

> Thanks,
> Vivek
>
> >
> > Regards,
> >    Frediano
> >
> > Il giorno dom 29 ott 2023 alle ore 20:32 Frediano Ziglio
> > <freddy77@gmail.com> ha scritto:
> > >
> > > Il giorno mar 17 ott 2023 alle ore 08:46 Vivek Kasireddy
> > > <vivek.kasireddy@intel.com> ha scritto:
> > > >
> > > > We first try to detect if an Intel GPU is available (by looking int=
o
> > > > udev's database) and then probe Gstreamer's registry cache to see
> > > > if there is h/w based decoder (element) available for the incoming
> > > > video codec format. If both these conditions are satisfied (i.e,
> > > > Intel Media SDK Gstreamer plugin (libgstmsdk.so) and associated
> > > > libraries are properly installed), we then create a simple decode
> > > > pipeline using appropriate h/w based decoder and post-processor
> > > > elements instead of relying on playbin -- which may not be able to
> > > > auto-select these elements.
> > > >
> > > > For example, if the incoming codec format is h264, we then create
> > > > a pipeline using msdkh264dec and vaapipostproc elements instead of
> > > > avdec_h264 and videoconvert.
> > > >
> > > > v2: (addressed some review comments from Frediano)
> > > > - s/gboolean/bool, s/TRUE/true, s/FALSE/false
> > > > - Used a single cleanup label instead of multiple while instantiati=
ng
> > > >   elements
> > > > - Moved the code that launches the Gst pipeline into a helper that
> > > >   is used while trying h/w based plugins
> > > >
> > > > v3:
> > > > - Updated the patch to reflect the new signature and return value o=
f
> > > >   spice_udev_detect_gpu().
> > > >
> > > > v4:
> > > > - Include the string "_hw_" in the function that finds best h/w plu=
gins
> > > > - Change type and determine plugins array length using G_N_ELEMENTS
> > > > - Free vpp_name immediately after using it to prevent leak
> > > > - Rebase on master
> > > >
> > > > Cc: Frediano Ziglio <freddy77@gmail.com>
> > > > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > > > Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> > > > Cc: Dongwon Kim <dongwon.kim@intel.com>
> > > > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > > > Signed-off-by: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> > > > Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
> > > > ---
> > > >  src/channel-display-gst.c | 217 ++++++++++++++++++++++++++++++++++=
-
> > ---
> > > >  1 file changed, 195 insertions(+), 22 deletions(-)
> > > >
> > >
> > > Hi,
> > >    the patch seems good.
> > >
> > > Not sure what I did with my system but I'm not able to test it very
> > > well. The system keeps complaining about some issue with the format.
> > > I wanted to add a patch for compatibility in case the server is
> > > sending some profile not supported by H/W decoder (mainly saving firs=
t
> > > encoded frames till an error or an output frame and try with S/W
> > > decoder) but I got stuck with my system errors.
> > >
> > > In the meantime I manage to find the memory issue you had that caused=
:
> > >
> > > (remote-viewer:2272): GStreamer-CRITICAL **: 18:30:37.263:
> > > Trying to dispose object "appsink26", but it still has a parent "pipe=
line28".
> > > You need to let the parent manage the object instead of unreffing the
> > > object directly.
> > >
> > > The reason is due to a missing reference to the sink, I fixed it and
> > > changed the order of free (reverse of allocations), see
> > >
> > > diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> > > index de606b56..82c500c8 100644
> > > --- a/src/channel-display-gst.c
> > > +++ b/src/channel-display-gst.c
> > > @@ -628,7 +628,7 @@ static bool try_intel_hw_pipeline(SpiceGstDecoder
> > *decoder)
> > >                   "drop", FALSE,
> > >                   NULL);
> > >      gst_caps_unref(sink_caps);
> > > -    decoder->appsink =3D GST_APP_SINK(sink);
> > > +    decoder->appsink =3D GST_APP_SINK(gst_object_ref(sink));
> > >
> > >      if (hand_pipeline_to_widget(decoder->base.stream,
> > >          GST_PIPELINE(pipeline))) {
> > > @@ -642,6 +642,8 @@ static bool try_intel_hw_pipeline(SpiceGstDecoder
> > *decoder)
> > >          if (!gst_element_link_many(src, parser, hw_decoder, vpp,
> > >                                     sink, NULL)) {
> > >              spice_warning("error linking elements");
> > > +            /* ownership moved to pipeline, don't unreference these =
*/
> > > +            src =3D parser =3D hw_decoder =3D vpp =3D sink =3D NULL;
> > >              goto err;
> > >          }
> > >      } else {
> > > @@ -649,6 +651,8 @@ static bool try_intel_hw_pipeline(SpiceGstDecoder
> > *decoder)
> > >                           vpp, sink, NULL);
> > >          if (!gst_element_link_many(src, hw_decoder, vpp, sink, NULL)=
) {
> > >              spice_warning("error linking elements");
> > > +            /* ownership moved to pipeline, don't unreference these =
*/
> > > +            src =3D hw_decoder =3D vpp =3D sink =3D NULL;
> > >              goto err;
> > >          }
> > >      }
> > > @@ -657,20 +661,31 @@ static bool
> > > try_intel_hw_pipeline(SpiceGstDecoder *decoder)
> > >      return launch_pipeline(decoder);
> > >
> > >  err:
> > > -    if (src) {
> > > -        gst_object_unref(src);
> > > +    if (decoder->appsink) {
> > > +        gst_object_unref(decoder->appsink);
> > > +        decoder->appsink =3D NULL;
> > >      }
> > > -    if (sink) {
> > > -        gst_object_unref(sink);
> > > +    if (decoder->appsrc) {
> > > +        gst_object_unref(decoder->appsrc);
> > > +        decoder->appsrc =3D NULL;
> > >      }
> > > -    if (use_parser) {
> > > -        gst_object_unref(parser);
> > > +    if (pipeline) {
> > > +        gst_object_unref(pipeline);
> > > +    }
> > > +    if (vpp) {
> > > +        gst_object_unref(vpp);
> > >      }
> > >      if (hw_decoder) {
> > >          gst_object_unref(hw_decoder);
> > >      }
> > > -    if (vpp) {
> > > -        gst_object_unref(vpp);
> > > +    if (parser) {
> > > +        gst_object_unref(parser);
> > > +    }
> > > +    if (sink) {
> > > +        gst_object_unref(sink);
> > > +    }
> > > +    if (src) {
> > > +        gst_object_unref(src);
> > >      }
> > >      return false;
> > >  }
> > > --
> > >
> > > Frediano
> > >
> > > > diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> > > > index 5c9927b..de606b5 100644
> > > > --- a/src/channel-display-gst.c
> > > > +++ b/src/channel-display-gst.c
> > > > @@ -20,6 +20,7 @@
> > > >  #include "spice-common.h"
> > > >  #include "spice-channel-priv.h"
> > > >  #include "common/recorder.h"
> > > > +#include "common/udev.h"
> > > >
> > > >  #include "channel-display-priv.h"
> > > >
> > > > @@ -489,13 +490,205 @@ deep_element_added_cb(GstBin *pipeline,
> > GstBin *bin, GstElement *element,
> > > >      }
> > > >  }
> > > >
> > > > -static gboolean create_pipeline(SpiceGstDecoder *decoder)
> > > > +static gchar *find_best_hw_plugin(const gchar *dec_name)
> > > > +{
> > > > +    static const char plugins[][8] =3D {"msdk", "va", "vaapi"};
> > > > +    GstRegistry *registry;
> > > > +    GstPluginFeature *feature;
> > > > +    gchar *feature_name;
> > > > +    int i;
> > > > +
> > > > +    registry =3D gst_registry_get();
> > > > +    if (!registry) {
> > > > +        return NULL;
> > > > +    }
> > > > +
> > > > +    for (i =3D 0; i < G_N_ELEMENTS(plugins); i++) {
> > > > +        feature_name =3D !dec_name ? g_strconcat(plugins[i], "post=
proc",
> > NULL) :
> > > > +                       g_strconcat(plugins[i], dec_name, "dec", NU=
LL);
> > > > +        feature =3D gst_registry_lookup_feature(registry, feature_=
name);
> > > > +        if (!feature) {
> > > > +            g_free(feature_name);
> > > > +            feature_name =3D NULL;
> > > > +            continue;
> > > > +        }
> > > > +        gst_object_unref(feature);
> > > > +        break;
> > > > +    }
> > > > +    return feature_name;
> > > > +}
> > > > +
> > > > +static bool launch_pipeline(SpiceGstDecoder *decoder)
> > > >  {
> > > >      GstBus *bus;
> > > > +
> > > > +    if (decoder->appsink) {
> > > > +        GstAppSinkCallbacks appsink_cbs =3D { NULL };
> > > > +        appsink_cbs.new_sample =3D new_sample;
> > > > +        gst_app_sink_set_callbacks(decoder->appsink, &appsink_cbs,
> > decoder, NULL);
> > > > +        gst_app_sink_set_max_buffers(decoder->appsink,
> > MAX_DECODED_FRAMES);
> > > > +        gst_app_sink_set_drop(decoder->appsink, FALSE);
> > > > +    }
> > > > +    bus =3D gst_pipeline_get_bus(GST_PIPELINE(decoder->pipeline));
> > > > +    gst_bus_add_watch(bus, handle_pipeline_message, decoder);
> > > > +    gst_object_unref(bus);
> > > > +
> > > > +    decoder->clock =3D gst_pipeline_get_clock(GST_PIPELINE(decoder=
-
> > >pipeline));
> > > > +
> > > > +    if (gst_element_set_state(decoder->pipeline, GST_STATE_PLAYING=
) =3D=3D
> > GST_STATE_CHANGE_FAILURE) {
> > > > +        SPICE_DEBUG("GStreamer error: Unable to set the pipeline t=
o the
> > playing state.");
> > > > +        free_pipeline(decoder);
> > > > +        return false;
> > > > +    }
> > > > +
> > > > +    return true;
> > > > +}
> > > > +
> > > > +static bool try_intel_hw_pipeline(SpiceGstDecoder *decoder)
> > > > +{
> > > > +    GstElement *pipeline =3D NULL, *src =3D NULL, *sink =3D NULL;
> > > > +    GstElement *parser =3D NULL, *hw_decoder =3D NULL, *vpp =3D NU=
LL;
> > > > +    GstCaps *src_caps, *sink_caps;
> > > > +    int codec_type =3D decoder->base.codec_type;
> > > > +    const gchar *dec_name =3D gst_opts[codec_type].name;
> > > > +    gchar *hw_dec_name, *vpp_name, *parser_name;
> > > > +    gboolean use_parser;
> > > > +
> > > > +    use_parser =3D codec_type =3D=3D SPICE_VIDEO_CODEC_TYPE_H264 |=
|
> > > > +                 codec_type =3D=3D SPICE_VIDEO_CODEC_TYPE_H265;
> > > > +
> > > > +    src =3D gst_element_factory_make("appsrc", NULL);
> > > > +    if (!src) {
> > > > +        spice_warning("error upon creation of 'appsrc' element");
> > > > +        return false;
> > > > +    }
> > > > +    sink =3D gst_element_factory_make("appsink", NULL);
> > > > +    if (!sink) {
> > > > +        spice_warning("error upon creation of 'appsink' element");
> > > > +        goto err;
> > > > +    }
> > > > +
> > > > +    if (use_parser) {
> > > > +        parser_name =3D g_strconcat(dec_name, "parse", NULL);
> > > > +        parser =3D gst_element_factory_make(parser_name, NULL);
> > > > +        g_free(parser_name);
> > > > +        if (!parser) {
> > > > +            spice_warning("error upon creation of 'parser' element=
");
> > > > +            goto err;
> > > > +        }
> > > > +    }
> > > > +
> > > > +    hw_dec_name =3D find_best_hw_plugin(dec_name);
> > > > +    if (!hw_dec_name) {
> > > > +        spice_warning("error finding suitable plugin for decode");
> > > > +        goto err;
> > > > +    }
> > > > +    hw_decoder =3D gst_element_factory_make(hw_dec_name, NULL);
> > > > +    g_free(hw_dec_name);
> > > > +    if (!hw_decoder) {
> > > > +        spice_warning("error upon creation of 'decoder' element");
> > > > +        goto err;
> > > > +    }
> > > > +    vpp_name =3D find_best_hw_plugin(NULL);
> > > > +    if (!vpp_name) {
> > > > +        spice_warning("error finding suitable plugin for postproc"=
);
> > > > +        goto err;
> > > > +    }
> > > > +    vpp =3D gst_element_factory_make(vpp_name, NULL);
> > > > +    g_free(vpp_name);
> > > > +    if (!vpp) {
> > > > +        spice_warning("error upon creation of 'vpp' element");
> > > > +        goto err;
> > > > +    }
> > > > +    g_object_set(vpp,
> > > > +                 "format", GST_VIDEO_FORMAT_BGRx,
> > > > +                 NULL);
> > > > +
> > > > +    pipeline =3D gst_pipeline_new(NULL);
> > > > +    if (!pipeline) {
> > > > +        spice_warning("error upon creation of 'pipeline' element")=
;
> > > > +        goto err;
> > > > +    }
> > > > +
> > > > +    src_caps =3D gst_caps_from_string(gst_opts[codec_type].dec_cap=
s);
> > > > +    g_object_set(src,
> > > > +                 "caps", src_caps,
> > > > +                 "is-live", TRUE,
> > > > +                 "format", GST_FORMAT_TIME,
> > > > +                 "max-bytes", G_GINT64_CONSTANT(0),
> > > > +                 "block", TRUE,
> > > > +                 NULL);
> > > > +    gst_caps_unref(src_caps);
> > > > +    decoder->appsrc =3D GST_APP_SRC(gst_object_ref(src));
> > > > +
> > > > +    sink_caps =3D gst_caps_from_string("video/x-raw,format=3DBGRx"=
);
> > > > +    g_object_set(sink,
> > > > +                 "caps", sink_caps,
> > > > +                 "sync", FALSE,
> > > > +                 "drop", FALSE,
> > > > +                 NULL);
> > > > +    gst_caps_unref(sink_caps);
> > > > +    decoder->appsink =3D GST_APP_SINK(sink);
> > > > +
> > > > +    if (hand_pipeline_to_widget(decoder->base.stream,
> > > > +        GST_PIPELINE(pipeline))) {
> > > > +        spice_warning("error handing pipeline to widget");
> > > > +        goto err;
> > > > +    }
> > > > +
> > > > +    if (use_parser) {
> > > > +        gst_bin_add_many(GST_BIN(pipeline), src, parser, hw_decode=
r,
> > > > +                         vpp, sink, NULL);
> > > > +        if (!gst_element_link_many(src, parser, hw_decoder, vpp,
> > > > +                                   sink, NULL)) {
> > > > +            spice_warning("error linking elements");
> > > > +            goto err;
> > > > +        }
> > > > +    } else {
> > > > +        gst_bin_add_many(GST_BIN(pipeline), src, hw_decoder,
> > > > +                         vpp, sink, NULL);
> > > > +        if (!gst_element_link_many(src, hw_decoder, vpp, sink, NUL=
L)) {
> > > > +            spice_warning("error linking elements");
> > > > +            goto err;
> > > > +        }
> > > > +    }
> > > > +
> > > > +    decoder->pipeline =3D pipeline;
> > > > +    return launch_pipeline(decoder);
> > > > +
> > > > +err:
> > > > +    if (src) {
> > > > +        gst_object_unref(src);
> > > > +    }
> > > > +    if (sink) {
> > > > +        gst_object_unref(sink);
> > > > +    }
> > > > +    if (use_parser) {
> > > > +        gst_object_unref(parser);
> > > > +    }
> > > > +    if (hw_decoder) {
> > > > +        gst_object_unref(hw_decoder);
> > > > +    }
> > > > +    if (vpp) {
> > > > +        gst_object_unref(vpp);
> > > > +    }
> > > > +    return false;
> > > > +}
> > > > +
> > > > +static gboolean create_pipeline(SpiceGstDecoder *decoder)
> > > > +{
> > > >      GstElement *playbin, *sink;
> > > >      SpiceGstPlayFlags flags;
> > > >      GstCaps *caps;
> > > >      static bool playbin3_supported =3D true;
> > > > +    GpuVendor vendor =3D spice_udev_detect_gpu(INTEL_VENDOR_ID);
> > > > +
> > > > +    if (vendor =3D=3D VENDOR_GPU_DETECTED ||
> > > > +        vendor =3D=3D VENDOR_GPU_UNKNOWN) {
> > > > +        if (try_intel_hw_pipeline(decoder)) {
> > > > +            return TRUE;
> > > > +        }
> > > > +    }
> > > >
> > > >      playbin =3D playbin3_supported ?
> > > >                gst_element_factory_make("playbin3", "playbin") : NU=
LL;
> > > > @@ -571,29 +764,9 @@ static gboolean
> > create_pipeline(SpiceGstDecoder *decoder)
> > > >      g_warn_if_fail(decoder->appsrc =3D=3D NULL);
> > > >      decoder->pipeline =3D playbin;
> > > >
> > > > -    if (decoder->appsink) {
> > > > -        GstAppSinkCallbacks appsink_cbs =3D { NULL };
> > > > -        appsink_cbs.new_sample =3D new_sample;
> > > > -        gst_app_sink_set_callbacks(decoder->appsink, &appsink_cbs,
> > decoder, NULL);
> > > > -        gst_app_sink_set_max_buffers(decoder->appsink,
> > MAX_DECODED_FRAMES);
> > > > -        gst_app_sink_set_drop(decoder->appsink, FALSE);
> > > > -    }
> > > > -    bus =3D gst_pipeline_get_bus(GST_PIPELINE(decoder->pipeline));
> > > > -    gst_bus_add_watch(bus, handle_pipeline_message, decoder);
> > > > -    gst_object_unref(bus);
> > > > -
> > > > -    decoder->clock =3D gst_pipeline_get_clock(GST_PIPELINE(decoder=
-
> > >pipeline));
> > > > -
> > > > -    if (gst_element_set_state(decoder->pipeline, GST_STATE_PLAYING=
) =3D=3D
> > GST_STATE_CHANGE_FAILURE) {
> > > > -        SPICE_DEBUG("GStreamer error: Unable to set the pipeline t=
o the
> > playing state.");
> > > > -        free_pipeline(decoder);
> > > > -        return FALSE;
> > > > -    }
> > > > -
> > > > -    return TRUE;
> > > > +    return launch_pipeline(decoder);
> > > >  }
> > > >
> > > > -
> > > >  /* ---------- VideoDecoder's public API ---------- */
> > > >
> > > >  static void spice_gst_decoder_reschedule(VideoDecoder
> > *video_decoder)
> > > > --
> > > > 2.39.2
> > > >
