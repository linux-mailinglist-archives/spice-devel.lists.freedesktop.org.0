Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0A565817
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 15:49:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 506436E243;
	Thu, 11 Jul 2019 13:49:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF0166E243
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:48:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 676C0308FC4A
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:48:58 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 11FD160148;
 Thu, 11 Jul 2019 13:48:57 +0000 (UTC)
Date: Thu, 11 Jul 2019 15:48:54 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190711134854.sr45gtbqybxpz54g@wingsuit>
References: <20190711130054.17867-1-fziglio@redhat.com>
 <20190711130054.17867-7-fziglio@redhat.com>
 <20190711132650.f6e7b4pgytvri6nx@wingsuit>
 <1683395648.27258232.1562852522235.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1683395648.27258232.1562852522235.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Thu, 11 Jul 2019 13:48:58 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 7/7] usb-device-manager: Last
 chance to avoid deadlock handling libusb events
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
Content-Type: multipart/mixed; boundary="===============0823746259=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0823746259==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6pbjcicxnyljjzih"
Content-Disposition: inline


--6pbjcicxnyljjzih
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 11, 2019 at 09:42:02AM -0400, Frediano Ziglio wrote:
> >=20
> > Hi,
> >=20
> > On Thu, Jul 11, 2019 at 02:00:54PM +0100, Frediano Ziglio wrote:
> > > Attempt to better interrupt event handling loop.
> > > If the thread handling events is stuck waiting events or handling an
> > > event try to interrupt before joining the thread.
> >=20
> > Do you have a UI stuck or something without this patch?
> >=20
>=20
> Good question. Never happened, however:
> - I had some experience in the past with libusb and multi-threading
>   and I know this call is useful;
> - for Unix (but not Windows) there's some lines above the comment
>         /* Force termination of the event thread even if there were some
>          * mismatched spice_usb_device_manager_{start,stop}_event_listeni=
ng
>          * calls. Otherwise, the usb event thread will be leaked, and will
>          * try to use the libusb context we destroy in finalize(), which =
would
>          * cause a crash */
>    so calling that function on all (Unix and Windows) will help too.
>=20
>=20
> Maybe adding in commit message:
>=20
> "For Unix code in spice_usb_device_manager_dispose will try to
> force some thread exit but this is not done for Windows
> so calling libusb_interrupt_event_handler will help.
> Code is not in a hot path so won't change the execution time."

Sounds reasonable to me, with that
Acked-by: Victor Toso <victortoso@redhat.com>

