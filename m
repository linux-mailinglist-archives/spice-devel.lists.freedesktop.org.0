Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC6747F488
	for <lists+spice-devel@lfdr.de>; Sat, 25 Dec 2021 22:48:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0081810E11B;
	Sat, 25 Dec 2021 21:48:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com
 [IPv6:2607:f8b0:4864:20::233])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3096210E11B
 for <spice-devel@lists.freedesktop.org>; Sat, 25 Dec 2021 21:48:50 +0000 (UTC)
Received: by mail-oi1-x233.google.com with SMTP id r20so17181698oie.0
 for <spice-devel@lists.freedesktop.org>; Sat, 25 Dec 2021 13:48:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Cz+xU9qfc+kXb+5Fiih3svY+8C7xtoir9JL0SZ6Ot38=;
 b=J4zuSkOYLx0KTUloMGpQZVsvLvZC/8HItVNO9cDO7WbgDDGS+4GipHAfAbDupKly/j
 jxjllzHbSgHGhozhk2hJQBPqU+bgvS440rKG4FzbWfk0c3m1fUsYTMqObburf8yknXpu
 FC27bd8HUfDep13aYEeX5NZ5UJhUDAv0tjVtinI0YKE3uuGu3pC4gazJubcbnlkNPIaD
 plYa4a+FcT60s28Ov7rEbP6hQLlrEIDSXOcCaD/gI/ykivwx/WMMKPZBBlxdUBXToHMA
 B8qotxKP0ilM+k+AHCLQ+bnK0CyjX2zEHUaKm91ieuQbWlixgHwEj8UygXF067xlw2LW
 ePxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Cz+xU9qfc+kXb+5Fiih3svY+8C7xtoir9JL0SZ6Ot38=;
 b=iQtRF4XbKGlZw95SdB6oHEo3DLXIjHHrYjY7Zu3qsWbHx31tyxwsmnJIPsOiiAwu72
 3qddxVs3+0cSsKRjb4Jfn/3DHU/BvmTf7j0NPyVwjf/LgVMOip2hUIw4ZlOWqVmulKJS
 0g9afxY15FYCBu8QWhkTriOh+FdgQ6ss+YN23+nH9Sf1gHsMbHnzrbMHKMgTPKzDQfou
 anxrCt4K4jpQGmnks49M8lSXzfa6ZArZ8FchVxJnrDl33o8EgfqBmoJzNwhcMVYaWj9x
 eiI6PUf0yFPOci9Wwtke+ve/U8pHOEcmDZp0ImrE/9VkYa54T3b1ZvsCc4jSoo43VE9F
 JBpg==
X-Gm-Message-State: AOAM53206whV9M3pGJ6gkedRG/srMDA/qbGpmtrvoq5oq39NdJrgaLr7
 m8gPSGyzAs5gNgJoh9pB2appCV+JeHrhlRAFYIY=
X-Google-Smtp-Source: ABdhPJyk85NTQavbAK3Zx0VzJTvZ5QzH9HmBjwLTz7zE60Lu6a+8Hoq0s7jqGIdFSFxcjaB2WrEdfPPDI7HRbCGE8d8=
X-Received: by 2002:a05:6808:13d5:: with SMTP id
 d21mr8886463oiw.175.1640468929374; 
 Sat, 25 Dec 2021 13:48:49 -0800 (PST)
MIME-Version: 1.0
References: <CAMS0tn14OvBAL3u-0WfnD0DpJFv1HNnq9GVX=oQRgOH0o2678A@mail.gmail.com>
 <CAHt6W4e2_AyX_G6xe=c=_7-gABb9m=yJJsfm5XYs=JbiuYPDiQ@mail.gmail.com>
In-Reply-To: <CAHt6W4e2_AyX_G6xe=c=_7-gABb9m=yJJsfm5XYs=JbiuYPDiQ@mail.gmail.com>
From: i iordanov <iiordanov@gmail.com>
Date: Sat, 25 Dec 2021 16:48:13 -0500
Message-ID: <CAMS0tn1OMgQJP92aix6F1QwM+RuyN6=rVRu-WuO9BDy-UuzDvg@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] error: No free USB channel
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hey Frediano,

Thanks for responding - so I take it this is a server-side setting
(how many channels are attached to the VM)?

Also, is there a spice-gtk API that may be used to obtain the number
of available USB channels at any given time? I.e. the UI of any client
application should have a way to inform the user how many "ports" are
still available at any point, right?

Thanks!
iordan

On Fri, Dec 24, 2021 at 4:05 AM Frediano Ziglio <freddy77@gmail.com> wrote:
>
> Il giorno gio 23 dic 2021 alle ore 23:38 i iordanov <iiordanov@gmail.com>=
 ha scritto:
>>
>> Hi guys,
>>
>> During my testing I've been unable to connect more than 2 USB devices
>> at a time - could you please help me figure out why that's happening?
>>
>> The backend starts returning error with message "No free USB channel",
>> but I can't see how to tune the number of USB channels available!
>>
>> 2021-12-23 15:27:52.608 29721-29760/com.iiordanov.aSPICE
>> D/android-service: connect_cb: start
>> 2021-12-23 15:27:52.608 29721-29760/com.iiordanov.aSPICE
>> I/android-service: connect_cb: successfully redirected device
>> 2021-12-23 15:28:00.499 29721-29760/com.iiordanov.aSPICE
>> D/android-service: connect_cb: start
>> 2021-12-23 15:28:00.499 29721-29760/com.iiordanov.aSPICE
>> I/android-service: connect_cb: successfully redirected device
>> 2021-12-23 15:28:03.582 29721-29760/com.iiordanov.aSPICE
>> D/android-service: connect_cb: start
>> 2021-12-23 15:28:03.582 29721-29760/com.iiordanov.aSPICE
>> E/android-service: connect_cb: failed to redirect device, error: No
>> free USB channel
>> 2021-12-23 15:28:06.385 29721-29760/com.iiordanov.aSPICE
>> D/android-service: connect_cb: start
>> 2021-12-23 15:28:06.385 29721-29760/com.iiordanov.aSPICE
>> E/android-service: connect_cb: failed to redirect device, error: No
>> free USB channel
>> 2021-12-23 15:28:08.634 29721-29760/com.iiordanov.aSPICE
>> D/android-service: connect_cb: start
>> 2021-12-23 15:28:08.634 29721-29760/com.iiordanov.aSPICE
>> E/android-service: connect_cb: failed to redirect device, error: No
>> free USB channel
>>
>> Your help is very appreciated.
>>
>> Thanks!
>> iordan
>>
>
> Hi,
>   this is expected. Every USB channel allow to attach one USB device. Is =
like having 2 physical USB ports on your computer. If you don't use an HUB =
you can attach only 2 USB physical devices. Currently there's no software U=
SB hub so one USB device takes one USB channel and by default only 2 USB ch=
annels are attached to the VM.
>
> Frediano



--=20
The conscious mind has only one thread of execution.
