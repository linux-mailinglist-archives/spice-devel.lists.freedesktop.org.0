Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BE7F1BE
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 10:03:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B01C5894D4;
	Tue, 30 Apr 2019 08:03:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B1BD894D4
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 08:03:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3A47530832E3
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 08:03:23 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8DE7E1001E63;
 Tue, 30 Apr 2019 08:03:22 +0000 (UTC)
Date: Tue, 30 Apr 2019 08:03:21 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190430080321.7scoe2dtlecida4y@toolbox>
References: <20190427104617.26860-1-fziglio@redhat.com>
 <20190427104617.26860-2-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190427104617.26860-2-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Tue, 30 Apr 2019 08:03:23 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 2/2] Do not check for
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
Content-Type: multipart/mixed; boundary="===============1128755203=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1128755203==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nqbji2ommoibadue"
Content-Disposition: inline


--nqbji2ommoibadue
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Apr 27, 2019 at 11:46:17AM +0100, Frediano Ziglio wrote:
> This should always be defined and including config.h is a requirement.

Looks fine, do we need to pass it still? build seems fine with

diff --git a/meson.build b/meson.build
index 2951561f..0b21f68b 100644
--- a/meson.build
+++ b/meson.build
@@ -38,7 +38,6 @@ message('libspice.so version: ' + spice_server_so_version)
 # some global vars
