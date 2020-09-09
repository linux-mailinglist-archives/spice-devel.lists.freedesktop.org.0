Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D72E262F74
	for <lists+spice-devel@lfdr.de>; Wed,  9 Sep 2020 16:04:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A91E6E303;
	Wed,  9 Sep 2020 14:04:12 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DADFF6E29E
 for <spice-devel@freedesktop.org>; Wed,  9 Sep 2020 14:04:10 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id g4so2794592edk.0
 for <spice-devel@freedesktop.org>; Wed, 09 Sep 2020 07:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SSmJXYZnCV7785g9FDNim4k+IAQOQw+DLObxBcPfzT4=;
 b=RuhdXMocpHeybpjCtwW6iCEN+axx+qL8Nw/6PqT7uMGDDJShbFwWlG2PQdISgvR5Wk
 W1I5RTYMka+DLWCLbhFxQ+Xx0PrHD6o8QiKHqKyH+f44c3Z1wKFmdDm2Z6KYUSqNcMPz
 Dw6RkNGSN5ORjcg3R43r+MDzUP62NzmuMGlmnKncWfh6GMe6E+nPnYn25QcuceRPEOd3
 G4XFsN9MANykUFvp6D8e7UMOUbVhJnpGKDfdk3aEwsdkoj6UL+fw3YVQU2K/8WqIaF4J
 o0j5pkwsrSmX8M5dNEOTtlsQlkf2VvVh6URjxF9fpEaAz3rFcCj0qL70zHBKylw1hUNM
 g9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SSmJXYZnCV7785g9FDNim4k+IAQOQw+DLObxBcPfzT4=;
 b=mhsY11EYc0LDhIEwWOdYM84LnfJd+RxpIrT97vARUovnC5KQMuvZk1h9tDeAUoJZao
 HbYIJdj2zg8zzz/WMXe+dJ5B+fZlB096VW2eHcXAw4xD7MyeBAMPd0oF5OCt6A14N7s2
 KVHJidLVlqW9l2dhdoSL8FtEnolK8/F0qh91lHuSIDNMS9r2fuo9UNNGTfprqSKYaNIH
 4ZlqfYIq+Woitu4saY507P6GmRKFoYYug7YS7Lf1puAv+mkxPEj8CefGhVJmnWy7uphv
 7nSDq64L7+bukd450BZk7A3DT/IHGoUgtuIZ4YE/hwE9aswHV4YCJYsIlptvWcm81gBM
 fePg==
X-Gm-Message-State: AOAM531YRTAL1fZ2lhnZEcJtgpCnfVR62rsyzLH5lE4J9/0uZiNAlQnL
 LXezDh5RXlXOsrkeQty85I1cDs3MzOFU8nwMON2Coy4kyDA=
X-Google-Smtp-Source: ABdhPJzoAUohJDv52x+nX/0CxRh9+jxE+ArdjMZOpZRwjdJLcSYkxDv1z1yo/18IrtybBCFYOkg9DCbhjOxUZ0Au9B4=
X-Received: by 2002:a50:fc0b:: with SMTP id i11mr4140511edr.164.1599660248516; 
 Wed, 09 Sep 2020 07:04:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200909135044.0B7FA76130@kemper.freedesktop.org>
In-Reply-To: <20200909135044.0B7FA76130@kemper.freedesktop.org>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Wed, 9 Sep 2020 18:03:55 +0400
Message-ID: <CAJ+F1CJr=UC8H4CdpsTkv1yHPJh-yF85MDYkA-A4y6jtO5sf0Q@mail.gmail.com>
To: spice-devel@freedesktop.org
Subject: Re: [Spice-devel] [Spice-commits] 6 commits - meson.build
 src/map-file src/spice-glib-sym-file src/spice-gtk-session.c
 src/spice-session.c src/spice-session.h src/spice-session-priv.h
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-commits@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0216378528=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0216378528==
Content-Type: multipart/alternative; boundary="000000000000dfceae05aee1ec4c"

--000000000000dfceae05aee1ec4c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 9, 2020 at 5:50 PM GitLab Mirror <
gitlab-mirror@kemper.freedesktop.org> wrote:

