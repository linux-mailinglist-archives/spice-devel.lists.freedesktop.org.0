Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC9A1155A
	for <lists+spice-devel@lfdr.de>; Thu,  2 May 2019 10:26:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40D08892C5;
	Thu,  2 May 2019 08:26:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C543892C5
 for <spice-devel@lists.freedesktop.org>; Thu,  2 May 2019 08:26:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AE6803087940
 for <spice-devel@lists.freedesktop.org>; Thu,  2 May 2019 08:26:25 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 296971001E6F;
 Thu,  2 May 2019 08:26:25 +0000 (UTC)
Date: Thu, 2 May 2019 08:26:24 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190502082624.sd42mifuh63ahpoh@toolbox>
References: <20190501100856.6196-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190501100856.6196-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Thu, 02 May 2019 08:26:25 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common] Do not check for
 HAVE_CONFIG_H
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
Content-Type: multipart/mixed; boundary="===============0599961717=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0599961717==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="77nv6s5mpbzsrptb"
Content-Disposition: inline


--77nv6s5mpbzsrptb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 01, 2019 at 11:08:56AM +0100, Frediano Ziglio wrote:
> This should always be defined and including config.h is a requirement.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

I got confused that I acked this before. This is actually v2 with
proposed changes included.

> ---
>  common/backtrace.c          | 2 --
>  common/canvas_base.c        | 2 --
>  common/canvas_utils.c       | 2 --
>  common/lines.c              | 2 --
>  common/log.c                | 2 --
>  common/lz.c                 | 2 --
>  common/lz_compress_tmpl.c   | 2 --
>  common/lz_decompress_tmpl.c | 2 --
>  common/marshaller.c         | 2 --
>  common/mem.c                | 2 --
>  common/pixman_utils.c       | 2 --
>  common/quic.c               | 2 --
>  common/quic_family_tmpl.c   | 2 --
>  common/quic_tmpl.c          | 2 --
>  common/region.c             | 2 --
>  common/rop3.c               | 2 --
>  common/ssl_verify.c         | 2 --
>  common/sw_canvas.c          | 2 --
>  common/utils.c              | 2 --
>  meson.build                 | 3 +--
>  spice_codegen.py            | 2 --
>  tests/test-logging.c        | 2 --
>  tests/test-marshallers.c    | 2 --
>  tests/test-quic.c           | 2 --
>  tests/test-region.c         | 2 --
>  25 files changed, 1 insertion(+), 50 deletions(-)
>=20
> diff --git a/common/backtrace.c b/common/backtrace.c
> index ff72d1b..2136191 100644
> --- a/common/backtrace.c
> +++ b/common/backtrace.c
> @@ -21,9 +21,7 @@
>   * Copyright (C) 2008 Red Hat, Inc.
>   */
> =20
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include "backtrace.h"
> =20
> diff --git a/common/canvas_base.c b/common/canvas_base.c
> index 00a8801..3a1c83f 100644
> --- a/common/canvas_base.c
> +++ b/common/canvas_base.c
> @@ -16,9 +16,7 @@
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> =20
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <stdarg.h>
>  #include <stdlib.h>
> diff --git a/common/canvas_utils.c b/common/canvas_utils.c
> index e5f4efb..ae53cf7 100644
> --- a/common/canvas_utils.c
> +++ b/common/canvas_utils.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include "canvas_utils.h"
>  #include "mem.h"
> diff --git a/common/lines.c b/common/lines.c
> index dadaf86..76c17b1 100644
> --- a/common/lines.c
> +++ b/common/lines.c
> @@ -45,9 +45,7 @@ ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORM=
ANCE OF THIS
>  SOFTWARE.
> =20
>  ******************************************************************/
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <stdio.h>
>  #include <spice/macros.h>
> diff --git a/common/log.c b/common/log.c
> index ce162a1..655bbe8 100644
> --- a/common/log.c
> +++ b/common/log.c
> @@ -15,9 +15,7 @@
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> =20
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <glib.h>
>  #include <stdlib.h>
> diff --git a/common/lz.c b/common/lz.c
> index f92c638..c9fe60d 100644
> --- a/common/lz.c
> +++ b/common/lz.c
> @@ -43,9 +43,7 @@
>     SOFTWARE.
> =20
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include "lz.h"
> =20
> diff --git a/common/lz_compress_tmpl.c b/common/lz_compress_tmpl.c
> index 4f4f6c6..1d4eb81 100644
> --- a/common/lz_compress_tmpl.c
> +++ b/common/lz_compress_tmpl.c
> @@ -40,9 +40,7 @@
>     SOFTWARE.
> =20
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #define DJB2_START 5381
>  #define DJB2_HASH(hash, c) (hash =3D ((hash << 5) + hash) ^ (c)) //|{has=
h =3D ((hash << 5) + hash) + c;}
> diff --git a/common/lz_decompress_tmpl.c b/common/lz_decompress_tmpl.c
> index d445c70..462513f 100644
> --- a/common/lz_decompress_tmpl.c
> +++ b/common/lz_decompress_tmpl.c
> @@ -59,9 +59,7 @@
>      COPY_COMP_PIXEL(encoder, out) - copies pixel from the compressed buf=
fer to the decompressed
>                                      buffer. Increases out.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #if !defined(LZ_RGB_ALPHA)
>  #define COPY_PIXEL(p, out) (*out++ =3D p)
> diff --git a/common/marshaller.c b/common/marshaller.c
> index c77129b..a2c27b7 100644
> --- a/common/marshaller.c
> +++ b/common/marshaller.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include "log.h"
>  #include "marshaller.h"
> diff --git a/common/mem.c b/common/mem.c
> index ff11e5e..8d7ed1e 100644
> --- a/common/mem.c
> +++ b/common/mem.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include "mem.h"
> =20
> diff --git a/common/pixman_utils.c b/common/pixman_utils.c
> index c573574..a3aba0a 100644
> --- a/common/pixman_utils.c
> +++ b/common/pixman_utils.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include "pixman_utils.h"
> =20
> diff --git a/common/quic.c b/common/quic.c
> index f91b23f..e1c439f 100644
> --- a/common/quic.c
> +++ b/common/quic.c
> @@ -19,9 +19,7 @@
>  // Red Hat image compression based on SFALIC by Roman Starosolski
>  // http://sun.iinf.polsl.gliwice.pl/~rstaros/sfalic/index.html
> =20
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <glib.h>
> =20
> diff --git a/common/quic_family_tmpl.c b/common/quic_family_tmpl.c
> index 70fe758..9b29560 100644
> --- a/common/quic_family_tmpl.c
> +++ b/common/quic_family_tmpl.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #ifdef QUIC_FAMILY_8BPC
>  #undef QUIC_FAMILY_8BPC
> diff --git a/common/quic_tmpl.c b/common/quic_tmpl.c
> index c2a1b66..f0a4927 100644
> --- a/common/quic_tmpl.c
> +++ b/common/quic_tmpl.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #define COMPRESS_IMP
> =20
> diff --git a/common/region.c b/common/region.c
> index c950a9b..0149191 100644
> --- a/common/region.c
> +++ b/common/region.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <stdio.h>
>  #include <string.h>
> diff --git a/common/rop3.c b/common/rop3.c
> index 75fec12..33eccd6 100644
> --- a/common/rop3.c
> +++ b/common/rop3.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include "rop3.h"
> =20
> diff --git a/common/ssl_verify.c b/common/ssl_verify.c
> index 74f95bb..dee719f 100644
> --- a/common/ssl_verify.c
> +++ b/common/ssl_verify.c
> @@ -16,9 +16,7 @@
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> =20
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include "mem.h"
>  #include "ssl_verify.h"
> diff --git a/common/sw_canvas.c b/common/sw_canvas.c
> index c5528c2..44f7299 100644
> --- a/common/sw_canvas.c
> +++ b/common/sw_canvas.c
> @@ -15,12 +15,10 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #ifdef __MINGW32__
>  #undef HAVE_STDLIB_H
>  #endif
>  #include <config.h>
> -#endif
> =20
>  #include <math.h>
>  #include "sw_canvas.h"
> diff --git a/common/utils.c b/common/utils.c
> index 460098c..85cea31 100644
> --- a/common/utils.c
> +++ b/common/utils.c
> @@ -16,9 +16,7 @@
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> =20
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include "utils.h"
> =20
> diff --git a/meson.build b/meson.build
> index 0faf703..8a16b76 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -10,8 +10,7 @@ if not meson.is_subproject()
>  endif
> =20
>  # some global vars
> -spice_common_global_cflags =3D ['-DHAVE_CONFIG_H',
> -                              '-DG_LOG_DOMAIN=3D"Spice"',
> +spice_common_global_cflags =3D ['-DG_LOG_DOMAIN=3D"Spice"',
>                                '-Wall',
>                                '-Wextra',
>                                '-Werror',
> diff --git a/spice_codegen.py b/spice_codegen.py
> index 5846337..0532d6f 100755
> --- a/spice_codegen.py
> +++ b/spice_codegen.py
> @@ -311,9 +311,7 @@ writer.write(license)
>  writer.header.writeln("/* this is a file autogenerated by spice_codegen.=
py */")
>  writer.header.write(license)
>  if not options.generate_enums:
> -    writer.writeln("#ifdef HAVE_CONFIG_H")
>      writer.writeln("#include <config.h>")
> -    writer.writeln("#endif")

Still fine to me,
Acked-by: Victor Toso <victortoso@redhat.com>

> =20
>  if options.assert_on_error:
>      writer.set_option("assert_on_error")
> diff --git a/tests/test-logging.c b/tests/test-logging.c
> index 32b0c33..22afe1f 100644
> --- a/tests/test-logging.c
> +++ b/tests/test-logging.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #define G_LOG_DOMAIN "Spice"
> =20
> diff --git a/tests/test-marshallers.c b/tests/test-marshallers.c
> index 83c8956..afa681d 100644
> --- a/tests/test-marshallers.c
> +++ b/tests/test-marshallers.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <glib.h>
>  #include <string.h>
> diff --git a/tests/test-quic.c b/tests/test-quic.c
> index 01a3ef3..c838545 100644
> --- a/tests/test-quic.c
> +++ b/tests/test-quic.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <glib.h>
>  #include <gdk-pixbuf/gdk-pixbuf.h>
> diff --git a/tests/test-region.c b/tests/test-region.c
> index 378ea60..e5478dc 100644
> --- a/tests/test-region.c
> +++ b/tests/test-region.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <stdio.h>
>  #include <string.h>
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--77nv6s5mpbzsrptb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzKqbAACgkQl9kSPeN6
SE8+yA/8Cy3RjdMfR60dKsehOWyr+iSDwlZINnJmsBfmhq7yu9QO50hWhIF6UINt
doxFwPW2hm1Wph8d80/asUuHDq/o/g4cjSHRr6IS99b9WtHVeeiQD2CtiEZdVWCQ
b/dpddeDnCX21iaayBkgzaMLdu1KQ7PqnnCleQ0mri5w9/YKTNrFZ4RxiweJW09i
Inazce8Ax8FM8ERjOdievC/OIrPrv+UfUpEthiUGeRbC+yINpC/H4IdErruNAky1
5Ev5TCkVyGrjxgIYm+O15wDS1T6ljhhVNo6VSYSkklr962xP/N3jyNkZkiU1Xhoe
pF0EzMiP7aNYHCOd5r5D/8ZPbA/EIyqAof38HrhZNgj6TuSmHcZzXPT+lOagaiOZ
6nuxVBYPRlANwGIhiILobPsCS2C1TG9zHA3gdYRxQeI0jtDt1jBuj7aEr2kaK6jQ
c2OmWrfVoUij+YfTsi472iI7VHwuKqQu3hAQns4DhmChn2U7d0+CFA3Tk0hahRxS
oMAAKk1vrUSFqt0TVzqO4CY5ojph8lIu8DEeRNfXC2C1kiTgXhITd2kiIvX/C00F
Te7y9uZxEN3hZBU52QrBtcIs/GTIRw50Dtp/L2T7GM/eOt5jpbcPQ6aXW6B53aNJ
a6ASA0fP6ZUz1WWxsEblx/BMnANyYdjTUrOPlN0K7eKKQuf1Tmc=
=xAil
-----END PGP SIGNATURE-----

--77nv6s5mpbzsrptb--

--===============0599961717==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0599961717==--
