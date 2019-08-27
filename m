Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 974839EA4E
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 16:02:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 201EF89B7D;
	Tue, 27 Aug 2019 14:02:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A556789B7D
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 14:02:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 155223082B43
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 14:02:53 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B00EB60BFB;
 Tue, 27 Aug 2019 14:02:48 +0000 (UTC)
Date: Tue, 27 Aug 2019 16:02:47 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827140247.gm5f2j4lnptjojr4@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-27-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-27-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Tue, 27 Aug 2019 14:02:53 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 26/29] test-cd-emu: Test
 attach/detach emulated device
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
Content-Type: multipart/mixed; boundary="===============0451462896=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0451462896==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ao6tiynz7krokbum"
Content-Disposition: inline


--ao6tiynz7krokbum
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 27, 2019 at 10:22:43AM +0100, Frediano Ziglio wrote:
> Mock some usb-backend functions to be able to simulate device
> attachment and detachment.
> Create session and channel to pass some valid pointer anyway.
> Emulate channel state correctly.
> Make sure HELLO packets are sent correctly at the beginning and
> no more afterwards.
> Test auto-connect enabled or disabled.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  tests/cd-emu.c | 153 ++++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 151 insertions(+), 2 deletions(-)
>=20
> diff --git a/tests/cd-emu.c b/tests/cd-emu.c
> index 7bf1fa3c..f0966662 100644
> --- a/tests/cd-emu.c
> +++ b/tests/cd-emu.c
> @@ -14,10 +14,13 @@
>     You should have received a copy of the GNU Lesser General Public
>     License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
>  */
> -#include <gio/gio.h>
> +
> +// Mock some code in usb-backend.c
> +#define spice_usbredir_write_callback mock_spice_usbredir_write_callback
> +#define spice_channel_get_state mock_spice_channel_get_state

I wonder if isn't better to create a -private header for this
instead?