spice_server_global_cflags =3D ['-DSPICE_SERVER_INTERNAL',
                              '-DG_LOG_DOMAIN=3D"Spice"',
-                             '-DHAVE_CONFIG_H',
                              #'-Werror',
                              '-Wall',
                              '-Wextra',


For the series,
Acked-by: Victor Toso <victortoso@redhat.com>

> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  cfg.mk                            | 4 ----
>  docs/spice_style.txt              | 2 --
>  server/agent-msg-filter.c         | 2 --
>  server/cache-item.tmpl.c          | 2 --
>  server/common-graphics-channel.c  | 2 --
>  server/cursor-channel-client.c    | 2 --
>  server/cursor-channel.c           | 2 --
>  server/dcc-send.c                 | 2 --
>  server/dcc.c                      | 2 --
>  server/dispatcher.c               | 2 --
>  server/display-channel.c          | 2 --
>  server/event-loop.c               | 2 --
>  server/glz-encode-match.tmpl.c    | 2 --
>  server/glz-encode.tmpl.c          | 2 --
>  server/glz-encoder-dict.c         | 2 --
>  server/glz-encoder.c              | 2 --
>  server/gstreamer-encoder.c        | 2 --
>  server/image-cache.c              | 2 --
>  server/image-encoders.c           | 2 --
>  server/inputs-channel-client.c    | 2 --
>  server/inputs-channel.c           | 2 --
>  server/jpeg-encoder.c             | 2 --
>  server/lz4-encoder.c              | 2 --
>  server/main-channel-client.c      | 2 --
>  server/main-channel.c             | 2 --
>  server/memslot.c                  | 2 --
>  server/mjpeg-encoder.c            | 2 --
>  server/net-utils.c                | 2 --
>  server/pixmap-cache.c             | 2 --
>  server/red-channel-capabilities.c | 2 --
>  server/red-channel-client.c       | 2 --
>  server/red-channel.c              | 2 --
>  server/red-client.c               | 2 --
>  server/red-parse-qxl.c            | 2 --
>  server/red-qxl.c                  | 2 --
>  server/red-record-qxl.c           | 2 --
>  server/red-replay-qxl.c           | 2 --
>  server/red-stream-device.c        | 2 --
>  server/red-stream.c               | 2 --
>  server/red-worker.c               | 2 --
>  server/reds.c                     | 2 --
>  server/smartcard-channel-client.c | 2 --
>  server/smartcard.c                | 2 --
>  server/sound.c                    | 2 --
>  server/spice-bitmap-utils.c       | 2 --
>  server/spice-bitmap-utils.tmpl.c  | 2 --
>  server/spice-server-enums.c.tmpl  | 2 --
>  server/spicevmc.c                 | 2 --
>  server/stat-file.c                | 2 --
>  server/stream-channel.c           | 2 --
>  server/sw-canvas.c                | 2 --
>  server/tests/replay.c             | 2 --
>  server/tests/test-qxl-parsing.c   | 2 --
>  server/tests/test-stream.c        | 2 --
>  server/tree.c                     | 2 --
>  server/utils.c                    | 2 --
>  server/video-stream.c             | 2 --
>  server/zlib-encoder.c             | 2 --
>  58 files changed, 118 deletions(-)
>=20
> diff --git a/cfg.mk b/cfg.mk
> index 3b711c8b..efcfaad8 100644
> --- a/cfg.mk
> +++ b/cfg.mk
> @@ -134,10 +134,6 @@ exclude_file_name_regexp--sc_bindtextdomain =3D ^ser=
ver/tests|common/region.c|tool
> =20
>  exclude_file_name_regexp--sc_prohibit_empty_lines_at_EOF =3D docs/.*.odt=
|server/tests/base_test.ppm|docs/manual/images/.*.png
> =20
> -# XXX this should be removed & all cases fixed
> -exclude_file_name_regexp--sc_prohibit_have_config_h =3D ^*/.*(c|cpp|h)
> -
> -
>  exclude_file_name_regexp--sc_unmarked_diagnostics =3D ^.*\.(c|py|h)
> =20
>  exclude_file_name_regexp--sc_avoid_attribute_unused_in_header =3D server=
/stat.h
> diff --git a/docs/spice_style.txt b/docs/spice_style.txt
> index c8a4cff6..e4d7fc6d 100644
> --- a/docs/spice_style.txt
> +++ b/docs/spice_style.txt
> @@ -393,9 +393,7 @@ Also in source (no header) files you must include `co=
nfig.h` at the beginning so
> =20
>  [source,c]
>  ----
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <system_headers.h>
>  #include <no_spice_no_system_libraries.h>
> diff --git a/server/agent-msg-filter.c b/server/agent-msg-filter.c
> index abead87a..11612c6b 100644
> --- a/server/agent-msg-filter.c
> +++ b/server/agent-msg-filter.c
> @@ -17,9 +17,7 @@
>     Red Hat Authors:
>          hdegoede@redhat.com
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <string.h>
>  #include <spice/vd_agent.h>
> diff --git a/server/cache-item.tmpl.c b/server/cache-item.tmpl.c
> index 44b45f81..f119a9ee 100644
> --- a/server/cache-item.tmpl.c
> +++ b/server/cache-item.tmpl.c
> @@ -15,9 +15,7 @@
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> =20
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #if defined(CLIENT_CURSOR_CACHE)
> =20
> diff --git a/server/common-graphics-channel.c b/server/common-graphics-ch=
annel.c
> index b70fa3a4..92349ce4 100644
> --- a/server/common-graphics-channel.c
> +++ b/server/common-graphics-channel.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <fcntl.h>
> =20
> diff --git a/server/cursor-channel-client.c b/server/cursor-channel-clien=
t.c
> index d72989ab..fec26c09 100644
> --- a/server/cursor-channel-client.c
> +++ b/server/cursor-channel-client.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <common/generated_server_marshallers.h>
> =20
> diff --git a/server/cursor-channel.c b/server/cursor-channel.c
> index d936b791..fa2ddf83 100644
> --- a/server/cursor-channel.c
> +++ b/server/cursor-channel.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <glib.h>
>  #include <common/generated_server_marshallers.h>
> diff --git a/server/dcc-send.c b/server/dcc-send.c
> index 84fa1be7..e8df1fb3 100644
> --- a/server/dcc-send.c
> +++ b/server/dcc-send.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <common/marshaller.h>
>  #include <common/generated_server_marshallers.h>
> diff --git a/server/dcc.c b/server/dcc.c
> index 53d52531..7751f430 100644
> --- a/server/dcc.c
> +++ b/server/dcc.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <common/utils.h>
>  #include "dcc-private.h"
> diff --git a/server/dispatcher.c b/server/dispatcher.c
> index bae73f7d..5204ddee 100644
> --- a/server/dispatcher.c
> +++ b/server/dispatcher.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <unistd.h>
>  #include <errno.h>
> diff --git a/server/display-channel.c b/server/display-channel.c
> index 9f3555e5..071c0140 100644
> --- a/server/display-channel.c
> +++ b/server/display-channel.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <common/sw_canvas.h>
> =20
> diff --git a/server/event-loop.c b/server/event-loop.c
> index a6a6e634..80af2954 100644
> --- a/server/event-loop.c
> +++ b/server/event-loop.c
> @@ -21,9 +21,7 @@
>   *
>   * const SpiceCoreInterfaceInternal event_loop_core;
>   */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include "red-common.h"
> =20
> diff --git a/server/glz-encode-match.tmpl.c b/server/glz-encode-match.tmp=
l.c
> index 1fd251ee..0c0487d7 100644
> --- a/server/glz-encode-match.tmpl.c
> +++ b/server/glz-encode-match.tmpl.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #define SHORT_PIX_IMAGE_DIST_LEVEL_1 64 //(1 << 6)
>  #define SHORT_PIX_IMAGE_DIST_LEVEL_2 16384 // (1 << 14)
> diff --git a/server/glz-encode.tmpl.c b/server/glz-encode.tmpl.c
> index 624bb374..48bab50b 100644
> --- a/server/glz-encode.tmpl.c
> +++ b/server/glz-encode.tmpl.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #define DJB2_START 5381
>  #define DJB2_HASH(hash, c) (hash =3D ((hash << 5) + hash) ^ (c)) //|{has=
h =3D ((hash << 5) + hash) + c;}
> diff --git a/server/glz-encoder-dict.c b/server/glz-encoder-dict.c
> index 2a01641f..c3c4606c 100644
> --- a/server/glz-encoder-dict.c
> +++ b/server/glz-encoder-dict.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <pthread.h>
>  #include <string.h>
> diff --git a/server/glz-encoder.c b/server/glz-encoder.c
> index 3ad2b97c..34129403 100644
> --- a/server/glz-encoder.c
> +++ b/server/glz-encoder.c
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
>  #include <pthread.h>
> diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
> index 972c86e6..e319eea2 100644
> --- a/server/gstreamer-encoder.c
> +++ b/server/gstreamer-encoder.c
> @@ -16,9 +16,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <inttypes.h>
>  #include <pthread.h>
> diff --git a/server/image-cache.c b/server/image-cache.c
> index bc62938e..2ca4d4b6 100644
> --- a/server/image-cache.c
> +++ b/server/image-cache.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
>  #include "image-cache.h"
>  #include "red-parse-qxl.h"
>  #include "display-channel.h"
> diff --git a/server/image-encoders.c b/server/image-encoders.c
> index 5a87df31..306c6dca 100644
> --- a/server/image-encoders.c
> +++ b/server/image-encoders.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <glib.h>
> =20
> diff --git a/server/inputs-channel-client.c b/server/inputs-channel-clien=
t.c
> index 61254c7e..99c3751c 100644
> --- a/server/inputs-channel-client.c
> +++ b/server/inputs-channel-client.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include "inputs-channel-client.h"
>  #include "migration-protocol.h"
> diff --git a/server/inputs-channel.c b/server/inputs-channel.c
> index eff5421a..91720d3c 100644
> --- a/server/inputs-channel.c
> +++ b/server/inputs-channel.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <stddef.h> // NULL
>  #include <spice/macros.h>
> diff --git a/server/jpeg-encoder.c b/server/jpeg-encoder.c
> index a31d63d7..269ed8aa 100644
> --- a/server/jpeg-encoder.c
> +++ b/server/jpeg-encoder.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <stdio.h>
>  #include <jpeglib.h>
> diff --git a/server/lz4-encoder.c b/server/lz4-encoder.c
> index 84a9bcc1..3ff3b6b5 100644
> --- a/server/lz4-encoder.c
> +++ b/server/lz4-encoder.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <lz4.h>
>  #include "red-common.h"
> diff --git a/server/main-channel-client.c b/server/main-channel-client.c
> index 5fc95bd4..1261ad78 100644
> --- a/server/main-channel-client.c
> +++ b/server/main-channel-client.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <inttypes.h>
>  #include <common/generated_server_marshallers.h>
> diff --git a/server/main-channel.c b/server/main-channel.c
> index a48e74be..0f98eeb5 100644
> --- a/server/main-channel.c
> +++ b/server/main-channel.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <common/ring.h>
> =20
> diff --git a/server/memslot.c b/server/memslot.c
> index 91ea53bd..2a1771b0 100644
> --- a/server/memslot.c
> +++ b/server/memslot.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <inttypes.h>
> =20
> diff --git a/server/mjpeg-encoder.c b/server/mjpeg-encoder.c
> index d64fcfe0..b373e8b7 100644
> --- a/server/mjpeg-encoder.c
> +++ b/server/mjpeg-encoder.c
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
>  #include <inttypes.h>
> diff --git a/server/net-utils.c b/server/net-utils.c
> index 802509a4..71912728 100644
> --- a/server/net-utils.c
> +++ b/server/net-utils.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <errno.h>
>  #include <fcntl.h>
> diff --git a/server/pixmap-cache.c b/server/pixmap-cache.c
> index 0a4b9207..489fe0bf 100644
> --- a/server/pixmap-cache.c
> +++ b/server/pixmap-cache.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include "pixmap-cache.h"
> =20
> diff --git a/server/red-channel-capabilities.c b/server/red-channel-capab=
ilities.c
> index 5b766768..05b8959c 100644
> --- a/server/red-channel-capabilities.c
> +++ b/server/red-channel-capabilities.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <string.h>
>  #include <common/macros.h>
> diff --git a/server/red-channel-client.c b/server/red-channel-client.c
> index 9aa76792..ce4f4194 100644
> --- a/server/red-channel-client.c
> +++ b/server/red-channel-client.c
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
>  #include <stdio.h>
> diff --git a/server/red-channel.c b/server/red-channel.c
> index 4015c12d..82e52239 100644
> --- a/server/red-channel.c
> +++ b/server/red-channel.c
> @@ -18,9 +18,7 @@
>      Author:
>          yhalperi@redhat.com
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <common/ring.h>
> =20
> diff --git a/server/red-client.c b/server/red-client.c
> index 98838357..961b4970 100644
> --- a/server/red-client.c
> +++ b/server/red-client.c
> @@ -15,9 +15,7 @@
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
> =20
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif /* HAVE_CONFIG_H */
> =20
>  #include "red-channel.h"
>  #include "red-client.h"
> diff --git a/server/red-parse-qxl.c b/server/red-parse-qxl.c
> index 21214f4e..afae9431 100644
> --- a/server/red-parse-qxl.c
> +++ b/server/red-parse-qxl.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <inttypes.h>
>  #include <glib.h>
> diff --git a/server/red-qxl.c b/server/red-qxl.c
> index 6dbd224c..5fa974fc 100644
> --- a/server/red-qxl.c
> +++ b/server/red-qxl.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <stdio.h>
>  #include <stdlib.h>
> diff --git a/server/red-record-qxl.c b/server/red-record-qxl.c
> index 30a3b0da..f6a627fd 100644
> --- a/server/red-record-qxl.c
> +++ b/server/red-record-qxl.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <inttypes.h>
>  #include <pthread.h>
> diff --git a/server/red-replay-qxl.c b/server/red-replay-qxl.c
> index 8124c1fd..6d348180 100644
> --- a/server/red-replay-qxl.c
> +++ b/server/red-replay-qxl.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <inttypes.h>
>  #include <zlib.h>
> diff --git a/server/red-stream-device.c b/server/red-stream-device.c
> index b4c32f71..620e581e 100644
> --- a/server/red-stream-device.c
> +++ b/server/red-stream-device.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <common/recorder.h>
> =20
> diff --git a/server/red-stream.c b/server/red-stream.c
> index 4fb2d2bf..323af58c 100644
> --- a/server/red-stream.c
> +++ b/server/red-stream.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <errno.h>
>  #include <unistd.h>
> diff --git a/server/red-worker.c b/server/red-worker.c
> index a30148a5..7436df81 100644
> --- a/server/red-worker.c
> +++ b/server/red-worker.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #define _GNU_SOURCE
>  #include <stdio.h>
> diff --git a/server/reds.c b/server/reds.c
> index 28542bd0..5a553878 100644
> --- a/server/reds.c
> +++ b/server/reds.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <stdint.h>
>  #include <stdio.h>
> diff --git a/server/smartcard-channel-client.c b/server/smartcard-channel=
-client.c
> index daa20ffc..e22b39ad 100644
> --- a/server/smartcard-channel-client.c
> +++ b/server/smartcard-channel-client.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include "smartcard-channel-client.h"
> =20
> diff --git a/server/smartcard.c b/server/smartcard.c
> index e3e746ca..e6d3b6ac 100644
> --- a/server/smartcard.c
> +++ b/server/smartcard.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <arpa/inet.h>
>  #ifdef USE_SMARTCARD
> diff --git a/server/sound.c b/server/sound.c
> index 167f68c5..9888a9f0 100644
> --- a/server/sound.c
> +++ b/server/sound.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <fcntl.h>
>  #include <errno.h>
> diff --git a/server/spice-bitmap-utils.c b/server/spice-bitmap-utils.c
> index 09c081df..c0df4fac 100644
> --- a/server/spice-bitmap-utils.c
> +++ b/server/spice-bitmap-utils.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <sys/stat.h>
> =20
> diff --git a/server/spice-bitmap-utils.tmpl.c b/server/spice-bitmap-utils=
=2Etmpl.c
> index 35f8227e..65fe3621 100644
> --- a/server/spice-bitmap-utils.tmpl.c
> +++ b/server/spice-bitmap-utils.tmpl.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #ifdef RED_BITMAP_UTILS_RGB16
>  #define PIXEL rgb16_pixel_t
> diff --git a/server/spice-server-enums.c.tmpl b/server/spice-server-enums=
=2Ec.tmpl
> index 57b688d8..ebe752f8 100644
> --- a/server/spice-server-enums.c.tmpl
> +++ b/server/spice-server-enums.c.tmpl
> @@ -1,7 +1,5 @@
>  /*** BEGIN file-header ***/
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <glib-object.h>
> =20
> diff --git a/server/spicevmc.c b/server/spicevmc.c
> index d094166e..460edb04 100644
> --- a/server/spicevmc.c
> +++ b/server/spicevmc.c
> @@ -18,9 +18,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <assert.h>
>  #include <string.h>
> diff --git a/server/stat-file.c b/server/stat-file.c
> index b2c199f3..211cddfa 100644
> --- a/server/stat-file.c
> +++ b/server/stat-file.c
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
>  #include <stdlib.h>
> diff --git a/server/stream-channel.c b/server/stream-channel.c
> index ed844d6d..7953018e 100644
> --- a/server/stream-channel.c
> +++ b/server/stream-channel.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <common/generated_server_marshallers.h>
>  #include <common/recorder.h>
> diff --git a/server/sw-canvas.c b/server/sw-canvas.c
> index c2373707..89cee67c 100644
> --- a/server/sw-canvas.c
> +++ b/server/sw-canvas.c
> @@ -14,8 +14,6 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
>  #include <common/sw_canvas.h>
>  #include <common/sw_canvas.c>
> diff --git a/server/tests/replay.c b/server/tests/replay.c
> index f7d26fec..0da5f997 100644
> --- a/server/tests/replay.c
> +++ b/server/tests/replay.c
> @@ -19,9 +19,7 @@
>  /* Replay a previously recorded file (via SPICE_WORKER_RECORD_FILENAME)
>   */
> =20
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <string.h>
>  #include <stdlib.h>
> diff --git a/server/tests/test-qxl-parsing.c b/server/tests/test-qxl-pars=
ing.c
> index edccfee4..60ca8f88 100644
> --- a/server/tests/test-qxl-parsing.c
> +++ b/server/tests/test-qxl-parsing.c
> @@ -18,9 +18,7 @@
> =20
>  /* Do some tests on memory parsing
>   */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #undef NDEBUG
>  #include <string.h>
> diff --git a/server/tests/test-stream.c b/server/tests/test-stream.c
> index d56109d1..055b1a32 100644
> --- a/server/tests/test-stream.c
> +++ b/server/tests/test-stream.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <sys/types.h>
>  #include <sys/socket.h>
> diff --git a/server/tree.c b/server/tree.c
> index 89186a85..b0715b74 100644
> --- a/server/tree.c
> +++ b/server/tree.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <spice/qxl_dev.h>
> =20
> diff --git a/server/utils.c b/server/utils.c
> index b440c064..6232991f 100644
> --- a/server/utils.c
> +++ b/server/utils.c
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
>  #include <spice/enums.h>
> diff --git a/server/video-stream.c b/server/video-stream.c
> index ba1a5adf..4ac25af8 100644
> --- a/server/video-stream.c
> +++ b/server/video-stream.c
> @@ -14,9 +14,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include "video-stream.h"
>  #include "display-channel-private.h"
> diff --git a/server/zlib-encoder.c b/server/zlib-encoder.c
> index 6042cffd..8622331b 100644
> --- a/server/zlib-encoder.c
> +++ b/server/zlib-encoder.c
> @@ -15,9 +15,7 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#ifdef HAVE_CONFIG_H
>  #include <config.h>
> -#endif
> =20
>  #include <zlib.h>
> =20
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--nqbji2ommoibadue
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzIAUkACgkQl9kSPeN6
SE/6PQ//ZeQQfcbH7IhIbn8+Z6bsLlXm8mPR11muDAFPBby4Z6A1ejUxsMs49eZd
zQEtkD0GKqrW7pnpiOUglpjY7s6vPGHlU8NJ6ujVBiZAv1q4PSgD3Efg8VmJ5lF7
0nnnIU9QUOHBRV/CgsY6V7CZ1h8yGPyWLYb+vqqEpGpsEtQAs+3NaQtbPFqSXV1w
QHOl5YNQreza7G43orZEdVeC5HY3qPard1Sm633aVfAel3EbvLvxpSe1sYtoSI0k
rSivc3YnUoSigdWnJ2ZYLUSR5iR/hqhn41Q+YYG+eVcBWF+MfZ2q2WHnW6NEvQUw
+CKZZten3t360G7qt9a22qjhzknpcWfozT0+4OXURrSVrkR00VrTevzpfUIHBsgv
Sb+ENWW1QB0DN4CogyyQjUUocMWkEH+FdkfZBQF1Eo34+TStoqLnV0qJjoYfaZtc
E0pqyWrI7jDPER+W6+n/yUFMukXjbsotYKRSNxlQijq+PGNfpx+0ORTw3Gb/gW1U
sqf4HQxU0/C9Y6uidsH0hlbENjS233fwzOm929WgQTPmsi+zVPrBvuhyeClEyBj2
ICOXodiagXRRgPGTXJ8aRvojUAFxprmv7fYrs0iSPeToFW5VhkguyU584pJ1Ksxx
k94HMAvfYZvRGd3+ZOM+1AQPjP+b+EgXwuxtCIHQlwnAIoXYEmY=
=DiZn
-----END PGP SIGNATURE-----

--nqbji2ommoibadue--

--===============1128755203==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1128755203==--
