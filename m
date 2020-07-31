Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6022350FE
	for <lists+spice-devel@lfdr.de>; Sat,  1 Aug 2020 09:20:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65B8F6EB60;
	Sat,  1 Aug 2020 07:20:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com
 [IPv6:2607:f8b0:4864:20::833])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 978E76E0E4
 for <spice-devel@lists.freedesktop.org>; Fri, 31 Jul 2020 22:15:01 +0000 (UTC)
Received: by mail-qt1-x833.google.com with SMTP id e5so10129754qth.5
 for <spice-devel@lists.freedesktop.org>; Fri, 31 Jul 2020 15:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=S8HvVQxhnA3q5FY9Ch7NxDGrGrocxTxS+lvBTwFtrFY=;
 b=eubbbn72a2joV9XgP+kvb+GkLdRQHTk3McPYDGCDlGvQpW+phI9YtTUp6mfAMRrJVa
 tH4pgy75eK3+OWU8/2Nh9EWbBgqvOV62IPuxIY33Y92+eXfBxbIXkm59hzr7U53EFWx3
 /+PlpXqL/H3ZK/RitWoOd/pyr1galisgVlI9SgTxM4cgf1p6GXVnsmV71u3y4yuhSouY
 DJC4R7HFnJYmtRMt3CvS8ldIsVn3PzBNHK8ccLmJG0McRSjP7uN6YnwmsdxzUW1eHEQN
 0ISDIlasVEcQBOIkPdttEftkUnVqjjZNNPfLQ7gST3e3kkQcGJLhGuVAzLtgu302Jegl
 sGpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=S8HvVQxhnA3q5FY9Ch7NxDGrGrocxTxS+lvBTwFtrFY=;
 b=rD/s1RsmWLt8pNEWoBH5svuMhRks0U8yFUT9t3y1HzLPVQ883WmwcalN016Wb0Bln5
 IOYpoO1y2cNm6VTVdCFTuYOiprU11LXN5WccBq0CwRLBtMHDSHrclBka45u6ZBgWdoY8
 qJz6BmqaAZI9BuFrM3qmdc/rh6OL/wfLgiv/o0FW/70IkU9r8LzqPMQb3YUFRTOPLQxn
 co1p9BQ1a8UcXMUK+jY03pRVWS2imR7xiHnbyUo8at5Vh1LurJkhmRYz+QE3pLnz8wkz
 LYLkTYy+jZ+QvHWcSaFfFVcGWD1vsUxNuYAx8heKr3xh+S+3WPpzUjd+Q5QK4jHYU34z
 /plA==
X-Gm-Message-State: AOAM531vMRROJFFofoMYMlP6saIa/ZvgvTEefQzKGfxC9YH0pKUSqbm0
 qbFKjcNHq3uqU7S30vb8UV0X8MzRq4Dj8qsmM/8=
X-Google-Smtp-Source: ABdhPJxx2VukGLx/+FN2dc17+D5TOvCYACAZchPztvKEVcXs6AwQptox5AKGUBEln5PiyyCxZNinQVNqS/WJ87IXFS8=
X-Received: by 2002:ac8:74c7:: with SMTP id j7mr5866536qtr.254.1596233700682; 
 Fri, 31 Jul 2020 15:15:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:9122:0:0:0:0:0 with HTTP; Fri, 31 Jul 2020 15:14:59
 -0700 (PDT)
In-Reply-To: <1548334429.36780080.1596176317474.JavaMail.zimbra@redhat.com>
References: <CAM1wO0kUjpzX+G-YjaG7JfhnRAvFJ2g-n6ZQByPBMYRng6jvNA@mail.gmail.com>
 <74120881.36683304.1596096615307.JavaMail.zimbra@redhat.com>
 <CAM1wO0kdFZqRVRW4h9i_G6_Pby2_XVwoNRshZUHE-j33JqZ6vQ@mail.gmail.com>
 <20200731053131.6gucj2b3fnt6jzg6@wingsuit>
 <CAM1wO0kJHZmOkie7w1ezacKf9aMiY4vcTLuBG=y66twPiycs0w@mail.gmail.com>
 <1548334429.36780080.1596176317474.JavaMail.zimbra@redhat.com>
From: Koopa Koopa <codingkoopa@gmail.com>
Date: Fri, 31 Jul 2020 18:14:59 -0400
Message-ID: <CAM1wO0=8xdY7Pj2L2MJcC9-_2E28DBP+TNdjLfUo3rFOQJ+5Kg@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailman-Approved-At: Sat, 01 Aug 2020 07:20:52 +0000
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

