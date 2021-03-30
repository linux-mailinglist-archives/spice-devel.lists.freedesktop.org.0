Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1F434EDBA
	for <lists+spice-devel@lfdr.de>; Tue, 30 Mar 2021 18:25:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 063426E938;
	Tue, 30 Mar 2021 16:25:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B00F36E938
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Mar 2021 16:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617121544;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=jdqhW2iGGDFikOridKkLkAsmGzaXRpdpE/eEajtdWn8=;
 b=V08nJYPurUwtwnYAscZd7p8KCs5MYNzQrhZ3hAeC1QhALwVflY6QFoiqa09ciAtKmc3mT0
 ZZCT7tgipd7Aaf2muf4+ajbTMj+88fJzt9rmtCOlckzWKyCsMHHaUQ8bXpgFhRD6QcLyyC
 hov1iT/veNpfCUjQolm+a7IKJn4bNXc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-39-6NyHoFjPOtydwHriWxY7Xg-1; Tue, 30 Mar 2021 12:25:40 -0400
X-MC-Unique: 6NyHoFjPOtydwHriWxY7Xg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8217110059D2;
 Tue, 30 Mar 2021 16:25:39 +0000 (UTC)
Received: from localhost (unknown [10.40.195.207])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 174A75C1D1;
 Tue, 30 Mar 2021 16:25:38 +0000 (UTC)
Date: Tue, 30 Mar 2021 18:25:37 +0200
From: Victor Toso <victortoso@redhat.com>
To: James Harvey <jamespharvey20@gmail.com>
Message-ID: <20210330162537.ynxvlvaipgapvlj3@wingsuit>
References: <CA+X5Wn5k173Z+i2vcW1nXuP1SjCNhUM104iCRMJODrbfGB5Y1A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+X5Wn5k173Z+i2vcW1nXuP1SjCNhUM104iCRMJODrbfGB5Y1A@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=victortoso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] spice-gtk: Synchronized/duplicated input across
 multiple widgets
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1540906546=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1540906546==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tifcl2iktws4dlia"
Content-Disposition: inline

--tifcl2iktws4dlia
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Mar 30, 2021 at 11:41:59AM -0400, James Harvey wrote:
> I think a very useful addition to spice would be
> synchronized/duplicated input, so one physical input can be given
> simultaneously to multiple spice servers.
>=20
> The most common use for this might be system administration.  An admin
> would be able to connect to multiple machines, and perform common
> tasks on all of them at once, such as upgrading software, manual
> malware scans, changing settings, etc.

That means that all VMs should be very similar, in the same
state... seems a bit error prone to me.

> This exists in a few other programs.  There are ssh clients that do
> this, but personally I use tmux's synchronized panes feature for this
> after I've started different ssh connections in them.  I'm not aware
> of any linux GUI remote clients with this feature, and the only
> Windows GUI remote clients I'm aware of with it are BlueStacks and
> Nox, which are android emulators built upon VM software.

ssh is a shell in the remote machine. It can have different
failures but the scope is smaller than spice, I think.

