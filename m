Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AE4B7CF5
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 16:36:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F02D6E93A;
	Thu, 19 Sep 2019 14:36:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88E7E6E93A
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:36:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1FE771918648
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:36:08 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BD74F19C5B
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 14:36:07 +0000 (UTC)
Date: Thu, 19 Sep 2019 16:36:07 +0200
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <20190919143607.xpq2o3u2tsatxyrb@wingsuit>
References: <20190904123209.24479-1-victortoso@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190904123209.24479-1-victortoso@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Thu, 19 Sep 2019 14:36:08 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1] Revert "channel: Abort migration
 in delayed unref"
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
Content-Type: multipart/mixed; boundary="===============1446835987=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1446835987==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bekpao4mhmbcyeuz"
Content-Disposition: inline


--bekpao4mhmbcyeuz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Ping :)

On Wed, Sep 04, 2019 at 02:32:09PM +0200, Victor Toso wrote:
> From: Victor Toso <me@victortoso.com>
>=20
> This reverts commit 109e575 "channel: Abort migration in delayed
> unref" in 2016-05-02 by Pavel Grunt <pgrunt@redhat.com>
>=20
> This commit is being reverted because it calls
> spice_session_abort_migration() on the SpiceSession for the target
> host while the function should receive the SpiceSession for current
> host.
>=20
> I can actually reproduce a bug where the password expires for the
> current Spice session and the migration is going to fail because of
> that. Before reverting this commit, remote-viewer would hang and the
> following logs would occur:
>=20
> - Migration starts on channel-main
>  > ../src/channel-main.c:2174 migrate_channel_connect 1:0
>=20
> - Using TLS
>  > ../src/spice-channel.c:1934 main-1:0: switching to tls
>=20
> - Following logs are related to failure to connect due Authentication
>  > ../src/spice-channel.c:2000 main-1:0: use mini header: 1
>  > ../src/spice-channel.c:1274 main-1:0: link result: reply 7
>  > ../src/spice-channel.c:2680 main-1:0: Coroutine exit main-1:0
>  > ../src/spice-channel.c:2871 main-1:0: reset
>=20
> Remote-viewer would hang because we are in a state of migration and
> SpiceMainChannel does not know that it failed because
> spice_session_abort_migration() is being called on SpiceSession of
> target host and no SpiceChannel::channel-event is being emitted.
>=20
> Reverting this patch does abort migration thanks to
> SpiceChannel::channel-event being emitted and caught by
> SpiceMainChannel at migrate_channel_event_cb() with the log:
>=20
>  > ../src/channel-main.c:2247 main-1:0: error or unhandled channel event =
during migration: 23
>  > ../src/channel-main.c:2373 main-1:0: migrate failed: some channels fai=
led to connect
>=20
> Note that the reverted patch mentions the fix of bug [0] which is also
> a virt-viewer with a hanging state. Looking back to the logs, the
> interesting part around issues around usbredir, that is:
>=20
>  > GSpice-DEBUG: channel-main.c:2236 migration: channel opened chan:0x29d=
dce0, left 6
>  > GSpice-DEBUG: spice-channel.c:916 usbredir-9:0: Read error Error recei=
ving data: Connection reset by peer
>  > GSpice-DEBUG: spice-channel.c:1210 usbredir-9:0: error, switching to p=
rotocol 1 (spice 0.4)
>  > GSpice-DEBUG: spice-channel.c:2433 usbredir-9:0: Coroutine exit usbred=
ir-9:0
>  > GSpice-DEBUG: spice-channel.c:2455 usbredir-9:0: Open coroutine starti=
ng 0x29e10d0
>  > GSpice-DEBUG: spice-channel.c:2289 usbredir-9:0: Started background co=
routine 0x29e0750
>  > GSpice-DEBUG: spice-channel.c:916 usbredir-9:1: Read error Error recei=
ving data: Connection reset by peer
>  > GSpice-DEBUG: spice-channel.c:1076 usbredir-9:1: incomplete auth reply=
 (-104/4)
>  > GSpice-DEBUG: spice-channel.c:916 playback-5:0: Read error Error recei=
ving data: Connection reset by peer
>  > GSpice-DEBUG: spice-channel.c:1076 playback-5:0: incomplete auth reply=
 (-104/4)
