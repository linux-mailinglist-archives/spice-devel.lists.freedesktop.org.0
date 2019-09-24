Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F20C4BC4EE
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 11:35:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 259F589FEC;
	Tue, 24 Sep 2019 09:35:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFE0A89FEC
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 09:35:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5DA3E10CC1F4
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 09:35:45 +0000 (UTC)
Received: from localhost (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 90B715C1B2
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 09:35:44 +0000 (UTC)
Date: Tue, 24 Sep 2019 11:35:43 +0200
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <20190924093543.idvgkgs6tpw5xxro@wingsuit>
References: <20190924091502.16038-1-victortoso@redhat.com>
 <20190924091502.16038-7-victortoso@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190924091502.16038-7-victortoso@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Tue, 24 Sep 2019 09:35:45 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 6/6] Introduce
 SpiceMainChannelMigration
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
Content-Type: multipart/mixed; boundary="===============1103157286=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1103157286==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2yk4n72o7aqodsma"
Content-Disposition: inline


--2yk4n72o7aqodsma
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Sorry this commit log is actually horrible :)
I'll try to fix a little bit below but I hope review can still be
done on the overall idea.

On Tue, Sep 24, 2019 at 11:15:02AM +0200, Victor Toso wrote:
> From: Victor Toso <me@victortoso.com>
>=20
> The migration is a complicated feature where there the Virtual
> Machine is its connection details from its host, now to be
> called source-host, to a new host, now called target-host.

The migration is a feature which the Virtual Machine will be
moved from the source-host to the target-host. The client will
connect to target-host during the migration.

> For the client, the migration can happen in different ways as
> supported by spice-protocol. The focus of this patch is to
> create an object that should be handling the state of the
> migration itself as much as possible.

Spice-protocol supports different types of migration but the
focus of this series is the seamless migration. Other types of
migration will be added later.

> With that goal in mind, we will be able to remove some code from
> channel-main and spice-session and point out what are their roles
> during the execution of each type of migration.
>=20
> This patch introduces SpiceMainChannelMigration object. The name goes
> after channel-main as this is a feature that goes bounded to this
> channel. With this patch, we remove struct spice_migrate from
> channel-main and make that become the base for the new object.
>=20
> Note that one design choice is to the channel-main not hold a
> reference to SpiceMainChannelMigration because, even if the migration
> messages comes from channel-main, the migration scenario happens for
> the whole session so, it is SpiceSession who holds a reference to
> SpiceMainChannelMigration.
>=20
> In future patches, non-seamless migration can be moved to
> SpiceMainChannelMigration as well, reducing the logic in channel-main
> and spice-session.
>=20
> This has been tested a few times with RHEL8 Guest under RHV 4.3, also
> under valgrind.
>=20
> Signed-off-by: Victor Toso <victortoso@redhat.com>

Cheers,
Victor

