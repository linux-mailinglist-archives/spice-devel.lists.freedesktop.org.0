Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D80307F70
	for <lists+spice-devel@lfdr.de>; Thu, 28 Jan 2021 21:21:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 765256EA10;
	Thu, 28 Jan 2021 20:21:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 254A06EA10
 for <spice-devel@lists.freedesktop.org>; Thu, 28 Jan 2021 20:21:35 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id d4so3985086plh.5
 for <spice-devel@lists.freedesktop.org>; Thu, 28 Jan 2021 12:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eoQYDPybAIcillnmAGMZfbKeaGa0yj+EiJXkM7Jo2Mw=;
 b=fAmNynw+6gV5e9CsUH1QGuPUfzQDyuxqcpldnOroGYQZ3gu11dfhXn0QUrgdAJuOl+
 4VLNdZcuBEwY1OXyX5ulzqLK/vPoruZ+hAM5zGZitXjoO+CFEUNmcL8tdG1qfRbFFm0U
 j/ezFGa7MJiuhX4J3WtQUTF6/zAGYSoqeWs+qgn7cntI0YBoANmWwY2f4+SP3JSr7izy
 tx0VPQNTU77dVn2YpW1ulE299pxYW0qIf1qgIl22obDjYQWB5foMkaBKXNx4GLUwJVHe
 YV4czqJ983di87yj2JATO2DSSlZEpCKFEYwtlGkTXvVYNuo8TBQUgjCZtjLLelSxUjHB
 TL1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eoQYDPybAIcillnmAGMZfbKeaGa0yj+EiJXkM7Jo2Mw=;
 b=cuPTk0vJAKsd0SArnrVgleeSWvSSb8tJJZQ7swFtHMdhEoiqRUf3/1HvzDKWQTn7Ru
 0zI36Zc8QB9NaYOUTNq+ghtoYEppuqJ0SsuKDkflUs+XyISBPZIQuRF1KdLshhQgt0Eb
 ueooAOZmZDWfJJLb29VgvIRuHggLKwKP4o2fAsehLTmqVmky5O1iEbB/jdpAE3UPa0uo
 NzSdBkY4IV7RawRpb/1UZj/ugZcjmnTEnpHhTDmbXMh6cmddx070UsY2AEfLnxOjva76
 CohRMc6cQvxo6Udb5LHehIRmD7svjl55NF01Zkqzp2OSW+MVEjm6aDsm+M3E7FcUTOub
 bJRQ==
X-Gm-Message-State: AOAM530XMUuwxnE8tJjCP5Qyk39ndnVVziEpzqX7AkdGxV4W6G4dvxou
 4KkKk7BQg92PDvz2Jdhc4rXDsj2gzLY5FOjb/YM=
X-Google-Smtp-Source: ABdhPJwHrZiGC7YW9VId1Jna1OMmFu1YGNtmNZk7PSMNHCKqH6Vrl+sk66eeT8OjVvMmqfV1GSdN7t1VIYX+lca8o/0=
X-Received: by 2002:a17:90b:370d:: with SMTP id
 mg13mr1032825pjb.161.1611865294730; 
 Thu, 28 Jan 2021 12:21:34 -0800 (PST)
MIME-Version: 1.0
References: <CA+5jrfnNQLRPxJneD_mYA1kB8fio97Doce4ZXe_ZX18hfkQ37A@mail.gmail.com>
In-Reply-To: <CA+5jrfnNQLRPxJneD_mYA1kB8fio97Doce4ZXe_ZX18hfkQ37A@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 28 Jan 2021 20:21:23 +0000
Message-ID: <CAHt6W4fgSB-5uBmfGgw2SWraRF+kp6PZpoZPQRuUwwm0w=MhFw@mail.gmail.com>
To: lx <lxlenovostar@gmail.com>
Subject: Re: [Spice-devel] [spice-devel]Sounds abnormal
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

Il giorno gio 28 gen 2021 alle ore 06:28 lx <lxlenovostar@gmail.com> ha scritto:
>
> Hi:
>    I play audio in the virtual machine, and the local sound sounds abnormal. How to debug it ?
>

Enabling messages is a good way to start debugging.
But what do you mean by abnormal? Have glitches? Interruptions?
Different frequency?

Frediano

> Additionally info:
> libvirt-5.2.0, qemu-3.1.0, spice-0.14.0, spice-protocol-0.12.15, usbredir-0.8.0,spice-guest-tools-latest.exe
> virtual Machine Viewer 9.0-256
>
> I run the virtViewer in this way:
> #############################################################
> C:\Program Files\VirtViewer v9.0-256\bin>set G_MESSAGES_DEBUG=all
>
> C:\Program Files\VirtViewer v9.0-256\bin>remote-viewer.exe --spice-debug
> #############################################################
>
> The log is:
> #############################################################
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.261: ../src/decode-glz.c:349 decode_header: 256x256, id 325, ref 278
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.343: ../src/decode-glz.c:349 decode_header: 256x256, id 326, ref 278
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.402: ../src/decode-glz.c:349 decode_header: 256x256, id 327, ref 278
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.452: ../src/decode-glz.c:349 decode_header: 256x256, id 328, ref 278
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.517: ../src/decode-glz.c:349 decode_header: 256x256, id 329, ref 278
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.560: ../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max latency 0:00:01.600725624, live 1
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.562: ../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:32.565: ../src/spice-session.c:2413 set mm time: 1220884055
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.560: ../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max latency 0:00:01.600725624, live 1
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.562: ../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.563: ../src/spice-session.c:2413 set mm time: 1220885051
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.564: ../src/spice-session.c:2416 spice_session_set_mm_time: mm-time-reset, old 1220885053, new 1220885051
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:33.564: ../src/channel-display.c:1532 display-2:0: display_session_mm_time_reset_cb
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.559: ../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max latency 0:00:01.600725624, live 1
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.563: ../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.567: ../src/spice-session.c:2413 set mm time: 1220886053
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.570: ../src/spice-session.c:2416 spice_session_set_mm_time: mm-time-reset, old 1220886054, new 1220886053
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:34.576: ../src/channel-display.c:1532 display-2:0: display_session_mm_time_reset_cb
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.560: ../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max latency 0:00:01.600725624, live 1
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.570: ../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.574: ../src/spice-session.c:2413 set mm time: 1220887049
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.579: ../src/spice-session.c:2416 spice_session_set_mm_time: mm-time-reset, old 1220887059, new 1220887049
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:35.584: ../src/channel-display.c:1532 display-2:0: display_session_mm_time_reset_cb
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:36.560: ../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max latency 0:00:01.600725624, live 1
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:36.562: ../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:36.562: ../src/spice-session.c:2413 set mm time: 1220888051
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:37.560: ../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max latency 0:00:01.600725624, live 1
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:37.560: ../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:37.562: ../src/spice-session.c:2413 set mm time: 1220889053
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.560: ../src/spice-gstaudio.c:264 got min latency 0:00:00.600725624, max latency 0:00:01.600725624, live 1
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.562: ../src/channel-playback.c:462 playback-5:0: playback set_delay 600 ms
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.565: ../src/spice-session.c:2413 set mm time: 1220890055
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.568: ../src/spice-session.c:2416 spice_session_set_mm_time: mm-time-reset, old 1220890056, new 1220890055
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:38.571: ../src/channel-display.c:1532 display-2:0: display_session_mm_time_reset_cb
> (remote-viewer.exe:47940): GSpice-DEBUG: 14:22:39.469: ../src/spice-session.c:2413 set mm time: 1220891167
> #############################################################
>
> Thank you
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
