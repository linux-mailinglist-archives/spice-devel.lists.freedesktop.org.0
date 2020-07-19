Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD07B2250FF
	for <lists+spice-devel@lfdr.de>; Sun, 19 Jul 2020 11:57:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91FCD89890;
	Sun, 19 Jul 2020 09:57:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76AB589890
 for <spice-devel@lists.freedesktop.org>; Sun, 19 Jul 2020 09:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595152640;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vFbz7YRsMfo6m8bHTto2pAuVkQzsZ5LPGkqEnteL1AU=;
 b=IXRkQs9kGnghfTd7MnwcFME2G3ZhMAWbQjCA3YW+Ot1FVgz+RG3tyODuFU7fQHAaypn0pe
 B7Vhepr46Xyd+1POlM71EEjkDyDbROBNWYrc9MAPJ6OmzHQFNQho7na2az3wA2Wy1WnNwm
 KiwMQ7o00QsWu2vo/XoqASVAHE3l1r4=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-4-UseWTXMKObOuwaE0zmYlOw-1; Sun, 19 Jul 2020 05:57:15 -0400
X-MC-Unique: UseWTXMKObOuwaE0zmYlOw-1
Received: by mail-io1-f72.google.com with SMTP id h15so9372985ioj.11
 for <spice-devel@lists.freedesktop.org>; Sun, 19 Jul 2020 02:57:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vFbz7YRsMfo6m8bHTto2pAuVkQzsZ5LPGkqEnteL1AU=;
 b=ACIz2n/o2mbOSuoj3IaoLCfA8qQ+tsr69Ew0chRuKqCrXpRVotRC+cRqdZavaver2q
 /LmrWvh2qCSxjPSCmFYx8uMM2ldMqIeTre4Q/pthfJgtU/APUmRo5CY96U5YjtyoBqIP
 Z3AJL0mEWws9hxhmhalCnhLlWOArjX4GfvI2D3qRt0xNb3o56JBOb3WgMuB6lx3MRpv6
 U+VQk03z6XW2Kv3vAzkiaNdi3AmP7mfUuDR5fhYpXfw+S0WzQTQfedzdjFAZnej+xAJp
 JIviKoq9xAPneTxxXiv9h9ZbXO5w3kydXiMQFCkDTtWo4eB9A476VnxBQmbmCUvCWpye
 jx8A==
X-Gm-Message-State: AOAM533tiVN1P3d4OiG4Dzgsl4YrXCfx+KRg+q/h/kWvCoPTyM9//8l2
 NSyfNo0MeO8JWnqobkrezYMfYN1ZEZWckGPInr6qhWNrTrpWil+TGad4uSQPfOgFMzwyZkd+qK0
 1lEx7OvQbhtl/wXerMWPIasb3n4oTZKB210yjoT/aDko8ppc=
X-Received: by 2002:a6b:440d:: with SMTP id r13mr17301186ioa.114.1595152634820; 
 Sun, 19 Jul 2020 02:57:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwv0iaV5QmQNPMB65RaIIK06SJHJf42mhDhE9LYKoHr4lGsA2G0iNpCLfBvk2Y11fzLmXCfR6VuugukeLG/W50=
X-Received: by 2002:a6b:440d:: with SMTP id r13mr17301172ioa.114.1595152634569; 
 Sun, 19 Jul 2020 02:57:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAM1wO0mtiMoPAmH89pbCLQPS215fd0Nyq9E79TZDRyHNUHApfQ@mail.gmail.com>
In-Reply-To: <CAM1wO0mtiMoPAmH89pbCLQPS215fd0Nyq9E79TZDRyHNUHApfQ@mail.gmail.com>
From: Jakub Janku <jjanku@redhat.com>
Date: Sun, 19 Jul 2020 11:57:03 +0200
Message-ID: <CAH=CeiBUGdfSnCmAbq5Cy-wQw-tsLvc+aMEvOKYLcfYbHWA2Vw@mail.gmail.com>
To: Koopa Koopa <codingkoopa@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jjanku@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Can't write from guest to host with webdav
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi!

On Sun, Jul 19, 2020 at 9:34 AM Koopa Koopa <codingkoopa@gmail.com> wrote:
>
> Hi all,
>
> I'm looking to share a folder between my Arch Linux host and a Windows 10 guest, and SPICE's folder sharing with webdav seems to be the best option for me. I've set up the QEMU devices that webdav needs, and installed the Windows service. I have the drive mapped, and am able to navigate the host folder (apart from the occasional "Windows cannot access \\localhost@9843\DavWWWRoot\" that doesn't occur again), and copy files from the host to the guest. When trying to copy a new file (with data) or write to an existing file from the guest, though, the application (e.g. File Explorer, or other programs which save files) hangs for a little bit, before the transaction fails. For File Explorer, it displays "Error 0x80070021: The process cannot access the file because another process has locked a portion of the file."
>
> This is the output of remote-viewer:
>   (remote-viewer:16120): GSpice-WARNING **: 12:58:46.205: Warning no automount-inhibiting implementation available

As you say, this happens in non-GNOME environments. But it's related
to usb redirection, not webdav.
>
>   (remote-viewer:16120): phodav-WARNING **: 12:58:57.910: (../phodav-2.4/libphodav/phodav-method-propfind.c:70):prop_resourcetype: code should not be reached
>
>   (remote-viewer:16120): phodav-WARNING **: 12:59:04.714: (../phodav-2.4/libphodav/phodav-method-propfind.c:70):prop_resourcetype: code should not be reached

I know that these warnings can happen for example if the shared folder
contains a broken symlink. Is that your case? Basically anything in
the shared folder that isn't a regular file or a directory can emit
this warning, but it shouldn't cause the described issues afaik.
>
>   (remote-viewer:16120): GSpice-WARNING **: 12:59:04.793: (../spice-gtk-0.38/src/channel-webdav.c:330):demux_to_client_cb: runtime check failed: (size == c->demux.size)
>   phodav-Message: 13:00:06.047: missing lock: /testfile urn:uuid:ceb212f1-f8af-4dd3-b36c-a7e627b6c08a
>   phodav-Message: 13:00:06.062: missing lock: /testfile urn:uuid:ceb212f1-f8af-4dd3-b36c-a7e627b6c08a
>   phodav-Message: 13:00:06.076: missing lock: /testfile urn:uuid:ceb212f1-f8af-4dd3-b36c-a7e627b6c08a

I'm not able to reproduce it, so more logs would be helpful.
Could you please run remote-viewer or spicy with the following options
and attach the output?
G_MESSAGES_DEBUG=phodav remote-viewer --spice-debug

>
> I read that the first GSpice error always occurs on non-GNOME host environments. The phodav error occurs whenever I view the root directory of the share, or try copying/writing to a file anywhere in the share. The second GSpice and other phodav messages occur when copying/writing a file in the share.
>
> This occurs both with remote-viewer, and spicy. The same result occurs whether or not I have the "Read only" checkbox in remote-viewer checked.
>
> Thanks!
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

Thanks,
Jakub

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