> ---
>  doc/reference/meson.build    |   1 +
>  src/channel-main-migration.c | 398 +++++++++++++++++++++++++++++++++++
>  src/channel-main-migration.h |  63 ++++++
>  src/channel-main.c           | 217 ++++---------------
>  src/meson.build              |   2 +
>  src/spice-session-priv.h     |   4 +
>  src/spice-session.c          |  26 +++
>  7 files changed, 533 insertions(+), 178 deletions(-)
>  create mode 100644 src/channel-main-migration.c
>  create mode 100644 src/channel-main-migration.h
>=20
> diff --git a/doc/reference/meson.build b/doc/reference/meson.build
> index 61c410f..d9d5203 100644
> --- a/doc/reference/meson.build
> +++ b/doc/reference/meson.build
> @@ -1,6 +1,7 @@
>  ignore_headers =3D [
>    'bio-gio.h',
>    'channel-display-priv.h',
> +  'channel-main-migration.h',
>    'channel-usbredir-priv.h',
>    'client_sw_canvas.h',
>    'continuation.h',
> diff --git a/src/channel-main-migration.c b/src/channel-main-migration.c
> new file mode 100644
> index 0000000..9063e0e
> --- /dev/null
> +++ b/src/channel-main-migration.c
> @@ -0,0 +1,398 @@
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
> +#include "config.h"
> +
> +#include "channel-main-migration.h"
> +#include "spice-session-priv.h"
> +#include "spice-channel-priv.h"
> +
> +typedef struct _SpiceMainChannelMigrationPrivate SpiceMainChannelMigrati=
onPrivate;
> +
> +struct _SpiceMainChannelMigrationPrivate
> +{
> +    SpiceSession *source_session;
> +    SpiceSession *target_session;
> +
> +    guint source_host_version;
> +    gboolean seamless_migration;
> +
> +    struct coroutine *source_coroutine;
> +
> +    guint num_channels; /* to migrate */
> +    guint num_migrating_channels;
> +};
> +
> +struct _SpiceMainChannelMigration
> +{
> +    GObject parent;
> +
> +    SpiceMainChannelMigrationPrivate *priv;
> +};
> +
> +struct _SpiceMainChannelMigrationClass
> +{
> +    GObjectClass parent_class;
> +};
> +
> +enum {
> +    PROP_COROUTINE_CONTEXT =3D 1,
> +    PROP_SEAMLESS_MIGRATION,
> +    PROP_SOURCE_HOST_VERSION,
> +    PROP_SOURCE_SESSION,
> +    PROP_TARGET_SESSION,
> +
> +    PROP_LAST,
> +};
> +
> +static GParamSpec *g_properties[PROP_LAST] =3D { NULL, };
> +
> +G_DEFINE_TYPE_WITH_PRIVATE(SpiceMainChannelMigration, spice_main_channel=
_migration, G_TYPE_OBJECT)
> +
> +/***********************************************************************=
********
> + * Helpers
> + ***********************************************************************=
*******/
> +
> +/* main context */
> +static gboolean
> +main_channel_migration_seamless_migration_handshake_cb(gpointer data)
> +{
> +    SpiceMainChannelMigration *self =3D SPICE_MAIN_CHANNEL_MIGRATION(dat=
a);
> +    SpiceChannel *channel =3D spice_session_lookup_channel(self->priv->t=
arget_session, SPICE_CHANNEL_MAIN, 0);
> +
> +    g_return_val_if_fail(spice_channel_get_state(channel) =3D=3D SPICE_C=
HANNEL_STATE_MIGRATION_HANDSHAKE, FALSE);
> +
> +    spice_channel_set_state(channel, SPICE_CHANNEL_STATE_MIGRATING);
> +    self->priv->num_migrating_channels++;
> +
> +    spice_debug("migration: channel opened chan:%p (main) - %u/%u in mig=
rating state",
> +                channel, self->priv->num_migrating_channels, self->priv-=
>num_channels);
> +
> +    if (self->priv->num_migrating_channels =3D=3D self->priv->num_channe=
ls) {
> +        coroutine_yieldto(self->priv->source_coroutine, NULL);
> +    }
> +    return FALSE;
> +}
> +
> +/* main context */
> +static bool
> +main_channel_migration_create_and_connect_channel(SpiceMainChannelMigrat=
ion *self,
> +                                                  int channel_type,
> +                                                  int channel_id)
> +{
> +    spice_debug("migration: creating channel type: %d, id: %d", channel_=
type, channel_id);
> +
> +    SpiceChannel *channel =3D spice_channel_new(self->priv->target_sessi=
on, channel_type, channel_id);
> +    bool success =3D (channel !=3D NULL && spice_channel_connect(channel=
));
> +    if (!success) {
> +        spice_debug("migration: failed to create channel");
> +        return false;
> +    }
> +    self->priv->num_channels++;
> +    return true;
> +}
> +
> +/* main context */
> +static void
> +main_channel_migration_on_channel_event(SpiceChannel *channel,
> +                                        SpiceChannelEvent event,
> +                                        gpointer data)
> +{
> +    SpiceMainChannelMigration *self =3D SPICE_MAIN_CHANNEL_MIGRATION(dat=
a);
> +
> +    g_signal_handlers_disconnect_by_func(channel, main_channel_migration=
_on_channel_event, data);
> +    /* Keeping the security check. Should always be positive here, the m=
ain-channel at least */
> +    g_return_if_fail(self->priv->num_channels > 0);
> +
> +    switch (event) {
> +    case SPICE_CHANNEL_OPENED:
> +    {
> +        if (spice_channel_get_channel_type(channel) !=3D SPICE_CHANNEL_M=
AIN) {
> +            spice_channel_set_state(channel, SPICE_CHANNEL_STATE_MIGRATI=
NG);
> +            self->priv->num_migrating_channels++;
> +            break;
> +        }
> +
> +        if (self->priv->seamless_migration) {
> +            /* Now that channel is open and seamless-migration is possib=
le, we wait
> +             * for the seamless-migration-handshake ack/nack from target=
 host */
> +            spice_channel_set_state(channel, SPICE_CHANNEL_STATE_MIGRATI=
ON_HANDSHAKE);
> +        } else {
> +            spice_channel_set_state(channel, SPICE_CHANNEL_STATE_MIGRATI=
NG);
> +            self->priv->num_migrating_channels++;
> +        }
> +
> +        /* now connect the rest of the channels */
> +        GList *it, *channels =3D spice_session_get_channels(self->priv->=
source_session);
> +        for (it =3D channels; it !=3D NULL; it =3D it->next) {
> +            SpiceChannel *it_channel =3D SPICE_CHANNEL(it->data);
> +            if (spice_channel_get_channel_type(it_channel) !=3D SPICE_CH=
ANNEL_MAIN) {
> +                main_channel_migration_create_and_connect_channel(self,
> +                                        spice_channel_get_channel_type(i=
t_channel),
> +                                        spice_channel_get_channel_id(it_=
channel));
> +            }
> +        }
> +        g_list_free(channels);
> +        break;
> +    }
> +    default:
> +        CHANNEL_DEBUG(channel, "error or unhandled channel event during =
migration: %u", event);
> +        /* go back to main channel to report error */
> +        coroutine_yieldto(self->priv->source_coroutine, NULL);
> +        return;
> +    }
> +
> +    spice_debug("migration: channel opened chan:%p - %u/%u in migrating =
state",
> +                channel, self->priv->num_migrating_channels, self->priv-=
>num_channels);
> +
> +    if (self->priv->num_migrating_channels =3D=3D self->priv->num_channe=
ls) {
> +        coroutine_yieldto(self->priv->source_coroutine, NULL);
> +    }
> +}
> +
> +/* main context */
> +static void
> +main_channel_migration_on_channel_new(SpiceSession *target_session,
> +                                      SpiceChannel *channel,
> +                                      gpointer data)
> +{
> +    g_signal_connect(channel, "channel-event",
> +                     G_CALLBACK(main_channel_migration_on_channel_event)=
, data);
> +}
> +
> +/* main context */
> +static gboolean
> +main_channel_migration_run_cb(gpointer data)
> +{
> +    SpiceMainChannelMigration *self =3D SPICE_MAIN_CHANNEL_MIGRATION(dat=
a);
> +
> +    spice_session_set_migration_state(self->priv->target_session,
> +                                      SPICE_SESSION_MIGRATION_CONNECTING=
);
> +    g_signal_connect(self->priv->target_session, "channel-new",
> +                     G_CALLBACK(main_channel_migration_on_channel_new), =
self);
> +    /* the migration process is in 2 steps, first the main channel and
> +       then the rest of the channels */
> +    main_channel_migration_create_and_connect_channel(self, SPICE_CHANNE=
L_MAIN, 0);
> +
> +    return FALSE;
> +}
> +
> +/***********************************************************************=
********
> + * Internal API
> + ***********************************************************************=
*******/
> +
> +/* coroutine context */
> +G_GNUC_INTERNAL
> +bool spice_main_channel_migration_init_migration(SpiceMainChannelMigrati=
on *self)
> +{
> +    /* On SpiceMainChannelMigration creation, we check both source_sessi=
on and
> +     * target_session and initialization would fail if minimum parameter=
s were
> +     * lacking. The guard below is enough for minimal check */
> +    g_return_val_if_fail(SPICE_IS_MAIN_CHANNEL_MIGRATION(self), FALSE);
> +
> +    /* no need to track idle, call is sync for this coroutine */
> +    g_idle_add(main_channel_migration_run_cb, self);
> +
> +    /* switch to main loop and wait for connections */
> +    coroutine_yield(NULL);
> +
> +    return self->priv->num_channels =3D=3D self->priv->num_migrating_cha=
nnels;
> +}
> +
> +/* coroutine context */
> +G_GNUC_INTERNAL void
> +spice_main_channel_migration_seamless_handshake_done(SpiceMainChannelMig=
ration *self,
> +                                                     gboolean seamless_m=
igration)
> +{
> +    self->priv->seamless_migration =3D seamless_migration;
> +    /* move to main context */
> +    g_idle_add(main_channel_migration_seamless_migration_handshake_cb, s=
elf);
> +}
> +
> +G_GNUC_INTERNAL
> +guint spice_main_channel_migration_get_source_host_version(SpiceMainChan=
nelMigration *self)
> +{
> +    return self->priv->source_host_version;
> +}
> +
> +G_GNUC_INTERNAL
> +bool spice_main_channel_migration_is_seamless(SpiceMainChannelMigration =
*self)
> +{
> +    return self->priv->seamless_migration;
> +}
> +
> +/***********************************************************************=
********
> + * GObject
> + ***********************************************************************=
*******/
> +
> +static void
> +spice_main_channel_migration_init(SpiceMainChannelMigration *self)
> +{
> +     self->priv =3D spice_main_channel_migration_get_instance_private(se=
lf);
> +}
> +
> +static void
> +spice_main_channel_migration_dispose(GObject *gobject)
> +{
> +    SpiceMainChannelMigration *self =3D SPICE_MAIN_CHANNEL_MIGRATION(gob=
ject);
> +
> +    g_clear_object(&self->priv->target_session);
> +    g_clear_object(&self->priv->source_session);
> +
> +    if (G_OBJECT_CLASS(spice_main_channel_migration_parent_class)->dispo=
se) {
> +        G_OBJECT_CLASS(spice_main_channel_migration_parent_class)->dispo=
se(gobject);
> +    }
> +}
> +
> +static void
> +spice_main_channel_migration_get_property(GObject *object,
> +                                          guint property_id,
> +                                          GValue *value,
> +                                          GParamSpec *pspec)
> +{
> +    SpiceMainChannelMigration *self =3D SPICE_MAIN_CHANNEL_MIGRATION(obj=
ect);
> +
> +    switch (property_id) {
> +    case PROP_COROUTINE_CONTEXT:
> +        g_value_set_pointer(value, self->priv->source_coroutine);
> +        break;
> +
> +    case PROP_SEAMLESS_MIGRATION:
> +        g_value_set_boolean(value, self->priv->seamless_migration);
> +        break;
> +
> +    case PROP_SOURCE_HOST_VERSION:
> +        g_value_set_uint(value, self->priv->source_host_version);
> +        break;
> +
> +    case PROP_SOURCE_SESSION:
> +        g_value_set_object(value, self->priv->source_session);
> +        break;
> +
> +    case PROP_TARGET_SESSION:
> +        g_value_set_object(value, self->priv->target_session);
> +        break;
> +
> +    default:
> +        G_OBJECT_WARN_INVALID_PROPERTY_ID(object, property_id, pspec);
> +        break;
> +    }
> +}
> +
> +static void
> +spice_main_channel_migration_set_property(GObject *object,
> +                                          guint property_id,
> +                                          const GValue *value,
> +                                          GParamSpec *pspec)
> +{
> +    SpiceMainChannelMigration *self =3D SPICE_MAIN_CHANNEL_MIGRATION(obj=
ect);
> +
> +    switch (property_id) {
> +    case PROP_COROUTINE_CONTEXT:
> +        self->priv->source_coroutine =3D g_value_get_pointer(value);
> +        break;
> +
> +    case PROP_SEAMLESS_MIGRATION:
> +        self->priv->seamless_migration =3D g_value_get_boolean(value);
> +        break;
> +
> +    case PROP_SOURCE_HOST_VERSION:
> +        self->priv->source_host_version =3D g_value_get_uint(value);
> +        break;
> +
> +    case PROP_SOURCE_SESSION:
> +        g_clear_object(&self->priv->source_session);
> +        self->priv->source_session =3D g_value_dup_object(value);
> +        break;
> +
> +    case PROP_TARGET_SESSION:
> +        g_clear_object(&self->priv->target_session);
> +        self->priv->target_session =3D g_value_dup_object(value);
> +        break;
> +
> +    default:
> +        G_OBJECT_WARN_INVALID_PROPERTY_ID(object, property_id, pspec);
> +        break;
> +    }
> +}
> +
> +static void
> +spice_main_channel_migration_constructed(GObject *gobject)
> +{
> +    SpiceMainChannelMigration *self =3D SPICE_MAIN_CHANNEL_MIGRATION(gob=
ject);
> +
> +    g_return_if_fail(SPICE_IS_SESSION(self->priv->source_session));
> +    g_return_if_fail(SPICE_IS_SESSION(self->priv->target_session));
> +    g_return_if_fail(spice_session_get_main_channel_migration(self->priv=
->source_session) =3D=3D NULL);
> +    g_return_if_fail(spice_session_get_main_channel_migration(self->priv=
->target_session) =3D=3D NULL);
> +
> +    spice_session_set_main_channel_migration(self->priv->source_session,=
 self);
> +    spice_session_set_main_channel_migration(self->priv->target_session,=
 self);
> +
> +    if (G_OBJECT_CLASS(spice_main_channel_migration_parent_class)->const=
ructed) {
> +        G_OBJECT_CLASS(spice_main_channel_migration_parent_class)->const=
ructed(gobject);
> +    }
> +}
> +
> +static void
> +spice_main_channel_migration_class_init(SpiceMainChannelMigrationClass *=
klass)
> +{
> +    GObjectClass *gobject_class =3D G_OBJECT_CLASS (klass);
> +
> +    gobject_class->dispose =3D spice_main_channel_migration_dispose;
> +    gobject_class->get_property =3D spice_main_channel_migration_get_pro=
perty;
> +    gobject_class->set_property =3D spice_main_channel_migration_set_pro=
perty;
> +    gobject_class->constructed =3D spice_main_channel_migration_construc=
ted;
> +
> +    g_properties[PROP_COROUTINE_CONTEXT] =3D
> +        g_param_spec_pointer("coroutine-context",
> +                             "Coroutine context",
> +                             "Coroutine context to yield back on failure=
",
> +                              G_PARAM_READWRITE | G_PARAM_CONSTRUCT_ONLY=
 | G_PARAM_STATIC_STRINGS);
> +
> +
> +    g_properties[PROP_SEAMLESS_MIGRATION] =3D
> +        g_param_spec_boolean("seamless-migration",
> +                             "Seamless migration",
> +                             "To enable seamless migration",
> +                             FALSE,
> +                             G_PARAM_READWRITE | G_PARAM_STATIC_STRINGS);
> +
> +    g_properties[PROP_SOURCE_HOST_VERSION] =3D
> +        g_param_spec_uint("source-host-version",
> +                          "Source Session",
> +                          "Current session that we are migrating from",
> +                          0, G_MAXUINT, 0,
> +                          G_PARAM_READWRITE | G_PARAM_CONSTRUCT_ONLY | G=
_PARAM_STATIC_STRINGS);
> +
> +    g_properties[PROP_SOURCE_SESSION] =3D
> +        g_param_spec_object("source-session",
> +                            "Source Session",
> +                            "Current session that we are migrating from",
> +                            SPICE_TYPE_SESSION,
> +                            G_PARAM_READWRITE | G_PARAM_CONSTRUCT_ONLY |=
 G_PARAM_STATIC_STRINGS);
> +
> +    g_properties[PROP_TARGET_SESSION] =3D
> +        g_param_spec_object("target-session",
> +                            "Target Session",
> +                            "Target session we are connecting to",
> +                            SPICE_TYPE_SESSION,
> +                            G_PARAM_READWRITE | G_PARAM_CONSTRUCT_ONLY |=
 G_PARAM_STATIC_STRINGS);
> +
> +    g_object_class_install_properties(gobject_class, PROP_LAST, g_proper=
ties);
> +}
> +
> diff --git a/src/channel-main-migration.h b/src/channel-main-migration.h
> new file mode 100644
> index 0000000..15a7e37
> --- /dev/null
> +++ b/src/channel-main-migration.h
> @@ -0,0 +1,63 @@
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
> +#ifndef __SPICE_CLIENT_MAIN_CHANNEL_MIGRATION_H__
> +#define __SPICE_CLIENT_MAIN_CHANNEL_MIGRATION_H__
> +
> +#if !defined(__SPICE_CLIENT_H_INSIDE__) && !defined(SPICE_COMPILATION)
> +#warning "Only <spice-client.h> can be included directly"
> +#endif
> +
> +#include "spice-client.h"
> +
> +#include <stdbool.h>
> +
> +G_BEGIN_DECLS
> +
> +#define SPICE_TYPE_MAIN_CHANNEL_MIGRATION   (spice_main_channel_migratio=
n_get_type())
> +#define SPICE_MAIN_CHANNEL_MIGRATION(obj)   (G_TYPE_CHECK_INSTANCE_CAST(=
(obj), \
> +                                             SPICE_TYPE_MAIN_CHANNEL_MIG=
RATION, \
> +                                             SpiceMainChannelMigration))
> +#define SPICE_MAIN_CHANNEL_MIGRATION_CLASS(klass)   (G_TYPE_CHECK_CLASS_=
CAST((klass), \
> +                                                     SPICE_TYPE_MAIN_CHA=
NNEL_MIGRATION, \
> +                                                     SpiceMainChannelMig=
rationClass))
> +#define SPICE_IS_MAIN_CHANNEL_MIGRATION(obj)    (G_TYPE_CHECK_INSTANCE_T=
YPE((obj), \
> +                                                 SPICE_TYPE_MAIN_CHANNEL=
_MIGRATION))
> +#define SPICE_IS_MAIN_CHANNEL_MIGRATION_CLASS(klass)    (G_TYPE_CHECK_CL=
ASS_TYPE((klass), \
> +                                                         SPICE_TYPE_MAIN=
_CHANNEL_MIGRATION))
> +#define SPICE_MAIN_CHANNEL_MIGRATION_GET_CLASS(obj) (G_TYPE_INSTANCE_GET=
_CLASS((obj), \
> +                                                     SPICE_TYPE_MAIN_CHA=
NNEL_MIGRATION, \
> +                                                     SpiceMainChannelMig=
rationClass))
> +
> +/**
> + * SpiceMainChannelMigration
> + *
> + * Opaque data structure.
> + **/
> +typedef struct _SpiceMainChannelMigration SpiceMainChannelMigration;
> +typedef struct _SpiceMainChannelMigrationClass SpiceMainChannelMigration=
Class;
> +
> +GType spice_main_channel_migration_get_type(void) G_GNUC_CONST;
> +bool spice_main_channel_migration_init_migration(SpiceMainChannelMigrati=
on *self);
> +void spice_main_channel_migration_seamless_handshake_done(SpiceMainChann=
elMigration *self,
> +                                                          gboolean seaml=
ess_migration);
> +guint spice_main_channel_migration_get_source_host_version(SpiceMainChan=
nelMigration *self);
> +bool spice_main_channel_migration_is_seamless(SpiceMainChannelMigration =
*self);
> +
> +G_END_DECLS
> +
> +#endif /* __SPICE_CLIENT_MAIN_CHANNEL_MIGRATION_H__ */
> diff --git a/src/channel-main.c b/src/channel-main.c
> index 3dba399..3bd91b8 100644
> --- a/src/channel-main.c
> +++ b/src/channel-main.c
> @@ -31,6 +31,7 @@
>  #include "spice-session-priv.h"
>  #include "spice-audio-priv.h"
>  #include "spice-file-transfer-task-priv.h"
> +#include "channel-main-migration.h"
> =20
>  /**
>   * SECTION:channel-main
> @@ -50,8 +51,6 @@
> =20
>  #define MAX_DISPLAY 16 /* Note must fit in a guint32, see monitors_align=
 */
