Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5EB5ABFB7
	for <lists+spice-devel@lfdr.de>; Sat,  3 Sep 2022 18:14:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E20E10E478;
	Sat,  3 Sep 2022 16:14:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 550FD10E478
 for <spice-devel@lists.freedesktop.org>; Sat,  3 Sep 2022 16:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1662221641;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=h80t8rgsZ2gLq0vhK6j/7Ufl7bg0F0ArmVm3Mf2W8HM=;
 b=KRnqMeER8tQqBooQhf0NamjngRXH+guaAcUklVuTvvKVRZ1LgpxT/LRuY3RhWECDWFEBRt
 xL1sGz0yMAO67I9tuDK0yrVemLfgEhjz+SGHScKAL3tA5nCoFrylTrgwRN8m6pGya+/Q0O
 ybRpr8R11uactTcMLDF1laG00Vl3h9k=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-558-YYNykEQBOn-DijHyTJC2fA-1; Sat, 03 Sep 2022 12:13:57 -0400
X-MC-Unique: YYNykEQBOn-DijHyTJC2fA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0B9268032E3;
 Sat,  3 Sep 2022 16:13:57 +0000 (UTC)
Received: from localhost (unknown [10.40.192.46])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9E61040CF8E8;
 Sat,  3 Sep 2022 16:13:56 +0000 (UTC)
Date: Sat, 3 Sep 2022 18:13:55 +0200
From: Victor Toso <victortoso@redhat.com>
To: Carlos =?utf-8?B?R29uesOhbGV6?= <piteccelaya@gmail.com>
Message-ID: <20220903161311.tj52o75k2ydii4zb@tapioca>
References: <CAGeBE=yhPCXNeR72Oiy83yS+gC+P82_tSX59XQ4dSvUMDHJGRA@mail.gmail.com>
 <20220902065324.kqoezlbkidndyx4m@tapioca>
 <CAGeBE=z8ee5V4_fT7rxOnaE_6g5idXke3UMLeQw3G-DGSADwfw@mail.gmail.com>
 <CAHt6W4cbdzRuo1Fkvi7fY+xrVSMf3HxP=F3-Z7Ej=R=mgZGFgg@mail.gmail.com>
 <CAGeBE=xEXafWkdBfL8Qn+ynx3eP1a5W1Rg9D68DfZsJ9Rj9wuA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="bzcw2n3t4r5aj2an"
Content-Disposition: inline
In-Reply-To: <CAGeBE=xEXafWkdBfL8Qn+ynx3eP1a5W1Rg9D68DfZsJ9Rj9wuA@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Subject: Re: [Spice-devel] qxldod driver for Windows 11
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


--bzcw2n3t4r5aj2an
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4cdmg3cnnirkh27u"
Content-Disposition: inline


--4cdmg3cnnirkh27u
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Sep 03, 2022 at 03:30:27PM +0000, Carlos Gonz=E1lez wrote:
> First, thanks *very* much for your complete explanations, and
> at the same time offering apologies. Not justifiable, but I was
> kind of anxious and a bit desperate of finally setting up a
> win11 VM with SPICE just the way I did with win10.
>
> I think this is already well known but, why SPICE? For me, because of all
> the following features:
> ---Graphic acceleration --even if just 2D, QXL worked *far* better than a=
ny
> other available virtual driver
> ---All the paravirtualized drivers, which are still offering the best
> performance
> ---Easy USB and sound redirection
> ---Clipboard sharing
> ---Copy-and-paste --even if just files and only from host to guest
> ---Automatic resolution resizing with SPICE window
> And perhaps other ones I may be already forgetting...
>
> I already know what's said about software in general, that it's
> big enough and *always* comes and goes. But now that SPICE in
> general is dead, or in the process of, it'll take many years
> for another entire solution offering *all* these features to
> appear.
>
> I no longer want to set up windows VMs with generic virtualized
> drivers, and all what you just explained further supports this
> way of thinking.

Even for windows 10, it took quite some time to get qxl-dod in a
good state. Even with a bit more bandwidth usage and lack of
resolution resizing to almost arbitrary values (client's window
size), it worked well for your average display size (e.g: full
screen).

So, I'd at least give it a try for with windows 11. Clipboard and
USB redirection should work.

> So, humbly trying to ask here, what else can I do? Or where
> else to try asking?

Open source and remote? I'm not aware of something that has all
SPICE features but some people are betting on RDP.

> Thanks very much and apologies again.
>
> P.S.: small offtopic: I'm also having problems trying to set up TPM2
> emulation for win11 VM, using swtpm package. I think the author, user
> "stefanb", is an IBM employee, but employees never offer free support...
> Where could I ask for support with this? Thanks again.

Really, no one is obliged to give support for free. I'm here on a
Saturday evening on my own terms. Just stop that, please.

When the following MR gets merged, some tools like virt-manager
and gnome-boxes should be able to provide better guidance with
windows 11 instalation:

    https://gitlab.com/libosinfo/osinfo-db/-/merge_requests/362

You might find some discussions about new requirements of windows
11 in bugzilla, etc.

Cheers,
Victor

