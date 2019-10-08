Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69070CF9D3
	for <lists+spice-devel@lfdr.de>; Tue,  8 Oct 2019 14:32:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 739596E7A0;
	Tue,  8 Oct 2019 12:32:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 430E56E7A0
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 12:32:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D34FB315C02A
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 12:32:19 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 578CB1001B05;
 Tue,  8 Oct 2019 12:32:19 +0000 (UTC)
Date: Tue, 8 Oct 2019 14:32:18 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191008123218.vk5uawidlweqxljy@wingsuit>
References: <20191007103906.30517-1-fziglio@redhat.com>
 <20191007103906.30517-2-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191007103906.30517-2-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 08 Oct 2019 12:32:19 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 1/8] test-stream-device:
 Factor out VMC emulation
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
Content-Type: multipart/mixed; boundary="===============1133794397=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1133794397==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="efxjbue6kstks72y"
Content-Disposition: inline


--efxjbue6kstks72y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 07, 2019 at 11:38:59AM +0100, Frediano Ziglio wrote:
> Allows to reuse code for emulating a character device.
> It will be used for Smardcard test.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/tests/Makefile.am          |   2 +
>  server/tests/meson.build          |   2 +
>  server/tests/test-stream-device.c | 224 +++++++++---------------------
>  server/tests/vmc-emu.c            | 121 ++++++++++++++++
>  server/tests/vmc-emu.h            |  48 +++++++
>  5 files changed, 236 insertions(+), 161 deletions(-)
>  create mode 100644 server/tests/vmc-emu.c
>  create mode 100644 server/tests/vmc-emu.h
>=20
> diff --git a/server/tests/Makefile.am b/server/tests/Makefile.am
> index 1e62557a..98250851 100644
> --- a/server/tests/Makefile.am
> +++ b/server/tests/Makefile.am
> @@ -37,6 +37,8 @@ libtest_a_SOURCES =3D				\
>  	test-glib-compat.h			\
>  	win-alarm.c				\
>  	win-alarm.h				\
> +	vmc-emu.c				\
> +	vmc-emu.h				\
>  	$(NULL)
> =20
>  LDADD =3D								\
> diff --git a/server/tests/meson.build b/server/tests/meson.build
> index c9377f1e..33472f14 100644
> --- a/server/tests/meson.build
> +++ b/server/tests/meson.build
> @@ -13,6 +13,8 @@ test_lib_sources =3D [
>    'test-glib-compat.h',
>    'win-alarm.c',
>    'win-alarm.h',
> +  'vmc-emu.c',
> +  'vmc-emu.h',
>  ]
> =20
>  test_libs =3D []
> diff --git a/server/tests/test-stream-device.c b/server/tests/test-stream=
-device.c
> index f5698c7d..613caed3 100644
> --- a/server/tests/test-stream-device.c
> +++ b/server/tests/test-stream-device.c
> @@ -34,84 +34,9 @@
>  #include "stream-channel.h"
>  #include "reds.h"
>  #include "win-alarm.h"
> +#include "vmc-emu.h"
> =20
> -static SpiceCharDeviceInstance vmc_instance;
> -
> -// device buffer to read from
> -static uint8_t message[2048];
> -// position to read from
> -static unsigned pos;
> -// array of limits when the read should return
> -// the array is defined as [message_sizes_curr, message_sizes_end)
> -// then the size is reach we move on next one till exausted
> -static unsigned message_sizes[16];
> -static unsigned *message_sizes_end, *message_sizes_curr;
> -static bool device_enabled =3D false;
> -
> -static unsigned vmc_write_pos;
> -static uint8_t vmc_write_buf[2048];
> -
> -// handle writes to the device
> -static int vmc_write(SPICE_GNUC_UNUSED SpiceCharDeviceInstance *sin,
> -                     SPICE_GNUC_UNUSED const uint8_t *buf,
> -                     int len)
> -{
> -    // just copy into the buffer
> -    unsigned copy =3D MIN(sizeof(vmc_write_buf) - vmc_write_pos, len);
> -    memcpy(vmc_write_buf+vmc_write_pos, buf, copy);
> -    vmc_write_pos +=3D copy;
> -    return len;
> -}
> -
> -static int vmc_read(SPICE_GNUC_UNUSED SpiceCharDeviceInstance *sin,
> -                    uint8_t *buf,
> -                    int len)
> -{
> -    int ret;
> -
> -    if (pos >=3D *message_sizes_curr && message_sizes_curr < message_siz=
es_end) {
> -        ++message_sizes_curr;
> -    }
> -    if (message_sizes_curr >=3D message_sizes_end || pos >=3D *message_s=
izes_curr) {
> -        return 0;
> -    }
> -    ret =3D MIN(*message_sizes_curr - pos, len);
> -    memcpy(buf, &message[pos], ret);
> -    pos +=3D ret;
> -    // kick off next message read
> -    // currently Qemu kicks the device so we need to do it manually
> -    // here. If not all data are read, the device goes into blocking
> -    // state and we get the wake only when we read from the device
> -    // again
> -    if (pos >=3D *message_sizes_curr) {
> -        spice_server_char_device_wakeup(&vmc_instance);
> -    }
> -    return ret;
> -}
> -
> -static void vmc_state(SPICE_GNUC_UNUSED SpiceCharDeviceInstance *sin,
> -                      SPICE_GNUC_UNUSED int connected)
> -{
> -    device_enabled =3D !!connected;
> -}
> -
> -static SpiceCharDeviceInterface vmc_interface =3D {
> -    .base =3D {
> -        .type          =3D SPICE_INTERFACE_CHAR_DEVICE,
> -        .description   =3D "test spice virtual channel char device",
> -        .major_version =3D SPICE_INTERFACE_CHAR_DEVICE_MAJOR,
> -        .minor_version =3D SPICE_INTERFACE_CHAR_DEVICE_MINOR,
> -    },
> -    .state              =3D vmc_state,
> -    .write              =3D vmc_write,
> -    .read               =3D vmc_read,
> -};
> -
> -// this specifically creates a stream device
> -static SpiceCharDeviceInstance vmc_instance =3D {
> -    .subtype =3D "port",
> -    .portname =3D "org.spice-space.stream.0",
> -};
> +static VmcEmu *vmc;
> =20
>  static uint8_t *add_stream_hdr(uint8_t *p, StreamMsgType type, uint32_t =
size)
>  {
> @@ -145,18 +70,18 @@ discard_server_capabilities(void)
>  {
>      StreamDevHeader hdr;
> =20
> -    if (vmc_write_pos =3D=3D 0) {
> +    if (vmc->write_pos =3D=3D 0) {
>          return;
>      }
> -    g_assert(vmc_write_pos >=3D sizeof(hdr));
> +    g_assert(vmc->write_pos >=3D sizeof(hdr));
> =20
> -    memcpy(&hdr, vmc_write_buf, sizeof(hdr));
> +    memcpy(&hdr, vmc->write_buf, sizeof(hdr));
>      hdr.type =3D GUINT16_FROM_LE(hdr.type);
>      hdr.size =3D GUINT32_FROM_LE(hdr.size);
>      if (hdr.type =3D=3D STREAM_TYPE_CAPABILITIES) {
> -        g_assert_cmpint(hdr.size, <=3D, vmc_write_pos - sizeof(hdr));
> -        vmc_write_pos -=3D hdr.size + sizeof(hdr);
> -        memmove(vmc_write_buf, vmc_write_buf + hdr.size + sizeof(hdr), v=
mc_write_pos);
> +        g_assert_cmpint(hdr.size, <=3D, vmc->write_pos - sizeof(hdr));
> +        vmc->write_pos -=3D hdr.size + sizeof(hdr);
> +        memmove(vmc->write_buf, vmc->write_buf + hdr.size + sizeof(hdr),=
 vmc->write_pos);
>      }
>  }
> =20
> @@ -168,12 +93,12 @@ check_vmc_error_message(void)
> =20
>      discard_server_capabilities();
> =20
> -    g_assert_cmpint(vmc_write_pos, >=3D ,sizeof(hdr));
> +    g_assert_cmpint(vmc->write_pos, >=3D ,sizeof(hdr));
> =20
> -    memcpy(&hdr, vmc_write_buf, sizeof(hdr));
> +    memcpy(&hdr, vmc->write_buf, sizeof(hdr));
>      g_assert_cmpint(hdr.protocol_version, =3D=3D, STREAM_DEVICE_PROTOCOL=
);
>      g_assert_cmpint(GUINT16_FROM_LE(hdr.type), =3D=3D, STREAM_TYPE_NOTIF=
Y_ERROR);
> -    g_assert_cmpint(GUINT32_FROM_LE(hdr.size), <=3D, vmc_write_pos - siz=
eof(hdr));
> +    g_assert_cmpint(GUINT32_FROM_LE(hdr.size), <=3D, vmc->write_pos - si=
zeof(hdr));
>  }
> =20
>  static int num_send_data_calls =3D 0;
> @@ -246,15 +171,13 @@ static void test_stream_device_setup(TestFixture *f=
ixture, gconstpointer user_da
>  {
>      g_assert_null(core);
>      g_assert_null(test);
> +    g_assert_null(vmc);
>      core =3D basic_event_loop_init();
>      g_assert_nonnull(core);
>      test =3D test_new(core);
>      g_assert_nonnull(test);
> -
> -    pos =3D 0;
> -    vmc_write_pos =3D 0;
> -    message_sizes_curr =3D message_sizes;
> -    message_sizes_end =3D message_sizes;
> +    vmc =3D vmc_emu_new("port", "org.spice-space.stream.0");
> +    g_assert_nonnull(vmc);
> =20
>      num_send_data_calls =3D 0;
>      send_data_bytes =3D 0;
> @@ -265,6 +188,8 @@ static void test_stream_device_teardown(TestFixture *=
fixture, gconstpointer user
>      g_assert_nonnull(core);
>      g_assert_nonnull(test);
> =20
> +    vmc_emu_destroy(vmc);
> +    vmc =3D NULL;
>      test_destroy(test);
>      test =3D NULL;
>      basic_event_loop_destroy();
> @@ -273,122 +198,109 @@ static void test_stream_device_teardown(TestFixtu=
re *fixture, gconstpointer user
> =20
>  static void test_kick(void)
>  {
> -    vmc_instance.base.sif =3D &vmc_interface.base;
> -    spice_server_add_interface(test->server, &vmc_instance.base);
> +    spice_server_add_interface(test->server, &vmc->instance.base);
> =20
>      // we need to open the device and kick the start
>      // the alarm is to prevent the program from getting stuck
>      alarm(5);
> -    spice_server_port_event(&vmc_instance, SPICE_PORT_EVENT_OPENED);
> -    spice_server_char_device_wakeup(&vmc_instance);
> +    spice_server_port_event(&vmc->instance, SPICE_PORT_EVENT_OPENED);
> +    spice_server_char_device_wakeup(&vmc->instance);
>      alarm(0);
>  }
> =20
>  static void test_stream_device(TestFixture *fixture, gconstpointer user_=
data)
>  {
> -    uint8_t *p =3D message;
> -
>      for (int test_num=3D0; test_num < 2; ++test_num) {
> -        pos =3D 0;
> -        vmc_write_pos =3D 0;
> -        message_sizes_curr =3D message_sizes;
> -        message_sizes_end =3D message_sizes;
> +        vmc_emu_reset(vmc);
> +        uint8_t *p =3D vmc->message;
> =20
>          // add some messages into device buffer
>          // here we are testing the device is reading at least two
>          // consecutive format messages
>          // first message part has 2 extra bytes to check for header split
>          p =3D add_format(p, 640, 480, SPICE_VIDEO_CODEC_TYPE_MJPEG);
> -        *message_sizes_end =3D p - message + 2;
> -        ++message_sizes_end;
> +        vmc_emu_add_read_till(vmc, p + 2);
> =20
>          p =3D add_format(p, 640, 480, SPICE_VIDEO_CODEC_TYPE_VP9);
> =20
>          // this split the second format in half
> -        *message_sizes_end =3D p - message - 4;
> -        ++message_sizes_end;
> +        vmc_emu_add_read_till(vmc, p - 4);
> =20
> -        *message_sizes_end =3D p - message;
> -        ++message_sizes_end;
> +        vmc_emu_add_read_till(vmc, p);
> =20
>          // add a message to stop data to be read
>          p =3D add_stream_hdr(p, STREAM_TYPE_INVALID, 0);
> -        *message_sizes_end =3D p - message;
> -        ++message_sizes_end;
> +        vmc_emu_add_read_till(vmc, p);
> =20
>          // this message should not be read
>          p =3D add_stream_hdr(p, STREAM_TYPE_INVALID, 0);
> -        *message_sizes_end =3D p - message;
> -        ++message_sizes_end;
> +        vmc_emu_add_read_till(vmc, p);
> =20
> -        vmc_instance.base.sif =3D &vmc_interface.base;
> -        spice_server_add_interface(test->server, &vmc_instance.base);
> +        spice_server_add_interface(test->server, &vmc->instance.base);
> =20
>          // device should not have read data before we open it
> -        spice_server_char_device_wakeup(&vmc_instance);
> -        g_assert_cmpint(pos, =3D=3D, 0);
> +        spice_server_char_device_wakeup(&vmc->instance);
> +        g_assert_cmpint(vmc->pos, =3D=3D, 0);
> =20
>          g_test_expect_message(G_LOG_DOMAIN, G_LOG_LEVEL_WARNING, "Stream=
 device received invalid message: Invalid message type");
> =20
>          // we need to open the device and kick the start
> -        spice_server_port_event(&vmc_instance, SPICE_PORT_EVENT_OPENED);
> -        spice_server_char_device_wakeup(&vmc_instance);
> -        spice_server_port_event(&vmc_instance, SPICE_PORT_EVENT_CLOSED);
> +        spice_server_port_event(&vmc->instance, SPICE_PORT_EVENT_OPENED);
> +        spice_server_char_device_wakeup(&vmc->instance);
> +        spice_server_port_event(&vmc->instance, SPICE_PORT_EVENT_CLOSED);
> =20
>          // make sure first 3 parts are read completely
> -        g_assert(message_sizes_curr - message_sizes >=3D 3);
> +        g_assert(vmc->message_sizes_curr - vmc->message_sizes >=3D 3);
>          // make sure the device readed all or that device was
>          // disabled, we need this to make sure that device will be in
>          // sync when opened again
> -        g_assert(message_sizes_curr - message_sizes =3D=3D 5 || !device_=
enabled);
> +        g_assert(vmc->message_sizes_curr - vmc->message_sizes =3D=3D 5 |=
| !vmc->device_enabled);
> =20
>          check_vmc_error_message();
> -        spice_server_remove_interface(&vmc_instance.base);
> +        spice_server_remove_interface(&vmc->instance.base);
>      }
>  }
> =20
>  // check if sending a partial message causes issues
>  static void test_stream_device_unfinished(TestFixture *fixture, gconstpo=
inter user_data)
>  {
> -    uint8_t *p =3D message;
> +    uint8_t *p =3D vmc->message;
> =20
>      // this long and not finished message should not cause an infinite l=
oop
>      p =3D add_stream_hdr(p, STREAM_TYPE_DATA, 100000);
> -    *message_sizes_end =3D p - message;
> -    ++message_sizes_end;
> +    vmc_emu_add_read_till(vmc, p);
> =20
>      test_kick();
> =20
>      // we should have read all data
> -    g_assert(message_sizes_curr - message_sizes =3D=3D 1);
> +    g_assert(vmc->message_sizes_curr - vmc->message_sizes =3D=3D 1);
> =20
>      // we should have no data from the device
>      discard_server_capabilities();
> -    g_assert_cmpint(vmc_write_pos, =3D=3D, 0);
> +    g_assert_cmpint(vmc->write_pos, =3D=3D, 0);
>  }
> =20
>  // check if sending multiple messages cause stall
>  static void test_stream_device_multiple(TestFixture *fixture, gconstpoin=
ter user_data)
>  {
> -    uint8_t *p =3D message;
> +    uint8_t *p =3D vmc->message;
> =20
>      // add some messages into device buffer
>      p =3D add_format(p, 640, 480, SPICE_VIDEO_CODEC_TYPE_MJPEG);
>      p =3D add_format(p, 640, 480, SPICE_VIDEO_CODEC_TYPE_MJPEG);
>      p =3D add_format(p, 640, 480, SPICE_VIDEO_CODEC_TYPE_MJPEG);
> -    *message_sizes_end =3D p - message;
> -    ++message_sizes_end;
> +    vmc_emu_add_read_till(vmc, p);
> =20
>      test_kick();
> =20
>      // we should have read all data
> -    g_assert(message_sizes_curr - message_sizes =3D=3D 1);
> +    g_assert(vmc->message_sizes_curr - vmc->message_sizes =3D=3D 1);
>  }
> =20
>  // check if data message consume even following message
>  static void test_stream_device_format_after_data(TestFixture *fixture, g=
constpointer user_data)
>  {
> -    uint8_t *p =3D message;
> +    uint8_t *p =3D vmc->message;
> =20
>      // add some messages into device buffer
>      p =3D add_format(p, 640, 480, SPICE_VIDEO_CODEC_TYPE_MJPEG);
> @@ -396,15 +308,14 @@ static void test_stream_device_format_after_data(Te=
stFixture *fixture, gconstpoi
>      memcpy(p, "hello", 5);
>      p +=3D 5;
>      p =3D add_stream_hdr(p, STREAM_TYPE_INVALID, 0);
> -    *message_sizes_end =3D p - message;
> -    ++message_sizes_end;
> +    vmc_emu_add_read_till(vmc, p);
> =20
>      g_test_expect_message(G_LOG_DOMAIN, G_LOG_LEVEL_WARNING, "Stream dev=
ice received invalid message: Invalid message type");
> =20
>      test_kick();
> =20
>      // we should read all data
> -    g_assert(message_sizes_curr - message_sizes =3D=3D 1);
> +    g_assert(vmc->message_sizes_curr - vmc->message_sizes =3D=3D 1);
> =20
>      // we should have an error back
>      check_vmc_error_message();
> @@ -414,46 +325,42 @@ static void test_stream_device_format_after_data(Te=
stFixture *fixture, gconstpoi
>  static void test_stream_device_empty(TestFixture *fixture, gconstpointer=
 user_data)
>  {
>      const StreamMsgType msg_type =3D (StreamMsgType) GPOINTER_TO_INT(use=
r_data);
> -    uint8_t *p =3D message;
> +    uint8_t *p =3D vmc->message;
> =20
>      // add some messages into device buffer
>      p =3D add_stream_hdr(p, msg_type, 0);
> -    *message_sizes_end =3D p - message;
> -    ++message_sizes_end;
> +    vmc_emu_add_read_till(vmc, p);
>      p =3D add_format(p, 640, 480, SPICE_VIDEO_CODEC_TYPE_MJPEG);
> -    *message_sizes_end =3D p - message;
> -    ++message_sizes_end;
> +    vmc_emu_add_read_till(vmc, p);
>      p =3D add_format(p, 640, 480, SPICE_VIDEO_CODEC_TYPE_MJPEG);
> -    *message_sizes_end =3D p - message;
> -    ++message_sizes_end;
> +    vmc_emu_add_read_till(vmc, p);
> =20
>      test_kick();
> =20
>      // we should read all data
> -    g_assert(message_sizes_curr - message_sizes =3D=3D 3);
> +    g_assert(vmc->message_sizes_curr - vmc->message_sizes =3D=3D 3);
> =20
>      // we should have no data from the device
>      discard_server_capabilities();
> -    g_assert_cmpint(vmc_write_pos, =3D=3D, 0);
> +    g_assert_cmpint(vmc->write_pos, =3D=3D, 0);
>  }
> =20
>  // check that server refuse huge data messages
>  static void test_stream_device_huge_data(TestFixture *fixture, gconstpoi=
nter user_data)
>  {
> -    uint8_t *p =3D message;
> +    uint8_t *p =3D vmc->message;
> =20
>      // add some messages into device buffer
>      p =3D add_stream_hdr(p, STREAM_TYPE_DATA, 33 * 1024 * 1024);
>      p =3D add_format(p, 640, 480, SPICE_VIDEO_CODEC_TYPE_MJPEG);
> -    *message_sizes_end =3D p - message;
> -    ++message_sizes_end;
> +    vmc_emu_add_read_till(vmc, p);
> =20
>      g_test_expect_message(G_LOG_DOMAIN, G_LOG_LEVEL_WARNING, "Stream dev=
ice received invalid message: STREAM_DATA too large");
> =20
>      test_kick();
> =20
>      // we should read all data
> -    g_assert(message_sizes_curr - message_sizes =3D=3D 1);
> +    g_assert(vmc->message_sizes_curr - vmc->message_sizes =3D=3D 1);
> =20
>      // we should have an error back
>      check_vmc_error_message();
> @@ -462,7 +369,7 @@ static void test_stream_device_huge_data(TestFixture =
*fixture, gconstpointer use
>  // check that server send all message
>  static void test_stream_device_data_message(TestFixture *fixture, gconst=
pointer user_data)
>  {
> -    uint8_t *p =3D message;
> +    uint8_t *p =3D vmc->message;
> =20
>      // add some messages into device buffer
>      p =3D add_format(p, 640, 480, SPICE_VIDEO_CODEC_TYPE_MJPEG);
> @@ -470,23 +377,19 @@ static void test_stream_device_data_message(TestFix=
ture *fixture, gconstpointer
>      for (int i =3D 0; i < 1017; ++i, ++p) {
>          *p =3D (uint8_t) (i * 123 + 57);
>      }
> -    *message_sizes_end =3D 51;
> -    ++message_sizes_end;
> -    *message_sizes_end =3D 123;
> -    ++message_sizes_end;
> -    *message_sizes_end =3D 534;
> -    ++message_sizes_end;
> -    *message_sizes_end =3D p - message;
> -    ++message_sizes_end;
> +    vmc_emu_add_read_till(vmc, vmc->message + 51);
> +    vmc_emu_add_read_till(vmc, vmc->message + 123);
> +    vmc_emu_add_read_till(vmc, vmc->message + 534);
> +    vmc_emu_add_read_till(vmc, p);
> =20
>      test_kick();
> =20
>      // we should read all data
> -    g_assert(message_sizes_curr - message_sizes =3D=3D 4);
> +    g_assert(vmc->message_sizes_curr - vmc->message_sizes =3D=3D 4);
> =20
>      // we should have no data from the device
>      discard_server_capabilities();
> -    g_assert_cmpint(vmc_write_pos, =3D=3D, 0);
> +    g_assert_cmpint(vmc->write_pos, =3D=3D, 0);
> =20
>      // make sure data were collapsed in a single message
>      g_assert_cmpint(num_send_data_calls, =3D=3D, 1);
> @@ -509,15 +412,14 @@ static void test_display_info(TestFixture *fixture,=
 gconstpointer user_data)
>          .device_display_id =3D GUINT32_TO_LE(0x0a0b0c0d),
>          .device_address_len =3D GUINT32_TO_LE(sizeof(address)),
>      };
> -    uint8_t *p =3D message;
> +    uint8_t *p =3D vmc->message;
>      p =3D add_stream_hdr(p, STREAM_TYPE_DEVICE_DISPLAY_INFO, sizeof(info=
) + sizeof(address));
>      memcpy(p, &info, sizeof(info));
>      p +=3D sizeof(info);
>      strcpy((char*)p, address);
>      p +=3D sizeof(address);
> =20
> -    *message_sizes_end =3D p - message;
> -    ++message_sizes_end;
> +    vmc_emu_add_read_till(vmc, p);
> =20
>      // parse the simulated display info message from the stream device s=
o the server now has display
>      // info for the mock stream device
> diff --git a/server/tests/vmc-emu.c b/server/tests/vmc-emu.c
> new file mode 100644
> index 00000000..ddac5269
> --- /dev/null
> +++ b/server/tests/vmc-emu.c
> @@ -0,0 +1,121 @@
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
> +
> +#include <config.h>
> +#include <glib.h>
> +
> +#include "vmc-emu.h"
> +
> +// handle writes to the device
> +static int vmc_write(SpiceCharDeviceInstance *sin,
> +                     const uint8_t *buf, int len)
> +{
> +    VmcEmu *const vmc =3D SPICE_CONTAINEROF(sin, VmcEmu, instance);
> +
> +    // just copy into the buffer
> +    unsigned copy =3D MIN(sizeof(vmc->write_buf) - vmc->write_pos, len);
> +    memcpy(vmc->write_buf+vmc->write_pos, buf, copy);
> +    vmc->write_pos +=3D copy;
> +    return len;
> +}
> +
> +static int vmc_read(SpiceCharDeviceInstance *sin,
> +                    uint8_t *buf, int len)
> +{
> +    VmcEmu *const vmc =3D SPICE_CONTAINEROF(sin, VmcEmu, instance);
> +    int ret;
> +
> +    if (vmc->pos >=3D *vmc->message_sizes_curr && vmc->message_sizes_cur=
r < vmc->message_sizes_end) {
> +        ++vmc->message_sizes_curr;
> +    }
> +    if (vmc->message_sizes_curr >=3D vmc->message_sizes_end || vmc->pos =
>=3D *vmc->message_sizes_curr) {
> +        return 0;
> +    }
> +    ret =3D MIN(*vmc->message_sizes_curr - vmc->pos, len);
> +    memcpy(buf, &vmc->message[vmc->pos], ret);
> +    vmc->pos +=3D ret;
> +    // kick off next message read
> +    // currently Qemu kicks the device so we need to do it manually
> +    // here. If not all data are read, the device goes into blocking
> +    // state and we get the wake only when we read from the device
> +    // again
> +    if (vmc->pos >=3D *vmc->message_sizes_curr) {
> +        spice_server_char_device_wakeup(&vmc->instance);
> +    }
> +    return ret;
> +}
> +
> +static void vmc_state(SpiceCharDeviceInstance *sin,
> +                      int connected)
> +{
> +    VmcEmu *const vmc =3D SPICE_CONTAINEROF(sin, VmcEmu, instance);
> +    vmc->device_enabled =3D !!connected;
> +}
> +
> +static const SpiceCharDeviceInterface vmc_interface =3D {
> +    .base =3D {
> +        .type          =3D SPICE_INTERFACE_CHAR_DEVICE,
> +        .description   =3D "test spice virtual channel char device",
> +        .major_version =3D SPICE_INTERFACE_CHAR_DEVICE_MAJOR,
> +        .minor_version =3D SPICE_INTERFACE_CHAR_DEVICE_MINOR,
> +    },
> +    .state              =3D vmc_state,
> +    .write              =3D vmc_write,
> +    .read               =3D vmc_read,
> +};
> +
> +VmcEmu *vmc_emu_new(const char *subtype, const char *portname)
> +{
> +    VmcEmu *vmc =3D g_new0(VmcEmu, 1);
> +    vmc->interface =3D vmc_interface;
> +    vmc->instance.base.sif =3D &vmc->interface.base;
> +    vmc->instance.subtype =3D g_strdup(subtype);
> +    if (portname) {
> +        vmc->instance.portname =3D g_strdup(portname);
> +    }
> +    vmc_emu_reset(vmc);
> +    return vmc;
> +}
> +
> +void vmc_emu_destroy(VmcEmu *vmc)
> +{
> +    g_free((char *) vmc->instance.portname);
> +    g_free((char *) vmc->instance.subtype);
> +    g_free(vmc);
> +}
> +
> +void vmc_emu_reset(VmcEmu *vmc)
> +{
> +    vmc->pos =3D 0;
> +    vmc->write_pos =3D 0;
> +    vmc->message_sizes_curr =3D vmc->message_sizes;
> +    vmc->message_sizes_end =3D vmc->message_sizes;
> +}
> +
> +void vmc_emu_add_read_till(VmcEmu *vmc, uint8_t *end)
> +{
> +    g_assert(vmc->message_sizes_end - vmc->message_sizes < G_N_ELEMENTS(=
vmc->message_sizes));

I'd move the unsigned size here and change both asserts to use
it, that is:

    unsigned size =3D end - vmc->message;
    g_assert(size >=3D 0);
    g_assert(size <=3D G_N_ELEMENTS(vmc->message));

This is my only nitpick for this patch, feel free to ignore if
you want

    Acked-by: Victor Toso <victortoso@redhat.com>

> +    g_assert(end >=3D vmc->message);
> +    g_assert(end - vmc->message <=3D G_N_ELEMENTS(vmc->message));
> +    unsigned prev_size =3D
> +        vmc->message_sizes_end > vmc->message_sizes ? vmc->message_sizes=
_end[-1] : 0;

Forgot how long since I saw a negative index in C!

> +    unsigned size =3D end - vmc->message;
> +    g_assert(size >=3D prev_size);
> +    *vmc->message_sizes_end =3D size;
> +    ++vmc->message_sizes_end;
> +}
> diff --git a/server/tests/vmc-emu.h b/server/tests/vmc-emu.h
> new file mode 100644
> index 00000000..6fcea69d
> --- /dev/null
> +++ b/server/tests/vmc-emu.h
> @@ -0,0 +1,48 @@
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
> +#pragma once
> +
> +#include "char-device.h"
> +
> +typedef struct VmcEmu VmcEmu;
> +
> +struct VmcEmu {
> +    SpiceCharDeviceInterface interface;
> +    SpiceCharDeviceInstance instance;
> +
> +    // device buffer to read from
> +    uint8_t message[2048];
> +    // position to read from
> +    unsigned pos;
> +
> +    // array of limits when the read should return
> +    // the array is defined as [message_sizes_curr, message_sizes_end)
> +    // then the size is reach we move on next one till exausted
> +    unsigned message_sizes[16];
> +    unsigned *message_sizes_end, *message_sizes_curr;
> +
> +    bool device_enabled;
> +
> +    unsigned write_pos;
> +    uint8_t write_buf[2048];
> +};
> +
> +VmcEmu *vmc_emu_new(const char *subtype, const char *portname);
> +void vmc_emu_destroy(VmcEmu *vmc);
> +void vmc_emu_reset(VmcEmu *vmc);
> +void vmc_emu_add_read_till(VmcEmu *vmc, uint8_t *end);
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--efxjbue6kstks72y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2cgdIACgkQl9kSPeN6
SE//1xAAjMgC2JY5lCmJ2SUhnjuNxG9I2gLiKq0pBCFjBzZwV0cqDJ9AkfVD6wAd
of6zlBao48fA/9AllAQwVZOe36CNvm7QBFqUfpJXmXaQUjN4GvCqNUlJmcRVy/LU
Ty62atUjDrZmc8iZqQSVeBHFy5O6JE9JwKnyjH87jj8aY9bUwjcZVjWwBLRgtfJk
5kbLGN0aPA9YxN6xnwXX2IVCNW1HKvHK/mZ9qRy4JHgoWP0baMgXvw/K59lbS0vB
NqbThHMu6GJdNDRldciX1OJndKuCzwIdFD/FeiGfpghq86AQ1Su3s3OgZJN8l/Qz
AQBCVjGWJxZXRX643BRBXQOzH31wiyzs4MQ2w0sPXqNxwXSV+AzH98/3HkH4hW2T
Og9Fn+Nv9b1daEES5CRSNVnpWoKezLYNZbv/uN8ikx7bQX+G8OTVn1ODLcAMA0st
5WFny9q8uq9NdIaQs697NeaxSEnD4RGuNj3etqFsRbv6SGIGljc0PcD4TLuDPyy5
T/zVHnBKManLHoym5TzKk1EyHWXsZ1+/Akh9E+hcbRfr7bQGsY2x+ZXEWatg8wUZ
N+FrsQ/VGvRXLmY0YmMkt01YwAZ1v8RYYeMcXxIVb0WdrO1XPOWd8LwWzrqP1B5o
tB1aBqRTmSN2LvSsINphQfBEkgAloPUXgLhZDltfdbtX4zOqHL0=
=fupc
-----END PGP SIGNATURE-----

--efxjbue6kstks72y--

--===============1133794397==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1133794397==--
