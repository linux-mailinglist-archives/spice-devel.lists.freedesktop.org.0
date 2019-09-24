Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6864ABC847
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 14:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B20926EA1E;
	Tue, 24 Sep 2019 12:55:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 883696EA1E
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 12:55:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 317358BA2DA
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 12:55:22 +0000 (UTC)
Received: from localhost (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AE107600C8;
 Tue, 24 Sep 2019 12:55:21 +0000 (UTC)
Date: Tue, 24 Sep 2019 14:55:20 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190924125520.dbtb223xfzujfywi@wingsuit>
References: <20190924091502.16038-1-victortoso@redhat.com>
 <20190924091502.16038-2-victortoso@redhat.com>
 <753523787.3055120.1569320875233.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <753523787.3055120.1569320875233.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Tue, 24 Sep 2019 12:55:22 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 1/6] Avoid accessing SpiceChannel's
 internals
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
Content-Type: multipart/mixed; boundary="===============1248080053=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1248080053==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cmaiuch3i7rjjrqg"
Content-Disposition: inline


--cmaiuch3i7rjjrqg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 24, 2019 at 06:27:55AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > SpiceChannel provides some internal utility functions that this patch
> > takes advantage of:
> >=20
> > * spice_channel_get_channel_type()
> > * spice_channel_get_channel_id()
> > * spice_channel_get_state()
> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
>=20
> The question is also why all these files have access to "private" fields?
> How much NOT private they are? Looks like is more an "exported"
> than a private.

Considering that SpiceMainChannel and family are also
SpiceChannel (base class), perhaps this is choice of
implementation.

I often consider that the private structure should really be
accessed (read/write) with functions only.

