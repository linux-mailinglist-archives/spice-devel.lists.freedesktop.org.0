Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C84D5578AA
	for <lists+spice-devel@lfdr.de>; Thu, 23 Jun 2022 13:26:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C9D410F078;
	Thu, 23 Jun 2022 11:26:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 597 seconds by postgrey-1.36 at gabe;
 Thu, 23 Jun 2022 11:26:30 UTC
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D7A910F078
 for <spice-devel@lists.freedesktop.org>; Thu, 23 Jun 2022 11:26:30 +0000 (UTC)
Received: from submission (posteo.de [185.67.36.169]) 
 by mout02.posteo.de (Postfix) with ESMTPS id A4281240107
 for <spice-devel@lists.freedesktop.org>; Thu, 23 Jun 2022 13:16:31 +0200 (CEST)
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4LTHkk4x1Cz6tmf;
 Thu, 23 Jun 2022 13:16:30 +0200 (CEST)
Date: Thu, 23 Jun 2022 11:16:29 +0000
From: Victor Toso <victortoso@redhat.com>
To: "yipeng@nfs-hlj.com" <yipeng@nfs-hlj.com>
Message-ID: <20220623111629.gqyxwr5bljyvkzho@tapioca>
References: <202206231415229629052@nfs-hlj.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="joygf5xfvonpsxc5"
Content-Disposition: inline
In-Reply-To: <202206231415229629052@nfs-hlj.com>
Subject: Re: [Spice-devel] spice
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--joygf5xfvonpsxc5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jun 23, 2022 at 02:15:23PM +0800, yipeng@nfs-hlj.com wrote:
> Hi,Victor Toso!
> I am learning spice code recently. I have some doubts about
> spice display channel. I hope to get your reply.

You got it. I'm cc'ing spice-devel list which is the best place
to ask for help related to Spice.

> 1. How does spice distinguish between video transmission and
> picture transmission.

If the server is configured for streaming [0], it'll decide to
start a video encoding based on how many updates it is getting
=66rom the Guest. We had a demo about it ages ago:

    https://www.youtube.com/watch?v=3DVUQYs72hrbM

> 2. in the process of video transmission, is it the number of
> frames of all videos or the changing part of the transmitted
> video.

Not sure I understand the question. The streaming will happen
based on the amount of updates in a specific region of the
Display. Let's say that you are playing a 720x360 video in a 4K
display, only that region of the video is being updating too much
and will be converted to a video stream. If you had two 720x360
videos playing, that's where the options all/filter would change
the behavior, I think. With one, you would get two video streams,
with the other it'd combine them in both.

I'm talking from memory, so I might be wrong with some details.

Note that with most recent Desktop environments like GNOME or
windows 10, there is a lot of 3D happening which is full screen,
that means it is interesting to stream the whole desktop.

> 3. whether the transmission display can be configured to H264
> mode.

It can, but it is software encoding. The default is the mjpeg
encoder. H264, vp8/vp9 is using gstreamer and the code would most
definitely need tweaks and tests to be considered for
production... This is a heads up.

What is your use case?

[0] If using libvirt, that means setting <streaming mode=3Dall> (or
filter). See host video encoding at:
    https://www.spice-space.org/spice-user-manual.html

Cheers,
Victor

--joygf5xfvonpsxc5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmK0S40ACgkQl9kSPeN6
SE8d5xAAsTYrqeFUC93B+f8ey1Z86Pny8HE+fJ2O/u5LW4vWm4icHUXAVRpK8AJN
lnLheE6rnJN5zRCur28rPK9bFG79Zi0AKe44k6OABpJ24FsVrAVEQIEXh6gTol1w
OJNpDXQRQgLarJ+J05Yb6fz/bqQRCnMJGPbzdOXkEOjoRVCgYVhQWOfXLQFf8fFY
HTO83u6gGNzKSl56CJ2Y9L5iU1P3rEhEE+SzW1Ptbcp0QR2FNpQn36BWcwzU5kIB
GqkJ0vYo5P8M92WoqSTs5lrsyT2bO0AFVNg5RlONwMVN35T29BcJTniAdIQNIyWD
qNTNuoYNluHOUoqK/TnO75rNU3AbRd6GLFzKQlk0YtoI4oFb4tWb83x2xIKU/Jym
45UModpH7jJCynM5afP8mn5CWJIuPlIIXiSz0uxWun4T9VlHcjbSnV+Ph1ArPsxv
8aioMTmNqzMDuImcIMb3xhXnisdTBz2Iv2gMEjkZGMqPBZqF5UPkryoADbAlVK8E
C5bRnAOz/6Y3NrZ78VL+y8pmMJ0CkFpv/O1zvprDFOfVYi3pgb6Cv6ez1WLEAInq
LpT6KqNMOo9pmufkqJeqHaMIfmiyqcWkVcGSMYg8SOSq8ntNDYa436WL33roHBph
K8iw/mTSebzjp3vMMo+sBt6Jxrh4AAFB7M8tjroOhYcUItvqi5E=
=BuNf
-----END PGP SIGNATURE-----

--joygf5xfvonpsxc5--
