Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 160E6233DDE
	for <lists+spice-devel@lfdr.de>; Fri, 31 Jul 2020 06:00:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 660B76E995;
	Fri, 31 Jul 2020 04:00:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C0C16E995
 for <spice-devel@lists.freedesktop.org>; Fri, 31 Jul 2020 04:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596168044;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BnfetkBSU2FrMd5ztDicoc3hY8c0HKMaHbENOAe9IKs=;
 b=ApgErRmIl6tG9Hkj1L8nLXQ43UCiXu8NsTx49sJ9O5nKhLUE1lIjOIqjV+xDLQaW9Bpzue
 +NQ2EI/J+lrH+0hNBpgEhBldqneSZfg7wfB/69uqdgSieYi+c0RTY2blMegQqDj7ZiAQk7
 c/Wac0jVh9wJHbKYTuaszDLp+kvLUXI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-197-HSpQel5aNHGIW9o77Jxagg-1; Fri, 31 Jul 2020 00:00:31 -0400
X-MC-Unique: HSpQel5aNHGIW9o77Jxagg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A427518C63D0;
 Fri, 31 Jul 2020 04:00:30 +0000 (UTC)
Received: from localhost (ovpn-112-12.ams2.redhat.com [10.36.112.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B578271927;
 Fri, 31 Jul 2020 04:00:26 +0000 (UTC)
Date: Fri, 31 Jul 2020 06:00:25 +0200
From: Victor Toso <victortoso@redhat.com>
To: Felix Leimbach <felix.leimbach@gmail.com>
Message-ID: <20200731040025.clxjxf5r23qy5hcx@wingsuit>
References: <7cbfbb62-31ff-5eef-5427-7958921a1bfa@gmail.com>
 <631443465.25687850.1588591196710.JavaMail.zimbra@redhat.com>
 <7a072038-02e9-afcc-d856-82483e0c7cb9@gmail.com>
 <d88af62f-de68-e846-da40-980024e40179@redhat.com>
 <6cf0ba19-2091-1486-12a4-faedbe28ba17@gmail.com>
 <273469d7-6b85-8ad3-2f93-8a5f5fece664@redhat.com>
 <9e08513d-88aa-a253-730a-7c20e535bbd9@gmail.com>
MIME-Version: 1.0
In-Reply-To: <9e08513d-88aa-a253-730a-7c20e535bbd9@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Stuttering video playback on LAN
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1561063999=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1561063999==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mg4w3foulv4v3bjz"
Content-Disposition: inline

--mg4w3foulv4v3bjz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 27, 2020 at 09:40:27AM +0200, Felix Leimbach wrote:
> Hi Uri
>=20
> I've succeeded in using h264 with spice-streaming-agent, but
> only with a linux client. The windows client does not seem to
> support anything besides mjpeg, even after installing and
> tinkering with gstreamer.  I've opened a bugreport:
>=20
> https://gitlab.com/virt-viewer/virt-viewer/-/issues/5

For windows, we use gstreamer for audio playback/record. I'd be
surprised if the spice-gtk code base used for linux would work
out-of-the box for windows on video decoding. So, afaics:

1) Remote-viewer will need to ship some extra plugins to handle
   video decoding (even mjpeg if you want to use gstreamer for
   that, as by default there is a mjepg-decoder in spice-gtk)

2) Some tweaking in spice-gtk to handle video with gstreamer plus
   tweaks to handle windows pipelines

If you want to work with h264, I think the problem could be
around license & patents.


> Another drawback: spice-streaming-agent only works with the
> x264enc encoder, which does not support VAAPI based hardware
> acceleration with the Intel GPU I passed through with GVT-g.
>=20
> The vaapih264enc codec claimed that it cannot produce a x-h264
> stream:
>=20
> # ./spice-streaming-agent -d -c gst.h264=3Dvaapih264enc
> ...
> spice-streaming-agent[266317]: Gstreamer plugin: Specified encoder named =
'vaapih264enc' cannot produce 'video/x-h264, stream-format=3D(string)byte-s=
tream, framerate=3D(fraction)25/1' streams. Make sure that gst.CODEC=3DENCO=
DER is correctly specified and that the encoder is available.
> spice-streaming-agent[266317]: Gstreamer plugin: 'x264enc' encoder plugin=
 is used