> > ---
> >  src/channel-inputs.c | 65 +++++++++++++++++++++++++++++---------------
> >  src/channel-main.c   | 28 +++++++++----------
> >  src/spice-audio.c    |  6 ++--
> >  src/spice-session.c  |  3 +-
> >  4 files changed, 62 insertions(+), 40 deletions(-)
> >=20
> > diff --git a/src/channel-inputs.c b/src/channel-inputs.c
> > index a8cdd23..73cbb0f 100644
> > --- a/src/channel-inputs.c
> > +++ b/src/channel-inputs.c
> > @@ -304,14 +304,20 @@ void spice_inputs_channel_motion(SpiceInputsChann=
el
> > *channel, gint dx, gint dy,
> >                                   gint button_state)
> >  {
> >      SpiceInputsChannelPrivate *c;
> > +    gint channel_state;
>=20
> Why not enum spice_channel_state ?
> Here and in different hunks

Fixed

>=20
> > =20
> >      g_return_if_fail(channel !=3D NULL);
> > -    g_return_if_fail(SPICE_CHANNEL(channel)->priv->state !=3D
> > SPICE_CHANNEL_STATE_UNCONNECTED);
> > -    if (SPICE_CHANNEL(channel)->priv->state !=3D SPICE_CHANNEL_STATE_R=
EADY)
> > +
> > +    channel_state =3D spice_channel_get_state(SPICE_CHANNEL(channel));
> > +    g_return_if_fail(channel_state !=3D SPICE_CHANNEL_STATE_UNCONNECTE=
D);
> > +
> > +    if (channel_state !=3D SPICE_CHANNEL_STATE_READY) {
> >          return;
> > +    }
> > =20
> > -    if (dx =3D=3D 0 && dy =3D=3D 0)
> > +    if (dx =3D=3D 0 && dy =3D=3D 0) {
> >          return;
> > +    }
> > =20
> >      c =3D channel->priv;
> >      c->bs  =3D button_state;
> > @@ -360,8 +366,9 @@ void spice_inputs_channel_position(SpiceInputsChann=
el
> > *channel, gint x, gint y,
> > =20
> >      g_return_if_fail(channel !=3D NULL);
> > =20
> > -    if (SPICE_CHANNEL(channel)->priv->state !=3D SPICE_CHANNEL_STATE_R=
EADY)
> > +    if (spice_channel_get_state(SPICE_CHANNEL(channel)) !=3D
> > SPICE_CHANNEL_STATE_READY) {
> >          return;
> > +    }
> > =20
> >      c =3D channel->priv;
> >      c->bs  =3D button_state;
> > @@ -411,10 +418,12 @@ void
> > spice_inputs_channel_button_press(SpiceInputsChannel *channel, gint but=
ton,
> > =20
> >      g_return_if_fail(channel !=3D NULL);
> > =20
> > -    if (SPICE_CHANNEL(channel)->priv->state !=3D SPICE_CHANNEL_STATE_R=
EADY)
> > +    if (spice_channel_get_state(SPICE_CHANNEL(channel)) !=3D
> > SPICE_CHANNEL_STATE_READY) {
> >          return;
> > -    if (spice_channel_get_read_only(SPICE_CHANNEL(channel)))
> > +    }
> > +    if (spice_channel_get_read_only(SPICE_CHANNEL(channel))) {
> >          return;
> > +    }
> > =20
> >      c =3D channel->priv;
> >      switch (button) {
> > @@ -476,10 +485,12 @@ void
> > spice_inputs_channel_button_release(SpiceInputsChannel *channel, gint b=
utto
> > =20
> >      g_return_if_fail(channel !=3D NULL);
> > =20
> > -    if (SPICE_CHANNEL(channel)->priv->state !=3D SPICE_CHANNEL_STATE_R=
EADY)
> > +    if (spice_channel_get_state(SPICE_CHANNEL(channel)) !=3D
> > SPICE_CHANNEL_STATE_READY) {
> >          return;
> > -    if (spice_channel_get_read_only(SPICE_CHANNEL(channel)))
> > +    }
> > +    if (spice_channel_get_read_only(SPICE_CHANNEL(channel))) {
> >          return;
> > +    }
> > =20
> >      c =3D channel->priv;
> >      switch (button) {
> > @@ -535,13 +546,18 @@ void spice_inputs_channel_key_press(SpiceInputsCh=
annel
> > *channel, guint scancode)
> >  {
> >      SpiceMsgcKeyDown down;
> >      SpiceMsgOut *msg;
> > +    gint channel_state;
> > =20
> >      g_return_if_fail(channel !=3D NULL);
> > -    g_return_if_fail(SPICE_CHANNEL(channel)->priv->state !=3D
> > SPICE_CHANNEL_STATE_UNCONNECTED);
> > -    if (SPICE_CHANNEL(channel)->priv->state !=3D SPICE_CHANNEL_STATE_R=
EADY)
> > +
> > +    channel_state =3D spice_channel_get_state(SPICE_CHANNEL(channel));
> > +    g_return_if_fail(channel_state !=3D SPICE_CHANNEL_STATE_UNCONNECTE=
D);
> > +    if (channel_state !=3D SPICE_CHANNEL_STATE_READY) {
> >          return;
> > -    if (spice_channel_get_read_only(SPICE_CHANNEL(channel)))
> > +    }
> > +    if (spice_channel_get_read_only(SPICE_CHANNEL(channel))) {
> >          return;
> > +    }
> > =20
> >      down.code =3D spice_make_scancode(scancode, FALSE);
> >      msg =3D spice_msg_out_new(SPICE_CHANNEL(channel),
> >      SPICE_MSGC_INPUTS_KEY_DOWN);
> > @@ -578,13 +594,18 @@ void
> > spice_inputs_channel_key_release(SpiceInputsChannel *channel, guint sca=
ncod
> >  {
> >      SpiceMsgcKeyUp up;
> >      SpiceMsgOut *msg;
> > +    gint channel_state;
> > =20
> >      g_return_if_fail(channel !=3D NULL);
> > -    g_return_if_fail(SPICE_CHANNEL(channel)->priv->state !=3D
> > SPICE_CHANNEL_STATE_UNCONNECTED);
> > -    if (SPICE_CHANNEL(channel)->priv->state !=3D SPICE_CHANNEL_STATE_R=
EADY)
> > +
> > +    channel_state =3D spice_channel_get_state(SPICE_CHANNEL(channel));
> > +    g_return_if_fail(channel_state !=3D SPICE_CHANNEL_STATE_UNCONNECTE=
D);
> > +    if (channel_state !=3D SPICE_CHANNEL_STATE_READY) {
> >          return;
> > -    if (spice_channel_get_read_only(SPICE_CHANNEL(channel)))
> > +    }
> > +    if (spice_channel_get_read_only(SPICE_CHANNEL(channel))) {
> >          return;
> > +    }
> > =20
> >      up.code =3D spice_make_scancode(scancode, TRUE);
> >      msg =3D spice_msg_out_new(SPICE_CHANNEL(channel),
> >      SPICE_MSGC_INPUTS_KEY_UP);
> > @@ -624,13 +645,14 @@ void
> > spice_inputs_channel_key_press_and_release(SpiceInputsChannel *input_ch=
anne
> >      SpiceChannel *channel =3D SPICE_CHANNEL(input_channel);
> > =20
> >      g_return_if_fail(channel !=3D NULL);
> > -    g_return_if_fail(channel->priv->state !=3D
> > SPICE_CHANNEL_STATE_UNCONNECTED);
> > +    g_return_if_fail(spice_channel_get_state(channel) !=3D
> > SPICE_CHANNEL_STATE_UNCONNECTED);
> > =20
> > -    if (channel->priv->state !=3D SPICE_CHANNEL_STATE_READY)
> > +    if (spice_channel_get_state(channel) !=3D SPICE_CHANNEL_STATE_READ=
Y) {
> >          return;
> > -    if (spice_channel_get_read_only(channel))
> > +    }
> > +    if (spice_channel_get_read_only(channel)) {
> >          return;
> > -
> > +    }
> >      if (spice_channel_test_capability(channel,
> >      SPICE_INPUTS_CAP_KEY_SCANCODE)) {
> >          SpiceMsgOut *msg;
> >          guint16 code;
> > @@ -664,16 +686,15 @@ static SpiceMsgOut* set_key_locks(SpiceInputsChan=
nel
> > *channel, guint locks)
> >      SpiceMsgcKeyModifiers modifiers;
> >      SpiceMsgOut *msg;
> >      SpiceInputsChannelPrivate *ic;
> > -    SpiceChannelPrivate *c;
> > =20
> >      g_return_val_if_fail(SPICE_IS_INPUTS_CHANNEL(channel), NULL);
> > =20
> >      ic =3D channel->priv;
> > -    c =3D SPICE_CHANNEL(channel)->priv;
> > -
> >      ic->locks =3D locks;
> > -    if (c->state !=3D SPICE_CHANNEL_STATE_READY)
> > +
> > +    if (spice_channel_get_state(SPICE_CHANNEL(channel)) !=3D
> > SPICE_CHANNEL_STATE_READY) {
> >          return NULL;
> > +    }
> > =20
> >      msg =3D spice_msg_out_new(SPICE_CHANNEL(channel),
> >                              SPICE_MSGC_INPUTS_KEY_MODIFIERS);
> > diff --git a/src/channel-main.c b/src/channel-main.c
> > index 334be7d..ac0d408 100644
> > --- a/src/channel-main.c
> > +++ b/src/channel-main.c
> > @@ -2204,14 +2204,13 @@ static void migrate_channel_event_cb(SpiceChann=
el
> > *channel, SpiceChannelEvent ev
> >                                       gpointer data)
> >  {
> >      spice_migrate *mig =3D data;
> > -    SpiceChannelPrivate  *c =3D SPICE_CHANNEL(channel)->priv;
> > =20
> >      g_return_if_fail(mig->nchannels > 0);
> >      g_signal_handlers_disconnect_by_func(channel, migrate_channel_even=
t_cb,
> >      data);
> > =20
> >      switch (event) {
> >      case SPICE_CHANNEL_OPENED:
> > -        if (c->channel_type =3D=3D SPICE_CHANNEL_MAIN) {
> > +        if (spice_channel_get_channel_type(channel) =3D=3D SPICE_CHANN=
EL_MAIN) {
> >              SpiceSession *session =3D
> >              spice_channel_get_session(mig->src_channel);
> >              if (mig->do_seamless) {
> >                  SpiceMainChannelPrivate *main_priv =3D
> >                  SPICE_MAIN_CHANNEL(channel)->priv;
> > @@ -2227,11 +2226,15 @@ static void migrate_channel_event_cb(SpiceChann=
el
> > *channel, SpiceChannelEvent ev
> >              GList *channels, *l;
> >              l =3D channels =3D spice_session_get_channels(session);
> >              while (l !=3D NULL) {
> > -                SpiceChannelPrivate  *curc =3D SPICE_CHANNEL(l->data)-=
>priv;
> > +                SpiceChannel *it =3D SPICE_CHANNEL(l->data);
> > +
> >                  l =3D l->next;
> > -                if (curc->channel_type =3D=3D SPICE_CHANNEL_MAIN)
> > +                if (spice_channel_get_channel_type(it) =3D=3D
> > SPICE_CHANNEL_MAIN) {
> >                      continue;
> > -                migrate_channel_connect(mig, curc->channel_type,
> > curc->channel_id);
> > +                }
> > +                migrate_channel_connect(mig,
> > +                                        spice_channel_get_channel_type=
(it),
> > +                                        spice_channel_get_channel_id(i=
t));
> >              }
> >              g_list_free(channels);
> >          } else {
> > @@ -2254,10 +2257,10 @@ static void migrate_channel_event_cb(SpiceChann=
el
> > *channel, SpiceChannelEvent ev
> >  static gboolean main_migrate_handshake_done(gpointer data)
> >  {
> >      spice_migrate *mig =3D data;
> > -    SpiceChannelPrivate  *c =3D SPICE_CHANNEL(mig->dst_channel)->priv;
> > +    SpiceChannel *channel =3D SPICE_CHANNEL(mig->dst_channel);
> > =20
> > -    g_return_val_if_fail(c->channel_type =3D=3D SPICE_CHANNEL_MAIN, FA=
LSE);
> > -    g_return_val_if_fail(c->state =3D=3D
> > SPICE_CHANNEL_STATE_MIGRATION_HANDSHAKE, FALSE);
> > +    g_return_val_if_fail(spice_channel_get_channel_type(channel) =3D=3D
> > SPICE_CHANNEL_MAIN, FALSE);
> > +    g_return_val_if_fail(spice_channel_get_state(channel) =3D=3D
> > SPICE_CHANNEL_STATE_MIGRATION_HANDSHAKE, FALSE);
> > =20
> >      c->state =3D SPICE_CHANNEL_STATE_MIGRATING;
> >      mig->nchannels--;
> > @@ -2407,20 +2410,18 @@ static void
> > main_handle_migrate_begin_seamless(SpiceChannel *channel, SpiceMsgIn
> > =20
> >  static void main_handle_migrate_dst_seamless_ack(SpiceChannel *channel,
> >  SpiceMsgIn *in)
> >  {
> > -    SpiceChannelPrivate  *c =3D SPICE_CHANNEL(channel)->priv;
> >      SpiceMainChannelPrivate *main_priv =3D SPICE_MAIN_CHANNEL(channel)=
->priv;
> > =20
> > -    g_return_if_fail(c->state =3D=3D SPICE_CHANNEL_STATE_MIGRATION_HAN=
DSHAKE);
> > +    g_return_if_fail(spice_channel_get_state(channel) =3D=3D
> > SPICE_CHANNEL_STATE_MIGRATION_HANDSHAKE);
> >      main_priv->migrate_data->do_seamless =3D true;
> >      g_idle_add(main_migrate_handshake_done, main_priv->migrate_data);
> >  }
> > =20
> >  static void main_handle_migrate_dst_seamless_nack(SpiceChannel *channe=
l,
> >  SpiceMsgIn *in)
> >  {
> > -    SpiceChannelPrivate  *c =3D SPICE_CHANNEL(channel)->priv;
> >      SpiceMainChannelPrivate *main_priv =3D SPICE_MAIN_CHANNEL(channel)=
->priv;
> > =20
> > -    g_return_if_fail(c->state =3D=3D SPICE_CHANNEL_STATE_MIGRATION_HAN=
DSHAKE);
> > +    g_return_if_fail(spice_channel_get_state(channel) =3D=3D
> > SPICE_CHANNEL_STATE_MIGRATION_HANDSHAKE);
> >      main_priv->migrate_data->do_seamless =3D false;
> >      g_idle_add(main_migrate_handshake_done, main_priv->migrate_data);
> >  }
> > @@ -2551,11 +2552,10 @@ static void spice_main_handle_msg(SpiceChannel
> > *channel, SpiceMsgIn *msg)
> >  {
> >      int type =3D spice_msg_in_type(msg);
> >      SpiceChannelClass *parent_class;
> > -    SpiceChannelPrivate *c =3D SPICE_CHANNEL(channel)->priv;
> > =20
> >      parent_class =3D SPICE_CHANNEL_CLASS(spice_main_channel_parent_cla=
ss);
> > =20
> > -    if (c->state =3D=3D SPICE_CHANNEL_STATE_MIGRATION_HANDSHAKE) {
> > +    if (spice_channel_get_state(channel) =3D=3D
> > SPICE_CHANNEL_STATE_MIGRATION_HANDSHAKE) {
> >          if (type !=3D SPICE_MSG_MAIN_MIGRATE_DST_SEAMLESS_ACK &&
> >              type !=3D SPICE_MSG_MAIN_MIGRATE_DST_SEAMLESS_NACK) {
> >              g_critical("unexpected msg (%d)."
> > diff --git a/src/spice-audio.c b/src/spice-audio.c
> > index daf62df..10b31d7 100644
> > --- a/src/spice-audio.c
> > +++ b/src/spice-audio.c
> > @@ -145,11 +145,13 @@ static void spice_audio_init(SpiceAudio *self)
> > =20
> >  static void connect_channel(SpiceAudio *self, SpiceChannel *channel)
> >  {
> > -    if (channel->priv->state !=3D SPICE_CHANNEL_STATE_UNCONNECTED)
> > +    if (spice_channel_get_state(channel) !=3D SPICE_CHANNEL_STATE_UNCO=
NNECTED)
> > {
> >          return;
> > +    }
> > =20
> > -    if (SPICE_AUDIO_GET_CLASS(self)->connect_channel(self, channel))
> > +    if (SPICE_AUDIO_GET_CLASS(self)->connect_channel(self, channel)) {
> >          spice_channel_connect(channel);
> > +    }
> >  }
> > =20
> >  static void update_audio_channels(SpiceAudio *self, SpiceSession *sess=
ion)
> > diff --git a/src/spice-session.c b/src/spice-session.c
> > index d0d9e54..afeb724 100644
> > --- a/src/spice-session.c
> > +++ b/src/spice-session.c
> > @@ -2203,7 +2203,6 @@ GSocketConnection*
> > spice_session_channel_open_host(SpiceSession *session, SpiceC
> >      g_return_val_if_fail(SPICE_IS_SESSION(session), NULL);
> > =20
> >      SpiceSessionPrivate *s =3D session->priv;
> > -    SpiceChannelPrivate *c =3D channel->priv;
> >      spice_open_host open_host =3D { 0, };
> >      gchar *port, *endptr;
> > =20
> > @@ -2212,7 +2211,7 @@ GSocketConnection*
> > spice_session_channel_open_host(SpiceSession *session, SpiceC
> >      open_host.session =3D session;
> >      open_host.channel =3D channel;
> > =20
> > -    const char *name =3D spice_channel_type_to_string(c->channel_type);
> > +    const char *name =3D
> > spice_channel_type_to_string(spice_channel_get_channel_type(channel));
> >      if (spice_strv_contains(s->secure_channels, "all") ||
> >          spice_strv_contains(s->secure_channels, name))
> >          *use_tls =3D TRUE;
>=20
> By the way, the patch does not compile.

My bad in splitting up this and following patch, sorry.
I sent v2, in my rebased version, the follow up patch removes
SpiceChannelPrivate *c; from these two functions that are still
using them in this patch.

Thanks for review and checking it al.

Cheers,

>=20
> Frediano

--cmaiuch3i7rjjrqg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2KEjgACgkQl9kSPeN6
SE+qag/+MDhe32mZHC9aZ7MZqRbLX3dR4xJVcBecp6U8IZkVBDCn9ODwKZjzD6qj
fGArZfVSDJSrEkTSxl6tO+ukcpZYxs3fiSwEogEPPzPUkqGH0ScyKIBvXZ+TiXXR
sNV68GaITJQPp16cfNMSqOwAYYLAFRJCryJwmpcW/R5yGP4RjpwHpFhooOwfb5mB
CM5Qs6xkmiKiKict7pT8yywsYv/+W5+8NQx7j6j4jvppWtwldZYqNsSbs5ioNPX/
2M67hdwrawMUS1/CxdXUsavq3RofmYnZ1bU4s2K2iTbiQuyCdmNPxF0o0jamwYtG
3vdSwTODN38ue/7FuLtN0PND0ZGpLaumEZkuOov+itxdCILXqGiIk1YJNlPXQUOq
r69C/1KFKbwApHCpUIOdva9H8M8pBcb1Np51pMxvB96OdVSKHyY/LlYoWiRAKY0R
JjpId7r1AWzMJOTbp9w8aE7zFxHLC6W4/O2tmlIhAXTlNHNPZEeybJAKZ5vF/S09
7T25CXsH0xVNkzJYjzuxBn8mimSvc0SQpgdLiCosml7ABr1xgBsYtU+VaTcH3sLl
vU/MPQaRLR34A1b6wZE95RiEhM55iPThWGN5SYNzouxa9Ba84YrgOUDqFZASNWXd
+Rd4vfGInCp65Y/eldIVLNCH8KgeZo8bDxJk8YfPePfY10UVy0o=
=KxCp
-----END PGP SIGNATURE-----

--cmaiuch3i7rjjrqg--

--===============1248080053==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1248080053==--
