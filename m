Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC38925143F
	for <lists+spice-devel@lfdr.de>; Tue, 25 Aug 2020 10:31:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4952D6E888;
	Tue, 25 Aug 2020 08:31:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5597D6E888
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Aug 2020 08:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598344315;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VElvM4A8yE5ANcs8jH4vnf3Z8i99+PkzoqBcb0WkXh8=;
 b=RqYiip0RYflBIpBr4RRwSE4MSpuIPSswc8FdXQ9uOZNLc/eDgdnWMMa9ucMf04cYLDKvvN
 ikX1Z299H4uCbF3uMpM4xyY+mLftThpSUpUKCWPgmyRKzB82Zemrv4gU3BwcbkqVQL2Ww/
 1SlXQyhqFRisNSXMcNuymhVtRZmuKa0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-235-AxijMjp5NAmS3uIusSqgQw-1; Tue, 25 Aug 2020 04:31:51 -0400
X-MC-Unique: AxijMjp5NAmS3uIusSqgQw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E936C1007474;
 Tue, 25 Aug 2020 08:31:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DD6731002396;
 Tue, 25 Aug 2020 08:31:50 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D4462662A4;
 Tue, 25 Aug 2020 08:31:50 +0000 (UTC)
Date: Tue, 25 Aug 2020 04:31:48 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: i iordanov <iiordanov@gmail.com>
Message-ID: <374247645.38560092.1598344308332.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAMS0tn29PAn=j36wef9C96rx_rPpCGW1EmF2WeHBAxvtZt=vKQ@mail.gmail.com>
References: <CAMS0tn29PAn=j36wef9C96rx_rPpCGW1EmF2WeHBAxvtZt=vKQ@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.11]
Thread-Topic: agent_sync_audio_playback call causes deadlock
Thread-Index: pI9SouELUwwGHA8GzvNt36Th6L5bdQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0.003
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] agent_sync_audio_playback call causes deadlock
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


> Hello,

> Opaque and aSPICE (source at
> https://github.com/iiordanov/remote-desktop-clients ) both use
> spice-gtk-0.37 now, and I found that while I was installing a VM under oVirt
> 4.4 using a Live CD (which amusingly was the LiveCD of Proxmox 6.2), when
> the Proxmox installer launches and the vdagent which starts in the installer
> starts, both Opaque and aSPICE would freeze with some audio-related debug
> messages

Is it a deadlock, a crash or the program get stuck into some loop?


> 2020-08-24 01:24:31.609 11571-11643/com.undatech.opaque D/GLib+GSpice:
> spice-gstaudio.c:631 PlaybackChannel not created yet, force start
> 2020-08-24 01:24:31.609 11571-11643/com.undatech.opaque D/GLib+GSpice:
> spice-gstaudio.c:299 audio pipeline: appsrc is-live=1 do-timestamp=0
> format=time caps="audio/x-raw,format="S16LE",channels=2,rate=48000,lay$
> 2020-08-24 01:24:31.618 11571-11643/com.undatech.opaque W/libOpenSLES:
> Leaving Object::GetInterface (SL_RESULT_FEATURE_UNSUPPORTED)
> 2020-08-24 01:24:31.621 11571-11643/com.undatech.opaque W/GLib+GLib-GObject:
> cannot register existing type 'GstStreamVolume'

Maybe some missing base GStreamer plugins?
Which plugins are installed on that system?

> 2020-08-24 01:24:31.621 11571-11643/com.undatech.opaque E/GLib+GLib-GObject:
> g_type_interface_add_prerequisite: assertion 'G_TYPE_IS_INTERFACE
> (interface_type)' failed
> 2020-08-24 01:24:31.621 11571-11643/com.undatech.opaque E/GLib+GLib:
> g_once_init_leave: assertion 'result != 0' failed
> 2020-08-24 01:24:31.626 11571-11645/com.undatech.opaque
> W/GStreamer+audio-resampler: 0:00:01.582157603 0x74d0497630
> ../gst-libs/gst/audio/audio-resampler.c:274:convert_taps_gint16_c can't find
> exact taps
> 2020-08-24 01:24:31.628 11571-11645/com.undatech.opaque I/libOpenSLES:
> Emulating old channel mask behavior (ignoring positional mask 0x3, using
> default mask 0x3 based on channel count of 2)
> 2020-08-24 01:24:31.635 11571-11645/com.undatech.opaque W/AudioTrack:
> createTrack_l(134611203): AUDIO_OUTPUT_FLAG_FAST denied by server;
> frameCount 0 -> 1764
> 2020-08-24 01:24:31.635 11571-11645/com.undatech.opaque I/AudioTrack: Need
> throttle time for OpenSLES player

> This was happening on an Android 10 arm64 device.

> I tracked the issue to the agent_sync_audio_playback () call in
> channel-main.c and introduced a patch in my project to disable both
> agent_sync_audio_playback and agent_sync_audio_record for the time being.

How did you manage to track these functions?
As far as I see these functions just schedule other functions.

> Does anybody know what could be causing this issue? Please reply-all to this
> thread. I'll try to provide whatever information you need to help.

> Thank you very much!
> iordan

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
