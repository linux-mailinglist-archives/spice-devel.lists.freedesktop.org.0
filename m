Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9751765788
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 15:01:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 146476E227;
	Thu, 11 Jul 2019 13:01:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9A946E227
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:01:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 74E03C047B7A
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:01:39 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 200D560BFC;
 Thu, 11 Jul 2019 13:01:38 +0000 (UTC)
Date: Thu, 11 Jul 2019 15:01:38 +0200
From: Victor Toso <victortoso@redhat.com>
To: Jakub Janku <jjanku@redhat.com>
Message-ID: <20190711130138.7flguzaue455unr3@wingsuit>
References: <20190626080222.8434-1-jjanku@redhat.com>
 <36729848.24945003.1561623044903.JavaMail.zimbra@redhat.com>
 <CAH=CeiDWC9p0RVA2TKLwn_zxhHmzJ3KOg1yMihdjhbP4wnVapA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAH=CeiDWC9p0RVA2TKLwn_zxhHmzJ3KOg1yMihdjhbP4wnVapA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Thu, 11 Jul 2019 13:01:39 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] spice-channel: return if
 has_error is TRUE in spice_channel_write_msg
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1594949295=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1594949295==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="txwv6yigzhk3coyu"
Content-Disposition: inline


--txwv6yigzhk3coyu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jun 27, 2019 at 02:27:57PM +0200, Jakub Janku wrote:
> Hi,
>=20
> On Thu, Jun 27, 2019 at 10:10 AM Frediano Ziglio <fziglio@redhat.com> wro=
te:
> >
> > >
> > > Avoid linearizing if the message isn't written out anyway
> >
> > "linearizing" ? What do you mean about that?
> > Looking at definitions it seems not correct to me.
>=20
> I was simply referring to the spice_marshaller_linearize() call.
> >
> > > (spice_channel_flush_wire checks() this condition as well).
> > >
> > > This also silences the following error:
> > >
> > >     (spicy:32087): GSpice-CRITICAL **: 16:22:03.147:
> > >     spice_session_get_read_only: assertion 'SPICE_IS_SESSION(self)' f=
ailed
> > >
> > > that can be seen if the channel gets disconnected
> > > by the session while having non-empty write queue.
> > >
> > > spice_session_channel_destroy() sets channel->priv->session to NULL,
> > > but spice_channel_write_msg() subsequently attempts to call
> > > spice_session_get_read_only() with NULL pointer.

Right, after spice_channel_disconnect() we shouldn't try to
read/write anymore indeed. As spice_session_channel_destroy()
sets c->has_error =3D TRUE, I think this match is almost fine.

> > Minor: this is the explanation why the error on the previous
> > paragraph should not be treated like an error, I think it should
> > be the same paragraphs.
>=20
> Makes sense.
> >
> > OT: maybe channel session should never be NULL?
>=20
> It indeed does seem weird that
> g_clear_object(&channel->priv->session); is called when the
> "spice-session" property of the channel is G_PARAM_CONSTRUCT_ONLY --
> with this flag, I would expect the property to not change after the
> construction.

If I'm not reading it wrong, this only happens on
spice_channel_dispose() which means we shouldn't be relying on
this object at this point.
=20
> Spice session waits for the channel destruction anyway
> (channel_finally_destroyed callback), so it should be imho fine that
> the channel holds a reference to the session while it is being
> destroyed. So I think we could remove that
> g_clear_object(&channel->priv->session); call in
> spice_session_channel_destroy().

Maybe moving to spice_channel_finalize() would already be enough
if you really need to postpone this but I don't see why allow
using priv->session while we are disposing the resources of the
channel already.

> >
> > > Signed-off-by: Jakub Jank=C5=AF <jjanku@redhat.com>
> > > ---
> > >  src/spice-channel.c | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > >
> > > diff --git a/src/spice-channel.c b/src/spice-channel.c
> > > index 61de177..aa80edf 100644
> > > --- a/src/spice-channel.c
> > > +++ b/src/spice-channel.c
> > > @@ -897,6 +897,11 @@ static void spice_channel_write_msg(SpiceChannel
> > > *channel, SpiceMsgOut *out)
> > >      g_return_if_fail(out !=3D NULL);
> > >      g_return_if_fail(channel =3D=3D out->channel);
> > >
> > > +    if (channel->priv->has_error) {
> > > +        spice_msg_out_unref(out);
> > > +        return;
> > > +    }

I'm thinking that it might actually be a programming error that
we are calling _write_msg() after channel_disconnect is called,
so a warning might be welcomed?=20

Not sure of a different fix; how easy is to reproduce this?

Cheers,
Victor

> > > +
> > >      if (out->ro_check &&
> > >          spice_channel_get_read_only(channel)) {
> > >          g_warning("Try to send message while read-only. Please repor=
t a
> > >          bug.");
> >
> > Frediano
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--txwv6yigzhk3coyu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0nMzIACgkQl9kSPeN6
SE84gw//RPsVMUY93GvgQUOtMPGcdj3XrqD7dBn01cf3RtP2NzUWDOR03MnROUP9
1we5OyqWIcx6YC6KaYfBIlSdu4FBjMHl5JejAW9OiLrL2dWECNF2H9kPjUbU3lkv
B7BHBjpDRQoA8PAlQ5QHQ95R0oVO4IPubUL5AMX0uwxqHxkw5r1KiohJ71VNE6lf
Yog43WBdNx/fULCxxJVImD5UNy2gPIT3gBOm1u1xatU3P9bx8XI5uyvR07KRP6B1
mP0NpKBVKJRnJOpOSauQhDk/vaTAbNq7ACFfLM8qCM4QSSKt949bvXmWe0g864yR
hVl6FqIBk7cF3JD7LQqwnRrU1ZPm43TkmoKPPy2cbGjlwpX1bmUY3GkJq4/JnfRl
S/sNLN+hRaQjR90RM8wxISYUnQ6bnE27L3A4fOywMt+QSXdk/rwB8q4A2V+4GfSj
uJ1P4kK4lxliktosoDT7R+2lE2HypUMqNHQ6NmWYRxE7cfJkhok1YquHMU+JgdXH
Nx7oZ7eqT0D+fQeQTVbY9NM+VaEhZZsBXvZmidLGyjPJ6/NIRTP6VFLFNW38FE24
3p2BEIRXSUuS11CjsFrOX4UA8FB3n0r1sMT6cFnhYaiIzH0FGmf9tm7awiqjZqtc
UZ9i92p99wagln/kl7nCybUKfvpiXGdxKVa5WBVpIbnezeLbktg=
=Z/NT
-----END PGP SIGNATURE-----

--txwv6yigzhk3coyu--

--===============1594949295==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1594949295==--