> +#include "../src/usb-backend.c"
> =20
>  #include "usb-device-cd.h"
> -#include "usb-emulation.h"
> =20
>  static SpiceUsbBackendDevice *device =3D NULL;
> =20
> @@ -67,6 +70,150 @@ static void multiple(const void *param)
>      spice_usb_backend_delete(be);
>  }
> =20
> +static unsigned int messages_sent =3D 0;
> +static unsigned int hellos_sent =3D 0;
> +static SpiceUsbBackendChannel *usb_ch;
> +
> +int
> +mock_spice_usbredir_write_callback(SpiceUsbredirChannel *channel, uint8_=
t *data, int count)
> +{
> +    ++messages_sent;
> +    g_assert_cmpint(count, >=3D, 4);
> +    const uint32_t type =3D data[0] + data[1] * 0x100u + data[2] * 0x100=
00u + data[3] * 0x1000000u;
> +    if (type =3D=3D usb_redir_hello) {
> +        ++hellos_sent;
> +    }
> +
> +    // return we handled the data
> +    spice_usb_backend_return_write_data(usb_ch, data);
> +    return count;
> +}
> +
> +// channel state to return from Mock function
> +static enum spice_channel_state ch_state =3D SPICE_CHANNEL_STATE_UNCONNE=
CTED;
> +
> +enum spice_channel_state
> +mock_spice_channel_get_state(SpiceChannel *channel)
> +{
> +    return ch_state;
> +}
> +
> +// number of GObjects allocated we expect will be freed
> +static unsigned gobjects_allocated =3D 0;
> +static void decrement_allocated(gpointer data G_GNUC_UNUSED, GObject *ol=
d_gobject G_GNUC_UNUSED)
> +{
> +    g_assert_cmpint(gobjects_allocated, !=3D, 0);
> +    --gobjects_allocated;
> +}
> +
> +#define DATA_START \
> +    do { static const uint8_t data[] =3D {
> +#define DATA_SEND \
> +        }; \
> +        spice_usb_backend_read_guest_data(usb_ch, (uint8_t*)data, G_N_EL=
EMENTS(data)); \
> +    } while(0)
> +
> +static void attach(const void *param)
> +{
> +    const bool attach_on_connect =3D !!GPOINTER_TO_UINT(param);
> +
> +    hellos_sent =3D 0;
> +    messages_sent =3D 0;
> +    ch_state =3D SPICE_CHANNEL_STATE_UNCONNECTED;
> +
> +    SpiceSession *session =3D spice_session_new();
> +    g_assert_nonnull(session);
> +    g_object_weak_ref(G_OBJECT(session), decrement_allocated, NULL);
> +    SpiceChannel *ch =3D spice_channel_new(session, SPICE_CHANNEL_USBRED=
IR, 0);
> +    g_assert_nonnull(ch);
> +    g_object_weak_ref(G_OBJECT(ch), decrement_allocated, NULL);
> +    gobjects_allocated =3D 2;
> +
> +    /*
> +     * real test, allocate a channel usbredir, emulate device
> +     * initialization.
> +     * Filter some call.
> +     * Start sequence:
> +     * - spice_usb_backend_new
> +     * - spice_usb_backend_register_hotplug
> +     * - spice_usb_backend_create_emulated_device
> +     * - spice_usb_backend_channel_new
> +     * - spice_usb_backend_channel_attach (if redir on connect)
> +     * - spice_usb_backend_channel_flush_writes
> +     * - spice_usbredir_write_callback
> +     * - spice_usb_backend_return_write_data
> +     * - spice_usb_backend_read_guest_data
> +     * - spice_usb_backend_channel_attach (if not redir on connect)
> +     */
> +    GError *err =3D NULL;
> +    SpiceUsbBackend * be =3D spice_usb_backend_new(&err);
> +    g_assert_nonnull(be);
> +    g_assert_null(err);
> +    spice_usb_backend_register_hotplug(be, NULL, test_hotplug_callback, =
&err);
> +    g_assert_null(err);
> +
> +    CdEmulationParams params =3D { "test-cd-emu.iso", 1 };
> +    g_assert_true(create_emulated_cd(be, &params, &err));
> +    g_assert_null(err);
> +    g_assert_nonnull(device);
> +
> +    usb_ch =3D spice_usb_backend_channel_new(be, SPICE_USBREDIR_CHANNEL(=
ch));
> +    g_assert_nonnull(usb_ch);
> +
> +    // attach on connect
> +    ch_state =3D SPICE_CHANNEL_STATE_CONNECTING;
> +    if (attach_on_connect) {
> +        g_assert_true(spice_usb_backend_channel_attach(usb_ch, device, &=
err));
> +        g_assert_null(err);
> +    }
> +    g_assert_cmpint(hellos_sent, =3D=3D, 0);
> +    g_assert_cmpint(messages_sent, =3D=3D, 0);
> +
> +    // try to get initial data
> +    ch_state =3D SPICE_CHANNEL_STATE_READY;
> +    spice_usb_backend_channel_flush_writes(usb_ch);
> +
> +    // we should get an hello (only one!)
> +    g_assert_cmpint(hellos_sent, =3D=3D, 1);
> +    g_assert_cmpint(messages_sent, =3D=3D, 1);
> +
> +    // send hello reply
> +    DATA_START
> +        0x00,0x00,0x00,0x00,0x44,0x00,0x00,0x00,0x00,0x00,0x00,0x00, //0=
00 ....D.......
> +        0x71,0x65,0x6d,0x75,0x20,0x75,0x73,0x62,0x2d,0x72,0x65,0x64, //0=
0c qemu usb-red
> +        0x69,0x72,0x20,0x67,0x75,0x65,0x73,0x74,0x20,0x33,0x2e,0x30, //0=
18 ir guest 3.0
> +        0x2e,0x31,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00, //0=
24 .1..........
> +        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00, //0=
30 ............
> +        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00, //0=
3c ............
> +        0x00,0x00,0x00,0x00,0xff,0x00,0x00,0x00,                     //0=
48 ........
> +    DATA_SEND;

Should we have different 'hellos' in the future? Let's say we
support 3.0 but not 3.1, etc.

> +
> +    if (!attach_on_connect) {
> +        g_assert_true(spice_usb_backend_channel_attach(usb_ch, device, &=
err));
> +        g_assert_null(err);
> +    }
> +    g_assert_cmpint(hellos_sent, =3D=3D, 1);
> +    g_assert_cmpint(messages_sent, >, 1);
> +
> +    // cleanup
> +    spice_usb_backend_device_unref(device);
> +    device =3D NULL;
> +    spice_usb_backend_channel_delete(usb_ch);
> +    usb_ch =3D NULL;
> +    spice_usb_backend_deregister_hotplug(be);
> +    spice_usb_backend_delete(be);
> +
> +    // this it's the correct sequence to free session!
> +    // g_object_unref is not enough, causing wrong reference countings
> +    spice_session_disconnect(session);
> +    g_object_unref(session);
> +    while (g_main_context_iteration(NULL, FALSE)) {
> +        continue;
> +    }
> +
> +    g_assert_cmpint(gobjects_allocated, =3D=3D, 0);
> +}
> +
>  static void
>  write_test_iso(void)
>  {
> @@ -87,6 +234,8 @@ int main(int argc, char* argv[])
> =20
>      g_test_add_data_func("/cd-emu/simple", GUINT_TO_POINTER(1), multiple=
);
>      g_test_add_data_func("/cd-emu/multiple", GUINT_TO_POINTER(128), mult=
iple);
> +    g_test_add_data_func("/cd-emu/attach_no_auto", GUINT_TO_POINTER(0), =
attach);
> +    g_test_add_data_func("/cd-emu/attach_auto", GUINT_TO_POINTER(1), att=
ach);

Not much to complain actually, happy again that we have this
tested. Lots of pre increment/decrement. I don't care much but
that's not that common in the client, I think.

> =20
>      return g_test_run();
>  }
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--ao6tiynz7krokbum
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lOAcACgkQl9kSPeN6
SE9y1xAAliAEOoBt0D4mvIFcqFUE1HyJk4Grai+yCIQAxI95Jy89qfkj+khNkKY7
bBvBwnbBq180QCLuocJsQ7SyUhKBgFsA8N8wgS6E5Km6L/kTbTSQbjIVBGYtu/4x
Zo9KcwBLpvX2/jxlvqb53YMk/+qbWdlONDS5C05qns6/WzNZhbqbfcCmMIJC1prh
X/uCYQCNmLuBYht/t6o7m+MituNSmn/p5wAD4G/L+7LXeMfq/AvR7L690Pzg0Nrf
yCyw76RXNjYCqNk+I/nZFDrXqoQxPST27BxjQHTGCSsRWAWzlpZCn2O2ks5AIEwo
Vdg/QOoJMNFFyQ4YzSHn13Zr8p5dQPXcrY7lvWEc/DdmQFlPv4aaIAKHksPWn6dk
rNcKJnw3Pjxi62tZdKUpzulpjVesXH3iXc6X0Nxmlc/RO0egrVita7noR1kWgF/d
VcUQ67Ljre8jyB7mcAE4U5TtbpViTpUng5pv71dpSFiuW7ZoZEo2phxboprff4fx
mLKfNEKZE0OJ6ZRwySUqqye5LHc5Mg5DHpsMxenrf/9jCWI44XMJF/hVgUW8CzTp
Q4loD52RBY3epFmtQ6Zh4sscmpDk/CPRYi1wEKkwyKvmxA35yGI4RJPDKi+wZzMW
/PytswPCxoypbcZ9Kl2klwnfkBsl+IjKXdwR0GRABuBJuSowHwg=
=Czhf
-----END PGP SIGNATURE-----

--ao6tiynz7krokbum--

--===============0451462896==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0451462896==--
