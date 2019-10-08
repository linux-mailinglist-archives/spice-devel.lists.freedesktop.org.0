Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D49CFB2C
	for <lists+spice-devel@lfdr.de>; Tue,  8 Oct 2019 15:20:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D69F8800A;
	Tue,  8 Oct 2019 13:20:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76AB06E7B5
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 13:20:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CF09D10CC1EE
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 13:20:15 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7D3D45D9CD;
 Tue,  8 Oct 2019 13:20:13 +0000 (UTC)
Date: Tue, 8 Oct 2019 15:20:13 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191008132013.tevjm3hp4epf6wx7@wingsuit>
References: <20191007103906.30517-1-fziglio@redhat.com>
 <20191007103906.30517-3-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191007103906.30517-3-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Tue, 08 Oct 2019 13:20:15 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 2/8] test-smartcard: Add test
 for Smartcard device
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
Content-Type: multipart/mixed; boundary="===============0672600678=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0672600678==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ivkkn437tv2dkyhn"
Content-Disposition: inline


--ivkkn437tv2dkyhn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 07, 2019 at 11:39:00AM +0100, Frediano Ziglio wrote:
> Create Smardcard device.
> Connect to it and test some messages are parsed and processed
> as expected.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/tests/.gitignore       |   1 +
>  server/tests/Makefile.am      |   4 +
>  server/tests/meson.build      |   4 +
>  server/tests/test-smartcard.c | 211 ++++++++++++++++++++++++++++++++++
>  4 files changed, 220 insertions(+)
>  create mode 100644 server/tests/test-smartcard.c
>=20
> diff --git a/server/tests/.gitignore b/server/tests/.gitignore
> index 36e978d4..56cc7eb9 100644
> --- a/server/tests/.gitignore
> +++ b/server/tests/.gitignore
> @@ -29,5 +29,6 @@ test-leaks
>  test-sasl
>  test-record
>  test-websocket
> +test-smartcard
>  /test-*.log
>  /test-*.trs
> diff --git a/server/tests/Makefile.am b/server/tests/Makefile.am
> index 98250851..dd285c24 100644
> --- a/server/tests/Makefile.am
> +++ b/server/tests/Makefile.am
> @@ -68,6 +68,10 @@ check_PROGRAMS =3D				\
>  	test-record				\
>  	$(NULL)
> =20
> +if HAVE_SMARTCARD
> +check_PROGRAMS +=3D test-smartcard
> +endif
> +
>  if !OS_WIN32
>  check_PROGRAMS +=3D				\
>  	test-stream				\
> diff --git a/server/tests/meson.build b/server/tests/meson.build
> index 33472f14..95ade60f 100644
> --- a/server/tests/meson.build
> +++ b/server/tests/meson.build
> @@ -65,6 +65,10 @@ if spice_server_has_sasl
>    tests +=3D [['test-sasl', true]]
>  endif
> =20
> +if spice_server_has_smartcard =3D=3D true
> +  tests +=3D [['test-smartcard', true]]
> +endif
> +
>  if host_machine.system() !=3D 'windows'
>    tests +=3D [
>      ['test-stream', true],
> diff --git a/server/tests/test-smartcard.c b/server/tests/test-smartcard.c
> new file mode 100644
> index 00000000..47e541d3
> --- /dev/null
> +++ b/server/tests/test-smartcard.c
> @@ -0,0 +1,211 @@
> +/* -*- Mode: C; c-basic-offset: 4; indent-tabs-mode: nil -*- */
> +/*
> +   Copyright (C) 2019 Red Hat, Inc.
> +
> +   This library is free software; you can redistribute it and/or
> +   modify it under the terms of the GNU Lesser General Public
> +   License as published by the Free Software Foundation; either
> +   version 2.1 of the License, or (at your option) any later version.
> +
> +   This library is distributed in the hope that it will be useful,
> +   but WITHOUT ANY WARRANTY; without even the implied warranty of
> +   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> +   Lesser General Public License for more details.
> +
> +   You should have received a copy of the GNU Lesser General Public
> +   License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
> +*/
> +/**
> + * Test Smartcard device and channel
> + */
> +
> +#include <config.h>
> +#include <string.h>
> +#include <stdlib.h>
> +#include <stdio.h>
> +#include <stdbool.h>
> +#include <unistd.h>
> +
> +#include <spice/protocol.h>
> +#include <spice/stream-device.h>
> +
> +#include "test-display-base.h"
> +#include "test-glib-compat.h"
> +#include "reds.h"
> +#include "vmc-emu.h"
> +#include "red-client.h"
> +#include "net-utils.h"
> +
> +static SpiceCoreInterface *core;
> +static Test *test;
> +static VmcEmu *vmc;
> +typedef int TestFixture;

Or you can wrap those globals in Fixture struct and actually use
it all around? This is just a test so as long as it is simple,
shouldn't be a problem but you could then just have a test_init()
test_dispose() and use g_test_add_func()?

Again, not big deal. Just different ways to do the same thing.

> +
> +static void test_smartcard_setup(TestFixture *fixture, gconstpointer use=
r_data)
> +{
> +    g_assert_null(core);
> +    g_assert_null(test);
> +    g_assert_null(vmc);
> +    core =3D basic_event_loop_init();
> +    g_assert_nonnull(core);
> +    test =3D test_new(core);
> +    g_assert_nonnull(test);
> +    vmc =3D vmc_emu_new("smartcard", NULL);
> +    g_assert_nonnull(vmc);
> +}
> +
> +static void test_smartcard_teardown(TestFixture *fixture, gconstpointer =
user_data)
> +{
> +    g_assert_nonnull(core);
> +    g_assert_nonnull(test);
> +    g_assert_nonnull(vmc);
> +
> +    vmc_emu_destroy(vmc);
> +    vmc =3D NULL;
> +    test_destroy(test);
> +    test =3D NULL;
> +    basic_event_loop_destroy();
> +    core =3D NULL;
> +}
> +
> +static RedStream *create_dummy_stream(SpiceServer *server, int *p_socket)
> +{
> +    int sv[2];
> +    g_assert_cmpint(socketpair(AF_LOCAL, SOCK_STREAM, 0, sv), =3D=3D, 0);
> +    if (p_socket) {
> +        *p_socket =3D sv[1];
> +    }
> +    red_socket_set_non_blocking(sv[0], true);
> +    red_socket_set_non_blocking(sv[1], true);
> +
> +    RedStream * stream =3D red_stream_new(server, sv[0]);
> +    g_assert_nonnull(stream);
> +
> +    return stream;
> +}
> +
> +static void send_ack_sync(int socket, uint32_t generation)
> +{
> +    struct {
> +        uint16_t dummy;
> +        uint16_t type;
> +        uint32_t len;
> +        uint32_t generation;
> +    } msg;
> +    SPICE_VERIFY(sizeof(msg) =3D=3D 12);
> +    msg.type =3D GUINT16_TO_LE(SPICE_MSGC_ACK_SYNC);
> +    msg.len =3D GUINT32_TO_LE(sizeof(generation));
> +    msg.generation =3D GUINT32_TO_LE(generation);
> +
> +    g_assert_cmpint(socket_write(socket, &msg.type, 10), =3D=3D, 10);
> +}
> +
> +static void send_data(int socket, uint32_t type)
> +{
> +    struct {
> +        uint16_t dummy;
> +        uint16_t type;
> +        uint32_t len;
> +        VSCMsgHeader vheader;
> +        char data[6];
> +    } msg;
> +    SPICE_VERIFY(sizeof(msg) =3D=3D 8+12+8);
> +    msg.type =3D GUINT16_TO_LE(SPICE_MSGC_SMARTCARD_DATA);
> +    msg.len =3D GUINT32_TO_LE(sizeof(VSCMsgHeader)+6);
> +    msg.vheader.type =3D GUINT32_TO_LE(type);
> +    msg.vheader.reader_id =3D 0;
> +    msg.vheader.length =3D GUINT32_TO_LE(6);
> +    strcpy(msg.data, "hello");
> +
> +    g_assert_cmpint(socket_write(socket, &msg.type, sizeof(msg)-4), =3D=
=3D, sizeof(msg)-4);
> +}
> +
> +static void check_data(void *opaque)
> +{
> +    static const char expected_buf[] =3D
> +        // forwarded ReaderAdd message, note that payload is stripped
> +        "\x00\x00\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00"
> +        // forwarded APDU message
> +        "\x00\x00\x00\x07\x00\x00\x00\x00\x00\x00\x00\x06\x68\x65\x6c\x6=
c\x6f\x00";
> +    const size_t expected_buf_len =3D sizeof(expected_buf) - 1;
> +    g_assert_cmpint(vmc->write_pos, =3D=3D, expected_buf_len);
> +    g_assert_true(memcmp(vmc->write_buf, expected_buf, expected_buf_len)=
 =3D=3D 0);
> +    basic_event_loop_quit();
> +}
> +
> +static void test_smartcard(TestFixture *fixture, gconstpointer user_data)
> +{
> +    SpiceServer *const server =3D test->server;
> +    uint8_t *p =3D vmc->message;
> +
> +    spice_server_add_interface(server, &vmc->instance.base);
> +
> +    // add VSC_Init message
> +    memcpy(p, "\x00\x00\x00\x01\x0a\x0b\x0c\x0d\x00\x00\x00\x00", 12);
> +    p +=3D 12;
> +    vmc_emu_add_read_till(vmc, p);
> +
> +    // find Smartcard channel to connect to
> +    RedChannel *channel =3D reds_find_channel(server, SPICE_CHANNEL_SMAR=
TCARD, 0);
> +    g_assert_nonnull(channel);
> +
> +    // create dummy RedClient and MainChannelClient
> +    RedChannelCapabilities caps;
> +    memset(&caps, 0, sizeof(caps));
> +    uint32_t common_caps =3D 1 << SPICE_COMMON_CAP_MINI_HEADER;
> +    caps.num_common_caps =3D 1;
> +    caps.common_caps =3D spice_memdup(&common_caps, sizeof(common_caps));
> +
> +    RedClient *client =3D red_client_new(server, FALSE);
> +    g_assert_nonnull(client);
> +
> +    MainChannel *main_channel =3D main_channel_new(server);
> +    g_assert_nonnull(main_channel);
> +
> +    MainChannelClient *mcc;
> +    mcc =3D main_channel_link(main_channel, client, create_dummy_stream(=
server, NULL),
> +                            0, FALSE, &caps);
> +    g_assert_nonnull(mcc);
> +    red_client_set_main(client, mcc);
> +
> +    // create our testing RedChannelClient
> +    int client_socket;
> +    red_channel_connect(channel, client, create_dummy_stream(server, &cl=
ient_socket),
> +                        FALSE, &caps);
> +    red_channel_capabilities_reset(&caps);
> +
> +    spice_server_char_device_wakeup(&vmc->instance);
> +
> +    send_ack_sync(client_socket, 1);
> +    send_data(client_socket, VSC_ReaderAdd);
> +    send_data(client_socket, VSC_APDU);
> +
> +    SpiceTimer *watch_timer;
> +    watch_timer =3D core->timer_add(check_data, core);
> +    core->timer_start(watch_timer, 100);
> +
> +    // start all test
> +    basic_event_loop_mainloop();
> +
> +    core->timer_remove(watch_timer);
> +
> +    // cleanup
> +    red_client_destroy(client);
> +    g_object_unref(main_channel);
> +    g_object_unref(channel);
> +}
> +
> +static void test_add(const char *name, void (*func)(TestFixture *, gcons=
tpointer),
> +                     gconstpointer arg)
> +{
> +    g_test_add(name, TestFixture, arg, test_smartcard_setup, func, test_=
smartcard_teardown);
> +}

I personally don't see a benefit of test_add() over plain
g_test_add(), not that I mind it.

Other than that, to the best of my knowledge, this patch is fine.
Acked-by: Victor Toso <victortoso@redhat.com>

> +
> +int main(int argc, char *argv[])
> +{
> +    g_test_init(&argc, &argv, NULL);
> +
> +    test_add("/server/smartcard", test_smartcard, NULL);
> +
> +    return g_test_run();
> +}
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--ivkkn437tv2dkyhn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2cjQ0ACgkQl9kSPeN6
SE87ww//Qj87IDeXFNpI2RHRn1IQiu9nsZgqVt+8DqU56uydDauu++9G/bEIkgIc
0NbcxJ3DnD60lz+y6zcsjQ09ea+ypkHKuc9mEIV+trgFkJ7HRtxO89s0/yQMoj8v
RDP/iKGn6wwCy+36GvuCJJI7bMqLi1Cznvaao2ABQX9iAvCgHyVdd9XUW8CJHy5x
bdNdJd8aLQ/LGynJigzCk3DvocncAuUqP1yHio2LYJKEJtpu73c4LFqXaeaEscN5
/2URClvQBOgOnXO3C2cjPjcp7H5B6YGW7Y5quBe1Cys05VN4POzv3eMKsVRIVnPQ
zuPxvzSSaghJkjvpNs8xqm4J4aRXUOszhEvGImm1THwDyVqYmNo1V6/S6X9Dgcz3
7aVK884Q3VB3SDg+J8m6o7UPDa2D4FUZacqtDadd+kwtdxnQyDoVgy/R+oLS7JzV
Mhc77pyp93AKx84OaEFABGW/GpXQvUFc5rrENDM7P0RpMtxrQuoyyycyNDBogSGX
L4Pkvfr7QYTm2bFfDNf3SBwF5wzfOd/USsh9suEyLxiBts3DsO9I+ICI7EEWTkhq
9PdFra7GO2iN2OKXecMdNJJpNvajhzfIzC4ScPYcc7r9RRgi2yFmor6T/u5R9sBO
YU8GaATs4NA+/+9qUU8pWSGEd3le/4h19+DQRR1tGnac5Gkyn8M=
=zLAJ
-----END PGP SIGNATURE-----

--ivkkn437tv2dkyhn--

--===============0672600678==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0672600678==--
