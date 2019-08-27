Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3370C9E81C
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 14:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1890989762;
	Tue, 27 Aug 2019 12:38:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 350A189762
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:38:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B75E1308339B
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 12:38:57 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5B95F6060D;
 Tue, 27 Aug 2019 12:38:57 +0000 (UTC)
Date: Tue, 27 Aug 2019 14:38:56 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827123856.yz3hg4pp32b2wz4a@wingsuit>
References: <20190827101358.18435-1-victortoso@redhat.com>
 <20190827101358.18435-2-victortoso@redhat.com>
 <1446986129.9359924.1566901763265.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1446986129.9359924.1566901763265.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Tue, 27 Aug 2019 12:38:57 +0000 (UTC)
Subject: Re: [Spice-devel] [linux/vd_agent v1 2/2] covscan: avoid false
 positive on g_clear_pointer()
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
Content-Type: multipart/mixed; boundary="===============1408175289=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1408175289==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ek4vrow3qnzvbq7k"
Content-Disposition: inline


--ek4vrow3qnzvbq7k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2019 at 06:29:23AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > This is a CLANG_WARNING found by covscan. It is a false positive as
> > g_clear_pointer() does set vportp to NULL, meaning that the situation
> > described by covscan below should not be reached. Moving away from
> > g_clear_pointer() in this specific case just to make our tool happy.
> >=20
> > Covscan report:
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:458:9: warning: Use =
of
> >  > memory after it is freed
> >  > #    if (wbuf->write_pos !=3D wbuf->size) {
> >  > #        ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:268:12: note: Assumi=
ng the
> >  > condition is true
> >  > #    while (*vportp && (*vportp)->write_buf)
> >  > #           ^~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:268:12: note: Left s=
ide of
> >  > '&&' is true
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:268:5: note: Loop
> >  > condition is true.  Entering loop body
> >  > #    while (*vportp && (*vportp)->write_buf)
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:269:9: note: Calling
> >  > 'vdagent_virtio_port_do_write'
> >  > #        vdagent_virtio_port_do_write(vportp);
> >  > #        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:453:5: note: Taking =
false
> >  > branch
> >  > #    if (!wbuf) {
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:458:9: note: Assumin=
g the
> >  > condition is false
> >  > #    if (wbuf->write_pos !=3D wbuf->size) {
> >  > #        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:458:5: note: Taking =
false
> >  > branch
> >  > #    if (wbuf->write_pos !=3D wbuf->size) {
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:465:9: note: Assumin=
g 'n'
> >  > is < 0
> >  > #    if (n < 0) {
> >  > #        ^~~~~
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:465:5: note: Taking =
true
> >  > branch
> >  > #    if (n < 0) {
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:466:13: note: Assumi=
ng the
> >  > condition is false
> >  > #        if (errno =3D=3D EINTR)
> >  > #            ^~~~~~~~~~~~~~
> >  > /usr/include/errno.h:38:16: note: expanded from macro 'errno'
> >  > ## define errno (*__errno_location ())
> >  > #               ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:466:9: note: Taking =
false
> >  > branch
> >  > #        if (errno =3D=3D EINTR)
> >  > #        ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:469:9: note: Calling
> >  > 'vdagent_virtio_port_destroy'
> >  > #        vdagent_virtio_port_destroy(vportp);
> >  > #        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:130:5: note: Taking =
false
> >  > branch
> >  > #    if (!vport)
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:133:9: note: Assumin=
g the
> >  > condition is false
> >  > #    if (vport->disconnect_callback)
> >  > #        ^~~~~~~~~~~~~~~~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:133:5: note: Taking =
false
> >  > branch
> >  > #    if (vport->disconnect_callback)
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:137:5: note: Loop
> >  > condition is true.  Entering loop body
> >  > #    while (wbuf) {
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:140:9: note: Memory =
is
> >  > released
> >  > #        g_free(wbuf);
> >  > #        ^~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:137:5: note: Loop
> >  > condition is false. Execution continues on line 144
> >  > #    while (wbuf) {
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:144:5: note: Loop
> >  > condition is true.  Entering loop body
> >  > #    for (i =3D 0; i < VDP_END_PORT; i++) {
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:144:5: note: Loop
> >  > condition is true.  Entering loop body
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:144:5: note: Loop
> >  > condition is true.  Entering loop body
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:144:5: note: Loop
> >  > condition is false. Execution continues on line 148
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:149:5: note: Assumin=
g '_p'
> >  > is null
> >  > #    g_clear_pointer(vportp, g_free);
> >  > #    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >  > /usr/include/glib-2.0/glib/gmem.h:124:9: note: expanded from macro
> >  > 'g_clear_pointer'
> >  > #    if (_p)
> >  > \
> >  > #        ^~
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:149:5: note: Taking =
false
> >  > branch
> >  > /usr/include/glib-2.0/glib/gmem.h:124:5: note: expanded from macro
> >  > 'g_clear_pointer'
> >  > #    if (_p)
> >  > \
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:149:5: note: Loop
> >  > condition is false.  Exiting loop
> >  > /usr/include/glib-2.0/glib/gmem.h:114:3: note: expanded from macro
> >  > 'g_clear_pointer'
> >  > #  G_STMT_START {
> >  > \
> >  > #  ^
> >  > /usr/include/glib-2.0/glib/gmacros.h:346:23: note: expanded from mac=
ro
> >  > 'G_STMT_START'
> >  > ##define G_STMT_START  do
> >  > #                      ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:469:9: note: Returni=
ng;
> >  > memory was released
> >  > #        vdagent_virtio_port_destroy(vportp);
> >  > #        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:269:9: note: Returni=
ng;
> >  > memory was released
> >  > #        vdagent_virtio_port_do_write(vportp);
> >  > #        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:268:12: note: Left s=
ide of
> >  > '&&' is true
> >  > #    while (*vportp && (*vportp)->write_buf)
> >  > #           ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:268:5: note: Loop
> >  > condition is true.  Entering loop body
> >  > #    while (*vportp && (*vportp)->write_buf)
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:269:9: note: Calling
> >  > 'vdagent_virtio_port_do_write'
> >  > #        vdagent_virtio_port_do_write(vportp);
> >  > #        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:453:5: note: Taking =
false
> >  > branch
> >  > #    if (!wbuf) {
> >  > #    ^
> >  > spice-vdagent-0.19.0/src/vdagentd/virtio-port.c:458:9: note: Use of =
memory
> >  > after it is freed
> >  > #    if (wbuf->write_pos !=3D wbuf->size) {
> >  > #        ^~~~~~~~~~~~~~~
> >  > #  456|       }
> >  > #  457|
> >  > #  458|->     if (wbuf->write_pos !=3D wbuf->size) {
> >  > #  459|           syslog(LOG_ERR, "do_write: buffer is incomplete!!"=
);
> >  > #  460|           return;
> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
> > ---
> >  src/vdagentd/virtio-port.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/src/vdagentd/virtio-port.c b/src/vdagentd/virtio-port.c
> > index b0556ce..3ae7f22 100644
> > --- a/src/vdagentd/virtio-port.c
> > +++ b/src/vdagentd/virtio-port.c
> > @@ -146,7 +146,8 @@ void vdagent_virtio_port_destroy(struct
> > vdagent_virtio_port **vportp)
> >      }
> > =20
> >      close(vport->fd);
> > -    g_clear_pointer(vportp, g_free);
> > +    g_free(vport);
> > +    *vportp =3D NULL;
> >  }
> > =20
> >  int vdagent_virtio_port_fill_fds(struct vdagent_virtio_port *vport,
>=20
> Acked.
> Probably clang is not able to understand the alias.

Thanks,

--ek4vrow3qnzvbq7k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lJGAACgkQl9kSPeN6
SE8k+BAAmi0hdik0psHj6buso7BqCGqEI6e2XAfX3NRV2520K9lZe3gRTBTY44R8
0gcxCPfPn/vI3fDEjjLtMOcScvWoGs7zH4e7q0fzLEGOn1RdJ5YOYlxeHzVB8nvJ
g+3zD87KU2MJLh2riya0xnQw6HMDxnN1BuPFUSlvFydWRunGy6iOJS6eJBJciZob
MJY4/sq90eRx6naisJa4IDYLPoKklToqtH1FBPubFjcfgH/FgWi8iYdvEi/c4IUE
SwVgUXL0sPCHPh/v/iuGTDD4mpRoq6/c6+b2AXSmF+x+CHWc8mT2RijHuqSSqNWH
DHyNeJDZARRP4cp6x//2wAbg1UW/V1ayGOdzeseVKxUNTLlcyvSHX/4CX1SBiGbe
nhzoyHvKR1uKWcYkZ0flA8kZsNwM3LaeC/L8niUOpl4rPgj1LEec4AupPKckTNwk
rXU2QIJbXFr+8sdLdhNLMlWlf3r28p5y2AATeXGfkgFzfxsOLQvAMqQZIkB4m3g8
mxW/7RTaQeEToqleDi48W1fQRyxxdAuilBMONlv6FK7z/d1OapKxodU1hRSUk4/5
VW5IpXHGDFCyzksmfiobKwzYZzkC4Pg8h5gIZwwG17ki2cR3AqSRtD/jp1t4jbED
v5grSkCJ2qIuzC9EsjYDGraZpKofDk/AB6gPNoERI4H//1xpLUs=
=5/5+
-----END PGP SIGNATURE-----

--ek4vrow3qnzvbq7k--

--===============1408175289==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1408175289==--
