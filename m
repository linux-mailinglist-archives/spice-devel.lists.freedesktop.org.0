Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B62D0559D73
	for <lists+spice-devel@lfdr.de>; Fri, 24 Jun 2022 17:39:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E01D610E133;
	Fri, 24 Jun 2022 15:39:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B868B10E133
 for <spice-devel@lists.freedesktop.org>; Fri, 24 Jun 2022 15:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1656085180;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nG9+LVyPLF6xjgwEmWR2lMPtWWwioFmCUOEzRHdl4Yg=;
 b=ZSwwRdY56ukKFFZghMb+FuaNt88aoot4Xod8pDWrSST6HZ+WFOyqU6bkq7+ovDtbV1d2D0
 0fRP8SDq5tqhuWAmGyZW5lyaSrpJ9LttHcgv78OiZbSWe4c9VmJ4Ons2oaoakg+huGeJHP
 NRrB9NBGHcR2vbeUdSjYMvx6atfdVbM=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-175-9IsOd4hCOaySk1Z2XiPr6g-1; Fri, 24 Jun 2022 11:39:37 -0400
X-MC-Unique: 9IsOd4hCOaySk1Z2XiPr6g-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 022223C10160;
 Fri, 24 Jun 2022 15:39:37 +0000 (UTC)
Received: from localhost (unknown [10.40.192.85])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9C86040334F;
 Fri, 24 Jun 2022 15:39:36 +0000 (UTC)
Date: Fri, 24 Jun 2022 17:39:35 +0200
From: Victor Toso <victortoso@redhat.com>
To: "yipeng@nfs-hlj.com" <yipeng@nfs-hlj.com>
Message-ID: <20220624153935.l3unu7pskypkrfyp@tapioca>
References: <202206231415229629052@nfs-hlj.com>
 <20220623111629.gqyxwr5bljyvkzho@tapioca>
 <202206241357014469041@nfs-hlj.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="fjhv434j5nfuq4ke"
Content-Disposition: inline
In-Reply-To: <202206241357014469041@nfs-hlj.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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


--fjhv434j5nfuq4ke
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jun 24, 2022 at 01:57:01PM +0800, yipeng@nfs-hlj.com wrote:
> Hi,Victor!
> Thank you for your prompt reply.=20
> I have a hardware device. Because its display is decoded by
> hardware and only supports H264 mode data stream, it does not
> support other modes. I want to use it to use the spice
> protocol. I have been learning about spice recently to see if
> spice can be run on this hardware device.

I understand you have h264 hw decoded. Your VM is remote or
running in the same machine? Your VM is Windows or Linux?

The hardware decoding to h264 is not hard. The hardware encoding
in h264 is harder. Might be better nowadays but I haven't tested
and for sure the code in spice-server needs tweaks for hardware
encoding.

Cheers,
Victor

> From: Victor Toso
> Date: 2022-06-23 19:16
> To: yipeng@nfs-hlj.com
> CC: spice-devel
> Subject: Re: spice
> Hi,
> =20
> On Thu, Jun 23, 2022 at 02:15:23PM +0800, yipeng@nfs-hlj.com wrote:
> > Hi,Victor Toso!
> > I am learning spice code recently. I have some doubts about
> > spice display channel. I hope to get your reply.
> =20
> You got it. I'm cc'ing spice-devel list which is the best place
> to ask for help related to Spice.
> =20
> > 1. How does spice distinguish between video transmission and
> > picture transmission.
> =20
> If the server is configured for streaming [0], it'll decide to
> start a video encoding based on how many updates it is getting
> from the Guest. We had a demo about it ages ago:
> =20
>     https://www.youtube.com/watch?v=3DVUQYs72hrbM
> =20
> > 2. in the process of video transmission, is it the number of
> > frames of all videos or the changing part of the transmitted
> > video.
> =20
> Not sure I understand the question. The streaming will happen
> based on the amount of updates in a specific region of the
> Display. Let's say that you are playing a 720x360 video in a 4K
> display, only that region of the video is being updating too much
> and will be converted to a video stream. If you had two 720x360
> videos playing, that's where the options all/filter would change
> the behavior, I think. With one, you would get two video streams,
> with the other it'd combine them in both.
> =20
> I'm talking from memory, so I might be wrong with some details.
> =20
> Note that with most recent Desktop environments like GNOME or
> windows 10, there is a lot of 3D happening which is full screen,
> that means it is interesting to stream the whole desktop.
> =20
> > 3. whether the transmission display can be configured to H264
> > mode.
> =20
> It can, but it is software encoding. The default is the mjpeg
> encoder. H264, vp8/vp9 is using gstreamer and the code would most
> definitely need tweaks and tests to be considered for
> production... This is a heads up.
> =20
> What is your use case?
> =20
> [0] If using libvirt, that means setting <streaming mode=3Dall> (or
> filter). See host video encoding at:
>     https://www.spice-space.org/spice-user-manual.html
> =20
> Cheers,
> Victor

--fjhv434j5nfuq4ke
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmK12rcACgkQl9kSPeN6
SE+jkxAAqvzBza9sAwLWJ/WqIL5rkTzLeOAyNhLANTr53pBlO2x6m4B0OsOArMKk
tDFB382akPXZNzKdzA4RQQuFw4TDnaeiKTr57QvIL1xqar6s2c2VNU3YpOLciZmf
pIQqKDxwNwDW6khjonSLGGgOxOY+mR8f9lDYTmNKCNML2I6brNxD/cTGQ/kJ9QIK
9HIY7vzHXtURpx+8MEqpTVa+2e9dV1r+EZ7hWxx78NSCscGVCIc9N+g/Owz5vN1O
pcEWQO2KyprYLQKMB5BrK74WvGfNpq4vrYr3R9REjUXkXFh3LCBVhSv/NWYmNMEq
zCyfi0ZA1Yjo7/PsfnoDfmHHL+nD0TCVz2ELIWgVhF0eY+MuZew7RbQ5CIbatg6e
PouoKxvu7NL1pgGMBcQ+Qw3dMwMZUDF0VrhtObuooeLYi0BYY5h5/SKJcM4hf2M+
z3m05/eGThKYx50TuTV94qage0m0QqGD0zzOS96AQShFToksprw/pBhxWbeYj6KC
Df6V9wMynrKHHdZm8QFbhiVgef44ln8+jo9SGuXDSxn+IoI2K5U8LRk9w92tIpgI
i/4rte+rMjbsegLtcLEbOMoVS1SXZGKjMUlPv/lWmjZB8OAH6agWCzFJKs2RfPmC
TXX9m1IlXsqGQnAiRhnQXrIJPmrlbJcngYy5Z+ZuAdF3sPInRVg=
=gcI8
-----END PGP SIGNATURE-----

--fjhv434j5nfuq4ke--