> =20
> -typedef struct spice_migrate spice_migrate;
> -
>  typedef enum {
>      DISPLAY_UNDEFINED,
>      DISPLAY_DISABLED,
> @@ -109,7 +108,6 @@ struct _SpiceMainChannelPrivate  {
> =20
>      guint                       switch_host_delayed_id;
>      guint                       migrate_delayed_id;
> -    spice_migrate               *migrate_data;
>      int                         max_clipboard;
> =20
>      gboolean                    agent_volume_playback_sync;
> @@ -117,21 +115,6 @@ struct _SpiceMainChannelPrivate  {
>      GCancellable                *cancellable_volume_info;
>  };
> =20
> -struct spice_migrate {
> -    struct coroutine *from;
> -    SpiceMigrationDstInfo *info;
> -    SpiceSession *session;
> -    guint nchannels;
> -    SpiceChannel *src_channel;
> -    SpiceChannel *dst_channel;
> -    bool do_seamless; /* used as input and output for the seamless migra=
tion handshake.
> -                         input: whether to send to the dest SPICE_MSGC_M=
AIN_MIGRATE_DST_DO_SEAMLESS
> -                         output: whether the dest approved seamless migr=
ation
> -                         (SPICE_MSG_MAIN_MIGRATE_DST_SEAMLESS_ACK/NACK)
> -                       */
> -    uint32_t src_mig_version;
> -};
> -
>  G_DEFINE_TYPE_WITH_PRIVATE(SpiceMainChannel, spice_main_channel, SPICE_T=
YPE_CHANNEL)
> =20
>  /* Properties */
> @@ -172,9 +155,6 @@ static void spice_main_handle_msg(SpiceChannel *chann=
el, SpiceMsgIn *msg);
>  static void channel_set_handlers(SpiceChannelClass *klass);
>  static void agent_send_msg_queue(SpiceMainChannel *channel);
>  static void agent_free_msg_queue(SpiceMainChannel *channel);
> -static void migrate_channel_event_cb(SpiceChannel *channel, SpiceChannel=
Event event,
> -                                     gpointer data);
> -static gboolean main_migrate_handshake_done(gpointer data);
>  static void spice_main_channel_send_migration_handshake(SpiceChannel *ch=
annel);
>  static void file_xfer_flushed(SpiceMainChannel *channel, gboolean succes=
s);
>  static void file_xfer_read_async_cb(GObject *source_object,
> @@ -2161,37 +2141,19 @@ static void main_handle_agent_token(SpiceChannel =
*channel, SpiceMsgIn *in)
>      agent_send_msg_queue(SPICE_MAIN_CHANNEL(channel));
>  }
> =20
> -/* main context */
> -static void migrate_channel_new_cb(SpiceSession *s, SpiceChannel *channe=
l, gpointer data)
> -{
> -    g_signal_connect(channel, "channel-event",
> -                     G_CALLBACK(migrate_channel_event_cb), data);
> -}
> -
> -static void
> -migrate_channel_connect(spice_migrate *mig, int type, int id)
> -{
> -    SPICE_DEBUG("migrate_channel_connect %d:%d", type, id);
> -
> -    SpiceChannel *newc =3D spice_channel_new(mig->session, type, id);
> -    if (newc !=3D NULL && spice_channel_connect(newc)) {
> -        mig->nchannels++;
> -    }
> -}
> -
>  /* coroutine context */
>  static void spice_main_channel_send_migration_handshake(SpiceChannel *ch=
annel)
>  {
> -    SpiceMainChannelPrivate *c =3D SPICE_MAIN_CHANNEL(channel)->priv;
> +    SpiceSession *session =3D spice_channel_get_session(channel);
> +    SpiceMainChannelMigration *migration =3D spice_session_get_main_chan=
nel_migration(session);
> =20
>      if (!spice_channel_test_capability(channel, SPICE_MAIN_CAP_SEAMLESS_=
MIGRATE)) {
> -        c->migrate_data->do_seamless =3D false;
> -        g_idle_add(main_migrate_handshake_done, c->migrate_data);
> +        spice_main_channel_migration_seamless_handshake_done(migration, =
FALSE);
>      } else {
>          SpiceMsgcMainMigrateDstDoSeamless msg_data;
>          SpiceMsgOut *msg_out;
> =20
> -        msg_data.src_version =3D c->migrate_data->src_mig_version;
> +        msg_data.src_version =3D spice_main_channel_migration_get_source=
_host_version(migration);
> =20
>          msg_out =3D spice_msg_out_new(channel, SPICE_MSGC_MAIN_MIGRATE_D=
ST_DO_SEAMLESS);
>          msg_out->marshallers->msgc_main_migrate_dst_do_seamless(msg_out-=
>marshaller, &msg_data);
> @@ -2199,76 +2161,6 @@ static void spice_main_channel_send_migration_hand=
shake(SpiceChannel *channel)
>      }
>  }
> =20
> -/* main context */
> -static void migrate_channel_event_cb(SpiceChannel *channel, SpiceChannel=
Event event,
> -                                     gpointer data)
> -{
> -    spice_migrate *mig =3D data;
> -
> -    g_return_if_fail(mig->nchannels > 0);
> -    g_signal_handlers_disconnect_by_func(channel, migrate_channel_event_=
cb, data);
> -
> -    switch (event) {
> -    case SPICE_CHANNEL_OPENED:
> -        if (spice_channel_get_channel_type(channel) =3D=3D SPICE_CHANNEL=
_MAIN) {
> -            SpiceSession *session =3D spice_channel_get_session(mig->src=
_channel);
> -            if (mig->do_seamless) {
> -                SpiceMainChannelPrivate *main_priv =3D SPICE_MAIN_CHANNE=
L(channel)->priv;
> -
> -                spice_channel_set_state(channel, SPICE_CHANNEL_STATE_MIG=
RATION_HANDSHAKE);
> -                mig->dst_channel =3D channel;
> -                main_priv->migrate_data =3D mig;
> -            } else {
> -                spice_channel_set_state(channel, SPICE_CHANNEL_STATE_MIG=
RATING);
> -                mig->nchannels--;
> -            }
> -            /* now connect the rest of the channels */
> -            GList *channels, *l;
> -            l =3D channels =3D spice_session_get_channels(session);
> -            while (l !=3D NULL) {
> -                SpiceChannel *it =3D SPICE_CHANNEL(l->data);
> -
> -                l =3D l->next;
> -                if (spice_channel_get_channel_type(it) =3D=3D SPICE_CHAN=
NEL_MAIN) {
> -                    continue;
> -                }
> -                migrate_channel_connect(mig,
> -                                        spice_channel_get_channel_type(i=
t),
> -                                        spice_channel_get_channel_id(it)=
);
> -            }
> -            g_list_free(channels);
> -        } else {
> -            spice_channel_set_state(channel, SPICE_CHANNEL_STATE_MIGRATI=
NG);
> -            mig->nchannels--;
> -        }
> -
> -        SPICE_DEBUG("migration: channel opened chan:%p, left %u", channe=
l, mig->nchannels);
> -        if (mig->nchannels =3D=3D 0)
> -            coroutine_yieldto(mig->from, NULL);
> -        break;
> -    default:
> -        CHANNEL_DEBUG(channel, "error or unhandled channel event during =
migration: %u", event);
> -        /* go back to main channel to report error */
> -        coroutine_yieldto(mig->from, NULL);
> -    }
> -}
> -
> -/* main context */
> -static gboolean main_migrate_handshake_done(gpointer data)
> -{
> -    spice_migrate *mig =3D data;
> -    SpiceChannel *channel =3D SPICE_CHANNEL(mig->dst_channel);
> -
> -    g_return_val_if_fail(spice_channel_get_channel_type(channel) =3D=3D =
SPICE_CHANNEL_MAIN, FALSE);
> -    g_return_val_if_fail(spice_channel_get_state(channel) =3D=3D SPICE_C=
HANNEL_STATE_MIGRATION_HANDSHAKE, FALSE);
> -
> -    spice_channel_set_state(channel, SPICE_CHANNEL_STATE_MIGRATING);
> -    mig->nchannels--;
> -    if (mig->nchannels =3D=3D 0)
> -        coroutine_yieldto(mig->from, NULL);
> -    return FALSE;
> -}
> -
>  #ifdef __GNUC__
>  typedef struct __attribute__ ((__packed__)) OldRedMigrationBegin {
>  #else
> @@ -2279,38 +2171,6 @@ typedef struct __declspec(align(1)) OldRedMigratio=
nBegin {
>      char host[0];
>  } OldRedMigrationBegin;
> =20
> -/* main context */
> -static gboolean migrate_connect(gpointer data)
> -{
> -    spice_migrate *mig =3D data;
> -    SpiceChannelPrivate  *c;
> -
> -    g_return_val_if_fail(mig !=3D NULL, FALSE);
> -    g_return_val_if_fail(mig->info !=3D NULL, FALSE);
> -    g_return_val_if_fail(mig->nchannels =3D=3D 0, FALSE);
> -    c =3D SPICE_CHANNEL(mig->src_channel)->priv;
> -    g_return_val_if_fail(c !=3D NULL, FALSE);
> -    g_return_val_if_fail(mig->session !=3D NULL, FALSE);
> -
> -    spice_session_set_migration_state(mig->session, SPICE_SESSION_MIGRAT=
ION_CONNECTING);
> -
> -    SpiceMigrationDstInfo *info =3D mig->info;
> -    SPICE_DEBUG("migrate_begin %u %s %d %d",
> -                info->host_size, info->host_data, info->port, info->spor=
t);
> -
> -    g_signal_connect(mig->session, "channel-new",
> -                     G_CALLBACK(migrate_channel_new_cb), mig);
> -
> -    g_signal_emit(mig->src_channel, signals[SPICE_MIGRATION_STARTED], 0,
> -                  mig->session);
> -
> -    /* the migration process is in 2 steps, first the main channel and
> -       then the rest of the channels */
> -    migrate_channel_connect(mig, SPICE_CHANNEL_MAIN, 0);
> -
> -    return FALSE;
> -}
> -
>  static void
>  migration_session_set_destination_info(SpiceSession *target_session,
>                                         SpiceMigrationDstInfo *info)
> @@ -2348,50 +2208,51 @@ static void main_migrate_connect(SpiceChannel *ch=
annel,
>                                   bool do_seamless,
>                                   uint32_t src_mig_version)
>  {
> -    SpiceMainChannelPrivate *main_priv =3D SPICE_MAIN_CHANNEL(channel)->=
priv;
>      int reply_type =3D SPICE_MSGC_MAIN_MIGRATE_CONNECT_ERROR;
> -    spice_migrate mig =3D { 0, };
>      SpiceMsgOut *out;
> -    SpiceSession *session;
> -
> -    mig.src_channel =3D channel;
> -    mig.info =3D dst_info;
> -    mig.from =3D coroutine_self();
> -    mig.do_seamless =3D do_seamless;
> -    mig.src_mig_version =3D src_mig_version;
> +    SpiceSession *session, *target_session;
> +    SpiceMainChannelMigration *migration =3D NULL;
> =20
>      CHANNEL_DEBUG(channel, "migrate connect");
>      session =3D spice_channel_get_session(channel);
> -    mig.session =3D spice_session_new_from_session(session);
> -    if (!spice_session_set_migration_session(session, mig.session)) {
> +    target_session =3D spice_session_new_from_session(session);
> +    if (!spice_session_set_migration_session(session, target_session)) {
>          goto end;
>      }
> =20
> -    migration_session_set_destination_info(mig.session, dst_info);
> -
> -    main_priv->migrate_data =3D &mig;
> +    migration_session_set_destination_info(target_session, dst_info);
> +    migration =3D g_object_new(SPICE_TYPE_MAIN_CHANNEL_MIGRATION,
> +                             "source-session", session,
> +                             "target-session", target_session,
> +                             "coroutine-context", coroutine_self(),
> +                             "seamless-migration", do_seamless,
> +                             "source-host-version", src_mig_version,
> +                             NULL);
> =20
> -    /* no need to track idle, call is sync for this coroutine */
> -    g_idle_add(migrate_connect, &mig);
> +    /* Allow application to track new-channel events on target session */
> +    g_signal_emit(channel, signals[SPICE_MIGRATION_STARTED], 0, target_s=
ession);
> =20
> -    /* switch to main loop and wait for connections */
> -    coroutine_yield(NULL);
> +    /* Runs sync from coroutine perspective */
> +    bool success =3D spice_main_channel_migration_init_migration(migrati=
on);
> =20
> -    if (mig.nchannels !=3D 0) {
> +    if (!success) {
>          CHANNEL_DEBUG(channel, "migrate failed: some channels failed to =
connect");
>          spice_session_abort_migration(session);
> +        goto end;
> +    }
> +
> +    if (spice_main_channel_migration_is_seamless(migration)) {
> +        SPICE_DEBUG("migration (seamless): connections all ok");
> +        reply_type =3D SPICE_MSGC_MAIN_MIGRATE_CONNECTED_SEAMLESS;
>      } else {
> -        if (mig.do_seamless) {
> -            SPICE_DEBUG("migration (seamless): connections all ok");
> -            reply_type =3D SPICE_MSGC_MAIN_MIGRATE_CONNECTED_SEAMLESS;
> -        } else {
> -            SPICE_DEBUG("migration (semi-seamless): connections all ok");
> -            reply_type =3D SPICE_MSGC_MAIN_MIGRATE_CONNECTED;
> -        }
> -        spice_session_start_migrating(session, mig.do_seamless);
> +        SPICE_DEBUG("migration (semi-seamless): connections all ok");
> +        reply_type =3D SPICE_MSGC_MAIN_MIGRATE_CONNECTED;
>      }
> =20
> +    spice_session_start_migrating(session, spice_main_channel_migration_=
is_seamless(migration));
> +
>  end:
> +    g_clear_object(&migration);
>      CHANNEL_DEBUG(channel, "migrate connect reply %d", reply_type);
>      out =3D spice_msg_out_new(channel, reply_type);
>      spice_msg_out_send(out);
> @@ -2415,20 +2276,20 @@ static void main_handle_migrate_begin_seamless(Sp=
iceChannel *channel, SpiceMsgIn
> =20
>  static void main_handle_migrate_dst_seamless_ack(SpiceChannel *channel, =
SpiceMsgIn *in)
>  {
> -    SpiceMainChannelPrivate *main_priv =3D SPICE_MAIN_CHANNEL(channel)->=
priv;
> +    SpiceSession *session =3D spice_channel_get_session(channel);
> +    SpiceMainChannelMigration *migration =3D spice_session_get_main_chan=
nel_migration(session);
> =20
>      g_return_if_fail(spice_channel_get_state(channel) =3D=3D SPICE_CHANN=
EL_STATE_MIGRATION_HANDSHAKE);
> -    main_priv->migrate_data->do_seamless =3D true;
> -    g_idle_add(main_migrate_handshake_done, main_priv->migrate_data);
> +    spice_main_channel_migration_seamless_handshake_done(migration, TRUE=
);
>  }
> =20
>  static void main_handle_migrate_dst_seamless_nack(SpiceChannel *channel,=
 SpiceMsgIn *in)
>  {
> -    SpiceMainChannelPrivate *main_priv =3D SPICE_MAIN_CHANNEL(channel)->=
priv;
> +    SpiceSession *session =3D spice_channel_get_session(channel);
> +    SpiceMainChannelMigration *migration =3D spice_session_get_main_chan=
nel_migration(session);
> =20
>      g_return_if_fail(spice_channel_get_state(channel) =3D=3D SPICE_CHANN=
EL_STATE_MIGRATION_HANDSHAKE);
> -    main_priv->migrate_data->do_seamless =3D false;
> -    g_idle_add(main_migrate_handshake_done, main_priv->migrate_data);
> +    spice_main_channel_migration_seamless_handshake_done(migration, FALS=
E);
>  }
> =20
>  /* main context */
> diff --git a/src/meson.build b/src/meson.build
> index 0461dea..84ee9be 100644
> --- a/src/meson.build
> +++ b/src/meson.build
> @@ -90,6 +90,8 @@ spice_client_glib_sources =3D [
>    'channel-base.c',
>    'channel-display-gst.c',
>    'channel-display-priv.h',
> +  'channel-main-migration.c',
> +  'channel-main-migration.h',
>    'channel-playback-priv.h',
>    'channel-usbredir-priv.h',
>    'client_sw_canvas.c',
> diff --git a/src/spice-session-priv.h b/src/spice-session-priv.h
> index 62cebc5..b453f92 100644
> --- a/src/spice-session-priv.h
> +++ b/src/spice-session-priv.h
> @@ -28,6 +28,7 @@
>  typedef struct _PhodavServer PhodavServer;
>  #endif
> =20
> +#include "channel-main-migration.h"
>  #include "desktop-integration.h"
>  #include "spice-session.h"
>  #include "spice-gtk-session.h"
> @@ -95,6 +96,9 @@ PhodavServer *spice_session_get_webdav_server(SpiceSess=
ion *session);
>  PhodavServer* channel_webdav_server_new(SpiceSession *session);
>  guint spice_session_get_n_display_channels(SpiceSession *session);
>  gboolean spice_session_set_migration_session(SpiceSession *session, Spic=
eSession *mig_session);
> +SpiceMainChannelMigration * spice_session_get_main_channel_migration(Spi=
ceSession *self);
> +void spice_session_set_main_channel_migration(SpiceSession *self,
> +                                              SpiceMainChannelMigration =
*mc_migration);
>  SpiceAudio *spice_audio_get(SpiceSession *session, GMainContext *context=
);
>  const gchar* spice_audio_data_mode_to_string(gint mode);
>  G_END_DECLS
> diff --git a/src/spice-session.c b/src/spice-session.c
> index a770c92..e6bbb4f 100644
> --- a/src/spice-session.c
> +++ b/src/spice-session.c
> @@ -110,6 +110,9 @@ struct _SpiceSessionPrivate {
>      gboolean          migrate_wait_init;
>      guint             after_main_init;
>      gboolean          for_migration;
> +   =20
> +    /* FIXME: Can possibly remove lots of the above */
> +    SpiceMainChannelMigration *mc_migration;
> =20
>      display_cache     *images;
>      display_cache     *palettes;
> @@ -344,6 +347,7 @@ spice_session_dispose(GObject *gobject)
>      g_clear_object(&s->usb_manager);
>      g_clear_object(&s->proxy);
>      g_clear_object(&s->webdav);
> +    g_clear_object(&s->mc_migration);
> =20
>      /* Chain up to the parent class */
>      if (G_OBJECT_CLASS(spice_session_parent_class)->dispose)
> @@ -1752,6 +1756,7 @@ void spice_session_start_migrating(SpiceSession *se=
ssion,
>                                     gboolean full_migration)
>  {
>      g_return_if_fail(SPICE_IS_SESSION(session));
> +    g_return_if_fail(SPICE_IS_MAIN_CHANNEL_MIGRATION(session->priv->mc_m=
igration));
> =20
>      SpiceSessionPrivate *s =3D session->priv;
>      SpiceSessionPrivate *m;
> @@ -1834,6 +1839,7 @@ end:
>      g_clear_pointer(&s->migration_left, g_list_free);
>      session_disconnect(s->migration, FALSE);
>      g_clear_pointer(&s->migration, g_object_unref);
> +    g_clear_object(&s->mc_migration);
> =20
>      s->migrate_wait_init =3D FALSE;
>      if (s->after_main_init) {
> @@ -1874,6 +1880,7 @@ void spice_session_channel_migrate(SpiceSession *se=
ssion, SpiceChannel *channel)
>          session_disconnect(s->migration, FALSE);
>          g_clear_pointer(&s->migration, g_object_unref);
>          spice_session_set_migration_state(session, SPICE_SESSION_MIGRATI=
ON_NONE);
> +        g_clear_object(&s->mc_migration);
>      }
>  }
> =20
> @@ -2864,3 +2871,22 @@ gboolean spice_session_set_migration_session(Spice=
Session *session, SpiceSession
> =20
>      return TRUE;
>  }
> +
> +G_GNUC_INTERNAL void
> +spice_session_set_main_channel_migration(SpiceSession *self,
> +                                         SpiceMainChannelMigration *mc_m=
igration)
> +{
> +    g_return_if_fail(SPICE_IS_SESSION(self));
> +    g_return_if_fail(SPICE_IS_MAIN_CHANNEL_MIGRATION(mc_migration));
> +    g_return_if_fail(self->priv->mc_migration =3D=3D NULL);
> +
> +    self->priv->mc_migration =3D g_object_ref(mc_migration);
> +}
> +
> +G_GNUC_INTERNAL SpiceMainChannelMigration *
> +spice_session_get_main_channel_migration(SpiceSession *self)
> +{
> +    g_return_val_if_fail(SPICE_IS_SESSION(self), FALSE);
> +
> +    return self->priv->mc_migration;
> +}
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--2yk4n72o7aqodsma
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2J428ACgkQl9kSPeN6
SE+F7hAAp4sGvcqbrFRnHSABncly6qxGi/7y0IdPppSSAlphWxb0/IFVPjayq8uJ
yahJsPLAYytwgkhTlTMUlrlZFpOs5k2kwDqIQh9CULbVSEUD0FrzMDmGcSS6+4eE
BtuN1eWyqIn+ohZWPHB1iZIg8hoCTV70Du7uF1K13i/AlJf3CrUHgF56VakJZ7J5
Jqc5Bw5ChEJ5aW077C8H3ISbxf/vNrZtPZSj62F7TwTqNHw6JGMkIvOJwtHBoklo
fsnac1C/SktTAm+9AkcRIFW25Wu2uGQl4DgLVkPLQ9vCHrdOV1uQ+FN3OI+XQLy9
LOGwIjmv4Zb/9GVfN9r3F9l3g4Z9oqpIJM/OHtEUfZUx+l+zVoQ/hHzPQ6P0LKeL
xLpKYneKmPwGkd6L14E8Q2s8Qxx9oe0j5KvV1QXDIB8r3ybh91Rl6ApSBIY5+Usl
pOeXYb6oZLFJANfpC5hhc7BE1W8kqfvJe4seIZG2t4GJlMSM/97eRKPqkRqR4ahv
Z97EyHRNFpVoKbfJAHTHGEG1DippLF8Ac9D2SfPmK+tsmx0z5+iGoC5vvDNRIN7H
7ZPFanII8+UtGM9VoMEhIZp0sqBeELU5AMGAvHhTNgZL97irY7wUqYcULA4ZCR5U
JD1SQ+AwFZy10WgN7B0d22Dwfev5cQpSLbjlKWtprkJ2VL6QVCA=
=HkyT
-----END PGP SIGNATURE-----

--2yk4n72o7aqodsma--

--===============1103157286==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1103157286==--
