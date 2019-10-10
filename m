Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF376D26DD
	for <lists+spice-devel@lfdr.de>; Thu, 10 Oct 2019 12:02:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 377276E34C;
	Thu, 10 Oct 2019 10:02:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8BDA6E364
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 10:02:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2500481F11
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 10:02:05 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C336E600F8;
 Thu, 10 Oct 2019 10:02:04 +0000 (UTC)
Date: Thu, 10 Oct 2019 12:02:04 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191010100204.vinoelqd2zyy42ys@wingsuit>
References: <20191010093145.20097-1-victortoso@redhat.com>
 <1315851643.6241767.1570700919020.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1315851643.6241767.1570700919020.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Thu, 10 Oct 2019 10:02:05 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk] main: abort previous migration on
 switch-host message
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0042663699=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0042663699==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zxro5yrnx7ybaziu"
Content-Disposition: inline


--zxro5yrnx7ybaziu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Oct 10, 2019 at 05:48:39AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > In the host, it is possible that the migration goes faster than
> > client side would expect. In case we receive a migrate-begin message
> > followed by switch-host message, we should be sure to abort previous
>=20
> Aren't these message exclusives? Is there a bug in the server?

I thought for a while on it and I don't think the server needs a
patch. I have one that fixes the issue there, it sends a
migrate-cancel before switch-host and client would cancel
migration + swap connection as well. But I don't think that a
migrate-cancel is a must as intention really is to change host.

So, migrate-begin + migrate-end is the normal in semi-seamless,
if it happens too quick (for the client) it might happen a
migrate-begin + migrate-switch-host without migrate-end and if it
happens that client sent the msgc-migrated-connected reply, it
will get a migrate-cancel too.

There are quite a few possibilities but I don't think they would
happen in real use case scenarios as migration takes some time.

> > migration to avoid keeping some unused objects in memory plus
> > critical messages in subsequent migrations as below:
> >=20
> >  > GSpice-CRITICAL **: spice_session_set_migration_session:
> >  > assertion 'session->priv->migration =3D=3D NULL' failed
> >=20
> > Found by testing with spice/tests/migraton.py without QCOW image.
> >=20
>=20
> Do you mean tests/migrate.py ? I don't have spice/tests/migraton.py
> (not even spice/tests/migration.py)

Yes, migrate.py.

>=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > ---
> >  src/channel-main.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >=20
> > diff --git a/src/channel-main.c b/src/channel-main.c
> > index 4305dcd..4afaa3f 100644
> > --- a/src/channel-main.c
> > +++ b/src/channel-main.c
> > @@ -2506,6 +2506,11 @@ static void
> > main_handle_migrate_switch_host(SpiceChannel *channel, SpiceMsgIn *i
> >      }
> > =20
> >      session =3D spice_channel_get_session(channel);
> > +    /* It is possible that we were migrating before receiving the
> > switch-host
> > +     * message without receiving a migrate-cancel message. Simply canc=
el
> > +     * previous migration before switching host */
> > +    spice_session_abort_migration(session);
> > +
> >      spice_session_set_migration_state(session,
> >      SPICE_SESSION_MIGRATION_SWITCHING);
> >      g_object_set(session,
> >                   "host", host,
>=20
> Patch seems fine.
> Is the migration seamless or not?

I did both ways, critical would appear in both and patch fixes
both. Should I sent a v2 with commit log fix?

Cheers,

--zxro5yrnx7ybaziu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2fAZsACgkQl9kSPeN6
SE8xQBAAifrCNaHc4kiRMEbqFfGJaZRaw57jvDa7i5knFfoZCjGZfGbO62qz+B31
x3Q92Wr21tIMGNcp7NmAZ67n/qNkulrLmvSH1NI1SD7jPysAiebMqNqDpsugV81s
UkSZEGE5HaSLsoAfbjcE+4kqjd84XZnMFc/dWojBUnqyzQA0FPuq4vxTy/EgZRJd
KJONhApAzyjc20hAmUwiE3LEklZTT0h9DnxSLTsMm5zAzlPOHiV6Uy5d54X1cIv8
GFveor8c5vbLJIeUIZs+N2M0pPPRDtu1JXQVaYk90vMDKNVmpCcAnOhAjxJa1lgp
ym8399I63mq3RGT/sByD57ZQJXvwk9n7Hq7ofVLfP5RYgxzpjg88pOlOpUys7iMa
etrY+sZ+G6LdlOHwl0yTRmwtx4+9nuZQWebKMFncgmuEM/n8wCa5nuT94Vv6ixhc
RV/1tqwDuM2EHY9tCn8TCpe/pbrAaU55ixG8HjLasX34ZvWetHK11n/D/q0PAB5n
vwe80yqYiJwa44WwPbpS/WRgnyP8f1pIeINoEv5wEBqjtpjXmb3CrlWnEzV9Faet
yJ7ii2P7dgoLTqlK3aWvK/sxSN/RJe2USeZedPB+WJzaU66tbQjxKU2G/6ZQFihm
HjWZuaFhtT1jSBn2zHt5qDM9wbSGqNCMfKuXosgctoZ2gQGtWpE=
=FpAj
-----END PGP SIGNATURE-----

--zxro5yrnx7ybaziu--

--===============0042663699==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0042663699==--