> Obviously, it is on the user to ensure input works as intended.
> If servers have different resolutions, layouts, icon
> placements, if one hasn't finished a previous task, etc,
> identical input may not have identical behavior in all clients.
>=20
> Before understanding the extent of what spice-gtk handles, I
> approached the remmina developers, largely because one instance
> of their client can already handle multiple connections in tabs
> or separate windows.  Now understanding that spice-gtk receives
> the physical mouse input and sends it to the spice server, it
> looks to me by far that the easiest way to do this is make a
> chance in spice-gtk and then have the clients do whatever is
> necessary to inform the widgets to enter/exit this mode.
>=20
> In tmux, the "setw synchronize-panes" command toggles
> synchronizing input among all panes in a window, so giving
> input to any of them is duplicated in the others.  There's no
> master pane that has to be typed into.
>=20
> In the Windows android emulators BlueStacks and Nox, their
> synchronized input feature allows you on a remote connection
> window to select other running connections to receive
> synchronized input from that window.  The one you start from is
> the master window, which you have to give input to for it to be
> duplicated.  If you give input into one of the other windows
> you've selected to receive synchronization,
> the input is only given to that window, which is useful if a window
> becomes unsynchronized to easily bring it back to where the others are
> without needing to toggle the overall synchronization or turn
> including that window off.
>=20
> I think it would be nice if a spice client could tell spice-gtk
> to enter/exit either of these modes: synchronized input among a
> group of spice-gtk widgets; or synchronized input made in a
> master spice-gtk widget to be given to a number of spice-gtk
> widgets.
>=20
> I think a restriction that spice-gtk widgets can only
> synchronize with other widgets running on the same machine
> would simplify implementation and security concerns.  Perhaps
> the spice developers would want only widgets running within the
> same process to be able to synchronize.  In that case, remmina
> might be most easily able to implement this feature, but other
> clients could add the ability to run multiple connections
> within a single process to be able to implement it as well.
>=20
> Is this something someone would like to implement?  If not, is
> it something that someone would be willing to mentor, giving me
> locations of existing code that likely need changes, etc?  And
> if I could get it working, that the feature would likely be
> accepted as a pull request rather than denied as an unwanted
> feature?

IMHO a better approach would be a guest component that handles
the operations that you are looking for. It might seem a bit
bigger project but spice already has a port channel that can make
client <-> guest communication such as we do with shared folder
feature.

Actually, I recall that this kind of project was explored before
by Fleet commander developers [0], not sure if that's what they
have done.

Anyway, spice-gtk tries to keep the same approach as any other
desktop application so that means spice-gtk only receive input
when the widget has the keyboard grabbed (like when you click on
it). Working around this would be bad in general, from security
POV or simply too hard (e.g: in Wayland).

I think the best way forward with your idea would be some sort of
multicast with usb redirection, so you can connect a usb keyboard
to multiple vms. You probably can work on some POC without spice,
by having two QEMU configured with usb-redir over tcp and connect
to them with usbredirect [1]. After you get that working (most
patches here would be in usbredir I think) it would be much
easier or even trival (no changes) in spice-gtk to do what you
want.

[0] https://fleet-commander.org/documentation.html
[1] https://gitlab.freedesktop.org/spice/usbredir/-/merge_requests/2

Cheers,
Victor

--tifcl2iktws4dlia
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmBjUQEACgkQl9kSPeN6
SE8XpA//avcxiODHv0S4hoPX7H/7DJBH5GxAsWF4jqh5qTZHux/8jHJIanQrYSzq
ovQHK9zsU2C9RrHCtUX516YTH7bb6TrjPHyAgJZJb47ojgzHcpMYLg6hbrOZ21iB
pqcb9GF4URCLszH+aGI/6FZzLFgn1WZmrupfbvxop4lOb6K1U4/nuHUtnG/umsbu
oOchWKiYV1CA41EuVb1x9yJYn/orr4D9eRUuhS0//vjI/uUXTe/JkaVBQRQoAALR
n1a8kmb0KAl/2wjoflaLE/2hdgbbBsCJJ0jPMdbu290En16gvYK7tVDTN9tr5Z70
SufsSAVyvuw+KImG8FTPjookkfmOP84Zcg/cWni/c0bi3Hjgu7IQM4AKRQBBHrOy
63R0afcXL15AY8UWSKe8HGvJ1wWskeTWxnelPHn2qTwOpDS9JHu/6wPFtiBrMODL
7h1x2SRVHcObrHCxgWS7bRpII65/IcBzEoYbrQ3O2KCpSE3wHYW+s7HE9rquXclG
NE4si35k3A6gKat3CKXLAju4k+dMt2zp/mA26CIbyWvl0nFBIdJVqrpnQzd9C+z4
SE+D5PVzuFshJpGtHYLWfmqr9BE7n1tbMlc8E+KyVWvTqkHwdwAHJ2ljzmWHQZiO
uIIbJXndickkGv8ptEAZBRUt+L48wozHUgPgP3a8jAkKy9lcNCo=
=zfYz
-----END PGP SIGNATURE-----

--tifcl2iktws4dlia--


--===============1540906546==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1540906546==--