>=20
> The avenc_h264 codec loaded but failed:
>=20
> # ./spice-streaming-agent -c gst.h264=3Davenc_h264_omx:bitrate=3D100000
> spice-streaming-agent[269477]: Gstreamer plugin: Looking for encoder plug=
ins which can produce a 'video/x-h264, stream-format=3D(string)byte-stream,=
 framerate=3D(fraction)25/1' stream
> spice-streaming-agent[269477]: Gstreamer plugin: 'vaapih264enc' plugin is=
 available
> spice-streaming-agent[269477]: Gstreamer plugin: 'x264enc' plugin is avai=
lable
> spice-streaming-agent[269477]: Gstreamer plugin: 'avenc_h264_omx' plugin =
is available
> spice-streaming-agent[269477]: Gstreamer plugin: 'avenc_h264_omx' encoder=
 plugin is used
> spice-streaming-agent[269477]: Gstreamer plugin: Trying to set encoder pr=
operty: 'bitrate =3D 100000'
> ** (spice-streaming-agent:269477): CRITICAL **: 22:47:26.612: gst_vaapi_d=
isplay_lock: assertion 'display !=3D NULL' failed
> ** (spice-streaming-agent:269477): CRITICAL **: 22:47:26.612: gst_vaapi_d=
isplay_unlock: assertion 'display !=3D NULL' failed
> ** (spice-streaming-agent:269477): CRITICAL **: 22:47:26.617: gst_vaapi_d=
isplay_lock: assertion 'display !=3D NULL' failed
> ** (spice-streaming-agent:269477): CRITICAL **: 22:47:26.617: gst_vaapi_d=
isplay_unlock: assertion 'display !=3D NULL' failed
> spice-streaming-agent[269477]: No sample- EOS or state change
>=20
> So I reverted back to using regular spice in qemu without
> spice-streaming-agent.
> I think it would be a huge improvement if the spice component
> in the qemu host process could leverage GPU based encoding with
> h264.

Yes,

=09https://gitlab.freedesktop.org/spice/spice/-/blob/master/server/gstreame=
r-encoder.c#L899

> We wouldn't need a guest agent, we wouldn't require GPU
> passthrough and have great performance for multimedia
> use-cases. Not sure were I would open a feature request for
> that, though.

There are always people interested on spice server doing
streaming but it is complicated to accommodate in regards to
resources (it does not scale well in a host with multi VM).

This is/was primarily used in Xspice and x11spice for accessing
bare-metal OS.

Patches to improve this would be welcomed indeed.

Cheers,
Victor

--mg4w3foulv4v3bjz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl8jl1kACgkQl9kSPeN6
SE+BPw//UOs9epxXvUjwwhyh1vk1wB9bU0KI6XsHEBAZOV88grjniwSQtM7kBLC/
5EOyD5IVIyZ9AcRgLYFH1gQnnZPt5YDqvo9TepmsVMV7lxMjR9nh3UUbXUj5wOGr
7GquMcYG+MjvqQoSsjvfvCMnRIeU9kEbyn0gE2rF5894+GvKBDi9ISblDQS6xUTO
e8TePNAapC7O4H2MtelZEkb9XwLhxhoIHLBSPJY6nTX1q833Vo6UnHfN/yup74qn
tLwYX6iqgXK98iGmY6xkvaAw8f52LotxuB5ewBVdwdbEjhddsnH9251GIDm3DpUl
HvOCp5QpYy5DIV3bVYOJ099d1bQ6NKjmuKHaKQzeyxbCqIEPZdThn7w2y6KGo8tb
oY+4zakC/5D5mGZEEoXLT6X0hDlp7nCU66IkjdQMu/niaMrwBF9xcQ1yCuzUvtNM
bbsjqGWFe7SuFLVPHAIGtYT/rth14eH/eoFNNHn2FQVBrU7abd6BIGzsbQBo2/Vx
Sf6EBTCOpcLkAcwaBgN4w+4DHel1SELbKzfUvyDsFYe2spmwRvTWe+ZR+lkJkl6l
V9ClNkhPXk5yl2tz1N9C6eUZqA4mSSZaxj6hKCfU0L1sNdHIiuZAo6ChNhZdKOVx
A31A0fyQmEKAetu2JXyUskaSbd6fSKxhn1kbykHLvIUF3fL2WMI=
=wkuj
-----END PGP SIGNATURE-----

--mg4w3foulv4v3bjz--


--===============1561063999==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1561063999==--

