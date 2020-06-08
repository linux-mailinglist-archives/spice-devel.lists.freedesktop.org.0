Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5844C1F1BBF
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jun 2020 17:12:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C81696E947;
	Mon,  8 Jun 2020 15:12:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D6DE6E947
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jun 2020 15:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591629121;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ya8wyVgnrxC1uXjPeJOARwE3VdIDda6+jXLKl+P4kW0=;
 b=GKTBJwUM/p42d4MtXbuXVdUjS3UQPeGI4zP1O+69c+k2Wai07zXM0OCNiuSBVznFu9roGH
 IaEmN4/zKuqT7lTrU0SfVBRbSAZ+7l2/PTmY6DEvRCwg1co3yVNgIWIB42453LpWSfx/iC
 LKbBIYsLuRCHK75cnLhe40QszdByXX4=
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com
 [209.85.210.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-325-gj1pMkb4O0-iIQ-PnKVBpg-1; Mon, 08 Jun 2020 11:11:59 -0400
X-MC-Unique: gj1pMkb4O0-iIQ-PnKVBpg-1
Received: by mail-ot1-f70.google.com with SMTP id e66so7942756otb.9
 for <spice-devel@lists.freedesktop.org>; Mon, 08 Jun 2020 08:11:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=Ya8wyVgnrxC1uXjPeJOARwE3VdIDda6+jXLKl+P4kW0=;
 b=S5q54pORI56V4wY+X0Ru9Tp+vmdgRlx5hVpzIwr54AD6yfLasCEmV/40zGB4DOQ3+O
 nRjTX3MtNiXb/igH3vyiwmRrCdEImSY44p1E+6wW1SQ4FpQZA+2nKyGfnwOQH9GVECE+
 tsOIuZkE+/IEyGPfihl55h/j0jw9Ew77wNCqsVtmjaHTr19UNQkviocSDZGKPxrOZ0RF
 A7X8UnLKazVx+WLSqNTFilN5EA4q278j/HeJJPbvRYhneMy9HUsMPfUZTnqRljYWxk7K
 NbCInb+NxeRj1i/l5ksnVzVEzSZh1swnntui/ZWNHEooVA7WsBZ4iMbsu/fsA0wrB15A
 dJ/w==
X-Gm-Message-State: AOAM532u0EywfV+rcly95eUCjPYOUIy9zBwY1asJPaJ5y+1Kgyh4MCkI
 CZ0XRXdwAXMuD072AXPT1X3WNDF0AW/KEY4baXKVfUB3ZoTcOT0zgqKBRz4C04+HnE8G74esqCi
 EdQm1TshJu+d3sqaqPlW/83rdHr6Ne3RlUfT8oojwU1TTqRo=
X-Received: by 2002:a4a:6c0d:: with SMTP id q13mr1038613ooc.50.1591629118119; 
 Mon, 08 Jun 2020 08:11:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzvuVwqgLd0vA2hku1Hg45/eghWbbzRZRw+2Wbzpgl0pgyuYZhVSYPTcZUkJ76//q/DEMGJ75mxGq5ebdNT2pY=
X-Received: by 2002:a4a:6c0d:: with SMTP id q13mr1038555ooc.50.1591629117377; 
 Mon, 08 Jun 2020 08:11:57 -0700 (PDT)
MIME-Version: 1.0
References: <CADJ1XR3kFo__t5DsGf3xVJCxF=QSrYge1RWG9qN4kW48eBYpLQ@mail.gmail.com>
In-Reply-To: <CADJ1XR3kFo__t5DsGf3xVJCxF=QSrYge1RWG9qN4kW48eBYpLQ@mail.gmail.com>
From: Kevin Pouget <kpouget@redhat.com>
Date: Mon, 8 Jun 2020 17:11:46 +0200
Message-ID: <CADJ1XR3yhwLdVMkHbk1-Z51COUkPgvQq5Tm0zdJnTQgkLp+=kQ@mail.gmail.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Review of the C++ patches
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

commit 2023bb376713a39c47607f2698ad0f5e43ddf994
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Mon May 20 16:23:54 2019 +0100

  red-channel-client: Remove "self"

  It was left unchanged to reduce diff.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch removes the historical usage of `self`, and uses instead
the implicit `this->`.

As I mentionned above, I think it's more readable to have an explicit
`this->`, we'll discuss this later on.

Besides that, the patch looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 61affed2a2e36b59e6935e608d7d80242f976c7e
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Mon May 20 16:49:17 2019 +0100

  red-channel-client: Better private initialisation

  Initialise RedChannelClientPrivate fields from the new
  constructor instead from RedChannelClient.
  Also change some fields to constants (actually many of them).

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch moves constructor/destructor code from `RedChannelClient`
to `RedChannelClientPrivate`.

Minor: the diff of this patch is confusing, as the constructor and
destructor are mixed up as the order of the function has changed :#]


Minor: I don't see "many" fields changed to `const`, only 3 of them
...?

Besides these minor comments, the patch looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit b86f6e9a53a1fe2b6ef0a518ef99fada9d4915ed
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Wed May 22 05:04:17 2019 +0100

  utils: Add red::unique_ptr

  red::unique_link will be used to manage "priv" fields.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch adds utility functions/classes.

The patch looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 1ac616c4a34e9e075f36b0a4b057383443a02429
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu May 23 03:36:54 2019 +0100

  Use utils.hpp for allocating/removing priv field

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch updates the Channel classes and encapuslates their `priv`
behind a `unique_link` attribute.

I understand that with this update, C++ / the `unique_link` class take
care of the life-cycle of the `priv` object.

Minor: this comment is ... hard to read!

> This even empty is better to by declared here to make sure
> we call the right delete for priv field

The patch looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 7720039ee0c1fecdf0947dedd323f6ab0069ff9d
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu May 23 03:43:52 2019 +0100

  red-channel-client: Move handle_message as a virtual function

  The messages coming are from the client so it's a better place
  to be in RedChannelClient instead of RedChannel.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch makes `dcc_handle_message` a virtual method of
`RedChannelClient`. This method is implemented in the different client
channel classes, instead of `main_channel_handle_message`,
`dcc_handle_message`, etc.

The patch looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 851696a6455af827439b65f5668c9d755d9aa331
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu May 23 03:54:28 2019 +0100

  red-channel-client: Preparation, rename send_item to avoid clash

  We will use this name for a virtual function from RedChannel.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch renames `RedChannelClient`'s method `send_item` into
 `send_any_item`.

The patch looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 669df4fb38a3f3928cc5f7089aaf7d93e6fbd2a0
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu May 23 04:35:56 2019 +0100

  red-channel-client: Make send_item a virtual function

  The items are send from RedChannelClient so move the callback
  to a virtual function in RedChannelClient instead of RedChannel.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch refactors the `struct RedChannel`'s `send_item` callback
attribute into a virtual method `RedChannelClient::send_item`, then
proceeds with the rewriting to implement the virtual method in the
different client-channel final classes.

Most of the patch is a simple rewriting equivalent to `s/client
channel/this` / or removal thanks to the implicit `this->`.

Minor typo in the commit message: s/send/sent

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 2ffa7d00c60808e2f640df9bc9b5d62598455588
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu May 23 08:29:26 2019 +0100

  inputs-channel-client: Improve encapsulation for InputsChannelClient

  Move most inputs_channel_client_* functions inside the class.
  This also helps preparing handle_migrate_data to be virtual.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch moves most inputs_channel_client_* functions inside the
class. Most of the patch consists in rewriting `s/channel/this` / or
removal thanks to the implicit `this->`, or removing static method
prefixes (eg,
`s/inputs_channel_client_send_migrate_data/send_migrate_data`).

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 2b04f644f670af79fef9332deb75722f056c5819
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Fri May 24 20:00:01 2019 +0100

  red-channel-client: Move handle_migrate_data as virtual function

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch rewrites the `handle_migrate_date` attribute callback into
a virtual function of the `RedChannelClient` class.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 28a4fc5a1088458046bcc41972f6a18fcdecdcfe
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Fri May 24 20:23:16 2019 +0100

  red-channel-client: Move migrate as virtual method

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch is similar to the previous one, the `migrate` class
attribute is rewritten into a virtual class method.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 70367fd4601d2a61662c448cded5ef3bf7dbb5e0
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Tue May 28 19:31:44 2019 +0100

  red-channel-client: Move handle_migrate_flush_mark as a virtual function

  Note that the return value was removed as not used.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Same kind of rewritting as the previous patches

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit d5ea93d3a8d4463eddb2fdb233d3a5a5640a155b
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Tue May 28 19:46:39 2019 +0100

  Make disconnect a virtual function

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Same kind of rewritting as the previous patches

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit cf51158811e52c5f20580505c925a01e7536cd5f
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Tue May 28 19:53:46 2019 +0100

  red-channel-client: Move handle_migrate_data_get_serial as a virtual function

  Virtual functions cannot be null so use a return value instead
  and return the serial using a reference.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Same kind of rewritting as the previous patches

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit fdedbe9e94f816ded0f0521570fbb2c8defe4be4
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu May 23 05:07:19 2019 +0100

  dcc-send: Avoid to call DISPLAY_CHANNEL_CLIENT to cast

  It's useless now, it's always a DisplayChannelClient, pass the
  right type.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch changes the type of `ChannelClient` variables to a more
suitable one, and renames the variables when relevant (eg:
`s/RedChannelClient *rcc/DisplayChannelClient *dcc`).

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit bd4b1caeb8e629286457714e0ab412918d13e9c1
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Mon Mar 9 18:31:20 2020 +0000

  Use template to make adding timers/watches safer

  Instead of forcibly cast functions cast only if data pointer and
  function pointers match. This also allows to remove dangerous
  casts all over the place.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch improves the type safety of timers/watches functions, by
relying on C++ templates.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 435ea33540941e93fdf942a1cd16222f3cbbbcbd
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Tue Mar 3 14:47:53 2020 +0000

  Reduce C++ symbols visibility

  This allows the compiler to do some more optimisations on the
  produced binary.
  To allows possible future portability include header/footer in
  some helper header files.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

*This patch encapsulates the visibility macros
 (`G_BEGIN_DECLS`/`G_END_DECLS`) into dedicated header files
 (`push-visibility.h`/`pop-visibility.h`).

It also changes the visibility to this:

    #if defined(__GNUC__) && __GNUC__ >= 4 && !defined(__MINGW32__)
    #pragma GCC visibility push(hidden)
    #endif

and

    #if defined(__GNUC__) && __GNUC__ >= 4 && !defined(__MINGW32__)
    #pragma GCC visibility pop
    #endif

I don't really know the implication of these last changes, so I cannot
ack...

commit 0807ccea59cb4df03d2e99e6e9f56c09ec74d9c8
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Sat May 25 08:27:17 2019 +0100

  cursor-channel-client: Move all public functions to methods

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch changes public functions to class methods, and adapts the
code accordingly.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 3136a11f39d491d0cdb65c6d45b5f12b566da3de
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Sat May 25 08:35:36 2019 +0100

  cursor-channel-client: Use covariance to avoid some casts

  CursorChannelClient knows that the channel is a CursorChannel.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch removes some casts by relying on the assuption that
`CursorChannelClient`'s channel is necessarily an instance of
`CursorChannel`.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 104aa6e1af2a7d39019ed6b489f8787a1066f7fb
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Sat Feb 29 21:22:02 2020 +0000

  Remove GObject from RedChannel

  The patch seems pretty huge but mainly are mechanical steps:
  - remove GObject declarations
  - do not inherit from GObject
  - add SPICE_CXX_GLIB_ALLOCATOR to avoid using C++ allocators
  - CLASS_init and CLASS_constructor code goes into C++ constructor
  - CLASS_dispose and CLASS_finalize code goes into C++ destructor
  - g_object_new is replaced by new operator
  - class members goes into virtual methods
  - class parameters became argument to constructor
  - use push-visibility.h and pop-visibility.h to limit visibility
  - temporary use XXX_CAST for old GObject casts, they will
    be replaced
  - g_object_get is replaced by accessors

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

I didn't look at this big patch.

commit 9df07e3f203e05571d6de1ef748200d8571ba2b0
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Sat Feb 29 22:13:00 2020 +0000

  inputs-channel: Make InputsChannel more encapsulated

  Put functions into methods.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch rewrites C functions into C++ class methods.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 6444fd6cfe0f21bb62b6af40984761b7478a41b9
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Sun Mar 1 06:57:11 2020 +0000

  inputs-channel: More C++ on InputsChannel

  Removed ugly converts putting in InputsChannelClient::get_channel().
  Removed silly accessors.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch turns C functions into C++ class methods, and, similarly to
a previous patch, overrides the `get_channel` method to properly cast
the `InputsChannelClient`'s channel into a `InputsChannel` instance.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 2bf72a5ce2d2af77daf81ca2fade7283b2a2709a
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Sun Mar 1 18:48:42 2020 +0000

  stream-channel: More incapsulation for StreamChannel

  Put all functions into methods.
  Separate public/private part.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Same kind of changes as previous patches.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit f42a20c508aeb3431f1d334b1eff955b07f5d567
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Tue Mar 3 09:07:54 2020 +0000

  Improve CommonGraphicsChannel encapsulation

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Same kind of changes as previous patches.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 9ae11a3545336ffa8fab3552ea8d16e72481d9da
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu May 23 02:32:50 2019 +0100

  red-channel-client: Move some methods to a protected section

  Reduce visibility and increase encapsulation.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch changes the visibility of some methods (public->protected).

Seems safe to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit aecbdd9e5b885cdde10d43404b8e465e750964ea
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu May 23 09:07:20 2019 +0100

  red-channel-client: Make handle_message protected

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch changes `handle_message` visibility (public->protected).

But it also makes `handle_pong` a class method instead of a C
function. This is unrelated to the commit message and should have been
in a dedicated commit ...

The code changes look good to me, but with the situation I think there
is nothing to do to split the commit...

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 2d865a78da9b7946a9fab788a68168c2f057810d
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Tue Mar 3 10:01:37 2020 +0000

  red-channel-client: Make start_connectivity_monitoring protected

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch changes ` start_connectivity_monitoring` visibility
(public->protected).

But it alsmo makes `start_net_test` a class method instead of a C
function. I don't understand why this isn't mentioned in the commit
message (same as the previous patch), nor if it was mandatory to have
these two changes in the same commit.

The code changes look good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 411cb2630152abf76b30337c274dfd4c2a472c88
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Tue Mar 3 15:34:41 2020 +0000

  main-channel: Remove some casts

  Add MainChannelClient::get_channel to avoid to manually cast
  to derived type.
  Pass objects as MainChannelClient instead of RedChannelClient if
  we need a MainChannelClient.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Like some previous patches, this patch removes some casts by using
proper datatypes, and relying on the fact that `MainChannelClient`'s
channel are `MainChannel` instances.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 4372c0a3ff04807c30cb50c178c1a51b31585431
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Tue Mar 3 17:13:20 2020 +0000

  inputs-channels-client: Call pipe_add_init from InputsChannelClient::init

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch moves the call to `pipe_add_init` from `on_connect` method
to `init`, and marks `pipe_add_init` as private.

Seems safe to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 16f89a80fad790d7e7ca9e94ce8a65b29ff7d82a
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Wed Mar 4 07:57:35 2020 +0000

  inputs-channel: Move some methods to protected

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch moves some methods visibility from `public` to `private`.

Minor: the commit message says protected instead of private.

Seems safe to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 13f27ab8e9ad4d412cba3398e3de206b04699d7f
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Wed May 29 08:56:32 2019 +0100

  sound: Make on_message_done a virtual function

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch makes `on_message_done` method virtual, with a default
empty body, and changes the rest of code accordingly.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 9e5781e81cca2afca7c506d44ba24e244c210f5e
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu Mar 5 05:25:54 2020 +0000

  char-device: Do not use signals just to call our routine

  The only notify was done from the same file.
  All other read of the property were replaced.
  Preparing to remove GObject.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch removes the usage of GObject signal `sin` to trigger device
instance initialization. The function is called directly instead of
triggering the signal.

I don't understand though why a call was added when setting
`PROP_SPICE_SERVER` property, as it wasn't there before.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit ea0d056bb779d6e34e230ed9558e613cac347cdd
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu Mar 5 05:35:43 2020 +0000

  char-device: Define and use (un)ref

  Prepare to remove GObject.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

*This patch adds `ref`/`unref` methods to `struct
 SpiceCharDeviceState` and updates the code accordingly.

It also adds class inheritance to avoid the usage of the `parent`
attribute and changes the code accordingly, by removing useless casts.

Minor: this could have been mentionned in the commit message as it
takes most of the patch changes.

Besides this remark, the patch looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

On Mon, Jun 8, 2020 at 5:10 PM Kevin Pouget <kpouget@redhat.com> wrote:
>
> Hello spice-devel
>
> I worked on the review of Frediano's C++ patches during the last weeks,
> I tried to understand the gist of the commits and summarize it in the review message.
> It's not an in-depth review, and I only spotted minor details.
>
> A few patches are not acked, mostly because they were too big for me to study carefully enough.
>
> Overall, I really appreciate the effort made to adapt the code to C++, from my point of view it is greatly beneficial for the code as it reduces a lot the amount of code duplication (boilerplate code) by leveraging C++ inheritance, polymorphism, virtual methods, etc.
> Likewise, the ref-counting is made simpler and safer with custom classes (share_ptr). These custom classes mimic existing ones AFAICT, but they are more "C-safe" as they cannot throw exceptions.
>
> 3 mails will follow with the reviews.
>
> Best regards,
>
> Kevin

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