>  meson.build              |   13 -
>  src/map-file             |    1
>  src/spice-glib-sym-file  |    1
>  src/spice-gtk-session.c  |  399
> +++++++++++++++++++++++++++++++++++++++++++++++
>  src/spice-session-priv.h |    1
>  src/spice-session.c      |   30 +++
>  src/spice-session.h      |    5
>  7 files changed, 443 insertions(+), 7 deletions(-)
>
> New commits:
> commit f33d589d747f4f7ee6a1241c344ca611a36e9c71
> Author: Jakub Jank=C5=AF <jjanku@redhat.com>
> Date:   Fri May 29 17:59:38 2020 +0200
>
>     clipboard: enable copying files to guest using webdav
>
>     When an app advertises the "text/uri-list" target, the user
>     probably wants to copy/move files. Spice-gtk then sends
>     a grab message to the vdagent advertising the
>     VD_AGENT_CLIPBOARD_FILE_LIST type.
>
>     Vdagent can then request clipboard data in this type.
>
>     Spice-gtk tries to talk to the app that owns the clipboard
>     in its native format in order to determine the preferred
>     file operation (copy X move).
>
>     For GNOME Nautilus, that's simply "UTF8_TEXT",
>     for KDE Dolphin, "application/x-kde-cutselection".
>
>     Otherwise the generic "text/uri-list" is used that does not
>     provide any additional information.
>
>     Once the uri list is obtained from the app, spice-gtk
>     creates a unique virtual dir in the ".spice-clipboard"
>     directory that is designated for this purpose.
>
>     Each file is attached inside this virtual dir using
>     phodav_virtual_dir_attach_real_child(), see phodav API
>     for details.
>
>     A list of paths in the phodav server is then sent to vdagent,
>     as specified in the spice-protocol.
>     Such path can for example look like this:
>         /.spice-clipboard/b8f0249c-082a-4da9-9a38-2de3237a66f0/file
>
>     It is up to the vdagent to ensure that the spice shared folder
>     is accessible and to set the clipboard data in a format that
>     other apps understand.
>
>     This requires new phodav with PhodavVirtualDir API.
>
>     Signed-off-by: Jakub Jank=C5=AF <jjanku@redhat.com>
>     Acked-by: Frediano Ziglio <fziglio@redhat.com>
>
> diff --git a/meson.build b/meson.build
> index 7ade460..e43139e 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -33,7 +33,7 @@ spice_glib_deps =3D []
>  spice_gtk_deps =3D []
>  spice_wayland_deps =3D []
>  spice_acl_deps =3D []
> -spice_protocol_version =3D '0.14.2'
> +spice_protocol_version =3D '0.14.3'
>
>  #
>  # Set up subprojects
> diff --git a/src/spice-gtk-session.c b/src/spice-gtk-session.c
> index 5e6be4a..dfbd8fa 100644
> --- a/src/spice-gtk-session.c
> +++ b/src/spice-gtk-session.c
> @@ -34,6 +34,10 @@
>  #endif
>  #endif
>
> +#ifdef HAVE_PHODAV_VIRTUAL
> +#include <libphodav/phodav.h>
> +#endif
> +
>  #include <gtk/gtk.h>
>  #include <spice/vd_agent.h>
>  #include "desktop-integration.h"
> @@ -61,6 +65,8 @@ struct _SpiceGtkSessionPrivate {
>      gboolean                clip_grabbed[CLIPBOARD_LAST];
>      gboolean                clipboard_by_guest[CLIPBOARD_LAST];
>      guint                   clipboard_release_delay[CLIPBOARD_LAST];
> +    /* TODO: maybe add a way of restoring this? */
> +    GHashTable              *cb_shared_files;
>      /* auto-usbredir related */
>      gboolean                auto_usbredir_enable;
>      int                     auto_usbredir_reqs;
> @@ -191,6 +197,12 @@ static void spice_gtk_session_init(SpiceGtkSession
> *self)
>
>      s =3D self->priv =3D spice_gtk_session_get_instance_private(self);
>
> +    s->cb_shared_files =3D
> +        g_hash_table_new_full(g_file_hash,
> +                              (GEqualFunc)g_file_equal,
> +                              g_object_unref, /* unref GFile */
> +                              g_free /* free gchar * */
> +                             );
>      s->clipboard =3D gtk_clipboard_get(GDK_SELECTION_CLIPBOARD);
>      g_signal_connect(G_OBJECT(s->clipboard), "owner-change",
>                       G_CALLBACK(clipboard_owner_change), self);
> @@ -252,6 +264,7 @@ static void spice_gtk_session_dispose(GObject *gobjec=
t)
>                                               self);
>          s->session =3D NULL;
>      }
> +    g_clear_pointer(&s->cb_shared_files, g_hash_table_destroy);
>
>      /* Chain up to the parent class */
>      if (G_OBJECT_CLASS(spice_gtk_session_parent_class)->dispose)
> @@ -544,6 +557,9 @@ static const struct {
>      },{
>          .vdagent =3D VD_AGENT_CLIPBOARD_IMAGE_JPG,
>          .xatom   =3D "image/jpeg"
> +    },{
> +        .vdagent =3D VD_AGENT_CLIPBOARD_FILE_LIST,
> +        .xatom   =3D "text/uri-list"
>      }
>  };
>
> @@ -660,6 +676,18 @@ static void clipboard_get_targets(GtkClipboard
> *clipboard,
>                  continue;
>              }
>
> +            if (atom2agent[m].vdagent =3D=3D VD_AGENT_CLIPBOARD_FILE_LIS=
T) {
> +#ifdef HAVE_PHODAV_VIRTUAL
> +                if (!clipboard_get_open_webdav(s->session)) {
> +                    SPICE_DEBUG("Received %s target, but the clipboard
> webdav channel "
> +                                "isn't available, skipping",
> atom2agent[m].xatom);
> +                    break;
> +                }
> +#else
> +                break;
> +#endif
> +            }
> +
>              /* check if type is already in list */
>              for (t =3D 0; t < num_types; t++) {
>                  if (types[t] =3D=3D atom2agent[m].vdagent) {
> @@ -1037,6 +1065,318 @@ notify_agent:
>      g_free(conv);
>  }
>
> +#ifdef HAVE_PHODAV_VIRTUAL
> +/* returns path to @file under @root in clipboard phodav server, or NULL
> on error */
> +static gchar *clipboard_webdav_share_file(PhodavVirtualDir *root, GFile
> *file)
> +{
> +    gchar *uuid;
> +    PhodavVirtualDir *dir;
> +    GError *err =3D NULL;
> +
> +    /* separate directory is created for each file,
> +     * as we want to preserve the original filename and avoid conflicts =
*/
> +    for (guint i =3D 0; i < 8; i++) {
> +        uuid =3D g_uuid_string_random();
> +        gchar *dir_path =3D
> g_strdup_printf(SPICE_WEBDAV_CLIPBOARD_FOLDER_PATH "/%s", uuid);
> +        dir =3D phodav_virtual_dir_new_dir(root, dir_path, &err);
> +        g_free(dir_path);
> +        if (!err) {
> +            break;
> +        }
> +        g_clear_pointer(&uuid, g_free);
> +        if (!g_error_matches(err, G_IO_ERROR, G_IO_ERROR_EXISTS)) {
> +            g_warning("failed to create phodav virtual dir: %s",
> err->message);
> +            g_error_free(err);
> +            return NULL;
> +        }
> +        g_clear_error(&err);
> +    }
> +
> +    if (!dir) {
> +        g_warning("failed to create phodav virtual dir: all attempts
> failed");
> +        return NULL;
> +    }
> +
> +    phodav_virtual_dir_attach_real_child(dir, file);
> +    g_object_unref(dir);
> +
> +    gchar *base =3D g_file_get_basename(file);
> +    gchar *path =3D g_strdup_printf(SPICE_WEBDAV_CLIPBOARD_FOLDER_PATH
> "/%s/%s", uuid, base);
> +    g_free(uuid);
> +    g_free(base);
> +
> +    return path;
> +}
> +
> +/* join all strings in @strv into a new char array,
> + * including all terminating NULL-chars */
> +static gchar *strv_concat(gchar **strv, gsize *size_out)
> +{
> +    gchar **str_p, *arr, *curr;
> +
> +    g_return_val_if_fail(strv && size_out, NULL);
> +
> +    for (str_p =3D strv, *size_out =3D 0; *str_p !=3D NULL; str_p++) {
> +        *size_out +=3D strlen(*str_p) + 1;
> +    }
> +
> +    arr =3D g_malloc(*size_out);
> +
> +    for (str_p =3D strv, curr =3D arr; *str_p !=3D NULL; str_p++) {
> +        curr =3D g_stpcpy(curr, *str_p) + 1;
> +    }
> +
> +    return arr;
> +}
> +
> +/* if not done alreay, share all files in @uris using the webdav server
> + * and return a new buffer with VD_AGENT_CLIPBOARD_FILE_LIST data */
> +static gchar *strv_uris_transform_to_data(SpiceGtkSessionPrivate *s,
> +    gchar **uris, gsize *size_out, GdkDragAction action)
> +{
> +    SpiceWebdavChannel *webdav;
> +    PhodavServer *phodav;
> +    PhodavVirtualDir *root;
> +
> +    gchar **uri_ptr, *path, **paths, *data;
> +    GFile *file;
> +    guint n;
> +
> +    *size_out =3D 0;
> +
> +    if (!uris || g_strv_length(uris) < 1) {
> +        return NULL;
> +    }
> +
> +    webdav =3D clipboard_get_open_webdav(s->session);
> +    if (!webdav) {
> +        SPICE_DEBUG("Received uris, but no webdav channel");
> +        return NULL;
> +    }
> +
> +    phodav =3D spice_session_get_webdav_server(s->session);
> +    g_object_get(phodav, "root-file", &root, NULL);
> +
> +    paths =3D g_new0(gchar *, g_strv_length(uris) + 2);
> +
> +    paths[0] =3D action =3D=3D GDK_ACTION_MOVE ? "cut" : "copy";
> +    n =3D 1;
> +
> +    for (uri_ptr =3D uris; *uri_ptr !=3D NULL; uri_ptr++) {
> +        file =3D g_file_new_for_uri(*uri_ptr);
> +
> +        /* clipboard data is usually requested multiple times for no
> obvious reasons
> +         * (clipboar managers to blame?), we don't want to create
> multiple dirs for the same file */
> +        path =3D g_hash_table_lookup(s->cb_shared_files, file);
> +        if (path) {
> +            SPICE_DEBUG("found %s with path %s", *uri_ptr, path);
> +            g_object_unref(file);
> +        } else {
> +            path =3D clipboard_webdav_share_file(root, file);
> +            g_return_val_if_fail(path !=3D NULL, NULL);
> +            SPICE_DEBUG("publishing %s under %s", *uri_ptr, path);
> +            /* file and path gets freed once the hash table gets
> destroyed */
> +            g_hash_table_insert(s->cb_shared_files, file, path);
> +        }
> +        paths[n] =3D path;
> +        n++;
> +    }
> +
> +    g_object_unref(root);
> +    data =3D strv_concat(paths, size_out);
> +    g_free(paths);
> +
> +    return data;
> +}
> +
> +static GdkAtom a_gnome, a_mate, a_nautilus, a_uri_list, a_kde_cut;
> +
> +static void init_uris_atoms()
> +{
> +    if (a_gnome !=3D GDK_NONE) {
> +        return;
> +    }
> +    a_gnome =3D
> gdk_atom_intern_static_string("x-special/gnome-copied-files");
> +    a_mate =3D gdk_atom_intern_static_string("x-special/mate-copied-file=
s");
> +    a_nautilus =3D gdk_atom_intern_static_string("UTF8_STRING");
> +    a_uri_list =3D gdk_atom_intern_static_string("text/uri-list");
> +    a_kde_cut =3D
> gdk_atom_intern_static_string("application/x-kde-cutselection");
> +}
> +
> +static GdkAtom clipboard_select_uris_atom(SpiceGtkSessionPrivate *s,
> guint selection)
> +{
> +    init_uris_atoms();
> +    if (clipboard_find_atom(s, selection, a_gnome)) {
> +        return a_gnome;
> +    }
> +    if (clipboard_find_atom(s, selection, a_mate)) {
> +        return a_mate;
> +    }
> +    if (clipboard_find_atom(s, selection, a_nautilus)) {
> +        return a_nautilus;
> +    }
> +    return clipboard_find_atom(s, selection, a_uri_list);
> +}
> +
> +/* common handler for "x-special/gnome-copied-files" and
> "x-special/mate-copied-files" */
> +static gchar
> *x_special_copied_files_transform_to_data(SpiceGtkSessionPrivate *s,
> +    GtkSelectionData *selection_data, gsize *size_out)
> +{
> +    const gchar *text;
> +    gchar **lines, *data =3D NULL;
> +    GdkDragAction action;
> +
> +    *size_out =3D 0;
> +
> +    text =3D (gchar *)gtk_selection_data_get_data(selection_data);
> +    if (!text) {
> +        return NULL;
> +    }
> +    lines =3D g_strsplit(text, "\n", -1);
> +    if (g_strv_length(lines) < 2) {
> +        goto err;
> +    }
> +
> +    if (!g_strcmp0(lines[0], "cut")) {
> +        action =3D GDK_ACTION_MOVE;
> +    } else if (!g_strcmp0(lines[0], "copy")) {
> +        action =3D GDK_ACTION_COPY;
> +    } else {
> +        goto err;
> +    }
> +
> +    data =3D strv_uris_transform_to_data(s, &lines[1], size_out, action)=
;
> +err:
> +    g_strfreev(lines);
> +    return data;
> +}
> +
> +/* used with newer Nautilus */
> +static gchar *nautilus_uris_transform_to_data(SpiceGtkSessionPrivate *s,
> +    GtkSelectionData *selection_data, gsize *size_out, gboolean
> *retry_out)
> +{
> +    gchar **lines, *text, *data =3D NULL;
> +    guint n_lines;
> +    GdkDragAction action;
> +
> +    *size_out =3D 0;
> +
> +    text =3D (gchar *)gtk_selection_data_get_text(selection_data);
> +    if (!text) {
> +        return NULL;
> +    }
> +    lines =3D g_strsplit(text, "\n", -1);
> +    g_free(text);
> +    n_lines =3D g_strv_length(lines);
> +
> +    if (n_lines < 4) {
> +        *retry_out =3D TRUE;
> +        goto err;
> +    }
> +
> +    if (g_strcmp0(lines[0], "x-special/nautilus-clipboard")) {
> +        *retry_out =3D TRUE;
> +        goto err;
> +    }
> +
> +    if (!g_strcmp0(lines[1], "cut")) {
> +        action =3D GDK_ACTION_MOVE;
> +    } else if (!g_strcmp0(lines[1], "copy")) {
> +        action =3D GDK_ACTION_COPY;
> +    } else {
> +        goto err;
> +    }
> +
> +    /* the list of uris must end with \n,
> +     * so there must be an empty string after the split */
> +    if (g_strcmp0(lines[n_lines-1], "")) {
> +        goto err;
> +    }
> +    g_clear_pointer(&lines[n_lines-1], g_free);
> +
> +    data =3D strv_uris_transform_to_data(s, &lines[2], size_out, action)=
;
> +err:
> +    g_strfreev(lines);
> +    return data;
> +}
> +
> +static GdkDragAction kde_get_clipboard_action(SpiceGtkSessionPrivate *s,
> GtkClipboard *clipboard)
> +{
> +    GtkSelectionData *selection_data;
> +    GdkDragAction action;
> +    const guchar *data;
> +
> +    /* this uses another GMainLoop, basically the same mechanism
> +     * as we use in clipboard_get(), so it doesn't block */
> +    selection_data =3D gtk_clipboard_wait_for_contents(clipboard,
> a_kde_cut);
> +    data =3D gtk_selection_data_get_data(selection_data);
> +    if (data && data[0] =3D=3D '1') {
> +        action =3D GDK_ACTION_MOVE;
> +    } else {
> +        action =3D GDK_ACTION_COPY;
> +    }
> +    gtk_selection_data_free(selection_data);
> +
> +    return action;
> +}
> +
> +static void clipboard_received_uri_contents_cb(GtkClipboard *clipboard,
> +                                               GtkSelectionData
> *selection_data,
> +                                               gpointer user_data)
> +{
> +    SpiceGtkSession *self =3D free_weak_ref(user_data);
> +    SpiceGtkSessionPrivate *s;
> +    guint selection;
> +
> +    if (!self) {
> +        return;
> +    }
> +    s =3D self->priv;
> +
> +    selection =3D get_selection_from_clipboard(s, clipboard);
> +    g_return_if_fail(selection !=3D -1);
> +
> +    init_uris_atoms();
> +    GdkAtom type =3D gtk_selection_data_get_data_type(selection_data);
> +    gchar *data;
> +    gsize len;
> +
> +    if (type =3D=3D a_gnome || type =3D=3D a_mate) {
> +        /* used by old Nautilus + many other file managers  */
> +        data =3D x_special_copied_files_transform_to_data(s,
> selection_data, &len);
> +    } else if (type =3D=3D a_nautilus) {
> +        gboolean retry =3D FALSE;
> +        data =3D nautilus_uris_transform_to_data(s, selection_data, &len=
,
> &retry);
> +
> +        if (retry && clipboard_find_atom(s, selection, a_uri_list) !=3D
> GDK_NONE) {
> +            /* it's not Nautilus, so we give it one more try with the
> generic uri-list target */
> +            gtk_clipboard_request_contents(clipboard, a_uri_list,
> +                clipboard_received_uri_contents_cb, get_weak_ref(self));
> +            return;
> +        }
> +    } else if (type =3D=3D a_uri_list) {
> +        GdkDragAction action =3D GDK_ACTION_COPY;
> +        gchar **uris =3D gtk_selection_data_get_uris(selection_data);
> +
> +        /* KDE uses a separate atom to distinguish between copy and move
> operation */
> +        if (clipboard_find_atom(s, selection, a_kde_cut) !=3D GDK_NONE) =
{
> +            action =3D kde_get_clipboard_action(s, clipboard);
> +        }
> +
> +        data =3D strv_uris_transform_to_data(s, uris, &len, action);
> +        g_strfreev(uris);
> +    } else {
> +        g_warning("received uris in unsupported type");
> +        data =3D NULL;
> +        len =3D 0;
> +    }
> +
> +    spice_main_channel_clipboard_selection_notify(s->main, selection,
> +        VD_AGENT_CLIPBOARD_FILE_LIST, (guchar *)data, len);
> +    g_free(data);
> +}
> +#endif
> +
>  static void clipboard_received_cb(GtkClipboard *clipboard,
>                                    GtkSelectionData *selection_data,
>                                    gpointer user_data)
> @@ -1111,6 +1451,17 @@ static gboolean clipboard_request(SpiceMainChannel
> *main, guint selection,
>      if (type =3D=3D VD_AGENT_CLIPBOARD_UTF8_TEXT) {
>          gtk_clipboard_request_text(cb, clipboard_received_text_cb,
>                                     get_weak_ref(self));
> +    } else if (type =3D=3D VD_AGENT_CLIPBOARD_FILE_LIST) {
> +#ifdef HAVE_PHODAV_VIRTUAL
> +        atom =3D clipboard_select_uris_atom(s, selection);
> +        if (atom =3D=3D GDK_NONE) {
> +            return FALSE;
> +        }
> +        gtk_clipboard_request_contents(cb, atom,
> +            clipboard_received_uri_contents_cb, get_weak_ref(self));
> +#else
> +        return FALSE;
> +#endif
>      } else {
>          for (m =3D 0; m < SPICE_N_ELEMENTS(atom2agent); m++) {
>              if (atom2agent[m].vdagent =3D=3D type)
> diff --git a/src/spice-session.c b/src/spice-session.c
> index f0ac891..8831bc5 100644
> --- a/src/spice-session.c
> +++ b/src/spice-session.c
> @@ -2666,6 +2666,17 @@ static void
> spice_session_set_shared_dir(SpiceSession *session, const gchar *dir
>
>      g_free(s->shared_dir);
>      s->shared_dir =3D g_strdup(dir);
> +
> +#ifdef HAVE_PHODAV_VIRTUAL
> +    if (s->webdav =3D=3D NULL) {
> +        return;
> +    }
> +
> +    PhodavVirtualDir *root;
> +    g_object_get(s->webdav, "root-file", &root, NULL);
> +    phodav_virtual_dir_root_set_real(root, s->shared_dir);
> +    g_object_unref(root);
> +#endif
>  }
>
>  G_GNUC_INTERNAL
> @@ -2807,21 +2818,39 @@ PhodavServer*
> spice_session_get_webdav_server(SpiceSession *session)
>      static GMutex mutex;
>
>      const gchar *shared_dir =3D spice_session_get_shared_dir(session);
> +    /* with HAVE_PHODAV_VIRTUAL, PhodavServer must be created even if
> shared_dir is NULL */
> +#ifndef HAVE_PHODAV_VIRTUAL
>      if (shared_dir =3D=3D NULL) {
>          SPICE_DEBUG("No shared dir set, not creating webdav server");
>          return NULL;
>      }
> +#endif
>
>      g_mutex_lock(&mutex);
>
>      if (priv->webdav =3D=3D NULL) {
> +#ifdef HAVE_PHODAV_VIRTUAL
> +        PhodavVirtualDir *root =3D phodav_virtual_dir_new_root();
> +        priv->webdav =3D phodav_server_new_for_root_file(G_FILE(root));
> +
> +        phodav_virtual_dir_root_set_real(root, shared_dir);
> +
> +        g_object_unref(phodav_virtual_dir_new_dir(root,
> SPICE_WEBDAV_CLIPBOARD_FOLDER_PATH, NULL));
> +        g_object_unref(root);
> +#else
>          priv->webdav =3D phodav_server_new(shared_dir);
> +#endif
> +
>          g_object_bind_property(session,  "share-dir-ro",
>                                 priv->webdav, "read-only",
>
> G_BINDING_SYNC_CREATE|G_BINDING_BIDIRECTIONAL);
> +
> +        /* with HAVE_PHODAV_VIRTUAL, the update is done in
> spice_session_set_shared_dir() */
> +#ifndef HAVE_PHODAV_VIRTUAL
>          g_object_bind_property(session,  "shared-dir",
>                                 priv->webdav, "root",
>
> G_BINDING_SYNC_CREATE|G_BINDING_BIDIRECTIONAL);
> +#endif
>      }
>
>      g_mutex_unlock(&mutex);
> diff --git a/src/spice-session.h b/src/spice-session.h
> index 9436be8..665d2f3 100644
> --- a/src/spice-session.h
> +++ b/src/spice-session.h
> @@ -36,6 +36,8 @@ G_BEGIN_DECLS
>  #define SPICE_IS_SESSION_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass),
> SPICE_TYPE_SESSION))
>  #define SPICE_SESSION_GET_CLASS(obj)  (G_TYPE_INSTANCE_GET_CLASS ((obj),
> SPICE_TYPE_SESSION, SpiceSessionClass))
>
> +#define SPICE_WEBDAV_CLIPBOARD_FOLDER_PATH "/.spice-clipboard"
> +
>  typedef struct _PhodavServer PhodavServer;
>
>  /**
> commit 996bfb48dc5d1d17bb56b4936f79d8705bcd5c48
> Author: Jakub Jank=C5=AF <jjanku@redhat.com>
> Date:   Tue Jun 30 15:15:39 2020 +0200
>
>     spice-gtk-session: cache atoms
>
>     At the moment, spice-gtk only sends a grab message to the vdagent
>     based on the retrieved atoms.
>
>     With the upcoming changes, spice-gtk will have to know which
>     targets were advertised outside of clipboard_get_targets() callback.
>
>     We could use gtk_clipboard_wait_for_targets() or
>     gtk_clipboard_wait_is_*_available(), but the targets are not cached
>     by GTK+ on wayland for some reason. So let's cache them in spice-gtk
>     to avoid having to talk to the clipboard owner.
>
>     Signed-off-by: Jakub Jank=C5=AF <jjanku@redhat.com>
>     Acked-by: Frediano Ziglio <fziglio@redhat.com>
>
> diff --git a/src/spice-gtk-session.c b/src/spice-gtk-session.c
> index 2b86616..5e6be4a 100644
> --- a/src/spice-gtk-session.c
> +++ b/src/spice-gtk-session.c
> @@ -55,6 +55,8 @@ struct _SpiceGtkSessionPrivate {
>      GtkClipboard            *clipboard_primary;
>      GtkTargetEntry          *clip_targets[CLIPBOARD_LAST];
>      guint                   nclip_targets[CLIPBOARD_LAST];
> +    GdkAtom                 *atoms[CLIPBOARD_LAST];
> +    guint                   n_atoms[CLIPBOARD_LAST];
>      gboolean                clip_hasdata[CLIPBOARD_LAST];
>      gboolean                clip_grabbed[CLIPBOARD_LAST];
>      gboolean                clipboard_by_guest[CLIPBOARD_LAST];
> @@ -284,6 +286,8 @@ static void spice_gtk_session_finalize(GObject
> *gobject)
>      for (i =3D 0; i < CLIPBOARD_LAST; ++i) {
>          g_clear_pointer(&s->clip_targets[i], g_free);
>          clipboard_release_delay_remove(self, i, true);
> +        g_clear_pointer(&s->atoms[i], g_free);
> +        s->n_atoms[i] =3D 0;
>      }
>
>      /* Chain up to the parent class */
> @@ -589,6 +593,16 @@ static SpiceWebdavChannel
> *clipboard_get_open_webdav(SpiceSession *session)
>      g_list_free(list);
>      return open ? SPICE_WEBDAV_CHANNEL(channel) : NULL;
>  }
> +
> +static GdkAtom clipboard_find_atom(SpiceGtkSessionPrivate *s, guint
> selection, GdkAtom a)
> +{
> +    for (int i =3D 0; i < s->n_atoms[selection]; i++) {
> +        if (s->atoms[selection][i] =3D=3D a) {
> +            return a;
> +        }
> +    }
> +    return GDK_NONE;
> +}
>  #endif
>
>  static void clipboard_get_targets(GtkClipboard *clipboard,
> @@ -622,6 +636,11 @@ static void clipboard_get_targets(GtkClipboard
> *clipboard,
>      selection =3D get_selection_from_clipboard(s, clipboard);
>      g_return_if_fail(selection !=3D -1);
>
> +    /* GTK+ does seem to cache atoms, but not for Wayland */
> +    g_free(s->atoms[selection]);
> +    s->atoms[selection] =3D g_memdup(atoms, n_atoms * sizeof(GdkAtom));
> +    s->n_atoms[selection] =3D n_atoms;
> +
>      if (s->clip_grabbed[selection]) {
>          SPICE_DEBUG("Clipboard is already grabbed, re-grab: %d atoms",
> n_atoms);
>      }
> @@ -705,6 +724,9 @@ static void clipboard_owner_change(GtkClipboard
> *clipboard,
>          return;
>      }
>
> +    g_clear_pointer(&s->atoms[selection], g_free);
> +    s->n_atoms[selection] =3D 0;
> +
>      if (event->reason !=3D GDK_OWNER_CHANGE_NEW_OWNER) {
>          if (s->clip_grabbed[selection]) {
>              /* grab was sent to the agent, so release it */
> commit 852b847c868a199b5127644ca689f8a7d70fbda1
> Author: Jakub Jank=C5=AF <jjanku@redhat.com>
> Date:   Fri May 29 17:57:51 2020 +0200
>
>     spice-gtk-session: add clipboard_get_open_webdav()
>
>     File copy&paste functionality will only be enabled when there is an
> open
>     webdav channel.
>
>     Signed-off-by: Jakub Jank=C5=AF <jjanku@redhat.com>
>     Acked-by: Frediano Ziglio <fziglio@redhat.com>
>
> diff --git a/src/spice-gtk-session.c b/src/spice-gtk-session.c
> index 48058c7..2b86616 100644
> --- a/src/spice-gtk-session.c
> +++ b/src/spice-gtk-session.c
> @@ -565,6 +565,32 @@ static gpointer free_weak_ref(gpointer data)
>      return object;
>  }
>
> +#ifdef HAVE_PHODAV_VIRTUAL
> +static SpiceWebdavChannel *clipboard_get_open_webdav(SpiceSession
> *session)
> +{
> +    GList *list, *l;
> +    SpiceChannel *channel =3D NULL;
> +    gboolean open =3D FALSE;
> +
> +    g_return_val_if_fail(session !=3D NULL, NULL);
> +
> +    list =3D spice_session_get_channels(session);
> +    for (l =3D g_list_first(list); l !=3D NULL; l =3D g_list_next(l)) {
> +        channel =3D l->data;
> +
> +        if (!SPICE_IS_WEBDAV_CHANNEL(channel)) {
> +            continue;
> +        }
> +
> +        g_object_get(channel, "port-opened", &open, NULL);
> +        break;
> +    }
> +
> +    g_list_free(list);
> +    return open ? SPICE_WEBDAV_CHANNEL(channel) : NULL;
> +}
> +#endif
> +
>  static void clipboard_get_targets(GtkClipboard *clipboard,
>                                    GdkAtom *atoms,
>                                    gint n_atoms,
> commit c1b5433815e5cd7683671d33a0d579b7b185efe8
> Author: Jakub Jank=C5=AF <jjanku@redhat.com>
> Date:   Mon Jun 29 19:40:25 2020 +0200
>
>     build: require GLib 2.52+
>
>     This adds g_uuid_string_random()
>     which is necessary for the following file copy&paste
>     functionality.
>
>     Signed-off-by: Jakub Jank=C5=AF <jjanku@redhat.com>
>     Acked-by: Frediano Ziglio <fziglio@redhat.com>
>
> diff --git a/meson.build b/meson.build
> index 1c4e9d9..7ade460 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -89,7 +89,7 @@ endforeach
>  #
>  # check for mandatory dependencies
>  #
> -glib_version =3D '2.46'
> +glib_version =3D '2.52'
>  glib_version_info =3D '>=3D @0@'.format(glib_version)
>  pixman_version =3D '>=3D 0.17.7'
>
> commit 979b752b24d6f8d7089a23760fd5adda18f0e7ed
> Author: Jakub Jank=C5=AF <jjanku@redhat.com>
> Date:   Sat May 23 13:40:39 2020 +0200
>
>     build: define HAVE_PHODAV_VIRTUAL if phodav >=3D 2.5
>
>     Phodav 2.5 brings PhodavVirtualDir API needed for the
>     file copy and paste functionality.
>
>     If the library version is not sufficient, this new feature
>     will be disabled, but the standard shared folders can still
>     be used.
>
>     Signed-off-by: Jakub Jank=C5=AF <jjanku@redhat.com>
>     Acked-by: Frediano Ziglio <fziglio@redhat.com>
>
> diff --git a/meson.build b/meson.build
> index 6bbb4a8..1c4e9d9 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -177,14 +177,17 @@ endif
>
>  # webdav
>  spice_gtk_has_phodav =3D false
> -d =3D dependency('libphodav-2.0', required: get_option('webdav'))
> -if d.found()
> -  spice_glib_deps +=3D d
> +phodav_dep =3D dependency('libphodav-2.0', required: get_option('webdav'=
))
> +if phodav_dep.found()
> +  spice_glib_deps +=3D phodav_dep
>    d =3D dependency('libsoup-2.4', version : '>=3D 2.49.91', required:
> get_option('webdav'))
>    if d.found()
>      spice_glib_deps +=3D d
>      spice_gtk_config_data.set('USE_PHODAV', '1')
>      spice_gtk_has_phodav =3D true
> +    if phodav_dep.version().version_compare('>=3D 2.5')
> +      spice_gtk_config_data.set('HAVE_PHODAV_VIRTUAL', '1')
> +    endif
>    endif
>  endif
>
> commit 4b9092b96b8da946ff3d17922b0fcf225c5dc81f
> Author: Jakub Jank=C5=AF <jjanku@redhat.com>
> Date:   Sat May 23 16:28:52 2020 +0200
>
>     session: make spice_session_get_webdav_server() public
>
>     It will be necessary to access the webdav server from
> spice-gtk-session.c
>     which isn't compiled with spice-session-priv.h, so make
>     spice_session_get_webdav_server() public.
>

I haven't looked at the whole series. Wouldn't it make sense to make it a
read-only property instead?


>
>     Signed-off-by: Jakub Jank=C5=AF <jjanku@redhat.com>
>     Acked-by: Frediano Ziglio <fziglio@redhat.com>
>
> diff --git a/src/map-file b/src/map-file
> index acdd38f..86f371d 100644
> --- a/src/map-file
> +++ b/src/map-file
> @@ -144,6 +144,7 @@ spice_session_new;
>  spice_session_open_fd;
>  spice_session_verify_get_type;
>  spice_set_session_option;
> +spice_session_get_webdav_server;
>  spice_smartcard_channel_get_type;
>  spice_smartcard_manager_get;
>  spice_smartcard_manager_get_readers;
> diff --git a/src/spice-glib-sym-file b/src/spice-glib-sym-file
> index 72e6ef0..effcd09 100644
> --- a/src/spice-glib-sym-file
> +++ b/src/spice-glib-sym-file
> @@ -123,6 +123,7 @@ spice_session_new
>  spice_session_open_fd
>  spice_session_verify_get_type
>  spice_set_session_option
> +spice_session_get_webdav_server
>  spice_smartcard_channel_get_type
>  spice_smartcard_manager_get
>  spice_smartcard_manager_get_readers
> diff --git a/src/spice-session-priv.h b/src/spice-session-priv.h
> index b4919a4..5b52f8d 100644
> --- a/src/spice-session-priv.h
> +++ b/src/spice-session-priv.h
> @@ -87,7 +87,6 @@ gboolean
> spice_session_get_smartcard_enabled(SpiceSession *session);
>  gboolean spice_session_get_usbredir_enabled(SpiceSession *session);
>  gboolean spice_session_get_gl_scanout_enabled(SpiceSession *session);
>
> -PhodavServer *spice_session_get_webdav_server(SpiceSession *session);
>  guint spice_session_get_n_display_channels(SpiceSession *session);
>  gboolean spice_session_set_migration_session(SpiceSession *session,
> SpiceSession *mig_session);
>  SpiceAudio *spice_audio_get(SpiceSession *session, GMainContext *context=
);
> diff --git a/src/spice-session.c b/src/spice-session.c
> index 6915736..f0ac891 100644
> --- a/src/spice-session.c
> +++ b/src/spice-session.c
> @@ -2796,7 +2796,6 @@ gboolean
> spice_session_get_smartcard_enabled(SpiceSession *session)
>      return session->priv->smartcard;
>  }
>
> -G_GNUC_INTERNAL
>  PhodavServer* spice_session_get_webdav_server(SpiceSession *session)
>  {
>      SpiceSessionPrivate *priv;
> diff --git a/src/spice-session.h b/src/spice-session.h
> index ed01c01..9436be8 100644
> --- a/src/spice-session.h
> +++ b/src/spice-session.h
> @@ -36,6 +36,8 @@ G_BEGIN_DECLS
>  #define SPICE_IS_SESSION_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass),
> SPICE_TYPE_SESSION))
>  #define SPICE_SESSION_GET_CLASS(obj)  (G_TYPE_INSTANCE_GET_CLASS ((obj),
> SPICE_TYPE_SESSION, SpiceSessionClass))
>
> +typedef struct _PhodavServer PhodavServer;
> +
>  /**
>   * SpiceSessionVerify:
>   * @SPICE_SESSION_VERIFY_PUBKEY: verify certificate public key matching
> @@ -113,6 +115,7 @@ gboolean spice_session_has_channel_type(SpiceSession
> *session, gint type);
>  gboolean spice_session_get_read_only(SpiceSession *session);
>  SpiceURI *spice_session_get_proxy_uri(SpiceSession *session);
>  gboolean spice_session_is_for_migration(SpiceSession *session);
> +PhodavServer *spice_session_get_webdav_server(SpiceSession *session);
>
>  G_END_DECLS
>
> _______________________________________________
> Spice-commits mailing list
> Spice-commits@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-commits
>


--=20
Marc-Andr=C3=A9 Lureau

--000000000000dfceae05aee1ec4c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 9, 2020 at 5:50 PM Git=
Lab Mirror &lt;<a href=3D"mailto:gitlab-mirror@kemper.freedesktop.org">gitl=
ab-mirror@kemper.freedesktop.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">=C2=A0meson.build=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A013 -<br>
=C2=A0src/map-file=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =
=C2=A0 1 <br>
=C2=A0src/spice-glib-sym-file=C2=A0 |=C2=A0 =C2=A0 1 <br>
=C2=A0src/spice-gtk-session.c=C2=A0 |=C2=A0 399 +++++++++++++++++++++++++++=
++++++++++++++++++++<br>
=C2=A0src/spice-session-priv.h |=C2=A0 =C2=A0 1 <br>
=C2=A0src/spice-session.c=C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A030 +++<br>
=C2=A0src/spice-session.h=C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 5 <br>
=C2=A07 files changed, 443 insertions(+), 7 deletions(-)<br>
<br>
New commits:<br>
commit f33d589d747f4f7ee6a1241c344ca611a36e9c71<br>
Author: Jakub Jank=C5=AF &lt;<a href=3D"mailto:jjanku@redhat.com" target=3D=
"_blank">jjanku@redhat.com</a>&gt;<br>
Date:=C2=A0 =C2=A0Fri May 29 17:59:38 2020 +0200<br>
<br>
=C2=A0 =C2=A0 clipboard: enable copying files to guest using webdav<br>
<br>
=C2=A0 =C2=A0 When an app advertises the &quot;text/uri-list&quot; target, =
the user<br>
=C2=A0 =C2=A0 probably wants to copy/move files. Spice-gtk then sends<br>
=C2=A0 =C2=A0 a grab message to the vdagent advertising the<br>
=C2=A0 =C2=A0 VD_AGENT_CLIPBOARD_FILE_LIST type.<br>
<br>
=C2=A0 =C2=A0 Vdagent can then request clipboard data in this type.<br>
<br>
=C2=A0 =C2=A0 Spice-gtk tries to talk to the app that owns the clipboard<br=
>
=C2=A0 =C2=A0 in its native format in order to determine the preferred<br>
=C2=A0 =C2=A0 file operation (copy X move).<br>
<br>
=C2=A0 =C2=A0 For GNOME Nautilus, that&#39;s simply &quot;UTF8_TEXT&quot;,<=
br>
=C2=A0 =C2=A0 for KDE Dolphin, &quot;application/x-kde-cutselection&quot;.<=
br>
<br>
=C2=A0 =C2=A0 Otherwise the generic &quot;text/uri-list&quot; is used that =
does not<br>
=C2=A0 =C2=A0 provide any additional information.<br>
<br>
=C2=A0 =C2=A0 Once the uri list is obtained from the app, spice-gtk<br>
=C2=A0 =C2=A0 creates a unique virtual dir in the &quot;.spice-clipboard&qu=
ot;<br>
=C2=A0 =C2=A0 directory that is designated for this purpose.<br>
<br>
=C2=A0 =C2=A0 Each file is attached inside this virtual dir using<br>
=C2=A0 =C2=A0 phodav_virtual_dir_attach_real_child(), see phodav API<br>
=C2=A0 =C2=A0 for details.<br>
<br>
=C2=A0 =C2=A0 A list of paths in the phodav server is then sent to vdagent,=
<br>
=C2=A0 =C2=A0 as specified in the spice-protocol.<br>
=C2=A0 =C2=A0 Such path can for example look like this:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /.spice-clipboard/b8f0249c-082a-4da9-9a38-2de32=
37a66f0/file<br>
<br>
=C2=A0 =C2=A0 It is up to the vdagent to ensure that the spice shared folde=
r<br>
=C2=A0 =C2=A0 is accessible and to set the clipboard data in a format that<=
br>
=C2=A0 =C2=A0 other apps understand.<br>
<br>
=C2=A0 =C2=A0 This requires new phodav with PhodavVirtualDir API.<br>
<br>
=C2=A0 =C2=A0 Signed-off-by: Jakub Jank=C5=AF &lt;<a href=3D"mailto:jjanku@=
redhat.com" target=3D"_blank">jjanku@redhat.com</a>&gt;<br>
=C2=A0 =C2=A0 Acked-by: Frediano Ziglio &lt;<a href=3D"mailto:fziglio@redha=
t.com" target=3D"_blank">fziglio@redhat.com</a>&gt;<br>
<br>
diff --git a/meson.build b/meson.build<br>
index 7ade460..e43139e 100644<br>
--- a/meson.build<br>
+++ b/meson.build<br>
@@ -33,7 +33,7 @@ spice_glib_deps =3D []<br>
=C2=A0spice_gtk_deps =3D []<br>
=C2=A0spice_wayland_deps =3D []<br>
=C2=A0spice_acl_deps =3D []<br>
-spice_protocol_version =3D &#39;0.14.2&#39;<br>
+spice_protocol_version =3D &#39;0.14.3&#39;<br>
<br>
=C2=A0#<br>
=C2=A0# Set up subprojects<br>
diff --git a/src/spice-gtk-session.c b/src/spice-gtk-session.c<br>
index 5e6be4a..dfbd8fa 100644<br>
--- a/src/spice-gtk-session.c<br>
+++ b/src/spice-gtk-session.c<br>
@@ -34,6 +34,10 @@<br>
=C2=A0#endif<br>
=C2=A0#endif<br>
<br>
+#ifdef HAVE_PHODAV_VIRTUAL<br>
+#include &lt;libphodav/phodav.h&gt;<br>
+#endif<br>
+<br>
=C2=A0#include &lt;gtk/gtk.h&gt;<br>
=C2=A0#include &lt;spice/vd_agent.h&gt;<br>
=C2=A0#include &quot;desktop-integration.h&quot;<br>
@@ -61,6 +65,8 @@ struct _SpiceGtkSessionPrivate {<br>
=C2=A0 =C2=A0 =C2=A0gboolean=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 clip_grabbed[CLIPBOARD_LAST];<br>
=C2=A0 =C2=A0 =C2=A0gboolean=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 clipboard_by_guest[CLIPBOARD_LAST];<br>
=C2=A0 =C2=A0 =C2=A0guint=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0clipboard_release_delay[CLIPBOARD_LAST];<br>
+=C2=A0 =C2=A0 /* TODO: maybe add a way of restoring this? */<br>
+=C2=A0 =C2=A0 GHashTable=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *=
cb_shared_files;<br>
=C2=A0 =C2=A0 =C2=A0/* auto-usbredir related */<br>
=C2=A0 =C2=A0 =C2=A0gboolean=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 auto_usbredir_enable;<br>
=C2=A0 =C2=A0 =C2=A0int=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0auto_usbredir_reqs;<br>
@@ -191,6 +197,12 @@ static void spice_gtk_session_init(SpiceGtkSession *se=
lf)<br>
<br>
=C2=A0 =C2=A0 =C2=A0s =3D self-&gt;priv =3D spice_gtk_session_get_instance_=
private(self);<br>
<br>
+=C2=A0 =C2=A0 s-&gt;cb_shared_files =3D<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_hash_table_new_full(g_file_hash,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (GEqualFunc)g_file_equal,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 g_object_unref, /* unref GFile */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 g_free /* free gchar * */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0);<br>
=C2=A0 =C2=A0 =C2=A0s-&gt;clipboard =3D gtk_clipboard_get(GDK_SELECTION_CLI=
PBOARD);<br>
=C2=A0 =C2=A0 =C2=A0g_signal_connect(G_OBJECT(s-&gt;clipboard), &quot;owner=
-change&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 G_CALLBACK(clipboard_owner_change), self);<br>
@@ -252,6 +264,7 @@ static void spice_gtk_session_dispose(GObject *gobject)=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 self);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0s-&gt;session =3D NULL;<br>
=C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0 g_clear_pointer(&amp;s-&gt;cb_shared_files, g_hash_table_des=
troy);<br>
<br>
=C2=A0 =C2=A0 =C2=A0/* Chain up to the parent class */<br>
=C2=A0 =C2=A0 =C2=A0if (G_OBJECT_CLASS(spice_gtk_session_parent_class)-&gt;=
dispose)<br>
@@ -544,6 +557,9 @@ static const struct {<br>
=C2=A0 =C2=A0 =C2=A0},{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.vdagent =3D VD_AGENT_CLIPBOARD_IMAGE_JPG=
,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.xatom=C2=A0 =C2=A0=3D &quot;image/jpeg&q=
uot;<br>
+=C2=A0 =C2=A0 },{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 .vdagent =3D VD_AGENT_CLIPBOARD_FILE_LIST,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 .xatom=C2=A0 =C2=A0=3D &quot;text/uri-list&quo=
t;<br>
=C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0};<br>
<br>
@@ -660,6 +676,18 @@ static void clipboard_get_targets(GtkClipboard *clipbo=
ard,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (atom2agent[m].vdagent =3D=3D=
 VD_AGENT_CLIPBOARD_FILE_LIST) {<br>
+#ifdef HAVE_PHODAV_VIRTUAL<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!clipboard_get=
_open_webdav(s-&gt;session)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 SPIC=
E_DEBUG(&quot;Received %s target, but the clipboard webdav channel &quot;<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;isn&#39;t available, skipping&=
quot;, atom2agent[m].xatom);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 brea=
k;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+#else<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
+#endif<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* check if type is already=
 in list */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for (t =3D 0; t &lt; num_ty=
pes; t++) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (types[t] =
=3D=3D atom2agent[m].vdagent) {<br>
@@ -1037,6 +1065,318 @@ notify_agent:<br>
=C2=A0 =C2=A0 =C2=A0g_free(conv);<br>
=C2=A0}<br>
<br>
+#ifdef HAVE_PHODAV_VIRTUAL<br>
+/* returns path to @file under @root in clipboard phodav server, or NULL o=
n error */<br>
+static gchar *clipboard_webdav_share_file(PhodavVirtualDir *root, GFile *f=
ile)<br>
+{<br>
+=C2=A0 =C2=A0 gchar *uuid;<br>
+=C2=A0 =C2=A0 PhodavVirtualDir *dir;<br>
+=C2=A0 =C2=A0 GError *err =3D NULL;<br>
+<br>
+=C2=A0 =C2=A0 /* separate directory is created for each file,<br>
+=C2=A0 =C2=A0 =C2=A0* as we want to preserve the original filename and avo=
id conflicts */<br>
+=C2=A0 =C2=A0 for (guint i =3D 0; i &lt; 8; i++) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 uuid =3D g_uuid_string_random();<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 gchar *dir_path =3D g_strdup_printf(SPICE_WEBD=
AV_CLIPBOARD_FOLDER_PATH &quot;/%s&quot;, uuid);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 dir =3D phodav_virtual_dir_new_dir(root, dir_p=
ath, &amp;err);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_free(dir_path);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!err) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_clear_pointer(&amp;uuid, g_free);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!g_error_matches(err, G_IO_ERROR, G_IO_ERR=
OR_EXISTS)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 g_warning(&quot;failed to create=
 phodav virtual dir: %s&quot;, err-&gt;message);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 g_error_free(err);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_clear_error(&amp;err);<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 if (!dir) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_warning(&quot;failed to create phodav virtua=
l dir: all attempts failed&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 phodav_virtual_dir_attach_real_child(dir, file);<br>
+=C2=A0 =C2=A0 g_object_unref(dir);<br>
+<br>
+=C2=A0 =C2=A0 gchar *base =3D g_file_get_basename(file);<br>
+=C2=A0 =C2=A0 gchar *path =3D g_strdup_printf(SPICE_WEBDAV_CLIPBOARD_FOLDE=
R_PATH &quot;/%s/%s&quot;, uuid, base);<br>
+=C2=A0 =C2=A0 g_free(uuid);<br>
+=C2=A0 =C2=A0 g_free(base);<br>
+<br>
+=C2=A0 =C2=A0 return path;<br>
+}<br>
+<br>
+/* join all strings in @strv into a new char array,<br>
+ * including all terminating NULL-chars */<br>
+static gchar *strv_concat(gchar **strv, gsize *size_out)<br>
+{<br>
+=C2=A0 =C2=A0 gchar **str_p, *arr, *curr;<br>
+<br>
+=C2=A0 =C2=A0 g_return_val_if_fail(strv &amp;&amp; size_out, NULL);<br>
+<br>
+=C2=A0 =C2=A0 for (str_p =3D strv, *size_out =3D 0; *str_p !=3D NULL; str_=
p++) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *size_out +=3D strlen(*str_p) + 1;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 arr =3D g_malloc(*size_out);<br>
+<br>
+=C2=A0 =C2=A0 for (str_p =3D strv, curr =3D arr; *str_p !=3D NULL; str_p++=
) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 curr =3D g_stpcpy(curr, *str_p) + 1;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 return arr;<br>
+}<br>
+<br>
+/* if not done alreay, share all files in @uris using the webdav server<br=
>
+ * and return a new buffer with VD_AGENT_CLIPBOARD_FILE_LIST data */<br>
+static gchar *strv_uris_transform_to_data(SpiceGtkSessionPrivate *s,<br>
+=C2=A0 =C2=A0 gchar **uris, gsize *size_out, GdkDragAction action)<br>
+{<br>
+=C2=A0 =C2=A0 SpiceWebdavChannel *webdav;<br>
+=C2=A0 =C2=A0 PhodavServer *phodav;<br>
+=C2=A0 =C2=A0 PhodavVirtualDir *root;<br>
+<br>
+=C2=A0 =C2=A0 gchar **uri_ptr, *path, **paths, *data;<br>
+=C2=A0 =C2=A0 GFile *file;<br>
+=C2=A0 =C2=A0 guint n;<br>
+<br>
+=C2=A0 =C2=A0 *size_out =3D 0;<br>
+<br>
+=C2=A0 =C2=A0 if (!uris || g_strv_length(uris) &lt; 1) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 webdav =3D clipboard_get_open_webdav(s-&gt;session);<br>
+=C2=A0 =C2=A0 if (!webdav) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 SPICE_DEBUG(&quot;Received uris, but no webdav=
 channel&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 phodav =3D spice_session_get_webdav_server(s-&gt;session);<b=
r>
+=C2=A0 =C2=A0 g_object_get(phodav, &quot;root-file&quot;, &amp;root, NULL)=
;<br>
+<br>
+=C2=A0 =C2=A0 paths =3D g_new0(gchar *, g_strv_length(uris) + 2);<br>
+<br>
+=C2=A0 =C2=A0 paths[0] =3D action =3D=3D GDK_ACTION_MOVE ? &quot;cut&quot;=
 : &quot;copy&quot;;<br>
+=C2=A0 =C2=A0 n =3D 1;<br>
+<br>
+=C2=A0 =C2=A0 for (uri_ptr =3D uris; *uri_ptr !=3D NULL; uri_ptr++) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 file =3D g_file_new_for_uri(*uri_ptr);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* clipboard data is usually requested multipl=
e times for no obvious reasons<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* (clipboar managers to blame?), we don&=
#39;t want to create multiple dirs for the same file */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 path =3D g_hash_table_lookup(s-&gt;cb_shared_f=
iles, file);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (path) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 SPICE_DEBUG(&quot;found %s with =
path %s&quot;, *uri_ptr, path);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 g_object_unref(file);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 path =3D clipboard_webdav_share_=
file(root, file);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 g_return_val_if_fail(path !=3D N=
ULL, NULL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 SPICE_DEBUG(&quot;publishing %s =
under %s&quot;, *uri_ptr, path);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* file and path gets freed once=
 the hash table gets destroyed */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 g_hash_table_insert(s-&gt;cb_sha=
red_files, file, path);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 paths[n] =3D path;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 n++;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 g_object_unref(root);<br>
+=C2=A0 =C2=A0 data =3D strv_concat(paths, size_out);<br>
+=C2=A0 =C2=A0 g_free(paths);<br>
+<br>
+=C2=A0 =C2=A0 return data;<br>
+}<br>
+<br>
+static GdkAtom a_gnome, a_mate, a_nautilus, a_uri_list, a_kde_cut;<br>
+<br>
+static void init_uris_atoms()<br>
+{<br>
+=C2=A0 =C2=A0 if (a_gnome !=3D GDK_NONE) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
+=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 a_gnome =3D gdk_atom_intern_static_string(&quot;x-special/gn=
ome-copied-files&quot;);<br>
+=C2=A0 =C2=A0 a_mate =3D gdk_atom_intern_static_string(&quot;x-special/mat=
e-copied-files&quot;);<br>
+=C2=A0 =C2=A0 a_nautilus =3D gdk_atom_intern_static_string(&quot;UTF8_STRI=
NG&quot;);<br>
+=C2=A0 =C2=A0 a_uri_list =3D gdk_atom_intern_static_string(&quot;text/uri-=
list&quot;);<br>
+=C2=A0 =C2=A0 a_kde_cut =3D gdk_atom_intern_static_string(&quot;applicatio=
n/x-kde-cutselection&quot;);<br>
+}<br>
+<br>
+static GdkAtom clipboard_select_uris_atom(SpiceGtkSessionPrivate *s, guint=
 selection)<br>
+{<br>
+=C2=A0 =C2=A0 init_uris_atoms();<br>
+=C2=A0 =C2=A0 if (clipboard_find_atom(s, selection, a_gnome)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return a_gnome;<br>
+=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 if (clipboard_find_atom(s, selection, a_mate)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return a_mate;<br>
+=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 if (clipboard_find_atom(s, selection, a_nautilus)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return a_nautilus;<br>
+=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 return clipboard_find_atom(s, selection, a_uri_list);<br>
+}<br>
+<br>
+/* common handler for &quot;x-special/gnome-copied-files&quot; and &quot;x=
-special/mate-copied-files&quot; */<br>
+static gchar *x_special_copied_files_transform_to_data(SpiceGtkSessionPriv=
ate *s,<br>
+=C2=A0 =C2=A0 GtkSelectionData *selection_data, gsize *size_out)<br>
+{<br>
+=C2=A0 =C2=A0 const gchar *text;<br>
+=C2=A0 =C2=A0 gchar **lines, *data =3D NULL;<br>
+=C2=A0 =C2=A0 GdkDragAction action;<br>
+<br>
+=C2=A0 =C2=A0 *size_out =3D 0;<br>
+<br>
+=C2=A0 =C2=A0 text =3D (gchar *)gtk_selection_data_get_data(selection_data=
);<br>
+=C2=A0 =C2=A0 if (!text) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
+=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 lines =3D g_strsplit(text, &quot;\n&quot;, -1);<br>
+=C2=A0 =C2=A0 if (g_strv_length(lines) &lt; 2) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 goto err;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 if (!g_strcmp0(lines[0], &quot;cut&quot;)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 action =3D GDK_ACTION_MOVE;<br>
+=C2=A0 =C2=A0 } else if (!g_strcmp0(lines[0], &quot;copy&quot;)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 action =3D GDK_ACTION_COPY;<br>
+=C2=A0 =C2=A0 } else {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 goto err;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 data =3D strv_uris_transform_to_data(s, &amp;lines[1], size_=
out, action);<br>
+err:<br>
+=C2=A0 =C2=A0 g_strfreev(lines);<br>
+=C2=A0 =C2=A0 return data;<br>
+}<br>
+<br>
+/* used with newer Nautilus */<br>
+static gchar *nautilus_uris_transform_to_data(SpiceGtkSessionPrivate *s,<b=
r>
+=C2=A0 =C2=A0 GtkSelectionData *selection_data, gsize *size_out, gboolean =
*retry_out)<br>
+{<br>
+=C2=A0 =C2=A0 gchar **lines, *text, *data =3D NULL;<br>
+=C2=A0 =C2=A0 guint n_lines;<br>
+=C2=A0 =C2=A0 GdkDragAction action;<br>
+<br>
+=C2=A0 =C2=A0 *size_out =3D 0;<br>
+<br>
+=C2=A0 =C2=A0 text =3D (gchar *)gtk_selection_data_get_text(selection_data=
);<br>
+=C2=A0 =C2=A0 if (!text) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
+=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 lines =3D g_strsplit(text, &quot;\n&quot;, -1);<br>
+=C2=A0 =C2=A0 g_free(text);<br>
+=C2=A0 =C2=A0 n_lines =3D g_strv_length(lines);<br>
+<br>
+=C2=A0 =C2=A0 if (n_lines &lt; 4) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *retry_out =3D TRUE;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 goto err;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 if (g_strcmp0(lines[0], &quot;x-special/nautilus-clipboard&q=
uot;)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *retry_out =3D TRUE;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 goto err;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 if (!g_strcmp0(lines[1], &quot;cut&quot;)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 action =3D GDK_ACTION_MOVE;<br>
+=C2=A0 =C2=A0 } else if (!g_strcmp0(lines[1], &quot;copy&quot;)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 action =3D GDK_ACTION_COPY;<br>
+=C2=A0 =C2=A0 } else {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 goto err;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 /* the list of uris must end with \n,<br>
+=C2=A0 =C2=A0 =C2=A0* so there must be an empty string after the split */<=
br>
+=C2=A0 =C2=A0 if (g_strcmp0(lines[n_lines-1], &quot;&quot;)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 goto err;<br>
+=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 g_clear_pointer(&amp;lines[n_lines-1], g_free);<br>
+<br>
+=C2=A0 =C2=A0 data =3D strv_uris_transform_to_data(s, &amp;lines[2], size_=
out, action);<br>
+err:<br>
+=C2=A0 =C2=A0 g_strfreev(lines);<br>
+=C2=A0 =C2=A0 return data;<br>
+}<br>
+<br>
+static GdkDragAction kde_get_clipboard_action(SpiceGtkSessionPrivate *s, G=
tkClipboard *clipboard)<br>
+{<br>
+=C2=A0 =C2=A0 GtkSelectionData *selection_data;<br>
+=C2=A0 =C2=A0 GdkDragAction action;<br>
+=C2=A0 =C2=A0 const guchar *data;<br>
+<br>
+=C2=A0 =C2=A0 /* this uses another GMainLoop, basically the same mechanism=
<br>
+=C2=A0 =C2=A0 =C2=A0* as we use in clipboard_get(), so it doesn&#39;t bloc=
k */<br>
+=C2=A0 =C2=A0 selection_data =3D gtk_clipboard_wait_for_contents(clipboard=
, a_kde_cut);<br>
+=C2=A0 =C2=A0 data =3D gtk_selection_data_get_data(selection_data);<br>
+=C2=A0 =C2=A0 if (data &amp;&amp; data[0] =3D=3D &#39;1&#39;) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 action =3D GDK_ACTION_MOVE;<br>
+=C2=A0 =C2=A0 } else {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 action =3D GDK_ACTION_COPY;<br>
+=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 gtk_selection_data_free(selection_data);<br>
+<br>
+=C2=A0 =C2=A0 return action;<br>
+}<br>
+<br>
+static void clipboard_received_uri_contents_cb(GtkClipboard *clipboard,<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0GtkSelectionData *selection_data,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0gpointer user_data)<br>
+{<br>
+=C2=A0 =C2=A0 SpiceGtkSession *self =3D free_weak_ref(user_data);<br>
+=C2=A0 =C2=A0 SpiceGtkSessionPrivate *s;<br>
+=C2=A0 =C2=A0 guint selection;<br>
+<br>
+=C2=A0 =C2=A0 if (!self) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
+=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 s =3D self-&gt;priv;<br>
+<br>
+=C2=A0 =C2=A0 selection =3D get_selection_from_clipboard(s, clipboard);<br=
>
+=C2=A0 =C2=A0 g_return_if_fail(selection !=3D -1);<br>
+<br>
+=C2=A0 =C2=A0 init_uris_atoms();<br>
+=C2=A0 =C2=A0 GdkAtom type =3D gtk_selection_data_get_data_type(selection_=
data);<br>
+=C2=A0 =C2=A0 gchar *data;<br>
+=C2=A0 =C2=A0 gsize len;<br>
+<br>
+=C2=A0 =C2=A0 if (type =3D=3D a_gnome || type =3D=3D a_mate) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* used by old Nautilus + many other file mana=
gers=C2=A0 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 data =3D x_special_copied_files_transform_to_d=
ata(s, selection_data, &amp;len);<br>
+=C2=A0 =C2=A0 } else if (type =3D=3D a_nautilus) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 gboolean retry =3D FALSE;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 data =3D nautilus_uris_transform_to_data(s, se=
lection_data, &amp;len, &amp;retry);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (retry &amp;&amp; clipboard_find_atom(s, se=
lection, a_uri_list) !=3D GDK_NONE) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* it&#39;s not Nautilus, so we =
give it one more try with the generic uri-list target */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gtk_clipboard_request_contents(c=
lipboard, a_uri_list,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 clipboard_received=
_uri_contents_cb, get_weak_ref(self));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 } else if (type =3D=3D a_uri_list) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 GdkDragAction action =3D GDK_ACTION_COPY;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 gchar **uris =3D gtk_selection_data_get_uris(s=
election_data);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* KDE uses a separate atom to distinguish bet=
ween copy and move operation */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (clipboard_find_atom(s, selection, a_kde_cu=
t) !=3D GDK_NONE) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 action =3D kde_get_clipboard_act=
ion(s, clipboard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 data =3D strv_uris_transform_to_data(s, uris, =
&amp;len, action);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_strfreev(uris);<br>
+=C2=A0 =C2=A0 } else {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_warning(&quot;received uris in unsupported t=
ype&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 data =3D NULL;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 len =3D 0;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 spice_main_channel_clipboard_selection_notify(s-&gt;main, se=
lection,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 VD_AGENT_CLIPBOARD_FILE_LIST, (guchar *)data, =
len);<br>
+=C2=A0 =C2=A0 g_free(data);<br>
+}<br>
+#endif<br>
+<br>
=C2=A0static void clipboard_received_cb(GtkClipboard *clipboard,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GtkSelectionData *selec=
tion_data,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gpointer user_data)<br>
@@ -1111,6 +1451,17 @@ static gboolean clipboard_request(SpiceMainChannel *=
main, guint selection,<br>
=C2=A0 =C2=A0 =C2=A0if (type =3D=3D VD_AGENT_CLIPBOARD_UTF8_TEXT) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gtk_clipboard_request_text(cb, clipboard_=
received_text_cb,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_weak_ref(self));<b=
r>
+=C2=A0 =C2=A0 } else if (type =3D=3D VD_AGENT_CLIPBOARD_FILE_LIST) {<br>
+#ifdef HAVE_PHODAV_VIRTUAL<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 atom =3D clipboard_select_uris_atom(s, selecti=
on);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (atom =3D=3D GDK_NONE) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return FALSE;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 gtk_clipboard_request_contents(cb, atom,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 clipboard_received_uri_contents_=
cb, get_weak_ref(self));<br>
+#else<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return FALSE;<br>
+#endif<br>
=C2=A0 =C2=A0 =C2=A0} else {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for (m =3D 0; m &lt; SPICE_N_ELEMENTS(ato=
m2agent); m++) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (atom2agent[m].vdagent =
=3D=3D type)<br>
diff --git a/src/spice-session.c b/src/spice-session.c<br>
index f0ac891..8831bc5 100644<br>
--- a/src/spice-session.c<br>
+++ b/src/spice-session.c<br>
@@ -2666,6 +2666,17 @@ static void spice_session_set_shared_dir(SpiceSessio=
n *session, const gchar *dir<br>
<br>
=C2=A0 =C2=A0 =C2=A0g_free(s-&gt;shared_dir);<br>
=C2=A0 =C2=A0 =C2=A0s-&gt;shared_dir =3D g_strdup(dir);<br>
+<br>
+#ifdef HAVE_PHODAV_VIRTUAL<br>
+=C2=A0 =C2=A0 if (s-&gt;webdav =3D=3D NULL) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 PhodavVirtualDir *root;<br>
+=C2=A0 =C2=A0 g_object_get(s-&gt;webdav, &quot;root-file&quot;, &amp;root,=
 NULL);<br>
+=C2=A0 =C2=A0 phodav_virtual_dir_root_set_real(root, s-&gt;shared_dir);<br=
>
+=C2=A0 =C2=A0 g_object_unref(root);<br>
+#endif<br>
=C2=A0}<br>
<br>
=C2=A0G_GNUC_INTERNAL<br>
@@ -2807,21 +2818,39 @@ PhodavServer* spice_session_get_webdav_server(Spice=
Session *session)<br>
=C2=A0 =C2=A0 =C2=A0static GMutex mutex;<br>
<br>
=C2=A0 =C2=A0 =C2=A0const gchar *shared_dir =3D spice_session_get_shared_di=
r(session);<br>
+=C2=A0 =C2=A0 /* with HAVE_PHODAV_VIRTUAL, PhodavServer must be created ev=
en if shared_dir is NULL */<br>
+#ifndef HAVE_PHODAV_VIRTUAL<br>
=C2=A0 =C2=A0 =C2=A0if (shared_dir =3D=3D NULL) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0SPICE_DEBUG(&quot;No shared dir set, not =
creating webdav server&quot;);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return NULL;<br>
=C2=A0 =C2=A0 =C2=A0}<br>
+#endif<br>
<br>
=C2=A0 =C2=A0 =C2=A0g_mutex_lock(&amp;mutex);<br>
<br>
=C2=A0 =C2=A0 =C2=A0if (priv-&gt;webdav =3D=3D NULL) {<br>
+#ifdef HAVE_PHODAV_VIRTUAL<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 PhodavVirtualDir *root =3D phodav_virtual_dir_=
new_root();<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;webdav =3D phodav_server_new_for_root=
_file(G_FILE(root));<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 phodav_virtual_dir_root_set_real(root, shared_=
dir);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_object_unref(phodav_virtual_dir_new_dir(root=
, SPICE_WEBDAV_CLIPBOARD_FOLDER_PATH, NULL));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_object_unref(root);<br>
+#else<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;webdav =3D phodav_server_new(sha=
red_dir);<br>
+#endif<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0g_object_bind_property(session,=C2=A0 &qu=
ot;share-dir-ro&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;webdav, &quot;read-only&quo=
t;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 G_BINDING_SYNC_CREATE|G_BINDING_BIDI=
RECTIONAL);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* with HAVE_PHODAV_VIRTUAL, the update is don=
e in spice_session_set_shared_dir() */<br>
+#ifndef HAVE_PHODAV_VIRTUAL<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0g_object_bind_property(session,=C2=A0 &qu=
ot;shared-dir&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;webdav, &quot;root&quot;,<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 G_BINDING_SYNC_CREATE|G_BINDING_BIDI=
RECTIONAL);<br>
+#endif<br>
=C2=A0 =C2=A0 =C2=A0}<br>
<br>
=C2=A0 =C2=A0 =C2=A0g_mutex_unlock(&amp;mutex);<br>
diff --git a/src/spice-session.h b/src/spice-session.h<br>
index 9436be8..665d2f3 100644<br>
--- a/src/spice-session.h<br>
+++ b/src/spice-session.h<br>
@@ -36,6 +36,8 @@ G_BEGIN_DECLS<br>
=C2=A0#define SPICE_IS_SESSION_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klas=
s), SPICE_TYPE_SESSION))<br>
=C2=A0#define SPICE_SESSION_GET_CLASS(obj)=C2=A0 (G_TYPE_INSTANCE_GET_CLASS=
 ((obj), SPICE_TYPE_SESSION, SpiceSessionClass))<br>
<br>
+#define SPICE_WEBDAV_CLIPBOARD_FOLDER_PATH &quot;/.spice-clipboard&quot;<b=
r>
+<br>
=C2=A0typedef struct _PhodavServer PhodavServer;<br>
<br>
=C2=A0/**<br>
commit 996bfb48dc5d1d17bb56b4936f79d8705bcd5c48<br>
Author: Jakub Jank=C5=AF &lt;<a href=3D"mailto:jjanku@redhat.com" target=3D=
"_blank">jjanku@redhat.com</a>&gt;<br>
Date:=C2=A0 =C2=A0Tue Jun 30 15:15:39 2020 +0200<br>
<br>
=C2=A0 =C2=A0 spice-gtk-session: cache atoms<br>
<br>
=C2=A0 =C2=A0 At the moment, spice-gtk only sends a grab message to the vda=
gent<br>
=C2=A0 =C2=A0 based on the retrieved atoms.<br>
<br>
=C2=A0 =C2=A0 With the upcoming changes, spice-gtk will have to know which<=
br>
=C2=A0 =C2=A0 targets were advertised outside of clipboard_get_targets() ca=
llback.<br>
<br>
=C2=A0 =C2=A0 We could use gtk_clipboard_wait_for_targets() or<br>
=C2=A0 =C2=A0 gtk_clipboard_wait_is_*_available(), but the targets are not =
cached<br>
=C2=A0 =C2=A0 by GTK+ on wayland for some reason. So let&#39;s cache them i=
n spice-gtk<br>
=C2=A0 =C2=A0 to avoid having to talk to the clipboard owner.<br>
<br>
=C2=A0 =C2=A0 Signed-off-by: Jakub Jank=C5=AF &lt;<a href=3D"mailto:jjanku@=
redhat.com" target=3D"_blank">jjanku@redhat.com</a>&gt;<br>
=C2=A0 =C2=A0 Acked-by: Frediano Ziglio &lt;<a href=3D"mailto:fziglio@redha=
t.com" target=3D"_blank">fziglio@redhat.com</a>&gt;<br>
<br>
diff --git a/src/spice-gtk-session.c b/src/spice-gtk-session.c<br>
index 2b86616..5e6be4a 100644<br>
--- a/src/spice-gtk-session.c<br>
+++ b/src/spice-gtk-session.c<br>
@@ -55,6 +55,8 @@ struct _SpiceGtkSessionPrivate {<br>
=C2=A0 =C2=A0 =C2=A0GtkClipboard=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *=
clipboard_primary;<br>
=C2=A0 =C2=A0 =C2=A0GtkTargetEntry=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *clip_=
targets[CLIPBOARD_LAST];<br>
=C2=A0 =C2=A0 =C2=A0guint=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0nclip_targets[CLIPBOARD_LAST];<br>
+=C2=A0 =C2=A0 GdkAtom=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0*atoms[CLIPBOARD_LAST];<br>
+=C2=A0 =C2=A0 guint=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0n_atoms[CLIPBOARD_LAST];<br>
=C2=A0 =C2=A0 =C2=A0gboolean=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 clip_hasdata[CLIPBOARD_LAST];<br>
=C2=A0 =C2=A0 =C2=A0gboolean=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 clip_grabbed[CLIPBOARD_LAST];<br>
=C2=A0 =C2=A0 =C2=A0gboolean=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 clipboard_by_guest[CLIPBOARD_LAST];<br>
@@ -284,6 +286,8 @@ static void spice_gtk_session_finalize(GObject *gobject=
)<br>
=C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; CLIPBOARD_LAST; ++i) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0g_clear_pointer(&amp;s-&gt;clip_targets[i=
], g_free);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0clipboard_release_delay_remove(self, i, t=
rue);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_clear_pointer(&amp;s-&gt;atoms[i], g_free);<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 s-&gt;n_atoms[i] =3D 0;<br>
=C2=A0 =C2=A0 =C2=A0}<br>
<br>
=C2=A0 =C2=A0 =C2=A0/* Chain up to the parent class */<br>
@@ -589,6 +593,16 @@ static SpiceWebdavChannel *clipboard_get_open_webdav(S=
piceSession *session)<br>
=C2=A0 =C2=A0 =C2=A0g_list_free(list);<br>
=C2=A0 =C2=A0 =C2=A0return open ? SPICE_WEBDAV_CHANNEL(channel) : NULL;<br>
=C2=A0}<br>
+<br>
+static GdkAtom clipboard_find_atom(SpiceGtkSessionPrivate *s, guint select=
ion, GdkAtom a)<br>
+{<br>
+=C2=A0 =C2=A0 for (int i =3D 0; i &lt; s-&gt;n_atoms[selection]; i++) {<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (s-&gt;atoms[selection][i] =3D=3D a) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return a;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 return GDK_NONE;<br>
+}<br>
=C2=A0#endif<br>
<br>
=C2=A0static void clipboard_get_targets(GtkClipboard *clipboard,<br>
@@ -622,6 +636,11 @@ static void clipboard_get_targets(GtkClipboard *clipbo=
ard,<br>
=C2=A0 =C2=A0 =C2=A0selection =3D get_selection_from_clipboard(s, clipboard=
);<br>
=C2=A0 =C2=A0 =C2=A0g_return_if_fail(selection !=3D -1);<br>
<br>
+=C2=A0 =C2=A0 /* GTK+ does seem to cache atoms, but not for Wayland */<br>
+=C2=A0 =C2=A0 g_free(s-&gt;atoms[selection]);<br>
+=C2=A0 =C2=A0 s-&gt;atoms[selection] =3D g_memdup(atoms, n_atoms * sizeof(=
GdkAtom));<br>
+=C2=A0 =C2=A0 s-&gt;n_atoms[selection] =3D n_atoms;<br>
+<br>
=C2=A0 =C2=A0 =C2=A0if (s-&gt;clip_grabbed[selection]) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0SPICE_DEBUG(&quot;Clipboard is already gr=
abbed, re-grab: %d atoms&quot;, n_atoms);<br>
=C2=A0 =C2=A0 =C2=A0}<br>
@@ -705,6 +724,9 @@ static void clipboard_owner_change(GtkClipboard=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 *clipboard,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
=C2=A0 =C2=A0 =C2=A0}<br>
<br>
+=C2=A0 =C2=A0 g_clear_pointer(&amp;s-&gt;atoms[selection], g_free);<br>
+=C2=A0 =C2=A0 s-&gt;n_atoms[selection] =3D 0;<br>
+<br>
=C2=A0 =C2=A0 =C2=A0if (event-&gt;reason !=3D GDK_OWNER_CHANGE_NEW_OWNER) {=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (s-&gt;clip_grabbed[selection]) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* grab was sent to the age=
nt, so release it */<br>
commit 852b847c868a199b5127644ca689f8a7d70fbda1<br>
Author: Jakub Jank=C5=AF &lt;<a href=3D"mailto:jjanku@redhat.com" target=3D=
"_blank">jjanku@redhat.com</a>&gt;<br>
Date:=C2=A0 =C2=A0Fri May 29 17:57:51 2020 +0200<br>
<br>
=C2=A0 =C2=A0 spice-gtk-session: add clipboard_get_open_webdav()<br>
<br>
=C2=A0 =C2=A0 File copy&amp;paste functionality will only be enabled when t=
here is an open<br>
=C2=A0 =C2=A0 webdav channel.<br>
<br>
=C2=A0 =C2=A0 Signed-off-by: Jakub Jank=C5=AF &lt;<a href=3D"mailto:jjanku@=
redhat.com" target=3D"_blank">jjanku@redhat.com</a>&gt;<br>
=C2=A0 =C2=A0 Acked-by: Frediano Ziglio &lt;<a href=3D"mailto:fziglio@redha=
t.com" target=3D"_blank">fziglio@redhat.com</a>&gt;<br>
<br>
diff --git a/src/spice-gtk-session.c b/src/spice-gtk-session.c<br>
index 48058c7..2b86616 100644<br>
--- a/src/spice-gtk-session.c<br>
+++ b/src/spice-gtk-session.c<br>
@@ -565,6 +565,32 @@ static gpointer free_weak_ref(gpointer data)<br>
=C2=A0 =C2=A0 =C2=A0return object;<br>
=C2=A0}<br>
<br>
+#ifdef HAVE_PHODAV_VIRTUAL<br>
+static SpiceWebdavChannel *clipboard_get_open_webdav(SpiceSession *session=
)<br>
+{<br>
+=C2=A0 =C2=A0 GList *list, *l;<br>
+=C2=A0 =C2=A0 SpiceChannel *channel =3D NULL;<br>
+=C2=A0 =C2=A0 gboolean open =3D FALSE;<br>
+<br>
+=C2=A0 =C2=A0 g_return_val_if_fail(session !=3D NULL, NULL);<br>
+<br>
+=C2=A0 =C2=A0 list =3D spice_session_get_channels(session);<br>
+=C2=A0 =C2=A0 for (l =3D g_list_first(list); l !=3D NULL; l =3D g_list_nex=
t(l)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 channel =3D l-&gt;data;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!SPICE_IS_WEBDAV_CHANNEL(channel)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 continue;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_object_get(channel, &quot;port-opened&quot;,=
 &amp;open, NULL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 g_list_free(list);<br>
+=C2=A0 =C2=A0 return open ? SPICE_WEBDAV_CHANNEL(channel) : NULL;<br>
+}<br>
+#endif<br>
+<br>
=C2=A0static void clipboard_get_targets(GtkClipboard *clipboard,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GdkAtom *atoms,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gint n_atoms,<br>
commit c1b5433815e5cd7683671d33a0d579b7b185efe8<br>
Author: Jakub Jank=C5=AF &lt;<a href=3D"mailto:jjanku@redhat.com" target=3D=
"_blank">jjanku@redhat.com</a>&gt;<br>
Date:=C2=A0 =C2=A0Mon Jun 29 19:40:25 2020 +0200<br>
<br>
=C2=A0 =C2=A0 build: require GLib 2.52+<br>
<br>
=C2=A0 =C2=A0 This adds g_uuid_string_random()<br>
=C2=A0 =C2=A0 which is necessary for the following file copy&amp;paste<br>
=C2=A0 =C2=A0 functionality.<br>
<br>
=C2=A0 =C2=A0 Signed-off-by: Jakub Jank=C5=AF &lt;<a href=3D"mailto:jjanku@=
redhat.com" target=3D"_blank">jjanku@redhat.com</a>&gt;<br>
=C2=A0 =C2=A0 Acked-by: Frediano Ziglio &lt;<a href=3D"mailto:fziglio@redha=
t.com" target=3D"_blank">fziglio@redhat.com</a>&gt;<br>
<br>
diff --git a/meson.build b/meson.build<br>
index 1c4e9d9..7ade460 100644<br>
--- a/meson.build<br>
+++ b/meson.build<br>
@@ -89,7 +89,7 @@ endforeach<br>
=C2=A0#<br>
=C2=A0# check for mandatory dependencies<br>
=C2=A0#<br>
-glib_version =3D &#39;2.46&#39;<br>
+glib_version =3D &#39;2.52&#39;<br>
=C2=A0glib_version_info =3D &#39;&gt;=3D @0@&#39;.format(glib_version)<br>
=C2=A0pixman_version =3D &#39;&gt;=3D 0.17.7&#39;<br>
<br>
commit 979b752b24d6f8d7089a23760fd5adda18f0e7ed<br>
Author: Jakub Jank=C5=AF &lt;<a href=3D"mailto:jjanku@redhat.com" target=3D=
"_blank">jjanku@redhat.com</a>&gt;<br>
Date:=C2=A0 =C2=A0Sat May 23 13:40:39 2020 +0200<br>
<br>
=C2=A0 =C2=A0 build: define HAVE_PHODAV_VIRTUAL if phodav &gt;=3D 2.5<br>
<br>
=C2=A0 =C2=A0 Phodav 2.5 brings PhodavVirtualDir API needed for the<br>
=C2=A0 =C2=A0 file copy and paste functionality.<br>
<br>
=C2=A0 =C2=A0 If the library version is not sufficient, this new feature<br=
>
=C2=A0 =C2=A0 will be disabled, but the standard shared folders can still<b=
r>
=C2=A0 =C2=A0 be used.<br>
<br>
=C2=A0 =C2=A0 Signed-off-by: Jakub Jank=C5=AF &lt;<a href=3D"mailto:jjanku@=
redhat.com" target=3D"_blank">jjanku@redhat.com</a>&gt;<br>
=C2=A0 =C2=A0 Acked-by: Frediano Ziglio &lt;<a href=3D"mailto:fziglio@redha=
t.com" target=3D"_blank">fziglio@redhat.com</a>&gt;<br>
<br>
diff --git a/meson.build b/meson.build<br>
index 6bbb4a8..1c4e9d9 100644<br>
--- a/meson.build<br>
+++ b/meson.build<br>
@@ -177,14 +177,17 @@ endif<br>
<br>
=C2=A0# webdav<br>
=C2=A0spice_gtk_has_phodav =3D false<br>
-d =3D dependency(&#39;libphodav-2.0&#39;, required: get_option(&#39;webdav=
&#39;))<br>
-if d.found()<br>
-=C2=A0 spice_glib_deps +=3D d<br>
+phodav_dep =3D dependency(&#39;libphodav-2.0&#39;, required: get_option(&#=
39;webdav&#39;))<br>
+if phodav_dep.found()<br>
+=C2=A0 spice_glib_deps +=3D phodav_dep<br>
=C2=A0 =C2=A0d =3D dependency(&#39;libsoup-2.4&#39;, version : &#39;&gt;=3D=
 2.49.91&#39;, required: get_option(&#39;webdav&#39;))<br>
=C2=A0 =C2=A0if d.found()<br>
=C2=A0 =C2=A0 =C2=A0spice_glib_deps +=3D d<br>
=C2=A0 =C2=A0 =C2=A0spice_gtk_config_data.set(&#39;USE_PHODAV&#39;, &#39;1&=
#39;)<br>
=C2=A0 =C2=A0 =C2=A0spice_gtk_has_phodav =3D true<br>
+=C2=A0 =C2=A0 if phodav_dep.version().version_compare(&#39;&gt;=3D 2.5&#39=
;)<br>
+=C2=A0 =C2=A0 =C2=A0 spice_gtk_config_data.set(&#39;HAVE_PHODAV_VIRTUAL&#3=
9;, &#39;1&#39;)<br>
+=C2=A0 =C2=A0 endif<br>
=C2=A0 =C2=A0endif<br>
=C2=A0endif<br>
<br>
commit 4b9092b96b8da946ff3d17922b0fcf225c5dc81f<br>
Author: Jakub Jank=C5=AF &lt;<a href=3D"mailto:jjanku@redhat.com" target=3D=
"_blank">jjanku@redhat.com</a>&gt;<br>
Date:=C2=A0 =C2=A0Sat May 23 16:28:52 2020 +0200<br>
<br>
=C2=A0 =C2=A0 session: make spice_session_get_webdav_server() public<br>
<br>
=C2=A0 =C2=A0 It will be necessary to access the webdav server from spice-g=
tk-session.c<br>
=C2=A0 =C2=A0 which isn&#39;t compiled with spice-session-priv.h, so make<b=
r>
=C2=A0 =C2=A0 spice_session_get_webdav_server() public.<br></blockquote><di=
v><br></div><div>I haven&#39;t looked at the whole series. Wouldn&#39;t it =
make sense to make it a read-only property instead?<br></div><div>=C2=A0</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
=C2=A0 =C2=A0 Signed-off-by: Jakub Jank=C5=AF &lt;<a href=3D"mailto:jjanku@=
redhat.com" target=3D"_blank">jjanku@redhat.com</a>&gt;<br>
=C2=A0 =C2=A0 Acked-by: Frediano Ziglio &lt;<a href=3D"mailto:fziglio@redha=
t.com" target=3D"_blank">fziglio@redhat.com</a>&gt;<br>
<br>
diff --git a/src/map-file b/src/map-file<br>
index acdd38f..86f371d 100644<br>
--- a/src/map-file<br>
+++ b/src/map-file<br>
@@ -144,6 +144,7 @@ spice_session_new;<br>
=C2=A0spice_session_open_fd;<br>
=C2=A0spice_session_verify_get_type;<br>
=C2=A0spice_set_session_option;<br>
+spice_session_get_webdav_server;<br>
=C2=A0spice_smartcard_channel_get_type;<br>
=C2=A0spice_smartcard_manager_get;<br>
=C2=A0spice_smartcard_manager_get_readers;<br>
diff --git a/src/spice-glib-sym-file b/src/spice-glib-sym-file<br>
index 72e6ef0..effcd09 100644<br>
--- a/src/spice-glib-sym-file<br>
+++ b/src/spice-glib-sym-file<br>
@@ -123,6 +123,7 @@ spice_session_new<br>
=C2=A0spice_session_open_fd<br>
=C2=A0spice_session_verify_get_type<br>
=C2=A0spice_set_session_option<br>
+spice_session_get_webdav_server<br>
=C2=A0spice_smartcard_channel_get_type<br>
=C2=A0spice_smartcard_manager_get<br>
=C2=A0spice_smartcard_manager_get_readers<br>
diff --git a/src/spice-session-priv.h b/src/spice-session-priv.h<br>
index b4919a4..5b52f8d 100644<br>
--- a/src/spice-session-priv.h<br>
+++ b/src/spice-session-priv.h<br>
@@ -87,7 +87,6 @@ gboolean spice_session_get_smartcard_enabled(SpiceSession=
 *session);<br>
=C2=A0gboolean spice_session_get_usbredir_enabled(SpiceSession *session);<b=
r>
=C2=A0gboolean spice_session_get_gl_scanout_enabled(SpiceSession *session);=
<br>
<br>
-PhodavServer *spice_session_get_webdav_server(SpiceSession *session);<br>
=C2=A0guint spice_session_get_n_display_channels(SpiceSession *session);<br=
>
=C2=A0gboolean spice_session_set_migration_session(SpiceSession *session, S=
piceSession *mig_session);<br>
=C2=A0SpiceAudio *spice_audio_get(SpiceSession *session, GMainContext *cont=
ext);<br>
diff --git a/src/spice-session.c b/src/spice-session.c<br>
index 6915736..f0ac891 100644<br>
--- a/src/spice-session.c<br>
+++ b/src/spice-session.c<br>
@@ -2796,7 +2796,6 @@ gboolean spice_session_get_smartcard_enabled(SpiceSes=
sion *session)<br>
=C2=A0 =C2=A0 =C2=A0return session-&gt;priv-&gt;smartcard;<br>
=C2=A0}<br>
<br>
-G_GNUC_INTERNAL<br>
=C2=A0PhodavServer* spice_session_get_webdav_server(SpiceSession *session)<=
br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0SpiceSessionPrivate *priv;<br>
diff --git a/src/spice-session.h b/src/spice-session.h<br>
index ed01c01..9436be8 100644<br>
--- a/src/spice-session.h<br>
+++ b/src/spice-session.h<br>
@@ -36,6 +36,8 @@ G_BEGIN_DECLS<br>
=C2=A0#define SPICE_IS_SESSION_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klas=
s), SPICE_TYPE_SESSION))<br>
=C2=A0#define SPICE_SESSION_GET_CLASS(obj)=C2=A0 (G_TYPE_INSTANCE_GET_CLASS=
 ((obj), SPICE_TYPE_SESSION, SpiceSessionClass))<br>
<br>
+typedef struct _PhodavServer PhodavServer;<br>
+<br>
=C2=A0/**<br>
=C2=A0 * SpiceSessionVerify:<br>
=C2=A0 * @SPICE_SESSION_VERIFY_PUBKEY: verify certificate public key matchi=
ng<br>
@@ -113,6 +115,7 @@ gboolean spice_session_has_channel_type(SpiceSession *s=
ession, gint type);<br>
=C2=A0gboolean spice_session_get_read_only(SpiceSession *session);<br>
=C2=A0SpiceURI *spice_session_get_proxy_uri(SpiceSession *session);<br>
=C2=A0gboolean spice_session_is_for_migration(SpiceSession *session);<br>
+PhodavServer *spice_session_get_webdav_server(SpiceSession *session);<br>
<br>
=C2=A0G_END_DECLS<br>
<br>
_______________________________________________<br>
Spice-commits mailing list<br>
<a href=3D"mailto:Spice-commits@lists.freedesktop.org" target=3D"_blank">Sp=
ice-commits@lists.freedesktop.org</a><br>
<a href=3D"https://lists.freedesktop.org/mailman/listinfo/spice-commits" re=
l=3D"noreferrer" target=3D"_blank">https://lists.freedesktop.org/mailman/li=
stinfo/spice-commits</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature">Marc-Andr=C3=A9 Lureau<br></div></div>

--000000000000dfceae05aee1ec4c--

--===============0216378528==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0216378528==--
