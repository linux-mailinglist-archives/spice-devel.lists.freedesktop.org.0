Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD8A233EE9
	for <lists+spice-devel@lfdr.de>; Fri, 31 Jul 2020 08:10:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA6286E9D6;
	Fri, 31 Jul 2020 06:10:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com
 [IPv6:2607:f8b0:4864:20::835])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D8526E088
 for <spice-devel@lists.freedesktop.org>; Fri, 31 Jul 2020 05:58:25 +0000 (UTC)
Received: by mail-qt1-x835.google.com with SMTP id t23so19066718qto.3
 for <spice-devel@lists.freedesktop.org>; Thu, 30 Jul 2020 22:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=bLkqGpc2JRcxPqdOlFmwtJ9bIAY3ZXGaf+1ssUrn5Rs=;
 b=D2aJGxUjXM/aNlYlbgR3ewRhRVBe02caAVMemdqKPlPLZ2/Iv33gOzJ2kFbApUNwCc
 Ucvgj3fiQuM/LfRXItr62kwAenfYWML7Pjioke4qIkpKJdJ5dgktO1vKltelhVdvKV8R
 jE+gNrsJzAQQJjltEp5x6cBoRbVEArUHB/voECKyBkTZqRUXyjY5S5hcgYHvefbFCboO
 kqZEH236rj7zErSRnUUpoHWo/tJqxsVcdd8Q2d5XhPm2OfGUxcHmUwRC6I9NsmaN/LjI
 tQeajztioOeWFiPSJmXxGf1TTy46YIrIJy3dlnvASb8HiiEBpoBkKkDnJF6AteGIX6fA
 7fPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=bLkqGpc2JRcxPqdOlFmwtJ9bIAY3ZXGaf+1ssUrn5Rs=;
 b=jNZ23OK7+XdDckP7SfdCQckt3ZTbXZ1WUDM4tGvoR37GvaUC6KFmpzoarYIl5rKQET
 VhUN3wwe15urdUSVmr5hNPMQ81BaO2+2Og4AokfPKE5rf/TRd4LI7fsSJNhtjKy/DgZp
 IAZCld4oHVSX9xRYCdHxEnXz2PUEJJrFz0B7x2oYOMl0wa7PLG0vR6PdWIh5VqPm9aop
 3kQlxdYEdM0De3ywKu4s8S3nZIKFGsJe07AvVVRqlmo6oKHppKH9wDM3CYYSYAovTTUR
 DramfpGw7/C3SQ777OZWleVIcg7/2eJVCltiirH1Rq2BhHrnSCcaR7H+oA+YKwspjx3c
 CZbw==
X-Gm-Message-State: AOAM532D7xuwg+WFzvw6maYolDDZ/4sO3O80SlLwzXict7Zk589+3PBC
 ZUn3lYQOgYD2cSYs/YCD7YbFJ4NnaCNen45R3fqJp/+0A+Y=
X-Google-Smtp-Source: ABdhPJxXCDApqqEVHRBJr4oesFROvH3PEdLGT4YYn8ayudep5sZtsAq+uomVLt92DB9wrZVGuj8UCIrTfRPlyvwolqk=
X-Received: by 2002:ac8:428f:: with SMTP id o15mr1963061qtl.213.1596175104066; 
 Thu, 30 Jul 2020 22:58:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:4494:0:0:0:0:0 with HTTP; Thu, 30 Jul 2020 22:58:23
 -0700 (PDT)
In-Reply-To: <20200731053131.6gucj2b3fnt6jzg6@wingsuit>
References: <CAM1wO0kUjpzX+G-YjaG7JfhnRAvFJ2g-n6ZQByPBMYRng6jvNA@mail.gmail.com>
 <74120881.36683304.1596096615307.JavaMail.zimbra@redhat.com>
 <CAM1wO0kdFZqRVRW4h9i_G6_Pby2_XVwoNRshZUHE-j33JqZ6vQ@mail.gmail.com>
 <20200731053131.6gucj2b3fnt6jzg6@wingsuit>
