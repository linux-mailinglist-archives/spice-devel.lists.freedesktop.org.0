Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D11CD2694
	for <lists+spice-devel@lfdr.de>; Thu, 10 Oct 2019 11:45:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CC876EAEA;
	Thu, 10 Oct 2019 09:45:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF97F6E038
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:45:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8B177306081C
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:45:50 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 366705D6B7;
 Thu, 10 Oct 2019 09:45:50 +0000 (UTC)
Date: Thu, 10 Oct 2019 11:45:49 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191010094549.ax4tjnj7bnc5g7po@wingsuit>
References: <20190806145250.31813-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190806145250.31813-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 10 Oct 2019 09:45:50 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 1/2] event-loop: Move adapter
 interface from reds.c
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
Content-Type: multipart/mixed; boundary="===============1477540222=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1477540222==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tens5q4jyzuvqru3"
Content-Disposition: inline


--tens5q4jyzuvqru3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 06, 2019 at 03:52:49PM +0100, Frediano Ziglio wrote:
> Put more event loop code in event-loop.c.
> This is a preparation patch for the next one.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Acked-by: Victor Toso <victortoso@redhat.com>
> ---
>  server/event-loop.c | 58 +++++++++++++++++++++++++++++++++++++++++++++
>  server/red-common.h |  1 +
>  server/reds.c       | 54 -----------------------------------------
>  3 files changed, 59 insertions(+), 54 deletions(-)
>=20
> diff --git a/server/event-loop.c b/server/event-loop.c
> index 812c3a53b..1ccfd671f 100644
> --- a/server/event-loop.c
> +++ b/server/event-loop.c
> @@ -264,3 +264,61 @@ const SpiceCoreInterfaceInternal event_loop_core =3D=
 {
>      .watch_update_mask =3D watch_update_mask,
>      .watch_remove =3D watch_remove,
>  };
> +
> +/*
> + * Adapter for SpiceCodeInterface
> + */
> +
> +static SpiceTimer *adapter_timer_add(const SpiceCoreInterfaceInternal *i=
face, SpiceTimerFunc func, void *opaque)
> +{
> +    return iface->public_interface->timer_add(func, opaque);
> +}
> +
> +static void adapter_timer_start(const SpiceCoreInterfaceInternal *iface,=
 SpiceTimer *timer, uint32_t ms)
