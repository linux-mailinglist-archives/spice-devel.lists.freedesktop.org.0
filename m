Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 675199A97A
	for <lists+spice-devel@lfdr.de>; Fri, 23 Aug 2019 09:59:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCFC06EBDC;
	Fri, 23 Aug 2019 07:59:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 341E46EBDC
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 07:59:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9C5D230832DA;
 Fri, 23 Aug 2019 07:59:54 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 489CD6CE63;
 Fri, 23 Aug 2019 07:59:54 +0000 (UTC)
Date: Fri, 23 Aug 2019 09:59:53 +0200
From: Victor Toso <victortoso@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <20190823075953.wzfea5itcxpecppz@wingsuit>
References: <20190812095729.32692-1-yuri.benditovich@daynix.com>
 <20190812095729.32692-6-yuri.benditovich@daynix.com>
 <1409051095.5635285.1565697543164.JavaMail.zimbra@redhat.com>
 <CAOEp5OdBZ-spO4jKoP6vLFnX6QjK8iM+caF9LyF4-mWubzNWYQ@mail.gmail.com>
 <476222235.8198018.1566456967244.JavaMail.zimbra@redhat.com>
 <CAOEp5OeoY_8bD1pFzeve8tkF4kbdTMToyJX62T8vi_7enoOnvw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOEp5OeoY_8bD1pFzeve8tkF4kbdTMToyJX62T8vi_7enoOnvw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Fri, 23 Aug 2019 07:59:54 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v3 5/9] usb-redir: extend USB backend
 to support emulated devices
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1914112955=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1914112955==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jkvx63uxo4z2b73a"
Content-Disposition: inline


--jkvx63uxo4z2b73a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2019 at 11:27:19AM +0300, Yuri Benditovich wrote:
> On Thu, Aug 22, 2019 at 9:56 AM Frediano Ziglio <fziglio@redhat.com> wrot=
e:
> > > On Tue, Aug 13, 2019 at 2:59 PM Frediano Ziglio <fziglio@redhat.com> =
wrote:
> > > > > +        ch->parser =3D ch->hidden_parser;
> > > > > +        usbredirparser_do_write(ch->parser);
> > > > >      }
> > > > >  }
> > > > >
> > > > > @@ -807,12 +1347,16 @@ void
> > > > > spice_usb_backend_channel_delete(SpiceUsbBackendChannel *ch)
> > > > >      if (!ch) {
> > > > >          return;
> > > > >      }
> > > > > -    if (ch->usbredirhost) {
> > > > > -        usbredirhost_close(ch->usbredirhost);
> > > > > +    if (ch->hidden_host) {
> > > > > +        usbredirhost_close(ch->hidden_host);
> > > > > +    }

It was usbredirhost, now it is hidden_host /* Preparatory comment :) */

> > > > > +    if (ch->hidden_parser) {
> > > > > +        usbredirparser_destroy(ch->hidden_parser);

A new thing, hidden_parser /* Preparatory comment :) */

> > > > >      }
> > > > >
> > > > >      if (ch->rules) {
> > > > > -        g_free(ch->rules);
> > > > > +        /* rules were allocated by usbredirparser */
> > > > > +        free(ch->rules);

Rules no more g_free, now is free /* Preparatory comment :) */

> > > >
> > > > Minor :I suppose this small change can go to a preliminary patch too
> > >
> > > This code was here before, but it was never used as ch->rules was
> > > never assigned.
> >
> > yes
> >
> > > Honestly I do not understand what this "preliminary patch"
> > > should contain and what it is good for.
> >
> > I don't think is a good idea to add code with multiple logic
> > for the same condition. Currently most of the code assume usb
> > context is valid, I would go in a single direction, not
> > adding additional code with 2 different login about it.
>=20
> I still do not understand what is 'preliminary patch', what it
> should contain and why it is good to have it.

If we say "preparatory patch" would make it clear for you? The
goal is to review faster, that's what you want, I'm sure of it.
Break it down as much as you can and we can check it and learn
=66rom it easier.

To proper reply your questions so this will not extend:

> what it should contain

If code existed and you can change it before adding more code,
that's what it should be the content.

> why it is good to have it

To have fewer discussions on possible regressions, too big
patches and if a change is really needed or not - this should be
valid enough reason.

Amazes me a little that it takes 4 iterations, possible more yet,
for a single line of review with the keywords "Minor" + "can go"
+ "preliminary patch".=20

Could you please split or do you have an actual reason not to?

Btw, really happy with Frediano's review, many thanks!

--jkvx63uxo4z2b73a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1fnPkACgkQl9kSPeN6
SE95pxAArpzdpm2ck6EMWyIX4qdZKbhK2XANeMAAxT8wDAwjpU7oLmYlnKPz2mcQ
5udnSiTPBFsnOBi5Gp3W+fZP7Gk9G1+HC3QP5BDFjW7+5q2073mBgcQ1zKNgPwwG
SOFJGX+S5FuA830FVhrEiWh+qfBb1vlpq4iZn3SQB1sfGPXzVRKgAc3LbM7D4Git
wqWRUc/l+Z1L6Gi6Ytek+h54LZhMgZ485AE5O2xPHQavATiJaUFEQL6+Q5PeXz8d
e/7alv0X9m6Q9yjuwMqtsj67ekTHi+SzdASqOvZjxl4/qSuv44NeIYfk+nKZ3yGR
EAOju9iE90/2fgpUw4xlNznJLO02h4O86KMZddhDFtaSB3XOu36BoQ5qOy7hDhcg
fDCXoMDDxzhbUMYpeBnNrbOYuTe0vkbGJI0M+j+5bdAp0Qibi2+WIvI5xRFTqAUJ
QO/lFK2NxqAKwCPzLQ9CV10Liu5fuTJMrRBiYqLBsJ3b+2QRZerqlWkJXWq2ce32
ISyXF6AT1qo3lwDyDTuCkbigwX2b/Jk4xXQ6Ekgt8zL92ToDO9bXi18+FANt1p5Y
q6Rylwo3R26cUBxoJs2KJ6KS01bmW8yz2At8da5ZeY5wIXzOvD9IRQTBJUn6LYNI
oIoUC0i0BNLi/hZ99vqEjSBS3SEqI0mnx9CGAekS6RteDSTnAbg=
=elto
-----END PGP SIGNATURE-----

--jkvx63uxo4z2b73a--

--===============1914112955==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1914112955==--
