Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 289ED171E6
	for <lists+spice-devel@lfdr.de>; Wed,  8 May 2019 08:47:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFF7889369;
	Wed,  8 May 2019 06:47:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED90389369
 for <spice-devel@lists.freedesktop.org>; Wed,  8 May 2019 06:47:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6702F3001811;
 Wed,  8 May 2019 06:47:01 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1111C5D9C8;
 Wed,  8 May 2019 06:47:00 +0000 (UTC)
Date: Wed, 8 May 2019 06:47:00 +0000
From: Victor Toso <victortoso@redhat.com>
To: Javier Celaya <javier.celaya@flexvdi.com>
Message-ID: <20190508064700.nmvxo7mtndnt3in5@toolbox>
References: <20190503165200.24328-1-javier.celaya@flexvdi.com>
 <20190506103744.rib7kipxs3wdtq6x@toolbox>
 <255653fe8d85310904ffdf7ae4f401cbc1364361.camel@flexvdi.com>
MIME-Version: 1.0
In-Reply-To: <255653fe8d85310904ffdf7ae4f401cbc1364361.camel@flexvdi.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Wed, 08 May 2019 06:47:01 +0000 (UTC)
Subject: Re: [Spice-devel] [Spice-Gtk] SpiceSession: Create webdav even with
 NULL shared_dir
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
Cc: spice-devel@lists.freedesktop.org, devel@flexvdi.com
Content-Type: multipart/mixed; boundary="===============1393832530=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1393832530==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fayvo4nnbdhleaks"
Content-Disposition: inline


--fayvo4nnbdhleaks
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, May 06, 2019 at 04:06:45PM +0200, Javier Celaya wrote:
> Hi
> El lun, 06-05-2019 a las 10:37 +0000, Victor Toso escribi=F3:
> > Hi,
> > On Fri, May 03, 2019 at 06:52:00PM +0200, Javier Celaya wrote:
> > > A phodav server created with a NULL shared dir is valid andresults
> > > in an error answer to all requests of the webdav channel,instead of
> > > silently ignoring them.
> > > This is better than just returning NULL
> > > fromspice_session_get_webdav_server because:a) it crashes
> > > channel_webdav.c:start_client.
> >=20
> > Can you give some steps on how to reproduce? I was trying withremote-
> > viewer on F29 guest earlier and couldn't.
>=20
> You cannot just try an existing client, this problem happened as we are
> developing our new client for flexVDI. You will have to modify some of
> the source code for remote-viewer to see it.
> The thing is, if you do not set the shared-dir property of the
> SpiceSession object, it default to the XDG public directory. This
> happens if you do not pass the "shared-dir" command line option, for
> instance. But how do I say "I do not want to share any directory with
> the guest"?

With remote-viewer, only when the user toggle 'Share folder' the
channel-webdav would connect, that is, you would see in the logs:

 > GSpice-DEBUG: 05:55:47.703: ../src/spice-channel.c:2707 webdav-11:0: Ope=
n coroutine starting 0x55a774a10a90
 > GSpice-DEBUG: 05:55:47.703: ../src/spice-channel.c:2544 webdav-11:0: Sta=
rted background coroutine 0x55a774a100d0
 > GSpice-DEBUG: 05:55:47.703: ../src/spice-session.c:2246 webdav-11:0: Usi=
ng plain text, port 5900
 > GSpice-DEBUG: 05:55:47.704: ../src/spice-session.c:2177 open host pasta.=
usersys.redhat.com:5900
 > GSpice-DEBUG: 05:55:47.704: ../src/spice-session.c:2099 webdav-11:0: con=
necting 0x7f2c4bfffa40...
 > GSpice-DEBUG: 05:55:47.729: ../src/spice-session.c:2083 webdav-11:0: con=
nect ready
 > GSpice-DEBUG: 05:55:47.730: ../src/spice-channel.c:1367 webdav-11:0: cha=
