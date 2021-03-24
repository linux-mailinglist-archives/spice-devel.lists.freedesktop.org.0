Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5012634746D
	for <lists+spice-devel@lfdr.de>; Wed, 24 Mar 2021 10:22:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C18656E996;
	Wed, 24 Mar 2021 09:22:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 640D46E96F
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Mar 2021 09:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616577724;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:in-reply-to:in-reply-to:  references:references;
 bh=Wtr9gKuEz+AFpvNFKGJb3mS33kbIAFX8aPWfjQIhcPY=;
 b=NmAJuTtr0dP3qW6VUNXesxIoMBebSJwTOpoAc4XZb6X6UKp8a6ZRXx3eYrzW/UFvaWZQEH
 GeWSd5vAHjnUbY54ePePjMSlgism38IdYKZkF1qY9TKkWziJrojCiGWl2QQe4yzoDi57VW
 y09bVp/Qo5gehlQRVnG13G5jp/dLKEw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-208-6a30EslDMY6e3F1Oq9V0Lw-1; Wed, 24 Mar 2021 05:21:57 -0400
X-MC-Unique: 6a30EslDMY6e3F1Oq9V0Lw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CB0CD5B366;
 Wed, 24 Mar 2021 09:21:56 +0000 (UTC)
Received: from redhat.com (ovpn-115-107.ams2.redhat.com [10.36.115.107])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F2E4B7094A;
 Wed, 24 Mar 2021 09:21:55 +0000 (UTC)
Date: Wed, 24 Mar 2021 09:21:52 +0000
From: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
To: Helge Konetzka <helge@konetzka.de>
Message-ID: <YFsEsB2rZC040RZd@redhat.com>
References: <ae975f23-85d9-5390-54fc-6afe0f6ab4d0@konetzka.de>
MIME-Version: 1.0
In-Reply-To: <ae975f23-85d9-5390-54fc-6afe0f6ab4d0@konetzka.de>
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=berrange@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Spice-devel] Qemu with Spice support on Windows10 host: a
 report
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
Reply-To: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Tue, Mar 23, 2021 at 09:27:31PM +0100, Helge Konetzka wrote:
> Sadly problems occur after adding more spice with:
> "-device virtio-serial-pci -device
> virtserialport,chardev=spicechannel0,name=com.redhat.spice.0 -chardev
> spicevmc,id=spicechannel0,name=vdagent"
> qemu starts logging warnings in a loop and is no longer usable:
> D:\cygwin64\x86_64-w64-mingw32\qemu-5.2.0\qemu-system-x86_64.exe: warning:
> GLib: Too many handles to wait for!

This problem is in GLib, rather than QEMU. What version of GLib are you
building & running against ?

Regards,
Daniel
-- 
|: https://berrange.com      -o-    https://www.flickr.com/photos/dberrange :|
|: https://libvirt.org         -o-            https://fstop138.berrange.com :|
|: https://entangle-photo.org    -o-    https://www.instagram.com/dberrange :|

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
