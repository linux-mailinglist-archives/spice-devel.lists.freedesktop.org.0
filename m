Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 207E7D0AE9
	for <lists+spice-devel@lfdr.de>; Wed,  9 Oct 2019 11:20:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5811389EB4;
	Wed,  9 Oct 2019 09:20:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4234F89EB4
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 09:20:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D78AF3082B13
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 09:20:31 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5FBBA60C57;
 Wed,  9 Oct 2019 09:20:31 +0000 (UTC)
Date: Wed, 9 Oct 2019 11:20:30 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191009092030.5x7ko2ckj3vmjpru@wingsuit>
References: <20191008173924.12388-1-fziglio@redhat.com>
 <20191008173924.12388-8-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191008173924.12388-8-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Wed, 09 Oct 2019 09:20:31 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2 7/7] test-smardcard:
 Improve test coverage
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
Content-Type: multipart/mixed; boundary="===============1946168926=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1946168926==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hsegia6pr57y3sti"
Content-Disposition: inline


--hsegia6pr57y3sti
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Oct 08, 2019 at 06:39:24PM +0100, Frediano Ziglio wrote:
> Using coverage utility exercise more code paths:
> - message from channel with wrong type;
> - remove message from channel with already removed reader;
> - init message from channel (ignored);
> - data from devices, ADPU;
> - error from device;
> - messages split in different ways;
> - invalid reader_id values.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Acked-by: Victor Toso <victortoso@redhat.com>

Nothing important to say, if we need to improve, we can wait till
bugs are hit first. Happy to have this tests, many thanks!

