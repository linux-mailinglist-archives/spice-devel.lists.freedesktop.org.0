Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A13586CDD
	for <lists+spice-devel@lfdr.de>; Mon,  1 Aug 2022 16:31:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAD49CB151;
	Mon,  1 Aug 2022 14:29:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F197FC86C9
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Aug 2022 14:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1659363529;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sGFf9xH3JzsGialcYxGGoiBRBu/sCyWdMUBYUlv4ZPA=;
 b=f4MnUDG/yjZqOeZsGyZCGWwVWUHQl1lyq2X75UXXd35GnYSqepIrF6oYYUm5Titk4YW9db
 cCnLSNPUw8KlW8vgQKrSfUzHWmd1SW1iJM35B8f/DG+NVlPRCeZy5aLtFA/R4CnwZyW4Gl
 31kqweFIET6K3mAtQYSvmrfKOz+sk9A=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-52-BKI5I9LQNne4KtCbqbhL7w-1; Mon, 01 Aug 2022 10:18:47 -0400
X-MC-Unique: BKI5I9LQNne4KtCbqbhL7w-1
Received: by mail-ed1-f72.google.com with SMTP id
 c9-20020a05640227c900b0043ad14b1fa0so7238055ede.1
 for <spice-devel@lists.freedesktop.org>; Mon, 01 Aug 2022 07:18:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=sGFf9xH3JzsGialcYxGGoiBRBu/sCyWdMUBYUlv4ZPA=;
 b=1fgoXNfTH2Xzpm7oYVKnhP4us1M9YT3LNal4sGD6+oLqc05cTTVAjJJU85R7ThMNeH
 JiaKb7lR7q8wvjtKBxdWUxueQ7SKOKRiuhYn4bIFLXfuyfII3BUHkd8oAnPApJRwNgta
 Wx5WD9G4DDtUtpcgVScb2gNiCTn2EeIfmSJcMuc2gcw3aa5QnFmUroXi8paomOwl13dD
 ZhcXiimYSA9klx9xk8JPjJpGy4raZr+RFP0GPdibT9lVLsVWUNnUlkcWvedS8Dqb2yx9
 Gj96GYxAKNQzq8O2seq/JeB5XUhCA8yoVaCfAP7Th/tD/Ejk02oPewZPBx6dGMFaReba
 Belw==
X-Gm-Message-State: AJIora8zB77L1nlEjCeI+4MS4ABsFVY+zbqH/Hug0VczFP0JuUjK6i40
 ROirbQfvIO7KgEbeciUdr1lHhXfNXWyPqpwPHXUPtviStIYIAvFR6AlwLolHVSi1BPl3FwrWeal
 VKExkOjuryG0RdJPkJ+SyRD16i6GA7Vc=
X-Received: by 2002:a17:907:75f5:b0:72b:40da:a7cd with SMTP id
 jz21-20020a17090775f500b0072b40daa7cdmr12761717ejc.662.1659363526307; 
 Mon, 01 Aug 2022 07:18:46 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1tcQbypo+4ajTbqvC5ZscbRSE5/esQ6TFQg626oP48z8Qv2S9ynXuXLheGisdK3JFRDfaTUmg==
X-Received: by 2002:a17:907:75f5:b0:72b:40da:a7cd with SMTP id
 jz21-20020a17090775f500b0072b40daa7cdmr12761703ejc.662.1659363526070; 
 Mon, 01 Aug 2022 07:18:46 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 21-20020a170906329500b0072b3464c043sm5252854ejw.116.2022.08.01.07.18.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Aug 2022 07:18:45 -0700 (PDT)
Message-ID: <b5f090ff-0083-c8c7-fa95-afa68e232772@redhat.com>
Date: Mon, 1 Aug 2022 16:18:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
To: Victor Toso <victortoso@redhat.com>,
 James Miller <jamesstewartmiller@gmail.com>
References: <CAKJvYZHs-ZZHq0py8BT5ae=EMUdghywz5WzNvuZzTYKvc5cJWA@mail.gmail.com>
 <20220729094755.nlyc3mn2hkvxg42y@tapioca>
 <CAKJvYZFznkEwgT+dOhD3Wazbe4G21DaCu3027JVP3z3dtOis7A@mail.gmail.com>
 <20220801141301.mmhoqwopvpdne54e@tapioca>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20220801141301.mmhoqwopvpdne54e@tapioca>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Spice-devel] irc
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi,

On 8/1/22 16:13, Victor Toso wrote:
> Hi,
> 
> CC'ing the list and Hans.
> 
> On Sat, Jul 30, 2022 at 02:55:53PM +0100, James Miller wrote:
>> Hi Victor, thanks for getting back to me.
>> Currently I have to echo 0 to the path under sys, and then
>> manually select the device to redirect in virtmanager and then
>> return to the terminal on the host and echo 1 to the same path.
> 
> Ah, okay, so it is a three-step process: echo 0 to $path, then
> SPICE redirection, then echo 1 $path....  if you want to do it
> for several VMs for example, it should be very annoying.
> 
>> I don't mind this so much, but I have added the alias to the
>> fedora help page on yubikeys, and was wondering if there is any
>> programmatic way of achieving the redirection in the alias
>> itself.  ie the alias would echo 0, handle the redirection, and
>> then echo 1...
> 
> I don't have such device to test but I wonder why that is needed
> at all. What is the path you have to echo? Perhaps that can be
> achievable in a different way with with libusb or some specific
> driver's config that will get called when SPICE's redirection
> takes place.
> 
> Hans, have you tried this kind of device before?

No not really, also I have the feeling that I'm missing a lot
of context here. Echo 1/0 to which sysfs file for example ?

Also is this using the usbredirection built into the SPICE client(s),
or is this using QEMU's host usbredirection?

Regards,

Hans


> 
>> I wondered if spice exposed a useful set of commands to achieve
>> this with, perhaps via the spice-vdagentd socket... (I
>> obviously know virtually nothing about how spice works...)...
> 
> No, no API like that is exposed because for the set of devices
> we redirect, it isn't needed. Let's see if we can workaround this
> in the client OS first (e.g: configs) otherwise we can think
> something in spice-gtk (probably QEMU too if you try to usb
> pass through?)
> 
> Cheers,
> Victor
> 
>> On Fri, 29 Jul 2022, 10:48 Victor Toso, <victortoso@redhat.com> wrote:
>>
>>> Hi,
>>>
>>> On Fri, Jul 29, 2022 at 09:56:21AM +0100, James Miller wrote:
>>>> Hi,  I wonder if the irc address on the website contact page (
>>>> https://www.spice-space.org/contact.html) needs updating?
>>>>
>>>> I can't find irc.gnome.org - I think they now use matrix.
>>>>
>>>> I want to know if there is anyway to manage usb-redirection
>>>> to a libvirt kvm vm from the command line.  In particular,
>>>> I want to redirect a usb key (yubikey) to the virt-manager
>>>> managed vm, from the command line, as I need to deauthorise
>>>> the key (echoing 0 to a file under a path below sys) before
>>>> redirecting it.
>>>
>>> Ah, interesting, never tried this kind of device.
>>>
>>> Wouldn't it simply work if you do echo 0 and the do the
>>> redirection with virt-manager or remote-viewer's UI?
>>>
>>> Cheers,
>>> Victor