On 7/31/20, Frediano Ziglio <fziglio@redhat.com> wrote:
>> On 7/31/20, Victor Toso <victortoso@redhat.com> wrote:
>> > Hi,
>> >
>> > On Thu, Jul 30, 2020 at 01:38:54PM -0400, Koopa Koopa wrote:
>> >> On 7/30/20, Frediano Ziglio <fziglio@redhat.com> wrote:
>> >> >>
>> >> >> Hi all,
>> >> >>
>> >> >> I'm trying to setup a Windows XP SP3 virtual machine with SPICE
>> >> >> folder
>> >> >> sharing. The latest version, v2.4, fails to install, as the
>> >> >> spice-webdavd service fails to start. Running spice-webdavd.exe
>> >> >> manually yields the error message "The procedure entry point
>> >> >> AcquireSRWLockExclusive could not be located in the dynamic link
>> >> >> library KERNEL32.dll", which seems to be a deficiency in using XP
>> >> >> [1].
>> >> >> After some digging, I've determined that the cause of this is that,
>> >> >> when starting the service, spice-webdavd calls g_mutex_lock from
>> >> >> Glib
>> >> >> [2], which had XP support removed a couple of years ago [3].
>> >> >>
>> >> >> Version v2.2, which comes from before the Glib change was made,
>> >> >> successfully installs and runs. I have been able to map and
>> >> >> somewhat
>> >> >> use a network drive mapped to the share, but it has broken and I
>> >> >> can't
>> >> >> seem to get it working again; Windows just says that "The network
>> >> >> path
>> >> >> http://localhost:9843 could not be found." Strangely enough, when
>> >> >> going to that address in Mypal, the share directory is displayed
>> >> >> without any issues, and I can browse it.
>> >> >>
>> >> >
>> >> > The purpose of spice-webdavd is to provide the port to be able to
>> >> > use
>> >> > webdav from the guest. If another program is able to use it I would
>> >> > try to understand why Windows cannot.
>> >> >
>> >> > Just to confirm, using netstat in the guest can you see the port
>> >> > (9843)
>> >> > in listening state?
>> >>
>> >> Yep, that port is in the listening state.
>> >>
>> >> > Is the Windows XP service running?
>> >>
>> >> Yes, it is, and I have tried restarting it.
>> >>
>> >> In further testing, the share works perfectly fine with the free
>> >> BitKinex client, but I still can't get it to work again as a mapped
>> >> drive in Windows at all. Since it continues to work without any issues
>> >> in the 3rd party programs I have tried, I'm inclined to believe that
>> >> the issue is not at all with spice-webdavd. It seems like either an XP
>> >> bug or misconfiguration of my (clean) installation. In any case, I'm
>> >> exploring other options for host/guest file sharing, as I can't seem
>> >> to resolve this.
>> >
>> > Sorry if I missed in case you have done it before, but I think
>> > you have to run the map-drive.bat script
>> >
>> > 	https://gitlab.gnome.org/GNOME/phodav/-/blob/master/bin/map-drive.bat
>>
>> Ah, yeah, I forgot to mention that script. For the short period of
>> time in which the share was working, I had gotten it to work by
>> manually adding it to File Explorer. That is, I tried running the
>> script, got error 67, and then successfully added the share from the
>> File Explorer GUI right after. The script - or, rather, the command
>> "net use * http://localhost:9843", seems to always give:
>>
>>   System error 67 occurred.
>>
>>   The network name cannot be found.
>>
>> When setting up spice-webdavd with Windows 10, I've had this error
>> occur in cases when the service is not running. In this case, though,
>> the service definitely is running, and SPICE is responding to
>> http://localhost:9843 in browsers in the guest.
>>
>> >
>> >> >> If this configuration is not supported, I totally understand. Part
>> >> >> of
>> >> >> why I want to point this out is so that, at the very least, this
>> >> >> incompatibility could be added to the Spice User Manual [4].
>> >> >> Thanks!
>> >> >>
>> >> >
>> >> > I would avoid it, Microsoft stopped supporting XP more than 6 years
>> >> > ago. Windows XP is abandonware.
>> >>
>> >> Yeah, I have a Windows 10 VM that I use for most things, it's just
>> >> that I have a program which requires Windows XP in order to function.
>> >
>> > :)
>> >
>>
>>
>
> Being abandonware is difficult to find old updates and fixes.
> You can try
> https://download.cnet.com/Software-Update-for-Web-Folders-KB907306/3000-2064_4-10753425.html
> ?

This does not seem to fix the issue. In further research, I have found
a couple [1] [2] of support threads that very closely match my issue.
The Server Fault thread makes me think that this is a bug in Windows
XP, and that this issue is very unrelated to spice-webdavd, as it has
the same issues I'm having, without any virtualization. Since I *did*
have it working once, and then never again, I may try with an install
of XP without updates, for troubleshooting purposes. If that doesn't
yield any results, if the struggles of that person from 2011 are any
indication, this may be a lost cause for XP ;)

[1] https://serverfault.com/q/308781
[2] https://bugzilla.redhat.com/show_bug.cgi?id=1733947

>
> Frediano
>
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
