Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0413323B60
	for <lists+spice-devel@lfdr.de>; Wed, 24 Feb 2021 12:40:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E73B6EA77;
	Wed, 24 Feb 2021 11:40:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B72ED6EA77
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Feb 2021 11:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614166847;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=EKvvYFY5qjAQdpH1Qa2DamECPojOrrInYYP6G9NeLtQ=;
 b=EaplzONGGE5C9qmnzo0ToWAWdBLrKeLomglOUn/UikQ9RSZkqW3mialYcJ9Aai2bE9F5Xe
 vVNBztsEA/u2qb2AJY9//vXC225fJ5Mst2zVzk8ktB4K007+9fsixHhQLKOAnRFOzIPle+
 VHMD/ejP6QOW0hFTuaI5N+SZC7RMp+s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-222-0qSCyhXeNkCJaCp0h2IpWQ-1; Wed, 24 Feb 2021 06:39:54 -0500
X-MC-Unique: 0qSCyhXeNkCJaCp0h2IpWQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EC356801977;
 Wed, 24 Feb 2021 11:39:53 +0000 (UTC)
Received: from localhost (unknown [10.40.194.215])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C5FA270477;
 Wed, 24 Feb 2021 11:39:52 +0000 (UTC)
Date: Wed, 24 Feb 2021 12:39:51 +0100
From: Victor Toso <victortoso@redhat.com>
To: Matthew Sienko <matt_sienko@yahoo.com>
Message-ID: <20210224113951.fhfaytgrg26yv3ql@wingsuit>
References: <924666743.685487.1613867448052.ref@mail.yahoo.com>
 <924666743.685487.1613867448052@mail.yahoo.com>
 <CAH=CeiBFYoYVjiEjBKF1D1NgZ7o3RrakLS_HXP-5QeCrTp9vDQ@mail.gmail.com>
 <624986406.1802527.1614120363577@mail.yahoo.com>
MIME-Version: 1.0
In-Reply-To: <624986406.1802527.1614120363577@mail.yahoo.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=victortoso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] No Sound with RemoteViewer on OSX Client
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0133722928=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0133722928==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7wnli5juimwc5mlp"
Content-Disposition: inline

--7wnli5juimwc5mlp
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Feb 23, 2021 at 10:46:03PM +0000, Matthew Sienko wrote:
>  Thanks for the reply. I installed gst-plugins-good using brew
>  and I still can't get the sound to work. I attached the output
>  of remote viewer with the --spice-debug flag. I connected to a
>  running windows guest, tried to play a sound, then
>  disconnected.  Thanks,=A0-Matt

You still lack some plugins in order to have the audio pipeline
working, this is the pipeline:

> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-gstaudio.c:318 audio pipeli=
ne: appsrc is-live=3D1 do-timestamp=3D0 caps=3D"audio/x-raw-int,channels=3D=
2,rate=3D48000,signed=3D(boolean)true,width=3D16,depth=3D16,endianness=3D12=
34" name=3D"appsrc" ! queue ! audioconvert ! audioresample ! autoaudiosink =
name=3D"audiosink"
>=20
> (RemoteViewer-bin:17246): GSpice-WARNING **: Failed to create pipeline: n=
o element "appsrc"

But it misses appsrc already. This is from the gst-plugins-base
package.

You can run gst-inspect-1.0 to see what you have in
plugins/elements in your path. I never tested macos but I'm sure
you will need an audio backend, perhaps osxaudio?
(gst-plugins-good)

    https://gstreamer.freedesktop.org/data/doc/gstreamer/head/gst-plugins-g=
ood/html/gst-plugins-good-plugins-plugin-osxaudio.html

Cheers,
Victor