From: Koopa Koopa <codingkoopa@gmail.com>
Date: Fri, 31 Jul 2020 01:58:23 -0400
Message-ID: <CAM1wO0kJHZmOkie7w1ezacKf9aMiY4vcTLuBG=y66twPiycs0w@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
X-Mailman-Approved-At: Fri, 31 Jul 2020 06:10:34 +0000
Subject: Re: [Spice-devel] Webdav on Windows XP
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

On 7/31/20, Victor Toso <victortoso@redhat.com> wrote:
> Hi,
>
> On Thu, Jul 30, 2020 at 01:38:54PM -0400, Koopa Koopa wrote:
>> On 7/30/20, Frediano Ziglio <fziglio@redhat.com> wrote:
>> >>
>> >> Hi all,
>> >>
>> >> I'm trying to setup a Windows XP SP3 virtual machine with SPICE folder
>> >> sharing. The latest version, v2.4, fails to install, as the
>> >> spice-webdavd service fails to start. Running spice-webdavd.exe
>> >> manually yields the error message "The procedure entry point
>> >> AcquireSRWLockExclusive could not be located in the dynamic link
>> >> library KERNEL32.dll", which seems to be a deficiency in using XP [1].
>> >> After some digging, I've determined that the cause of this is that,
>> >> when starting the service, spice-webdavd calls g_mutex_lock from Glib
>> >> [2], which had XP support removed a couple of years ago [3].
>> >>
>> >> Version v2.2, which comes from before the Glib change was made,
>> >> successfully installs and runs. I have been able to map and somewhat
>> >> use a network drive mapped to the share, but it has broken and I can't
>> >> seem to get it working again; Windows just says that "The network path
>> >> http://localhost:9843 could not be found." Strangely enough, when
>> >> going to that address in Mypal, the share directory is displayed
>> >> without any issues, and I can browse it.
>> >>
>> >
>> > The purpose of spice-webdavd is to provide the port to be able to use
>> > webdav from the guest. If another program is able to use it I would
>> > try to understand why Windows cannot.
>> >
>> > Just to confirm, using netstat in the guest can you see the port (9843)
>> > in listening state?
>>
>> Yep, that port is in the listening state.
>>
>> > Is the Windows XP service running?
>>
>> Yes, it is, and I have tried restarting it.
>>
>> In further testing, the share works perfectly fine with the free
>> BitKinex client, but I still can't get it to work again as a mapped
>> drive in Windows at all. Since it continues to work without any issues
>> in the 3rd party programs I have tried, I'm inclined to believe that
>> the issue is not at all with spice-webdavd. It seems like either an XP
>> bug or misconfiguration of my (clean) installation. In any case, I'm
>> exploring other options for host/guest file sharing, as I can't seem
>> to resolve this.
>
> Sorry if I missed in case you have done it before, but I think
> you have to run the map-drive.bat script
>
> 	https://gitlab.gnome.org/GNOME/phodav/-/blob/master/bin/map-drive.bat

Ah, yeah, I forgot to mention that script. For the short period of
time in which the share was working, I had gotten it to work by
manually adding it to File Explorer. That is, I tried running the
script, got error 67, and then successfully added the share from the
File Explorer GUI right after. The script - or, rather, the command
"net use * http://localhost:9843", seems to always give:

  System error 67 occurred.

  The network name cannot be found.

When setting up spice-webdavd with Windows 10, I've had this error
occur in cases when the service is not running. In this case, though,
the service definitely is running, and SPICE is responding to
http://localhost:9843 in browsers in the guest.

>
>> >> If this configuration is not supported, I totally understand. Part of
>> >> why I want to point this out is so that, at the very least, this
>> >> incompatibility could be added to the Spice User Manual [4]. Thanks!
>> >>
>> >
>> > I would avoid it, Microsoft stopped supporting XP more than 6 years
>> > ago. Windows XP is abandonware.
>>
>> Yeah, I have a Windows 10 VM that I use for most things, it's just
>> that I have a program which requires Windows XP in order to function.
>
> :)
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