>
> El s=E1b, 3 sept 2022 a las 6:38, Frediano Ziglio (<freddy77@gmail.com>)
> escribi=F3:
>
> > Il giorno ven 2 set 2022 alle ore 22:23 Carlos Gonz=E1lez
> > <piteccelaya@gmail.com> ha scritto:
> > >
> > > So the "rumors" are true: you (in general) really did discontinue/kill
> > the qxl drivers, if not the entire SPICE project soon. Was it because I=
BM?
> > Since being sold to them the first one to die was Centos, now this...
> > >
> >
> > Hi Carlos,
> >    In Italy we use the expression "=C8 come sparare sulla Croce Rossa"
> > (more or less "it's like shooting at the Red Cross").
> > It's like accusing a doctor trying to save a life that it's trying to
> > kill somebody.
> > As Victor is actively contributing to SPICE as a developer (you can
> > find multiple recent emails and commits in this ML and related
> > projects without much effort) is not kind to point fingers.
> >
> > > FYI:
> > >
> > https://gist.github.com/pojntfx/b860e123e649504bcd298aa6e92c4043#file-m=
ain-sh-L32
> > >
> > https://lists.freedesktop.org/archives/virglrenderer-devel/2021-January=
/001897.html
> > > virtio-gpu implies virgl, and currently only works on Linux guests;
> > RedHat people explicitly deemed the Windows work "not worthy".
> > >
> >
> > Let's get back to the technical side of this thread.
> > That's not entirely true. Virgl it's an "option" to virtio-gpu. By
> > default Virgl is not enabled. Virgl adds 3D support to Qemu virtual
> > cards, as far as I know it's the only virtual GPU (bypass are not
> > virtual) in Qemu supporting 3D. Although QXL was born alongside SPICE
> > while Virgl is more related to Qemu directly, efforts were made to
> > support all features QXL provides using virtio-gpu. So the technical
> > suggestion Victor gave is not against SPICE. You have also to consider
> > the way QXL works and how the graphics software stacks evolved in
> > time. QXL design it's 2D only, supporting a lot of specific commands
> > and options for Windows 95/98/XP. Yes, you read well, Windows XP...
> > which was declared unsupported 12 years ago! At that time OSes relay
> > to the GPU plenty of complex 2D commands. Nowadays most OSes (if not
> > all but surely Linux, Windows and Mac) use 3D commands for everything,
> > and many brushes, raster operations and similars are long since gone.
> > Taken all that into account, with a modern OS the commands QXL and
> > virtio-gpu use are basically the same.
> >
> > > Thanks for killing the project.
> > >
> >
> > Now let's get back to the less technical.
> > Beside reiterating that pointing fingers to Victor is not fair nor kind=
=2E..
> > Yes, SPICE was, company wise, well founded and supported by Red Hat
> > (which _had_ a specific team for it). After RedHat was acquired by IBM
> > some investments were moved from desktop side to the cloud. More or
> > less RedHat/IBM thinks that spending money on Linux desktop is not
> > worth much. That includes SPICE, Virgl and Windows drivers but others.
> >
> > Regards,
> >   Frediano
> >
> > > El vie, 2 sept 2022 a las 6:53, Victor Toso (<victortoso@redhat.com>)
> > escribi=F3:
> > >>
> > >> Hi Carlos,
> > >>
> > >> On Fri, Sep 02, 2022 at 12:08:04AM +0000, Carlos Gonz=E1lez wrote:
> > >> > I downloaded latest virtio-win ISO, and by browsing it I
> > >> > noticed that, unlike the other drivers, for the qxldod one
> > >> > there's only up to win10, and no explicit win11 versions.
> > >> >
> > >> > Does this mean that there are no drivers for Windows 11, and no
> > >> > possibility of setting up a VM with full SPICE support?
> > >> >
> > >> > Thanks beforehand.
> > >>
> > >> You are correct, the last cycle of development was focused for
> > >> windows 10.
> > >>
> > >> I expect windows 11 to maintain some compatibility with windows
> > >> 10 so the drivers should work to some extent but I did not test
> > >> it.
> > >>
> > >> I'd not hope for further development on qxl unless there is
> > >> someone interested in investing time on it (and it would take
> > >> some time).
> > >>
> > >> I'd instead switch to virtio-vga / virtio-gpu as this seems to
> > >> have an active community.
> > >>
> > >>     https://github.com/virtio-win/kvm-guest-drivers-windows
> > >>
> > >> Cheers,
> > >> Victor
> >

--4cdmg3cnnirkh27u--

--bzcw2n3t4r5aj2an
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmMTfUMACgkQl9kSPeN6
SE/ncRAAqS4K4FV7VX7hDDS6KGQZ69Az40Cy+8BCu3I0P1o2GKzumC1BjMnCvq8F
UzPewXTMbsG6kjD+p3Y3ybMqE3l21YJ9WfCNQg1nQWzKlzOz4yX0SPFn3x9Hst0S
6D8VFx8BDkEJEzU+O4XkT87rIdkW5PL4r0QUJvKuS0s2+GN2hCKl8lJwU3JgRNTQ
nSvKJL1jfFKtGm+XOn4KVMOJk0OgVEDo5hLAtmeDwfCV6120KHviyWrritZlhcGi
HJHXGxjSJaxnCsXjllzdruHVoZ7enyrSJtUKF24+6DhN1vCGrFWDPlLYdO3hVUjF
Ok/AN+MvfPDCO9YOARRcBsgWycRmO9Y/39oLdGeVQsW6zKZ9f68iG3Xl1f74JKT8
x0jxUIyxai+iQ5E2cYH49+pVTkUcXazny5xfTdhMwfxfltQreVsJCkhyfim9PkcB
p0RwNQvURXYp8dCMuTJoOrJzge+zjlyOry5obyiH7Kus3PXdQqzmcE3nTt9xpUOf
DzGJlqu7zwtfUHM5J1F7MTvj3wA0HKO5FbNaTbL242wpfM0OL6+smt+w/pxSiyVK
zE6yzaHh9GvxY7GIzSJFtbIdAGzL0dZActhGROVJpxanCnGPBlGrhAAyT6Nwshv4
RtYnsSEepLLwxxRM4+w29koxLbiO+ycQ84+QKSm62i40N6D6LBg=
=TmGP
-----END PGP SIGNATURE-----

--bzcw2n3t4r5aj2an--

