Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A4A62B55E
	for <lists+spice-devel@lfdr.de>; Wed, 16 Nov 2022 09:37:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E20D10E435;
	Wed, 16 Nov 2022 08:37:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D44CC10E435
 for <spice-devel@lists.freedesktop.org>; Wed, 16 Nov 2022 08:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1668587859;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=uQM5xrdbXctkM8HlbRi+IYUP90Z7t/Sqel/TUGVR+D0=;
 b=CORmkAZBTKsq8xkKvpJjVPiI007VryBTE6S5sUklqbHyJxP8JqGv7RDEw3QTahuHvyK+sG
 aIRz08rVtr+cpyy5k2BHiOPFakbTn6hm6VK+/n8+z9C6cDDaFW3SwCn+W8vHXgHFyo//0c
 r4J+jnh9iW67hgAQ6mGzf645rAZmTkE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-261-_qpkp9yXOl27yfQtUIbGCA-1; Wed, 16 Nov 2022 03:37:35 -0500
X-MC-Unique: _qpkp9yXOl27yfQtUIbGCA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 306DD85A59D;
 Wed, 16 Nov 2022 08:37:35 +0000 (UTC)
Received: from localhost (ovpn-192-9.brq.redhat.com [10.40.192.9])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D29B0492B05;
 Wed, 16 Nov 2022 08:37:34 +0000 (UTC)
Date: Wed, 16 Nov 2022 09:37:33 +0100
From: Victor Toso <victortoso@redhat.com>
To: Stefan Silberstein <linuxstony@gmail.com>
Message-ID: <20221116083733.yal5hdblbefrewjj@tapioca>
References: <CADiWsK9fxPnCdAYUek0nkWgY476-svZ78d=Pqm_RQoV4FfCSKA@mail.gmail.com>
 <20221116082102.uasas3k4whcjcbqv@tapioca>
 <CADiWsK-Mv1rR8yWmaSfYp5d9kU9tfrSqkvC_zor9hKYhA51+CA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="ohcyglaaxuyjtnj6"
Content-Disposition: inline
In-Reply-To: <CADiWsK-Mv1rR8yWmaSfYp5d9kU9tfrSqkvC_zor9hKYhA51+CA@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
Subject: Re: [Spice-devel] Userquestion - remote-viewer connection fails
 with "Connection type could not be determined by URI"
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


--ohcyglaaxuyjtnj6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 16, 2022 at 09:27:21AM +0100, Stefan Silberstein wrote:
> I appreciate the time to answer me.
>
> In the meantime (out of desperation because i needed the virtualmachine f=
or
> work) I gave it a go with specifying root as user and not the servers
> username "server".
>
> I was able to connect to the virtual Windows10 installation with
>
> remote-viewer spice://root@192.168.178.51:5900

Cool

> But again - then I dont unterstand why it worked as user and
> later on with specifying the user later on (which doesn't work
> right now anymore)
>
> So it is a permissions problem on my side and I successfully
> wasted your time. :/
>
> Sorry about that.

Don't worry about that. Happy to hear it worked.

>
> This happens when "users" try to play with the big boys toys :D
>
> Have a nice day you all and thanks for your time.

You too.
Cheers,

>
> Stefan
>=20
> Am Mi., 16. Nov. 2022 um 09:21 Uhr schrieb Victor Toso <
> victortoso@redhat.com>:
>=20
> > Hi Stefan,
> >
> > On Tue, Nov 15, 2022 at 09:53:05PM +0100, Stefan Silberstein wrote:
> > > Hello developers,
> > >
> > > I can imagine that this will be an annoying question for you -
> > > so I apologize in advance.
> > >
> > > I am a user - with a longer history with linux BUT i am
> > > completely new to virtualization.
> > > Due to the fact that I got a server donated to me I wanted to
> > > give it a go and it worked like a charm.
> > >
> > > Installed virt-manager, installed Windows10  connected with
> > > virt-manager - absolutely no problem.
> > >
> > > Due to the fact that I need dual monitors I learned that I
> > > could add another display and connect with spice - and it
> > > worked immediately.
> > >
> > > BUT - without me changing anything (consciously) I wasn't able
> > > to connect to the virtual machine the next week.
> > >
> > > It refuses with "Verbindungstyp konnte nicht von URI ermittelt werden"
> > > (Connection type could not be determined by URI)
> > >
> > > Then i tried to connect with sudo and specifying the user in
> > > the command line and it once again connected:
> > >
> > > sudo remote-viewer  spice:=E2=81=84=E2=81=84server@192.168.178.51:5900
> >
> > Perhaps the URL is the problem. If the IP is 192.168.178.51 and
> > the port for the VM is 5900, then try
> >
> >     remote-viewer spice://192.168.178.51:5900
> >
> > If server is a dns that can be resolved, should be fine to use it
> > instead of ip address
> >
> >     remote-viewer spice://server:5900
> >
> >
> > > And now - again without changing anything - it doesn't connect
> > > with that command as well.
> > >
> > > I have sadly NO clue whatsoever where to even search for a
> > > solution - the internet didn't help me here...
> > >
> > > Do you have any hint at all what I might do wrong here?
> > >
> > > The machine is available - the port is open and visible
> > > PORT     STATE SERVICE
> > > 22/tcp   open  ssh
> > > 80/tcp   open  http
> > > 3389/tcp open  ms-wbt-server
> > > 5900/tcp open  vnc
> > >
> > > ufw on the server is shut down.
> > >
> > > ANY help would be greatly appreciated.
> >
> > You can get more verbose information of issues with --spice-debug
> > command line option too.
> >
> > Cheers,
> > Victor
> >

--ohcyglaaxuyjtnj6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmN0oU0ACgkQl9kSPeN6
SE9EmRAAlfLNU99OysbUIDfPq7GqaeLNaREwMswoxY6VQhcBXdtWqNm344ytSpqe
vhphl1SXCRej5X/W664TgCAa/39/6UIW1bWkv09B8dKnQPQVeiSIdT+iWYEhOHmY
y3TAqyUBSs1LKoXYsZvtV1nvCTPfEzxv2rFkwBNQyCkU+dcEugv1i86zhPF+TLvL
f4QFU87d4Bk4FUY91GFBip3pJKQSCnRpKVX2V7pKl2xn3fWN0bHOT2mqDcRpi05W
YI8WZdJX7AKEZ9ybJwu+lmCbiaFUCmeto0ABViYNuwZfVhGf5dhyPM80zWr3RZQv
CRXqYCS3naf7tTtM+/GJgqMln7TUPwpPWsdviVV4ueAxox81yawD0KnIA03y2Q7g
hAIHJ3ukymzeiHfr+2WvQslNZ93pYE/M94iW0924RMylVqvHs/3qL2PtrNIrtxNe
DQDpAa6L60pgT5itCSTbu6beJKkXd3QURK3/jgvj1Oi+GqEmsKkhqWik130fF9ly
JPXkuXzfTsZLYdK3zR7Ha9kivfWX8iV6cqYcYAbmTq2WcBZWDwkY6ZcLX68RWdfR
crpvOl40IW99YIkzGy0BiA80mrDDb+JpVuJioNnkOc2l4MrsLUmo1unnTkcS7f+o
agv7c0CyDL9Keqn6P3veU9Ogv9I/5u6B0h5UWlw+rmC2YGiWPmk=
=V13c
-----END PGP SIGNATURE-----

--ohcyglaaxuyjtnj6--

