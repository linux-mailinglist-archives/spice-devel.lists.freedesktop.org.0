Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4D99CB37
	for <lists+spice-devel@lfdr.de>; Mon, 26 Aug 2019 10:03:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA2216E06F;
	Mon, 26 Aug 2019 08:03:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 708386E06F
 for <spice-devel@lists.freedesktop.org>; Mon, 26 Aug 2019 08:03:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1549285540
 for <spice-devel@lists.freedesktop.org>; Mon, 26 Aug 2019 08:03:38 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B5E8A60920;
 Mon, 26 Aug 2019 08:03:37 +0000 (UTC)
Date: Mon, 26 Aug 2019 10:03:37 +0200
From: Victor Toso <victortoso@redhat.com>
To: Jakub Janku <jjanku@redhat.com>
Message-ID: <20190826080337.otm5arrlbazyo7dv@wingsuit>
References: <20190808090314.28167-1-jjanku@redhat.com>
 <CAH=CeiDFnMYX7BFUycejr575LWnw8A-puWoqBrq7_QLEd1f=kQ@mail.gmail.com>
 <20190823133636.7gutbuaciykwqzbh@wingsuit>
 <CAH=CeiCZ7GJTEYgJy7DX1GPSursFrnU8ACp0jFGQMiLjORHcBQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAH=CeiCZ7GJTEYgJy7DX1GPSursFrnU8ACp0jFGQMiLjORHcBQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Mon, 26 Aug 2019 08:03:38 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] webdav: fix usecase with
 multiple concurrent connections
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1865637429=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1865637429==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="neyjgsx6pt5ltldg"
Content-Disposition: inline


--neyjgsx6pt5ltldg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Aug 24, 2019 at 10:39:03AM +0200, Jakub Janku wrote:
> Hi,
>=20
> On Fri, Aug 23, 2019 at 3:36 PM Victor Toso <victortoso@redhat.com> wrote:
> >
> > Hi,
> >
> > On Fri, Aug 23, 2019 at 11:57:55AM +0200, Jakub Janku wrote:
> > > ping
> >
> > Yep, sorry
> >
> > >
> > > Also forgot to mention that this fixes a regression introduced by me
> > > in 9f5aee05.
> >
> > Ok. I just went over it before coming back here.
> >
> > > On Thu, Aug 8, 2019 at 11:03 AM Jakub Jank=C5=AF <jjanku@redhat.com> =
wrote:
> > > >
> > > > GOutputStream does not allow simultaneous tasks on a single
> > > > stream. An attempt to transfer two files therefore
> > > > results into one of the clients being removed in
> > > > mux_msg_flushed_cb() with the error
> > > > "Stream has outstanding operation".
> > > >
> > > > To fix this, use spice_vmc_write_async() directly.
> >
> > The major difference in implementation that this patch proposes
> > is to avoid a GTask creation and being handled by vmcstream.c on
> > spice_vmc_output_stream_write_async(), correct?
>=20
> That's correct.
> Before this patch: g_output_stream_write_all_async() ->
> spice_vmc_output_stream_write_async() -> spice_vmc_write_async()
> With this patch, spice_vmc_write_async() is called directly, without
> the first 2 steps.
> >
> > I'm a bit confused about that, maybe because it was working
> > before? I mean, the fact that we changed the way to deal with
> > the buffers made our implementation on GOutputStream not
> > support simultaneous tasks or that should never actually work in
> > the first place?
>=20
> Previously, webdav channel had its own OutputQueue that was scheduling
> the messages and calling g_output_stream_write_all() for each message.
> With 9f5aee05, the OutputQueue was dropped and webdav now relies on
> the internal queue in SpiceChannel.
> Maybe it's the naming that might confuse you. "spice_vmc_write_async"
> might suggest that the message is simply written to the stream, but
> the message is in reality queued for write and the async operation
> finishes once the msg is flushed. Therefore you can call
> spice_vmc_write_async() multiple times in a row, unlike
> g_output_stream_write_async() that permits only a single operation at
> a time.

Right. I think vmcstream's implementation was not just targeting
spice+webdav use case but trying to be a bit more generic.

I don't see our code changes as a problem, as long as webdav
keeps moving on. Thanks for the patches!

I'll be pushing shortly.

Cheers,

> > I have to refresh my memory on the implementation details on this
> > but the concept of pipe per 'client' could work with multiple
> > files because of the inner protocol that mux/demux things on
> > client/server, but perhaps I'm misremembering.
> >
> > So, again, my question would be: Did the overall behavior
> > changed? e.g: This client still works with old spice-webdavd for
> > instance.
>=20
> Yes, it works with old spice-webdavd versions.

Acked-by: Victor Toso <victortoso@redhat.com>