nnel type 11 id 0 num common caps 1 num caps 0
 > GSpice-DEBUG: 05:55:47.767: ../src/spice-channel.c:1391 webdav-11:0: Pee=
r version: 2:2
 > GSpice-DEBUG: 05:55:47.768: ../src/spice-channel.c:1947 webdav-11:0: spi=
ce_channel_recv_link_msg: 2 caps
 > GSpice-DEBUG: 05:55:47.768: ../src/spice-channel.c:1961 webdav-11:0: got=
 remote common caps:

virt-viewer-session has a bool property that's false by default,
for sharing the folder. When this turns true,
virt-viewer-session-spice would then spice_channel_connect() the
channel.

Does it make sense to your client to only connect to the
channel-webdav only if you want to share something?

> I can set the shared-dir property to a file, or a non- existing
> directory, and the guest just complaints when I try to access
> it through webdavd. However, this does not seem a good
> solution...
> Setting the property to NULL, on the other hand, seems a
> reasonable value for "share nothing", but it makes
> spice_session_get_webdav_server return NULL and start_client
> crashes.

I don't strong disagree that NULL is interesting to say "Nothing
to share" but if you have nothing to share, you might as well
ignore the channel? Similar is playback/record audio, in case you
don't have a sound card in your client you might as well ignored
it or if you don't have usb devices (i guess this is harder than
sound card!) you might ignore channel-usbredir too.

> Unless I missed something and there is some way of making
> remote-viewer share nothing... then we can just use that way.
> > > b) even if it did not crash, access to the shared dir from the
> > > guest   would fail by timeout instead of immediately notifying of
> > > an error.
> >=20
> > Is that on windows as guest?
>=20
> Yes, I tested it on Windows as guest. I tried to fix a) by just
> returning early from start_client if spice_session_get_webdav_server
> returned NULL, but then all requests made by spice-webdavd are silently
> ignored. There is a webdav channel but no webdav server... so I imagine
> spice-webdavd on Linux will get the same result.

> > I spent some time looking at the code, found small issue andadded a
> > checks on start_client(). Still, I don't see why weshould accept a
> > webdav server running on NULL instead of only ina valid folder but
> > I'm also interested in fixing (a) and (b) ifpossible.
>=20
> As I explained before (maybe that should go in the commit
> message too) I wanted a way of sharing no directory at all.
> Passing NULL as shared- dir property seems like a good value,
> but you tell me if there is a better way.
> Best regards

Well, having the possibility of crash needs a fix either way but
let me know if what I said before works for you.

Cheers,

