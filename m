Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAA29AB41
	for <lists+spice-devel@lfdr.de>; Fri, 23 Aug 2019 11:23:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B64A6E048;
	Fri, 23 Aug 2019 09:23:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55A846E048
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 09:23:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id ED05689F38E
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 09:23:10 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9A4616092D;
 Fri, 23 Aug 2019 09:23:10 +0000 (UTC)
Date: Fri, 23 Aug 2019 11:23:09 +0200
From: Victor Toso <victortoso@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <20190823092309.plw5m6wypb4y3i7r@wingsuit>
References: <20190806153453.20616-9-kpouget@redhat.com>
 <20190807154949.28693-1-kpouget@redhat.com>
 <01beefc4-40d8-4e3d-3ebd-2b43dce90d3e@redhat.com>
 <CADJ1XR1PxwSy4PWoAJDL6WFkan0DOTwRarM9w_wxve5orugYkQ@mail.gmail.com>
 <9f4d859c-9449-547c-9c48-4313358070ae@redhat.com>
MIME-Version: 1.0
In-Reply-To: <9f4d859c-9449-547c-9c48-4313358070ae@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Fri, 23 Aug 2019 09:23:10 +0000 (UTC)
Subject: Re: [Spice-devel] [RFC spice-gtk 1/2] streaming: make draw-area
 visible on MJPEG encoder creation
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0235782453=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0235782453==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qy3jyx4h7sdvjp7l"
Content-Disposition: inline


--qy3jyx4h7sdvjp7l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Sorry for being late here!

On Thu, Aug 08, 2019 at 06:36:48PM +0300, Snir Sheriber wrote:
> On 8/8/19 1:09 PM, Kevin Pouget wrote:
> > > > +    gtk_stack_set_visible_child_name(d->stack, "draw-area");
> > > > +    return true;
> > > > +}
> > > > +
> > > >    static void invalidate(SpiceChannel *channel,
> > > >                           gint x, gint y, gint w, gint h, gpointer =
data)
> > > >    {
> > > > @@ -3192,7 +3202,9 @@ static void channel_new(SpiceSession *s, Spic=
eChannel *channel, SpiceDisplay *di
> > > >                                          G_CALLBACK(spice_display_w=
idget_update_monitor_area),
> > > >                                          display, G_CONNECT_AFTER |=
 G_CONNECT_SWAPPED);
> > > >            spice_g_signal_connect_object(channel, "gst-video-overla=
y",
> > > > -                                      G_CALLBACK(set_overlay), dis=
play, G_CONNECT_AFTER);
> > > > +                                      G_CALLBACK(gst_set_overlay),=
 display, G_CONNECT_AFTER);
> > > > +        spice_g_signal_connect_object(channel, "mjpeg-video-overla=
y",
> > > > +                                      G_CALLBACK(mjpeg_set_overlay=
), display, G_CONNECT_AFTER);
> > > >            if (spice_display_channel_get_primary(channel, 0, &prima=
ry)) {
> > > >                primary_create(channel, primary.format, primary.widt=
h, primary.height,
> > > >                               primary.stride, primary.shmid, primar=
y.data, display);
> > > I'd also suggest another option which is to not allow switching into
> > > built-in
> > > mjpeg in case you started with gstreamer (i.e. one you started with
> > > gstreamer decoder stick to it).
> > > I guess it will be simpler but needs to see what this would require.
> > can we assume that Gstreamer always supports MJPEG decoding?
>=20
> Theoretically no, practically i think we can assume this if
> we'll require some libs as mandatory.
>=20
> Worth checking performance difference.

Yes, I've tested long time ago and performance was fine, don't
recall if it was avdec_mjpeg or other but there are a few.

I would say we can fix what we need to fix to make this switch
working but it is worth goal to keep decoding as much as possible
in the GStreamer stack, that is, if performance seems fine to
all.

> > if yes, what it the point of using the native decoder?
>=20
> Still, this is more safe i guess, gstreamer is building its
> decoding pipeline dynamically , something always may fail.

Indeed but considering that we might have to consider several
video-codecs in the future, the safe native decoder might become
a maintenance burden also because mjpeg is hardly the first
option for streaming solution.

> > at the moment, display_stream_create goes into the native decoder if
> > the stream is MJPEG, and GST otherwise. So GST will never decode MJPEG
> > streams.
>=20
> Indeed, i meant, once gstreamer is used don't let native
> mjpeg to be used.
> If it starts with mjpeg, use native, but once you switching to
> gstreamer, use only gstreamer. also if switching back to mjpeg.

I'd consider disabling native mjpeg in favor of gstreamer and
probably removing it in the future from the codebase.

Cheers,
Victor

--qy3jyx4h7sdvjp7l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1fsH0ACgkQl9kSPeN6
SE+a7Q//YgkrvwwilxxlWuXvGG3xy8yrpRyRXb6kYJqRc/nhoxgxuQk/k0UAE52x
GQtM5Vrx41283OpF15Z/LruUnHtKMBg7W4v5Abma2FiLkbyUBD8cPLk7w3XUetYa
LXtQhAoxgk7YzlhlJq0i2U+gCfCvQBkB2mw5F63Q8TxJMPEa3RlOXJ3/1GlenKbn
B4yTRX9tx0k4hcqSCMtmPrjduLrReY3RMnqEgkZJViuKGpGlAOmipWK70ibOffof
pFBAxkCVqFUTz7Nkh86mAtX7N0ONikJvO7u40R+LMq+aEYWHBGkIzSEBXDK3W5F9
nIvLfOXFN6lO24k5vT6aKvxr5nqEc4GJAmi4I3GTxvokEIaPb9EbT4Bxk/KhQVJI
pdYKG/GDvkHpMxAxW0wH4TVWuOBAZ1GUQW1qWpDg1SB2n5DW5XeccF7j9jGLu0ZQ
CK+16dvfT4McdHlMqHFtXhgFMi1QqFlClonOYFVQSvLzKs64DnHmW5FVDhW+QiSL
4zNG3/xtKHCb8jqJAtlPuXsGHWCmuwwUzEE0iTx6xvjskEUqcKdS8olDhIao1OKm
tDyqwRZZGuf97MAD+k+Xd2AJAPotyiQEjNnRCDr8MqwS2L5YqdKvEIT0FyMiWFKD
03pHFPv5nu2fDvJO8OFsE/c7KMxmmOMV1UAE2afVMVOveKgG5dg=
=kmsc
-----END PGP SIGNATURE-----

--qy3jyx4h7sdvjp7l--

--===============0235782453==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0235782453==--