> (RemoteViewer-bin:17246): GStreamer-CRITICAL **: gst_element_query: asser=
tion `GST_IS_ELEMENT (element)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> (RemoteViewer-bin:17246): GStreamer-CRITICAL **: gst_element_query: asser=
tion `GST_IS_ELEMENT (element)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
> (RemoteViewer-bin:17246): GSpice-DEBUG: channel-cursor.c:341 cursor-4:0: =
set_cursor: flags 0, size 4096
> (RemoteViewer-bin:17246): GSpice-DEBUG: channel-cursor.c:347 cursor-4:0: =
set_cursor: type 0, 0, 32x32
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
> (RemoteViewer-bin:17246): GSpice-DEBUG: channel-cursor.c:341 cursor-4:0: =
set_cursor: flags 0, size 4096
> (RemoteViewer-bin:17246): GSpice-DEBUG: channel-cursor.c:347 cursor-4:0: =
set_cursor: type 0, 0, 32x32
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-widget.c:1424 leave_event
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-widget.c:762 ungrab keyboar=
d
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> (RemoteViewer-bin:17246): GStreamer-CRITICAL **: gst_element_query: asser=
tion `GST_IS_ELEMENT (element)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-session.c:1998 set mm time:=
 1461846673
>=20
> ** (RemoteViewer-bin:17246): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-widget.c:539 grab notify 0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-widget.c:1243 release_keys
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-widget.c:539 grab notify 1
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-widget.c:539 grab notify 0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-widget.c:1243 release_keys
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-widget.c:1463 focus_out_eve=
nt
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-widget.c:1243 release_keys
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-widget.c:539 grab notify 1
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-session.c:1602 session: dis=
connecting 0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2018 inputs-3:0: =
channel destroy
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2567 inputs-3:0: =
channel disconnect 0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2091 inputs-3:0: =
channel has error, breaking loop
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2345 inputs-3:0: =
Coroutine exit inputs-3:0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2018 cursor-4:0: =
channel destroy
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2567 cursor-4:0: =
channel disconnect 0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2091 cursor-4:0: =
channel has error, breaking loop
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2345 cursor-4:0: =
Coroutine exit cursor-4:0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2018 display-2:0:=
 channel destroy
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2567 display-2:0:=
 channel disconnect 0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2091 display-2:0:=
 channel has error, breaking loop
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2345 display-2:0:=
 Coroutine exit display-2:0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2018 playback-5:0=
: channel destroy
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2567 playback-5:0=
: channel disconnect 0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2091 playback-5:0=
: channel has error, breaking loop
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2345 playback-5:0=
: Coroutine exit playback-5:0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2018 record-6:0: =
channel destroy
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2567 record-6:0: =
channel disconnect 0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2091 record-6:0: =
channel has error, breaking loop
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2345 record-6:0: =
Coroutine exit record-6:0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2018 main-1:0: ch=
annel destroy
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2567 main-1:0: ch=
annel disconnect 0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2091 main-1:0: ch=
annel has error, breaking loop
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2345 main-1:0: Co=
routine exit main-1:0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-session.c:171 New session (=
compiled from package spice-gtk 0.20)
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-session.c:175 Supported cha=
nnels: main, display, inputs, cursor, playback, record
> (RemoteViewer-bin:17246): GSpice-DEBUG: channel-display.c:866 display-2:0=
: keeping exisiting primary surface, migration or reset
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-gstaudio.c:141 record_stop
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-session.c:1602 session: dis=
connecting 0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2137 inputs-3:0: =
Delayed unref channel 0x7f8af384c0a0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:142 inputs-3:0: s=
pice_channel_dispose 0x7f8af384c0a0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-widget.c:2426 channel_destr=
oy 0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2567 inputs-3:0: =
channel disconnect 12
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:164 inputs-3:0: s=
pice_channel_finalize 0x7f8af384c0a0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2137 cursor-4:0: =
Delayed unref channel 0x7f8af380d400
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:142 cursor-4:0: s=
pice_channel_dispose 0x7f8af380d400
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-widget.c:2426 channel_destr=
oy 0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2567 cursor-4:0: =
channel disconnect 12
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:164 cursor-4:0: s=
pice_channel_finalize 0x7f8af380d400
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2137 display-2:0:=
 Delayed unref channel 0x7f8af3848050
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:142 display-2:0: =
spice_channel_dispose 0x7f8af3848050
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-widget.c:2426 channel_destr=
oy 0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2567 display-2:0:=
 channel disconnect 12
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:164 display-2:0: =
spice_channel_finalize 0x7f8af3848050
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-widget.c:423 spice display =
dispose
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-widget.c:423 spice display =
dispose
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-widget.c:442 Finalize spice=
 display
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2137 playback-5:0=
: Delayed unref channel 0x7f8af28c00e0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:142 playback-5:0:=
 spice_channel_dispose 0x7f8af28c00e0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2567 playback-5:0=
: channel disconnect 12
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:164 playback-5:0:=
 spice_channel_finalize 0x7f8af28c00e0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2137 record-6:0: =
Delayed unref channel 0x7f8af28bc050
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:142 record-6:0: s=
pice_channel_dispose 0x7f8af28bc050
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2567 record-6:0: =
channel disconnect 12
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:164 record-6:0: s=
pice_channel_finalize 0x7f8af28bc050
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2137 main-1:0: De=
layed unref channel 0x7f8af18860a0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:142 main-1:0: spi=
ce_channel_dispose 0x7f8af18860a0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-session.c:1602 session: dis=
connecting 1
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-session.c:191 session dispo=
se
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-session.c:1602 session: dis=
connecting 1
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-session.c:171 New session (=
compiled from package spice-gtk 0.20)
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-session.c:175 Supported cha=
nnels: main, display, inputs, cursor, playback, record
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-session.c:1602 session: dis=
connecting 0
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-session.c:191 session dispo=
se
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-session.c:1602 session: dis=
connecting 1
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:2567 main-1:0: ch=
annel disconnect 12
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-session.c:191 session dispo=
se
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-session.c:1602 session: dis=
connecting 1
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-gstaudio.c:85 spice_gstaudi=
o_dispose
> (RemoteViewer-bin:17246): GSpice-DEBUG: spice-channel.c:164 main-1:0: spi=
ce_channel_finalize 0x7f8af18860a0

> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel


--7wnli5juimwc5mlp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmA2OwYACgkQl9kSPeN6
SE8CTRAAmJK09NSPYWQKKP2DhjIG4wku9SoIGeGumj31/wrDy1lTs6h6byofox6g
wj2jw5sp6SjlmsfbyO7Qmqec4BZ1MT2OKwRJb0tAeCAtY9ZvjMUC7sMnrF/DL0k+
3iRtbmNNWUZT4OL7xMsyx5eJLQjM/QiKuUmzUPWBGhnW4fSUlD5Ks1JDnOwDkxN4
ffG4cNeTyF5xCgqrJxybX4szoKp/97oq8apnctEruRiNcKHh5xgYYbOoWzseNPII
y35gP8s8asjYlhM7pH3Kz5ZbHDOA7wD4AU0snMvYfZz6T8w0EcyDu7x8ThJPG5B/
0RyV6eOTjIS7rnv9k97dBFK9H/LtJVvsi5NgR7jETuuxoDuMt2M/g+JXdYe+9VW5
yCHm+6CHKJsHoWXIbjD71ZfZoKwiDWrB+E4TG/GzZihn1QcXOp4fKfLzUyCSnHnz
nu5Fs638zsS+/QYEGyD272WFWsyDwbqO1/1VODYgiOO5xeoIoJgBc+OnW2FlGNmK
NN6+sQbPLX3vzFGadiGo0AD4PoLm5TIgwL33gIg8x+adNg16exE7P5C1Wo6rLqV1
o+kJLFaAkuBls3A6UlxOjSr8Cmdsvv3i/134IKSJYiRlhoRB2Vl4/WPAmw0bge5R
3b+kPV3Nhj+UGVFhht3mhQYbVJutFvGVYC1yS3G6orbyNzZvC7U=
=cX1P
-----END PGP SIGNATURE-----

--7wnli5juimwc5mlp--


--===============0133722928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0133722928==--