> ---
>  server/tests/test-smartcard.c | 207 ++++++++++++++++++++++++++++++----
>  server/tests/vmc-emu.c        |   3 +
>  server/tests/vmc-emu.h        |   3 +
>  3 files changed, 193 insertions(+), 20 deletions(-)
>=20
> diff --git a/server/tests/test-smartcard.c b/server/tests/test-smartcard.c
> index aac2e7941..a3a7a1597 100644
> --- a/server/tests/test-smartcard.c
> +++ b/server/tests/test-smartcard.c
> @@ -41,6 +41,15 @@ static SpiceCoreInterface *core;
>  static Test *test;
>  static VmcEmu *vmc;
>  typedef int TestFixture;
> +static int client_socket =3D -1;
> +// buffer when data from channel are stored
> +static SpiceBuffer channel_buf;
> +// expected buffer in channel
> +static SpiceBuffer channel_expected;
> +// expected buffer in device
> +static SpiceBuffer device_expected;
> +
> +static void next_test(void);
> =20
>  static void test_smartcard_setup(TestFixture *fixture, gconstpointer use=
r_data)
>  {
> @@ -101,7 +110,7 @@ static void send_ack_sync(int socket, uint32_t genera=
tion)
>      g_assert_cmpint(socket_write(socket, &msg.type, 10), =3D=3D, 10);
>  }
> =20
> -static void send_data(int socket, uint32_t type)
> +static void send_data(int socket, uint32_t type, uint32_t reader_id)
>  {
>      struct {
>          uint16_t dummy;
> @@ -114,24 +123,183 @@ static void send_data(int socket, uint32_t type)
>      msg.type =3D GUINT16_TO_LE(SPICE_MSGC_SMARTCARD_DATA);
>      msg.len =3D GUINT32_TO_LE(sizeof(VSCMsgHeader)+6);
>      msg.vheader.type =3D GUINT32_TO_LE(type);
> -    msg.vheader.reader_id =3D 0;
> +    msg.vheader.reader_id =3D GUINT32_TO_LE(reader_id);
>      msg.vheader.length =3D GUINT32_TO_LE(6);
>      strcpy(msg.data, "hello");
> =20
>      g_assert_cmpint(socket_write(socket, &msg.type, sizeof(msg)-4), =3D=
=3D, sizeof(msg)-4);
>  }
> =20
> -static void check_data(void *opaque)
> +static void check_data(VmcEmu *vmc)
> +{
> +    g_assert_cmpint(device_expected.offset, !=3D, 0);
> +    if (vmc->write_pos < device_expected.offset) {
> +        return;
> +    }
> +    g_assert_cmpint(vmc->write_pos, =3D=3D, device_expected.offset);
> +    g_assert_true(memcmp(vmc->write_buf, device_expected.buffer, device_=
expected.offset) =3D=3D 0);
> +
> +    next_test();
> +}
> +
> +static void data_from_channel(int fd, int event, void *opaque)
> +{
> +    uint8_t buf[128];
> +    ssize_t ret =3D socket_read(fd, buf, sizeof(buf));
> +    if (ret <=3D 0) {
> +        return;
> +    }
> +    spice_buffer_append(&channel_buf, buf, ret);
> +
> +    g_assert_cmpint(channel_expected.offset, !=3D, 0);
> +    if (channel_buf.offset < channel_expected.offset) {
> +        return;
> +    }
> +    g_assert_true(memcmp(channel_buf.buffer, channel_expected.buffer, ch=
annel_expected.offset) =3D=3D 0);
> +    spice_buffer_remove(&channel_buf, channel_expected.offset);
> +
> +    next_test();
> +}
> +
> +static void next_test(void)
>  {
> -    static const char expected_buf[] =3D
> -        // forwarded ReaderAdd message, note that payload is stripped
> -        "\x00\x00\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00"
> -        // forwarded APDU message
> -        "\x00\x00\x00\x07\x00\x00\x00\x00\x00\x00\x00\x06\x68\x65\x6c\x6=
c\x6f\x00";
> -    const size_t expected_buf_len =3D sizeof(expected_buf) - 1;
> -    g_assert_cmpint(vmc->write_pos, =3D=3D, expected_buf_len);
> -    g_assert_true(memcmp(vmc->write_buf, expected_buf, expected_buf_len)=
 =3D=3D 0);
> -    basic_event_loop_quit();
> +    static int test_num;
> +
> +    test_num++;
> +    printf("Executing subtest %d\n", test_num);
> +
> +    spice_buffer_reset(&channel_expected);
> +    spice_buffer_reset(&device_expected);
> +
> +    switch (test_num) {
> +    // First test, send some message to channel expecting a reply
> +    // for each message we are sending
> +    case 1: {
> +        static const char expected_buf[] =3D
> +            // forwarded ReaderAdd message, note that payload is stripped
> +            "\x00\x00\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00"
> +            // forwarded APDU message
> +            "\x00\x00\x00\x07\x00\x00\x00\x00\x00\x00\x00\x06\x68\x65\x6=
c\x6c\x6f\x00"
> +            "\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00";
> +        spice_buffer_append(&device_expected, expected_buf, sizeof(expec=
ted_buf) - 1);
> +
> +        send_data(client_socket, VSC_ReaderAdd, 0);
> +        send_data(client_socket, VSC_APDU, 0);
> +        send_data(client_socket, VSC_ReaderRemove, 0);
> +        } break;
> +    // Second test, send an init and remove a reader that is not present,
> +    // we expect an error for the removal (the Init is ignored)
> +    case 2: {
> +        static const char expected_buf[] =3D
> +            // forwarded Error message
> +            "\x65\x00\x10\x00\x00\x00"
> +            "\x02\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x01\x00\x0=
0\x00";
> +        spice_buffer_append(&channel_expected, expected_buf, sizeof(expe=
cted_buf) - 1);
> +
> +        // Init message, ignored
> +        send_data(client_socket, VSC_Init, 0);
> +        // remove again, this will trigger an error
> +        send_data(client_socket, VSC_ReaderRemove, 0);
> +        } break;
> +    // Third test, APDU messages from device are forwarded to the channe=
l.
> +    // We split the header and payload of the first message to check dev=
ice code can handle it.
> +    // The second message is send inside a block with the end of the fir=
st to trigger
> +    // an hard path in the device code
> +    case 3: {
> +        static const char expected_buf[] =3D
> +            // forwarded APDU message
> +            "\x65\x00\x12\x00\x00\x00"
> +            "\x07\x00\x00\x00\x00\x00\x00\x00\x06\x00\x00\x00" "foobaz"
> +            "\x65\x00\x12\x00\x00\x00"
> +            "\x07\x00\x00\x00\x00\x00\x00\x00\x06\x00\x00\x00" "foobar";
> +        spice_buffer_append(&channel_expected, expected_buf, sizeof(expe=
cted_buf) - 1);
> +
> +        vmc_emu_reset(vmc);
> +        // data from device
> +        uint8_t *p =3D vmc->message;
> +
> +        // add VSC_APDU message
> +        memcpy(p, "\x00\x00\x00\x07\x00\x00\x00\x00\x00\x00\x00\x06" "fo=
obaz", 18);
> +        p +=3D 18;
> +        memcpy(p, "\x00\x00\x00\x07\x00\x00\x00\x00\x00\x00\x00\x06" "fo=
obar", 18);
> +        p +=3D 18;
> +        vmc_emu_add_read_till(vmc, vmc->message + 8);
> +        vmc_emu_add_read_till(vmc, vmc->message + 14);
> +        vmc_emu_add_read_till(vmc, p);
> +
> +        spice_server_char_device_wakeup(&vmc->instance);
> +        } break;
> +    // Fourth test, we should get back an error if client tried to remove
> +    // a not existing reader
> +    case 4: {
> +        static const char expected_buf[] =3D
> +            // forwarded Error message
> +            "\x65\x00\x10\x00\x00\x00"
> +            "\x02\x00\x00\x00\x05\x00\x00\x00\x04\x00\x00\x00\x01\x00\x0=
0\x00";
> +        spice_buffer_append(&channel_expected, expected_buf, sizeof(expe=
cted_buf) - 1);
> +
> +        // remove invalid, this will trigger an error
> +        send_data(client_socket, VSC_ReaderRemove, 5);
> +        } break;
> +    // Fifth test, similar to previous but using an huge reader_id field=
 to trigger
> +    // possible buffer overflow
> +    case 5: {
> +        static const char expected_buf[] =3D
> +            // forwarded Error message
> +            "\x65\x00\x10\x00\x00\x00"
> +            "\x02\x00\x00\x00\x05\x01\x00\x00\x04\x00\x00\x00\x01\x00\x0=
0\x00";
> +        spice_buffer_append(&channel_expected, expected_buf, sizeof(expe=
cted_buf) - 1);
> +
> +        // remove invalid and huge, this will trigger an error, should n=
ot crash
> +        send_data(client_socket, VSC_ReaderRemove, 261);
> +        } break;
> +    // Sixth test, send an invalid message from client, a log is trigger=
ed
> +    // but channel continues to work
> +    case 6: {
> +        static const char expected_buf[] =3D
> +            // forwarded APDU message
> +            "\x00\x00\x00\x07\x00\x00\x00\x00\x00\x00\x00\x06\x68\x65\x6=
c\x6c\x6f\x00";
> +        spice_buffer_append(&device_expected, expected_buf, sizeof(expec=
ted_buf) - 1);
> +
> +        g_test_expect_message(G_LOG_DOMAIN, G_LOG_LEVEL_WARNING,
> +                              "*ERROR: unexpected message on smartcard c=
hannel*");
> +
> +        // invalid message type, should log a warning
> +        send_data(client_socket, 0xabcd, 0);
> +        // APDU just to get an event
> +        send_data(client_socket, VSC_APDU, 0);
> +        } break;
> +    // Seventh test, an Error message from device are forwarded to the c=
hannel.
> +    // Note that the header is in big endian order while the error from =
device
> +    // is in little endian order. This seems weird but it's correct with=
 the
> +    // current libcacard implementation which just send error as host or=
der
> +    case 7: {
> +        g_test_assert_expected_messages();
> +
> +        static const char expected_buf[] =3D
> +            // forwarded Error message
> +            "\x65\x00\x10\x00\x00\x00"
> +            "\x02\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x0a\x0b\x0=
c\x0d";
> +        spice_buffer_append(&channel_expected, expected_buf, sizeof(expe=
cted_buf) - 1);
> +
> +        vmc_emu_reset(vmc);
> +        // data from device
> +        uint8_t *p =3D vmc->message;
> +
> +        // add Error message
> +        memcpy(p, "\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x04\x0a\=
x0b\x0c\x0d", 16);
> +        p +=3D 16;
> +        vmc_emu_add_read_till(vmc, p);
> +
> +        spice_server_char_device_wakeup(&vmc->instance);
> +        } break;
> +    case 8:
> +        g_test_assert_expected_messages();
> +        basic_event_loop_quit();
> +        break;
> +    default:
> +        abort();
> +    }
>  }
> =20
>  static void test_smartcard(TestFixture *fixture, gconstpointer user_data)
> @@ -144,6 +312,7 @@ static void test_smartcard(TestFixture *fixture, gcon=
stpointer user_data)
>      // add VSC_Init message
>      memcpy(p, "\x00\x00\x00\x01\x0a\x0b\x0c\x0d\x00\x00\x00\x00", 12);
>      p +=3D 12;
> +    vmc_emu_add_read_till(vmc, vmc->message + 2); // check header is dec=
oded correctly when split
>      vmc_emu_add_read_till(vmc, p);
> =20
>      // find Smartcard channel to connect to
> @@ -170,7 +339,6 @@ static void test_smartcard(TestFixture *fixture, gcon=
stpointer user_data)
>      red_client_set_main(client, mcc);
> =20
>      // create our testing RedChannelClient
> -    int client_socket;
>      red_channel_connect(channel, client, create_dummy_stream(server, &cl=
ient_socket),
>                          FALSE, &caps);
>      red_channel_capabilities_reset(&caps);
> @@ -180,21 +348,20 @@ static void test_smartcard(TestFixture *fixture, gc=
onstpointer user_data)
> =20
>      // push data into channel
>      send_ack_sync(client_socket, 1);
> -    send_data(client_socket, VSC_ReaderAdd);
> -    send_data(client_socket, VSC_APDU);
> =20
> -    // check data are processed after a short time
> -    SpiceTimer *watch_timer;
> -    watch_timer =3D core->timer_add(check_data, core);
> -    core->timer_start(watch_timer, 100);
> +    // check data are processed
> +    SpiceWatch *watch =3D core->watch_add(client_socket, SPICE_WATCH_EVE=
NT_READ,
> +                                        data_from_channel, NULL);
> +    vmc->data_written_cb =3D check_data;
> =20
>      // start all test
>      alarm(10);
> +    next_test();
>      basic_event_loop_mainloop();
>      alarm(0);
>      // cleanup
> -    core->timer_remove(watch_timer);
> +    core->watch_remove(watch);
>      red_client_destroy(client);
>      g_object_unref(main_channel);
>      g_object_unref(channel);
> diff --git a/server/tests/vmc-emu.c b/server/tests/vmc-emu.c
> index ddac5269c..9ef05061a 100644
> --- a/server/tests/vmc-emu.c
> +++ b/server/tests/vmc-emu.c
> @@ -31,6 +31,9 @@ static int vmc_write(SpiceCharDeviceInstance *sin,
>      unsigned copy =3D MIN(sizeof(vmc->write_buf) - vmc->write_pos, len);
>      memcpy(vmc->write_buf+vmc->write_pos, buf, copy);
>      vmc->write_pos +=3D copy;
> +    if (copy && vmc->data_written_cb) {
> +        vmc->data_written_cb(vmc);
> +    }
>      return len;
>  }
> =20
> diff --git a/server/tests/vmc-emu.h b/server/tests/vmc-emu.h
> index 6fcea69d2..a6b77f585 100644
> --- a/server/tests/vmc-emu.h
> +++ b/server/tests/vmc-emu.h
> @@ -40,6 +40,9 @@ struct VmcEmu {
> =20
>      unsigned write_pos;
>      uint8_t write_buf[2048];
> +
> +    // this callback will be called when new data arrive to the device
> +    void (*data_written_cb)(VmcEmu *vmc);
>  };
> =20
>  VmcEmu *vmc_emu_new(const char *subtype, const char *portname);
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--hsegia6pr57y3sti
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2dpl4ACgkQl9kSPeN6
SE+dUQ/4tnqDGPeyVRssNteEGY7udMIM4ICaOZS/bL20M0T8a35phAjZnRoXF6LL
FiWAqSCQT6xTjZJ6skkJEoiYXWHGjorcpcGSEbQts68R3tizz5IgsmUke3WS6cg6
ID9JJU4QHrN5MQm7tGz+ROhDKIHi7xQ1Vk/UNdX+VvHRYsd9B9cSFfLuKOihPQyN
wxLmhK2V2Dzo3OsKWUwjSkiJrfOOyPmXdPwAwvmbJYsio1ulmA8s0rFK++pwFshM
jM2tE3uffYnNJu/opaBaKqESvwnWzMd11wC+/5/PMJUhvmJKR9TLf3/FmzKySUg1
120CZBooONECal5sX525eQn3rg3qqJGt6oUzkoUlbQ+m99bx8PTYLk9NE0WtBnGu
ol6gPNzeIy1wruZyXsf9qywDcRbqFzpFEJQkR1YiQRlmmx18udQLiL1lWEFf/QKF
oI+IxtEVjLTGfCIXSq30XPGWw6bwDrM0d1l0ILVyVslyx6mx+alE3VFYTT+fxCyG
qzgig/SkYjraQtQ2eIAS9tIJWRW97nWBVT3zz4bvIFzO1NKV1Qfv+PIwRgFdBzkl
KNYL1gsUDR36G/EjaxnKRd36wZFaYuE4y7oTATxAeR/J2w2Da2NuSGdmEJQ0WYCY
UxtrZrFA6N9Vxb0qDa+ijhaRdqo6WsX4sOeR3X0ZlNz0gMvanA==
=rp7V
-----END PGP SIGNATURE-----

--hsegia6pr57y3sti--

--===============1946168926==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1946168926==--