>=20
> Cheers,
> Jakub
> >
> > Thanks,
> >
> > > > Signed-off-by: Jakub Jank=C5=AF <jjanku@redhat.com>
> > > > ---
> > > >  src/channel-webdav.c | 17 +++++++----------
> > > >  1 file changed, 7 insertions(+), 10 deletions(-)
> > > >
> > > > diff --git a/src/channel-webdav.c b/src/channel-webdav.c
> > > > index 14d4e05..09ef9f7 100644
> > > > --- a/src/channel-webdav.c
> > > > +++ b/src/channel-webdav.c
> > > > @@ -235,7 +235,7 @@ mux_msg_flushed_cb(GObject *source_object,
> > > >  {
> > > >      Client *client =3D user_data;
> > > >
> > > > -    if (!g_output_stream_write_all_finish(G_OUTPUT_STREAM(source_o=
bject), result, NULL, NULL) ||
> > > > +    if (spice_vmc_write_finish(SPICE_CHANNEL(source_object), resul=
t, NULL) =3D=3D -1 ||
> > > >          client->mux.size =3D=3D 0 ||
> > > >          !client_start_read(client)) {
> > > >          remove_client(client);
> > > > @@ -249,8 +249,6 @@ static void server_reply_cb(GObject *source_obj=
ect,
> > > >                              gpointer user_data)
> > > >  {
> > > >      Client *client =3D user_data;
> > > > -    SpiceWebdavChannelPrivate *c =3D client->self->priv;
> > > > -    GOutputStream *mux_out;
> > > >      GError *err =3D NULL;
> > > >      gssize size;
> > > >
> > > > @@ -262,13 +260,12 @@ static void server_reply_cb(GObject *source_o=
bject,
> > > >      g_return_if_fail(size >=3D 0);
> > > >      client->mux.size =3D GUINT16_TO_LE(size);
> > > >
> > > > -    mux_out =3D g_io_stream_get_output_stream(G_IO_STREAM(c->strea=
m));
> > > > -
> > > > -    /* this internally uses spice_vmc_write_async(), priority is i=
gnored;
> > > > -     * the callback is invoked once the msg is written out to the =
socket */
> > > > -    g_output_stream_write_all_async(mux_out, (guint8 *)&client->mu=
x, sizeof(gint64) + sizeof(guint16) + size,
> > > > -        G_PRIORITY_DEFAULT, client->cancellable, mux_msg_flushed_c=
b, client);
> > > > -
> > > > +    spice_vmc_write_async(SPICE_CHANNEL(client->self),
> > > > +                          &client->mux,
> > > > +                          sizeof(gint64) + sizeof(guint16) + size,
> > > > +                          client->cancellable,
> > > > +                          mux_msg_flushed_cb,
> > > > +                          client);
> > > >      return;
> > > >
> > > >  end:
> > > > --
> > > > 2.21.0
> > > >
> > > _______________________________________________
> > > Spice-devel mailing list
> > > Spice-devel@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/spice-devel

--neyjgsx6pt5ltldg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1jklgACgkQl9kSPeN6
SE+7GA/+NdRudj9mG5arpF+4A5CzBScnjxvAmgCPcuH8lQtLiBg3mPsVxClMcz/L
zHNrU8icCo2iL7wYa2767euE+6KYD/m8a7OrUKLrcG9xVfc6qytVyPjGRUtKkOMq
EW1Mx64dhkUIymVtI1b5cELIcqCDjDxZYHE48cbnb99lmDeLpTjXe9+XjmoTIULO
YnkfvgziiYx5PllDkqzIwxS+dWIegbYET4SS3U1J2UIrqe/dyMTAn2vlWMR2i4Vy
Bm1lTbu23HN7zcaPJ4mhp3S0oyBbJUrIiA78pf9KbtetD6T2cQg8TgV+n6v7zzZh
Ti9TItSF9aimED2vaM/bjgCOFkrnA4JiNPfXZ/9EqUluV+bsmzimmBaIK9XxaxlG
JPIHUP2XnNpyv3ZhxuNDXSK6OXOQ94AZg2yqufZdZx+Rp9kttZtkF5xO/H0c7ibB
WFTh3MF2iCxZaVZDaiwMhXevXLq05XJb/wEuyZx7w1jvAIyyWM3Wdj1fQCGT2o9m
LhHqfnAL9vCHOEWtM4GPCxlnkd/9PoCx8ixxfWHyjKWZUTmo1bV24US1IN/7+W6X
svoIq8CYEMHrHKeYqwdHpLWZs+/mposrGgDLkL7GXdZtjQgD66crHRPdFONqfBhS
QAKGpjEgSKvUBGVDCGRTEdDUSPbC8iVgXxY/smEV3UD9TUywjQ4=
=LauO
-----END PGP SIGNATURE-----

--neyjgsx6pt5ltldg--

--===============1865637429==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1865637429==--
