Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 679EA1F1BC0
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jun 2020 17:12:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2E446E957;
	Mon,  8 Jun 2020 15:12:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78D706E94E
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jun 2020 15:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591629160;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MUl8VXbEn0nh3FXMYSW4aNlXuldqhneyaV9n5VQcDhg=;
 b=Z7by+mtIGgbBF6zRsRODCuRtHPNgxURbyLbaY1T9+SMHcGdBy7496uRPxX02xUiM/ohxAW
 m6jhfdI68AARqhaTsV51ZhM3Ex1RZxxz1XXToqrss0024jJ1IgKA8w8ZYGNd1/VwrQk2+l
 RnUTIZ2piJx2hcVvoP+7bnOp7PamCtg=
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com
 [209.85.161.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-276-bPMyDY2ZP2OXXww3SYsmpg-1; Mon, 08 Jun 2020 11:12:38 -0400
X-MC-Unique: bPMyDY2ZP2OXXww3SYsmpg-1
Received: by mail-oo1-f72.google.com with SMTP id l4so9620385oog.15
 for <spice-devel@lists.freedesktop.org>; Mon, 08 Jun 2020 08:12:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=MUl8VXbEn0nh3FXMYSW4aNlXuldqhneyaV9n5VQcDhg=;
 b=cee1L1/BZcxQZLKoAopOYDITi23J26tMIchsLgHPrKUBVShZ8cj9viTrcvJf6y1+sj
 EFN4EJ4eLLOUTg6wW6UrnQuLn+Lk7/6aRN569g4T15XiVL24g0WY1FSjB9+o72bN+grd
 fSBQO0NihtdiH5YaxNP72VMyFCukbSqpI6Bpk7qoXyQAibNat+YnGtbbsJKh1u7BMvnT
 AHAp4BIEJYhC1o1vwO3XN8h2Ilju9ixSj7hNYuZ7snfFELBrpAvN1ndh8EhAw0W+VBe1
 ZGBQ2ys8OWvhQUwqnC1EXfP+ib4ii6m6IFf1OMQ3XvBhnXrE7/IY8cLUes7sJg4Pqk6k
 nr3Q==
X-Gm-Message-State: AOAM530VyHnJSZx1BMkkvQFr5NS0g+S21GdT3wSFGdVlTnFVfv9a4kiX
 f8h14bt9PxOAnQB4HoCL5HuJQOVwFn3Y42e+jA1EX7fP5aHg1BD8xrvwg/hMcSLUvljqtw6ttX4
 wtVATHezt6DR6wlmhsIGBdwQafQ20f5YGPIxLvkSxkxf/wIw=
X-Received: by 2002:aca:ec97:: with SMTP id k145mr10643955oih.92.1591629157335; 
 Mon, 08 Jun 2020 08:12:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx0Gp2p6ej4zs8V5BFA5sMfYP4lAv+jgasX8ZMzvWNfWQiRTe/ye7bocN+eIY6m+5uR6BltLV1qQnu/DTEImUM=
X-Received: by 2002:aca:ec97:: with SMTP id k145mr10643915oih.92.1591629156728; 
 Mon, 08 Jun 2020 08:12:36 -0700 (PDT)
MIME-Version: 1.0
References: <CADJ1XR3kFo__t5DsGf3xVJCxF=QSrYge1RWG9qN4kW48eBYpLQ@mail.gmail.com>
In-Reply-To: <CADJ1XR3kFo__t5DsGf3xVJCxF=QSrYge1RWG9qN4kW48eBYpLQ@mail.gmail.com>
From: Kevin Pouget <kpouget@redhat.com>
Date: Mon, 8 Jun 2020 17:12:25 +0200
Message-ID: <CADJ1XR1P_O9GUs1uHO-w3NCfar61iiVd_GS3HomZFmC=+zAhjQ@mail.gmail.com>
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

commit 75679dc95d450173319f462b25f267cb3025778f
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Wed Apr 1 20:43:04 2020 +0100

  dispatcher: Use IS-A relationship for Dispatcher hierarchy

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch adds class inheritance to the `Dispatcher` to avoid the
usage of the `parent` attribute. Surprisingly, there is no related
update of the code.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 164a333f991f09452844a94ad84a3190a2b6149d
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Wed Apr 1 20:50:44 2020 +0100

  Define and use (un)ref

  Avoids g_object_(un)ref.
  This in preparation to remove GObject.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch updates the  `Dispatcher` class to add `ref`/`unref`
methods, and updates the code accordingly.

The `RedClient` definition is moved from `red-client.cpp` to
`red-client.h` and now inherits from `GObject` instead of having it as
a parent. It's not very clear why the definition was moved as the
patch removes references to it.

Minor: the commit message could have been prefixed with 'dispatch'
and/or split another way.

Besides that, the code looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit f680cc7870143beb61de6094728667a34e6083ca
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu May 23 11:47:39 2019 +0100

  dispatcher: Add a more safe dispatcher_send_message_custom version

  Use a template to wrap the other dispatcher_send_message_custom
  avoiding having to pass a void* opaque and extract payload size
  from passed type.
  Will be used more by next commit when Dispatchers are turned into
  C++.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch adds a safer dispatcher_send_message_custom method,
which overrides and calls the existing one.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit f4aefa728ed6c2bd37ca6d404703b041c0938f60
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu Mar 5 08:27:57 2020 +0000

  Remove GObject from Dispatcher hierarchy

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Big patch so not easy to review. Overall, it turns the dispatcher into
C++ classes and updates the code accordingly.

Looks good to me, but I didn't look at it in depth.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 43c6bf91b7c53ee9f93f7ea1cead5bba94c61f88
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu Mar 5 13:01:27 2020 +0000

  reds: Remove a weak pointer usage

  RedCharDevice can all be removed just calling unref, beside
  the agent that needs special threatment.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

The logic of the code before/after the patch is not fully clear to me.

I understand that the clean-up of `RedCharDevice`-based objects is
simplified thanks to inheritance (`smartcard_device_disconnect` and
`spicevmc_device_disconnect`'s behavior is now identical, so the
cleanup is done in `reds_remove_char_device`.

Seems fine to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit cc86a7fb53cf9eb1b65c4feee26af94ed5a01714
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu Mar 5 10:17:38 2020 +0000

  red-client: Automatically convert functions to methods

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch converts C functions to C++ methods, and updates the code
accordingly.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit fef97b14e50b550c6148482b4b8049c3f6ba96ae
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu Mar 5 10:21:43 2020 +0000

  red-client: Make RedClient pure C++

  Remove GObject.
  Add access protection.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch turns the `RedClient` into an object, and removes GObject
usage.

Seems fine to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 9fd105e925e09be021a8d65f8795a8fe8de384e7
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Tue Mar 17 18:56:02 2020 +0000

  main-channel: Automatic convert functions to methods

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch converts C functions to C++ methods, and updates the code
accordingly.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit ab7486a9e8667160390811abc677dfdc5ee33028
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Tue Mar 17 19:11:18 2020 +0000

  main-channel-client: Automatically convert

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch converts C functions to C++ methods, and updates the code
accordingly.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 350646608dd8e2283e47d32b7487915b2f49ddc2
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Sat Jun 1 00:46:19 2019 +0100

  red-channel: Small simplification

  Use std::max to make code smaller

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>


Simple code simplification, looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit fe0298a2905121a02ee64f429e9f88148d17c6ee
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Fri Mar 6 04:03:24 2020 +0000

  safe-list: Add a class to implement a list with safe iterators

  The reason to not using STL is that our code from how was designed requires
  the iterator to be safe to the delete of the element pointed by the iterator.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch defines a `safe_list` class. As far as I understand (and as
the name/commit/comments suggest), this class allows the deletion of
the current iterator, while traversing the list.

    /* Implementation of a list with more "safe" iterators.
     * Specifically the item under an iterator can be removed while scanning
     * the list. This to allow objects in the list to delete themselves from
     * the list.
     */

I'm not a C++ export, but what I can read looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 767a9caded058fbde64fa4cc8e719c6ccef5f707
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Fri Mar 6 04:13:00 2020 +0000

  Allow to compile without C++ library

  Provide a suitable allocator using GLib

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch defines a class-wrapper `Mallocator` around GLib
`g_malloc/g_free` functions. This class is used with the `safe_list`
class. The `==` and `!=` operators of the class are defined to return
`true` / `false`, respectively.

The purpose of this class and the operator overloading is unclear to
me, but what I can read looks good.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit ec66702526fc4d5f046f5ef35d2751a90b16c14e
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Tue Mar 10 10:13:02 2020 +0000

  reds: Use red::safe_list instead of GList

  Use an utility list.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch turns `GList *` into `red::safe_list<T>` lists and updates
the code accordingly.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 4233df686eb2e18f47e05f541e83eee66ddd8273
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Fri Mar 6 04:40:11 2020 +0000

  reds: Move clients to safe_list

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch turns `GList *` into `red::safe_list<T>` lists and updates
the code accordingly.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 2b11c917dc9bced674304384b01e26506098fd06
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu Feb 6 21:38:51 2020 +0000

  Do not use GError to just return an error string

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch replaces `GError *` by `char *` for returning simple string
error messages.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 26e6d1555162a09937e2c8c910fbee631dcdf53c
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Thu Mar 5 18:45:17 2020 +0000

  char-device: Prepare to move functions to methods

  Move structure declaration at the end.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch moves a structure declaration from the upper part of the
file to the bottom.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 5f7aaf2a9a133f90869a453d3b00ccd97383dbb7
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Fri Mar 6 06:47:57 2020 +0000

  char-device: Remove define trick, won't work on C++

  C++ check parameter type, not founding the functions at
  link time.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch removes a "trick" that was used to deal with opaque types.

I didn't understand exactly what is all behind it, but the new code is
definitely clearer and less mysterious.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 1411383483e2b948db022ebfbcbf630852f2c5f6
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Tue Mar 10 10:30:27 2020 +0000

  char-device: Automatically convert functions to methods

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch converts C functions to C++ methods, and updates the code
accordingly.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 454b18fcae80f021c67c6148ac84ee515c903032
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Fri Mar 6 10:12:22 2020 +0000

  char-device: Convert some static functions to methods

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch converts C functions to C++ methods, and updates the code
accordingly.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 9dcf937767b009b9b0e1bef6c0d6a3bb6dc657c2
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Fri Mar 6 18:40:51 2020 +0000

  reds: Move qxl_instances to red::safe_list

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch turns `GList *` into `red::safe_list<T>` lists and updates
the code accordingly.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit b28db35af51dfff5984ffab42a09256732391427
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Sat Mar 7 10:01:42 2020 +0000

  reds: Make mig_wait_disconnect_clients a std::forward_list

  In the meanwhile remove a leak on the program.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch turns `GList *` into `red::forward_list<T>` lists and
updates the code accordingly.

I guess that the leak is related to this hunk:

    -g_list_free(reds->mig_wait_disconnect_clients);
    +reds->mig_wait_disconnect_clients.clear();

as `g_list_free` doesn't release the memory of dynamically allocated
objects. I didn't look further to confirm this guess.


Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 54c083091943f61a8ebe0b4d420c3311c37df3e6
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Sun Mar 8 18:54:23 2020 +0000

  input-channels: Improve encapsulation

  Update member access to limit it.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch changes the visibility of multiple methods.

Seems safe to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit bf04d7d721c939c058bb17d72c5d68a51ffe8b19
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Fri Mar 6 18:49:46 2020 +0000

  utils: Very skinny share_ptr implementation for our references

  It will be used to refactor reference counting code.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch defines a `share_ptr` class.

Minor: `s/inspired to/inspired from` (or similar to...)

I'm not a C++ expert but this seems safe to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 5126e383670db631c5546fa5677f79982bfe8246
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Fri Mar 6 20:23:42 2020 +0000

  Use shared_ptr implementation to handle reference counting

  This allows to make easier the management of owning.
  Reference counting is automatically updated based on shared
  pointers modification.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch replaces the `ref`/`unref` reference counting by the
`share_ptr` wrapping, as defined in the previous patch.

I didn't study in details how this works, but seems good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 597461e443962fa0294794b1db3d2f1c0fb18812
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Sun Mar 8 05:46:56 2020 +0000

  Add and use red::make_shared

  Allow to create an object already contained in a shared pointer
  to avoid having not owned objects.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch uses more `share_ptr` pointer wrappers.

Minor: seems that some TODOs are left in the code:

    // XXX make_shared

Seems good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 724f23e4bd9ce59279b5731f8bf4962b6f1d9acc
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Sat Mar 7 12:22:22 2020 +0000

  Use red::shared_ptr_counted for RedChannelClient

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch adds more usage of `make_shared`/`share_ptr` (minor: could
have been mentioned in the commit message).

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 2b9e1dcd5509dd2931e070f397adf5d2abcfa005
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Mon Mar 9 02:25:03 2020 +0000

  dispatcher: Reuse base reference counting for Dispatcher hierararchy

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Minor: `s/hierararchy/hierarchy` in the commit message.

This patch continues the transition to using more `shared_ptr`.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit be5bda4d4f1a6c348e45694143228965bda718b7
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Sat Mar 7 11:26:13 2020 +0000

  utils: Add red::weak_ptr and red::shared_ptr_counted_weak

  Implements weak pointers and helper to implement them.
  They will be used for RedCharDevice.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch implements `weak_ptr` and `shared_ptr_counted_weak`
classes.

I didn't look at it.

commit f6f998004bc586ec0afdc550f0bdeb026d2dcd29
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Sun Mar 8 12:51:07 2020 +0000

  Wrap spice.h in order to do some adjustment

  Instead of including spice.h directly include an header that wraps
  it. This allows to remove the SPICE_SERVER_INTERNAL define.
  Currently is used to rename SpiceCharDeviceInstance to RedCharDevice
  and reduce its visibility to hidden. This remove some warnings
  and some weird code in the source.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch removes naming tricks from the code.

I could not understand all of it, but it seems safe.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 1e9205a3b8b0a1c63bd81418f570e0b2ee16c0b2
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Sat Mar 7 22:11:34 2020 +0000

  char-device: Remove GObject from RedCharDevice

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Big patch, I didn't look at it.

commit fd06625ba165d247be97058dc607e44bd128d5f7
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Sun Mar 15 07:02:42 2020 +0000

  red-stream-device: Better encapsulation

  Remove all members public, set correct access and create
  missing methods.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch converts C functions to C++ methods, and updates the code
accordingly.

Looks good to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 31f0ce20867ecd4c07a2d5e20135cd188704e77e
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Tue Mar 10 08:23:14 2020 +0000

  Avoids registering type just to get the nick of an enum value

  We don't use anymore GObject parameters so avoid having to
  register enum values to GType system to use them.
  We just need to get the nick value of the enum values for
  debug purposes.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

I don't know how these nicks / templates work, I didn't try to
understand the patch.

commit 46cda65123a09187e69b0cd5ee5cc4d0064670cf
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Sun Mar 8 10:52:53 2020 +0000

  build: Remove GObject dependency

  Not used anymore.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch removes GObjects from the meson and autotools build
systems.

It also removes unused GObject helper macros/inline functions.

Seems safe to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 851b136bb4881a0bfa6838ba03c8e7a491b17b2e
Author: Frediano Ziglio <fziglio@redhat.com>
Date:   Tue Mar 10 16:32:51 2020 +0000

  sound: Make functions exported not visible

  Allows the compiler to do some additional optimizations.

  Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

This patch changes the visibility of the functions definied in the
`sound.h` header.

Seems safe to me.

Acked-by: Kevin Pouget <kpouget@redhat.com>

commit 62801ad9acfc61280dfa32b767b7915eaed7ff24
Author: Frediano Ziglio <freddy77@gmail.com>
Date:   Tue May 5 05:08:37 2020 +0100

  char-device: Remove obsolete declaration

  Signed-off-by: Frediano Ziglio <freddy77@gmail.com>

This patch removes an unused `struct` forward declaration.

Seems safe to me.

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
