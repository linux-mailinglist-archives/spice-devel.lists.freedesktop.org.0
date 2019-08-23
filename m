Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A168D9B10C
	for <lists+spice-devel@lfdr.de>; Fri, 23 Aug 2019 15:36:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FFB56EC69;
	Fri, 23 Aug 2019 13:36:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B5956EC69
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 13:36:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A07944E919
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 13:36:39 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4F5CB2636E;
 Fri, 23 Aug 2019 13:36:37 +0000 (UTC)
Date: Fri, 23 Aug 2019 15:36:36 +0200
From: Victor Toso <victortoso@redhat.com>
To: Jakub Janku <jjanku@redhat.com>
Message-ID: <20190823133636.7gutbuaciykwqzbh@wingsuit>
References: <20190808090314.28167-1-jjanku@redhat.com>
 <CAH=CeiDFnMYX7BFUycejr575LWnw8A-puWoqBrq7_QLEd1f=kQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAH=CeiDFnMYX7BFUycejr575LWnw8A-puWoqBrq7_QLEd1f=kQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Fri, 23 Aug 2019 13:36:39 +0000 (UTC)
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
Content-Type: multipart/mixed; boundary="===============1408496292=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1408496292==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kkyhbij5vh4nqjbt"
Content-Disposition: inline


--kkyhbij5vh4nqjbt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Aug 23, 2019 at 11:57:55AM +0200, Jakub Janku wrote:
> ping

Yep, sorry

>=20
> Also forgot to mention that this fixes a regression introduced by me
> in 9f5aee05.

Ok. I just went over it before coming back here.

> On Thu, Aug 8, 2019 at 11:03 AM Jakub Jank=C5=AF <jjanku@redhat.com> wrot=
e:
> >
> > GOutputStream does not allow simultaneous tasks on a single
> > stream. An attempt to transfer two files therefore
> > results into one of the clients being removed in
> > mux_msg_flushed_cb() with the error
> > "Stream has outstanding operation".
> >
> > To fix this, use spice_vmc_write_async() directly.

The major difference in implementation that this patch proposes
is to avoid a GTask creation and being handled by vmcstream.c on
spice_vmc_output_stream_write_async(), correct?

I'm a bit confused about that, maybe because it was working
before? I mean, the fact that we changed the way to deal with
the buffers made our implementation on GOutputStream not
support simultaneous tasks or that should never actually work in
the first place?

I have to refresh my memory on the implementation details on this
but the concept of pipe per 'client' could work with multiple
files because of the inner protocol that mux/demux things on
client/server, but perhaps I'm misremembering.

So, again, my question would be: Did the overall behavior
changed? e.g: This client still works with old spice-webdavd for
instance.=20

Thanks,

> > Signed-off-by: Jakub Jank=C5=AF <jjanku@redhat.com>
> > ---
> >  src/channel-webdav.c | 17 +++++++----------
> >  1 file changed, 7 insertions(+), 10 deletions(-)
> >
> > diff --git a/src/channel-webdav.c b/src/channel-webdav.c
> > index 14d4e05..09ef9f7 100644
> > --- a/src/channel-webdav.c
> > +++ b/src/channel-webdav.c
> > @@ -235,7 +235,7 @@ mux_msg_flushed_cb(GObject *source_object,
> >  {
> >      Client *client =3D user_data;
> >
> > -    if (!g_output_stream_write_all_finish(G_OUTPUT_STREAM(source_objec=
t), result, NULL, NULL) ||
> > +    if (spice_vmc_write_finish(SPICE_CHANNEL(source_object), result, N=
ULL) =3D=3D -1 ||
> >          client->mux.size =3D=3D 0 ||
> >          !client_start_read(client)) {
> >          remove_client(client);
> > @@ -249,8 +249,6 @@ static void server_reply_cb(GObject *source_object,
> >                              gpointer user_data)
> >  {
> >      Client *client =3D user_data;
> > -    SpiceWebdavChannelPrivate *c =3D client->self->priv;
> > -    GOutputStream *mux_out;
> >      GError *err =3D NULL;
> >      gssize size;
> >
> > @@ -262,13 +260,12 @@ static void server_reply_cb(GObject *source_objec=
t,
> >      g_return_if_fail(size >=3D 0);
> >      client->mux.size =3D GUINT16_TO_LE(size);
> >
> > -    mux_out =3D g_io_stream_get_output_stream(G_IO_STREAM(c->stream));
> > -
> > -    /* this internally uses spice_vmc_write_async(), priority is ignor=
ed;
> > -     * the callback is invoked once the msg is written out to the sock=
et */
> > -    g_output_stream_write_all_async(mux_out, (guint8 *)&client->mux, s=
izeof(gint64) + sizeof(guint16) + size,
> > -        G_PRIORITY_DEFAULT, client->cancellable, mux_msg_flushed_cb, c=
lient);
> > -
> > +    spice_vmc_write_async(SPICE_CHANNEL(client->self),
> > +                          &client->mux,
> > +                          sizeof(gint64) + sizeof(guint16) + size,
> > +                          client->cancellable,
> > +                          mux_msg_flushed_cb,
> > +                          client);
> >      return;
> >
> >  end:
> > --
> > 2.21.0
> >
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--kkyhbij5vh4nqjbt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1f6+QACgkQl9kSPeN6
SE+J2xAAsIra1PiLF7eSWSuo3u3DKdbH6Hub8Wn1owkwnS7jHJZRBy3liq2zNhbG
N3hDKNLiSVALCuiaHCy0E0f6C7W3IfSwK5V2UBLzlqlaXubyIG4py5Khakib9Yv1
1uud6o4q6xtrlQ+QjAsXVEISdELISAl7HwLmMw144MUss6Q+mNee0DwIUo8yiq3h
75atU+f98jW9anK9WnJ90bOmNhFnTXYBULszQaKqqPJ2m+I7vC7u6+wPC3ffxSXT
RRa+WoskzXzvO9hzUUJTjcy6eLyPmL/ZYJy8R5zmt+2uFWmkbFORg7u/WNF5mnqj
e4717mFbt+vuRpx4BUeQ6LEg4SbLvGY2oiRnRVw1TbbYpuxg+PF+lbvcRn8JtAi0
mGVoQInPEhGuQItnDcxGZCwltB+c878hP6Bk7SGi7sujEMrIDcAISCJvhYQpbMqf
2CSk7k3C0KTdXJDTTKvrLFxioGGvYkWOPLmnsaWY4tx3NVjwehkJvUqmfdv3CWuz
LYSfmPAIMAnz1+PQ48opko61iZEtWq2phc136h2WEDzdthpIqDAxrJiCweSBcuuz
Pv7byRhqFj+Qr56t9pxz/pUtV6lcFQ1azdC6lSja5nIqoV8AUr9nTlWLGoUh/p6e
+PLsnYf/wcq4KmAK7A6fpOodXG03+iMv3jdYZhe8mXTV3/YmA1w=
=FKhF
-----END PGP SIGNATURE-----

--kkyhbij5vh4nqjbt--

--===============1408496292==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1408496292==--