>=20
> > > Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> > > ---
> > >  src/usb-backend.c        | 7 +++++++
> > >  src/usb-backend.h        | 1 +
> > >  src/usb-device-manager.c | 4 ++++
> > >  3 files changed, 12 insertions(+)
> > >=20
> > > diff --git a/src/usb-backend.c b/src/usb-backend.c
> > > index 48a62cd1..a2c502da 100644
> > > --- a/src/usb-backend.c
> > > +++ b/src/usb-backend.c
> > > @@ -230,6 +230,13 @@ gboolean
> > > spice_usb_backend_handle_events(SpiceUsbBackend *be)
> > >      return ok;
> > >  }
> > > =20
> > > +void spice_usb_backend_interrupt_event_handler(SpiceUsbBackend *be)
> > > +{
> > > +    if (be->libusb_context) {
> > > +        libusb_interrupt_event_handler(be->libusb_context);
> > > +    }
> > > +}
> > > +
> > >  static int LIBUSB_CALL hotplug_callback(libusb_context *ctx,
> > >                                          libusb_device *device,
> > >                                          libusb_hotplug_event event,
> > > diff --git a/src/usb-backend.h b/src/usb-backend.h
> > > index 9f2a97a6..cbb73c22 100644
> > > --- a/src/usb-backend.h
> > > +++ b/src/usb-backend.h
> > > @@ -65,6 +65,7 @@ after it finishes list processing
> > >  SpiceUsbBackendDevice **spice_usb_backend_get_device_list(SpiceUsbBa=
ckend
> > >  *backend);
> > >  void spice_usb_backend_free_device_list(SpiceUsbBackendDevice **devl=
ist);
> > >  gboolean spice_usb_backend_handle_events(SpiceUsbBackend *be);
> > > +void spice_usb_backend_interrupt_event_handler(SpiceUsbBackend *be);
> > >  gboolean spice_usb_backend_register_hotplug(SpiceUsbBackend *be,
> > >                                              void *user_data,
> > >                                              usb_hot_plug_callback pr=
oc);
> > > diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
> > > index 4960667e..0d12432f 100644
> > > --- a/src/usb-device-manager.c
> > > +++ b/src/usb-device-manager.c
> > > @@ -328,6 +328,8 @@ static void spice_usb_device_manager_dispose(GObj=
ect
> > > *gobject)
> > >  #endif
> > >      if (priv->event_thread) {
> > >          g_warn_if_fail(g_atomic_int_get(&priv->event_thread_run) =3D=
=3D
> > >          FALSE);
> > > +        g_atomic_int_set(&priv->event_thread_run, FALSE);
> > > +        spice_usb_backend_interrupt_event_handler(priv->context);
> > >          g_thread_join(priv->event_thread);
> > >          priv->event_thread =3D NULL;
> > >      }
> > > @@ -988,6 +990,8 @@ gboolean
> > > spice_usb_device_manager_start_event_listening(
> > >         libusb_handle_events call in the thread won't exit until the
> > >         libusb_close call for the device is made from usbredirhost_cl=
ose.
> > >         */
> > >      if (priv->event_thread) {
> > > +        g_atomic_int_set(&priv->event_thread_run, FALSE);
> > > +        spice_usb_backend_interrupt_event_handler(priv->context);
> > >           g_thread_join(priv->event_thread);
> > >           priv->event_thread =3D NULL;
> > >      }
>=20
> Frediano

--6pbjcicxnyljjzih
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0nPkYACgkQl9kSPeN6
SE9PKA/+I+2shpEAeT8emk4q92Xp+dgzlwqY1ts4b4F0TYNYbKHyETS9ii522gBp
xMUxQmdKJi0cQnKeTaCMSCC43yAaoyYstUUJaN9igkoJ8Gh80iWEyOasiSFAWDvv
JV6Wws+3Awf8pVRnbNSjodRDxRoIjXLV397JGb6nc6cA1Z1cEesAqWQLEDpMcGjJ
B4ASQWUejaF6hFuSVTEkig00dEFw9OJOf5aIguUjgBacC6VxIzbb2s9BQGxpVWbt
ioOWu2CPpkFg2nNy7nqIwbgwDZXWlDvwKbQKhMRbH92y7OnBUMZ8wq3LqCmMRazu
zhxuVRWTdGGssvUI3GMJi8QLFvrX/ZcfnOz94CnZfYH6PCgbvGakuK4TIUmNrAaz
axMMv572YT/tiT+uC3biral2TuPpDS+ykpB4S3fpkMffTWtOOf4W23wLBFWebMZ5
kfy0HuN1gUUntJeCpl0/Mam28wBhaExmBfxpprfl9ZvXJAUeoPgY4A2sJqKFO3An
L+Em9zqLjXSgWkRuaxDOsdryzG038uA3QNgGQf21YI8/DCQio8RcEQ/M70kkE2yQ
NjIJUg15Im5ubB+b9bLtG4SX6Zy0xtaNIfxzWe+W6LYwSei7n6az/Na40l8lFIQr
g+mT1BDMcEURal+zk6dDxvYz2WQ1Mi89SnAU9mE3NtK1f6SiUBQ=
=0MP/
-----END PGP SIGNATURE-----

--6pbjcicxnyljjzih--

--===============0823746259==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0823746259==--