>  > GSpice-DEBUG: spice-channel.c:916 display-2:0: Read error Error receiv=
ing data: Connection reset by peer
>  > GSpice-DEBUG: spice-channel.c:1076 display-2:0: incomplete auth reply =
(-104/4)
>  > GSpice-DEBUG: spice-session.c:1775 connecting 0x7f12bffffa50...
>  > GSpice-DEBUG: spice-session.c:1850 open host lab.test.me:5900
>  > GSpice-DEBUG: channel-main.c:2241 error or unhandled channel event dur=
ing migration: 22
>  > GSpice-DEBUG: spice-session.c:1665 session: disconnecting 0
>  > GSpice-DEBUG: spice-channel.c:2160 usbredir-9:1: channel got error
>  > GSpice-DEBUG: spice-channel.c:2433 usbredir-9:1: Coroutine exit usbred=
ir-9:1
>  > GSpice-DEBUG: channel-main.c:2241 error or unhandled channel event dur=
ing migration: 22
>=20
> So, the expected behavior was happening on error, which is
> channel-main aborting the migration due SpiceChannel::channel-event
> being emitted with some failure.
>=20
> Also note that, with this commit reverted, I don't experience any
> hanging after migration is aborted. Likely the original bug was fixed.
>=20
> [0] https://bugzilla.redhat.com/show_bug.cgi?id=3D1318574
>=20
> Related: https://bugzilla.redhat.com/show_bug.cgi?id=3D1695618
>=20
> Signed-off-by: Victor Toso <victortoso@redhat.com>
> ---
>  src/spice-channel.c | 8 --------
>  1 file changed, 8 deletions(-)
>=20
> diff --git a/src/spice-channel.c b/src/spice-channel.c
> index 61de177..315e287 100644
> --- a/src/spice-channel.c
> +++ b/src/spice-channel.c
> @@ -2420,7 +2420,6 @@ static gboolean spice_channel_delayed_unref(gpointe=
r data)
>      SpiceChannel *channel =3D SPICE_CHANNEL(data);
>      SpiceChannelPrivate *c =3D channel->priv;
>      gboolean was_ready =3D c->state =3D=3D SPICE_CHANNEL_STATE_READY;
> -    SpiceSession *session;
> =20
>      CHANNEL_DEBUG(channel, "Delayed unref channel %p", channel);
> =20
> @@ -2428,13 +2427,6 @@ static gboolean spice_channel_delayed_unref(gpoint=
er data)
> =20
>      c->state =3D SPICE_CHANNEL_STATE_UNCONNECTED;
> =20
> -    session =3D spice_channel_get_session(channel);
> -    if (session && spice_session_is_for_migration(session)) {
> -        /* error during migration - abort migration */
> -        spice_session_abort_migration(session);
> -        return FALSE;
> -    }
> -
>      if (c->event !=3D SPICE_CHANNEL_NONE) {
>          g_coroutine_signal_emit(channel, signals[SPICE_CHANNEL_EVENT], 0=
, c->event);
>          c->event =3D SPICE_CHANNEL_NONE;
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--bekpao4mhmbcyeuz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2DklYACgkQl9kSPeN6
SE8GnhAAvV46x88SMrCafhDsoJfVsvhf3N2vljzJGN9sJBwhldOYuQ7hIaX+Mvk8
uOUfMDh3+HhVtM2dJhy3ia9rHBu5fpyYsjrhymjSocEXmZyBrLblQsJCrc7Z1plU
01FMm4WdQOyLF36FQbcS0vggYmnWpiyBXneJrTPbRJZs68D2ajNoiTE9I4tZPrtu
YMy3Z/JMLRt8h21yWCT1hjFHlYc7OIQLvyeVr767JGHBKgAN2X2tbqgbXw/zlqtt
F6pB2lvRzdmAKrufef+p3aTAMulX/ftnAkZyUZs82Fk/BQdz9Ou6UDagIiy5QhXs
ZKsIdUkq+fdU3CZAtmDzvVJp9zOtiHDb7Ziy8AOHiQAJbUkBKXshyiVNlDWnAo7Z
oaJ6hvVFo3X9ScC4ml7YK84RIrpQDUAexAPspoPmt/WdQv3MimvIpUVjSD6r1kqx
C8Ada0l/gbXuqLtAyIJGgie2PgBZFpe0FOXKBbQfFbgvIsNoLcnjdFqfoNmyP89x
FkSBcUZLNVukvjGAp/mFz7OtuSstF24ZkOxU0IsyDV9tAtknhC/AS/CtVF5vtJlm
9DT6irFlIFXpwFipFf0Jdyr8yfbzZr+Kmmf2Y8BVqjAHd3p/KpGVl4dxhs1gRGgK
aCYPO4eQOtp4yqVddrpm4PpgmJBroaqo8LTQyuMc/OSZt5ZpVZ4=
=e5en
-----END PGP SIGNATURE-----

--bekpao4mhmbcyeuz--

--===============1446835987==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1446835987==--