> > Cheers,
> > > --- src/spice-session.c | 4 ---- 1 file changed, 4 deletions(-)
> > > diff --git a/src/spice-session.c b/src/spice-session.cindex
> > > 04ba124..cbcd8c4 100644--- a/src/spice-session.c+++ b/src/spice-
> > > session.c@@ -2813,10 +2813,6 @@ PhodavServer*
> > > spice_session_get_webdav_server(SpiceSession *session)     static
> > > GMutex mutex;      const gchar *shared_dir =3D
> > > spice_session_get_shared_dir(session);-    if (shared_dir =3D=3D NULL)
> > > {-        SPICE_DEBUG("No shared dir set, not creating webdav
> > > server");-        return NULL;-    }      g_mutex_lock(&mutex); --
> > > 2.20.1
> > > _______________________________________________Spice-devel mailing=20
> > > listSpice-devel@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/spice-devel
> --=20
>=20
>=20
>=20
>=20
> =20
>=20
>=20
>=20
>=20
>=20
>              =20
>              =20
>          =20
>          =20
>             Javier Celaya Alastru=E9
>          =20
>            Chief Technology Officer
>      =20
>      =20
>        =20
>           =20
>         javier.celaya@flexvdi.com
>        =20
>        =20
>          =20
>         +34696969959=20
>      =20
>          =20
>         j_celaya
>        =20
>        =20
>          =20
>         Legal Information and Privacy Policy
>          =20
>      =20
>    =20
>    =20
>        =20
>             Pol=EDtica de confidencialidad
>             Este mensaje y los ficheros anexos son confidenciales dirigi=
=E9ndose exclusivamente al destinatario mencionado en el encabezamiento. Si=
 usted ha recibido este correo por error, tenga la amabilidad de eliminarlo=
 de su sistema y no divulgar el contenido a terceros. Los datos personales =
facilitados por usted o por terceros ser=E1n tratados por FLEXIBLE SOFTWARE=
 SOLUTIONS S.L.U. con la finalidad de gestionar y mantener los contactos y =
relaciones que se produzcan como consecuencia de la relaci=F3n que mantiene=
 con FLEXIBLE SOFTWARE SOLUTIONS S.L.U. Normalmente, la base jur=EDdica que=
 legitima este tratamiento, ser=E1 su consentimiento, el inter=E9s leg=EDti=
mo o la necesidad para gestionar una relaci=F3n contractual o similar. El p=
lazo de conservaci=F3n de sus datos vendr=E1 determinado por la relaci=F3n =
que mantiene con nosotros. Para m=E1s informaci=F3n al respecto, o para eje=
rcer sus derechos de acceso, rectificaci=F3n, supresi=F3n, oposici=F3n, lim=
itaci=F3n o portabilidad, dirija una comunicaci=F3n por escrito a FLEXIBLE =
SOFTWARE SOLUTIONS S.L.U: Avenida de Ranillas 1D, Planta 3, Oficina 3G, Zar=
agoza o al correo electr=F3nico pdo@flexvdi.com. En caso de considerar vuln=
erado su derecho a la protecci=F3n de datos personales, podr=E1 interponer =
una reclamaci=F3n ante la Agencia Espa=F1ola de Protecci=F3n de Datos (www.=
agpd.es).=20
>        =20
>    =20
>=20

--fayvo4nnbdhleaks
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzSe2QACgkQl9kSPeN6
SE9BOQ/7BeUET3YKbmwwVkGUdXCu+QdVS6ceDxusUWEY7GTg+7T0bwHQAvUoIwcv
rtFYBOA3dTBMjEGawgIfi5wvRrHyAQFCUgGeI/lHVg0CDbKSl4rVspmW4X7+8sZ/
H4O1PayEVJLI9xCEak2PXPxm/5XRRptvSOlTGj/9jh3FYtEAcyq7IqRVSlzAPb2e
BYvddqKJ3vH3uTy21BBtHZ9jrksQvrxH8mhaXFQz0MIwsxUvadOzmKH945bcufSC
PU8nAjDfejhsKzOCHw/Ofr7qDCd3WwmwfKaXhKvGXpDBVDqMyKN+RfsHx49sB6hg
CoPcmRnrRrjVIhWEdMMyEqUCivv0iz5d+Gew+TKzPFZLb5g57KRQM0o2WBOj+9jo
Y7eN3p0w0pyyKvkGEZR+KTfSFlQp6geoCgQ5+adgqYH130YYPEhnXEgvj2Ird3DA
KsovrvUVbBBLBx6hFVp2x9HYluJYVyJme+ZqLp9hLCgRIDw2czeT2rhVyg87OGeQ
vIJOyaGNbJ6xGqQDYq/yvpOtHPvK0ObxDXlEBe+7CosITuQecdUmUqItekp/9MN9
4rh8jp1Pg0zgv8fwMCPGE2vEk70JpBw4w/Psxdh9gRHcnyZIMfLeR3f54rZjwh//
mx5IldAyfEZo63WNNPqfIc/0OB4eBeMMHgK9kee/YP4gfnZz16E=
=Vm+3
-----END PGP SIGNATURE-----

--fayvo4nnbdhleaks--

--===============1393832530==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1393832530==--