> +{
> +    iface->public_interface->timer_start(timer, ms);
> +}
> +
> +static void adapter_timer_cancel(const SpiceCoreInterfaceInternal *iface=
, SpiceTimer *timer)
> +{
> +    iface->public_interface->timer_cancel(timer);
> +}
> +
> +static void adapter_timer_remove(const SpiceCoreInterfaceInternal *iface=
, SpiceTimer *timer)
> +{
> +    iface->public_interface->timer_remove(timer);
> +}
> +
> +static SpiceWatch *adapter_watch_add(const SpiceCoreInterfaceInternal *i=
face,
> +                                     int fd, int event_mask, SpiceWatchF=
unc func, void *opaque)
> +{
> +    // note: Qemu API is fine having a SOCKET on Windows
> +    return iface->public_interface->watch_add(fd, event_mask, func, opaq=
ue);
> +}
> +
> +static void adapter_watch_update_mask(const SpiceCoreInterfaceInternal *=
iface, SpiceWatch *watch, int event_mask)
> +{
> +    iface->public_interface->watch_update_mask(watch, event_mask);
> +}
> +
> +static void adapter_watch_remove(const SpiceCoreInterfaceInternal *iface=
, SpiceWatch *watch)
> +{
> +    iface->public_interface->watch_remove(watch);
> +}
> +
> +static void adapter_channel_event(const SpiceCoreInterfaceInternal *ifac=
e, int event, SpiceChannelEventInfo *info)
> +{
> +    if (iface->public_interface->base.minor_version >=3D 3 && iface->pub=
lic_interface->channel_event !=3D NULL)
> +        iface->public_interface->channel_event(event, info);
> +}
> +
> +const SpiceCoreInterfaceInternal core_interface_adapter =3D {
> +    .timer_add =3D adapter_timer_add,
> +    .timer_start =3D adapter_timer_start,
> +    .timer_cancel =3D adapter_timer_cancel,
> +    .timer_remove =3D adapter_timer_remove,
> +    .watch_add =3D adapter_watch_add,
> +    .watch_update_mask =3D adapter_watch_update_mask,
> +    .watch_remove =3D adapter_watch_remove,
> +    .channel_event =3D adapter_channel_event,
> +};
> diff --git a/server/red-common.h b/server/red-common.h
> index 223f28690..22ea8fc37 100644
> --- a/server/red-common.h
> +++ b/server/red-common.h
> @@ -71,6 +71,7 @@ struct SpiceCoreInterfaceInternal {
>  };
> =20
>  extern const SpiceCoreInterfaceInternal event_loop_core;
> +extern const SpiceCoreInterfaceInternal core_interface_adapter;
> =20
>  typedef struct RedsState RedsState;
> =20
> diff --git a/server/reds.c b/server/reds.c
> index a3795ab90..f432f55a4 100644
> --- a/server/reds.c
> +++ b/server/reds.c
> @@ -83,60 +83,6 @@ static void reds_client_monitors_config(RedsState *red=
s, VDAgentMonitorsConfig *
>  static gboolean reds_use_client_monitors_config(RedsState *reds);
>  static void reds_set_video_codecs(RedsState *reds, GArray *video_codecs);
> =20
> -static SpiceTimer *adapter_timer_add(const SpiceCoreInterfaceInternal *i=
face, SpiceTimerFunc func, void *opaque)
> -{
> -    return iface->public_interface->timer_add(func, opaque);
> -}
> -
> -static void adapter_timer_start(const SpiceCoreInterfaceInternal *iface,=
 SpiceTimer *timer, uint32_t ms)
> -{
> -    iface->public_interface->timer_start(timer, ms);
> -}
> -
> -static void adapter_timer_cancel(const SpiceCoreInterfaceInternal *iface=
, SpiceTimer *timer)
> -{
> -    iface->public_interface->timer_cancel(timer);
> -}
> -
> -static void adapter_timer_remove(const SpiceCoreInterfaceInternal *iface=
, SpiceTimer *timer)
> -{
> -    iface->public_interface->timer_remove(timer);
> -}
> -
> -static SpiceWatch *adapter_watch_add(const SpiceCoreInterfaceInternal *i=
face,
> -                                     int fd, int event_mask, SpiceWatchF=
unc func, void *opaque)
> -{
> -    // note: Qemu API is fine having a SOCKET on Windows
> -    return iface->public_interface->watch_add(fd, event_mask, func, opaq=
ue);
> -}
> -
> -static void adapter_watch_update_mask(const SpiceCoreInterfaceInternal *=
iface, SpiceWatch *watch, int event_mask)
> -{
> -    iface->public_interface->watch_update_mask(watch, event_mask);
> -}
> -
> -static void adapter_watch_remove(const SpiceCoreInterfaceInternal *iface=
, SpiceWatch *watch)
> -{
> -    iface->public_interface->watch_remove(watch);
> -}
> -
> -static void adapter_channel_event(const SpiceCoreInterfaceInternal *ifac=
e, int event, SpiceChannelEventInfo *info)
> -{
> -    if (iface->public_interface->base.minor_version >=3D 3 && iface->pub=
lic_interface->channel_event !=3D NULL)
> -        iface->public_interface->channel_event(event, info);
> -}
> -
> -static const SpiceCoreInterfaceInternal core_interface_adapter =3D {
> -    .timer_add =3D adapter_timer_add,
> -    .timer_start =3D adapter_timer_start,
> -    .timer_cancel =3D adapter_timer_cancel,
> -    .timer_remove =3D adapter_timer_remove,
> -    .watch_add =3D adapter_watch_add,
> -    .watch_update_mask =3D adapter_watch_update_mask,
> -    .watch_remove =3D adapter_watch_remove,
> -    .channel_event =3D adapter_channel_event,
> -};
> -
>  /* Debugging only variable: allow multiple client connections to the spi=
ce
>   * server */
>  #define SPICE_DEBUG_ALLOW_MC_ENV "SPICE_DEBUG_ALLOW_MC"
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--tens5q4jyzuvqru3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2e/c0ACgkQl9kSPeN6
SE823Q//cE3cgw0JIuR20ozFgax81YyRjDhvIvIS2m9IwrijSVOfXbDnSZSuPfH+
+x8dz4zp3byj+ynver0d3Iy9P5t3j9ZmginDEl5TOtIS8HzxSfsNgA8C5xMMedTN
hsNE6m6v2gz/jx3LKCc5jab0MjcO26fkaQOWy6sEBW6NHyTdecJEzKMbKvASy1SH
YZv9W/pXvRoNbwvKveyT9mTLEHQS4zd9r3XyF5GP81HdPF06txIytyzKU5qPsAp4
nXkSRNRXrzya5g4EuHKlMZKZDa4mEPfVWYa44HMuoxyq1rRXt2kOSs25j6CK9l3g
vEaLQsxgXgpTbOxan0W5MmACmKUbXq4UCvokZ9Jl9GvPTrKeDNzxpBOcePewQ5Tr
N2lb9nfisfFeFhVPabl6Wy8NQ2WLADRsckPqok2XYOTTb4zSmDNTPnkUcYqvTrn1
tqwAezdY7CiPEUc5O3w9eGtydE5qhUFUssN6uDkLiaVXpar1aoeLdHk5zhwbDqDg
t24e6L8PNwvYa99pLd2dBG3RqIBHTG3SJzX9+WBsc7mDjGRsN3wQnE87LEVfntQs
jXjixD0d3pzc7vS6WLB4ZprDyM8AMMPs+0F1tFRSKX6lRgPwLkqekLIxScQTGFBk
OndDZoiJUlBZzdJ1mswLBLakEHGdfNOjw6H9jk6Oc5TOT0J9iWU=
=xr4o
-----END PGP SIGNATURE-----

--tens5q4jyzuvqru3--

--===============1477540222==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1477540222==--
