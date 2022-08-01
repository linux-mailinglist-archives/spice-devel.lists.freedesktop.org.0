Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17213586CE6
	for <lists+spice-devel@lfdr.de>; Mon,  1 Aug 2022 16:33:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9A50CCB0E;
	Mon,  1 Aug 2022 14:31:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6130C8294
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Aug 2022 14:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1659363186;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5U5d3xsjo46mQDV0/PHKnbiERWp6wF92+xnhc7Ws8gw=;
 b=FTIeW/CX5ysFr+lkMo3NNn4GWMbe2KR1wIBUI5UVnRCw3QwbCIBz48MOkXCtqpnq/hXcnq
 8wWNeivRsFRIDMIp4dw9X5QSyKu+ry6ONPHP8uCPDzgLgZm5ZHEkeoeRw+RSuhPFmxrsuc
 L7etiLoCgwC84N80BNobuIfEFjxyoDY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-175-SwzjV-jYOSa1Ma3t5W-jwg-1; Mon, 01 Aug 2022 10:13:03 -0400
X-MC-Unique: SwzjV-jYOSa1Ma3t5W-jwg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EF17029AB3E4;
 Mon,  1 Aug 2022 14:13:02 +0000 (UTC)
Received: from localhost (unknown [10.40.195.30])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 866852166B2A;
 Mon,  1 Aug 2022 14:13:02 +0000 (UTC)
Date: Mon, 1 Aug 2022 16:13:01 +0200
From: Victor Toso <victortoso@redhat.com>
To: James Miller <jamesstewartmiller@gmail.com>
Message-ID: <20220801141301.mmhoqwopvpdne54e@tapioca>
References: <CAKJvYZHs-ZZHq0py8BT5ae=EMUdghywz5WzNvuZzTYKvc5cJWA@mail.gmail.com>
 <20220729094755.nlyc3mn2hkvxg42y@tapioca>
 <CAKJvYZFznkEwgT+dOhD3Wazbe4G21DaCu3027JVP3z3dtOis7A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="ppx2jej7tgeao62r"
Content-Disposition: inline
In-Reply-To: <CAKJvYZFznkEwgT+dOhD3Wazbe4G21DaCu3027JVP3z3dtOis7A@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Subject: Re: [Spice-devel] irc
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
Cc: spice-devel@lists.freedesktop.org, Hans de Goede <hdegoede@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--ppx2jej7tgeao62r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

CC'ing the list and Hans.

On Sat, Jul 30, 2022 at 02:55:53PM +0100, James Miller wrote:
> Hi Victor, thanks for getting back to me.
> Currently I have to echo 0 to the path under sys, and then
> manually select the device to redirect in virtmanager and then
> return to the terminal on the host and echo 1 to the same path.

Ah, okay, so it is a three-step process: echo 0 to $path, then
SPICE redirection, then echo 1 $path....  if you want to do it
for several VMs for example, it should be very annoying.

> I don't mind this so much, but I have added the alias to the
> fedora help page on yubikeys, and was wondering if there is any
> programmatic way of achieving the redirection in the alias
> itself.  ie the alias would echo 0, handle the redirection, and
> then echo 1...

I don't have such device to test but I wonder why that is needed
at all. What is the path you have to echo? Perhaps that can be
achievable in a different way with with libusb or some specific
driver's config that will get called when SPICE's redirection
takes place.

Hans, have you tried this kind of device before?

> I wondered if spice exposed a useful set of commands to achieve
> this with, perhaps via the spice-vdagentd socket... (I
> obviously know virtually nothing about how spice works...)...

No, no API like that is exposed because for the set of devices
we redirect, it isn't needed. Let's see if we can workaround this
in the client OS first (e.g: configs) otherwise we can think
something in spice-gtk (probably QEMU too if you try to usb
pass through?)

Cheers,
Victor

> On Fri, 29 Jul 2022, 10:48 Victor Toso, <victortoso@redhat.com> wrote:
>
> > Hi,
> >
> > On Fri, Jul 29, 2022 at 09:56:21AM +0100, James Miller wrote:
> > > Hi,  I wonder if the irc address on the website contact page (
> > > https://www.spice-space.org/contact.html) needs updating?
> > >
> > > I can't find irc.gnome.org - I think they now use matrix.
> > >
> > > I want to know if there is anyway to manage usb-redirection
> > > to a libvirt kvm vm from the command line.  In particular,
> > > I want to redirect a usb key (yubikey) to the virt-manager
> > > managed vm, from the command line, as I need to deauthorise
> > > the key (echoing 0 to a file under a path below sys) before
> > > redirecting it.
> >
> > Ah, interesting, never tried this kind of device.
> >
> > Wouldn't it simply work if you do echo 0 and the do the
> > redirection with virt-manager or remote-viewer's UI?
> >
> > Cheers,
> > Victor

--ppx2jej7tgeao62r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmLn320ACgkQl9kSPeN6
SE8PMA//YADyC9wzV0mmyLHK1YCHKJld1lBIPmtfcnMWBFQ1do+euMYH9fyco5yz
YLtqa5L77NplfkT5md3IpQ+I8v/gApC3EjSF/pOscvcP32uZWJ9/nzcV4zY5uehg
W2p3HQwJo4Q+dgdbU9lAR4Q8ak/tvUfcjTOq7pe5EGxb6Pfi88qxgYlYLj+9q3Ff
xR8HZXU/5Ga5Cft7mSxhrk0PPp85XVhPxjBp/FeeSck7NErCOTgq/WE8ExA1yXI+
G/0Bm0eE2QdSCmyiug+jbyttvrhGtKTqPq30sH1J6jEAbczR3qbcGWuxfsniYhY/
q4eIT2rQ7ZxmNytAQ+JCpTvA2+Ppa59Aff3dJ+BmoCyHbzBrSYMliwvX2ir4x8NC
2FwelIS+aFJkF21PzOREDdZt31GYxS1vXXCs+AQzB7R1E4YVEwwACZeIjtsJtZGN
OM2gJMTBqX785j+IATCpf9ZG5dfSjZtUZqkY8ou/ftX7JB3AM2BLZhRMD4a7J8rn
S/RWfHZC0J7QT0Erb5PbywWRtKjXWzYFjlTXH0Vh7+XjWF1dTQ5Jpdmbgynu247g
hhhiADJsgOE0Uz7N/ZI6LxYDCJdRA0Ndo/N7y1s+lXmfaIdW2+TmtilOq5anRLYu
ukVSpZUv91pPd832UMg473yk3cUUy1iicSpioe0ZU2Ig27DunMY=
=GyK0
-----END PGP SIGNATURE-----

--ppx2jej7tgeao62r--

