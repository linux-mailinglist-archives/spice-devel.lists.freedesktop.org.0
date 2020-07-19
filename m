Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB637225425
	for <lists+spice-devel@lfdr.de>; Sun, 19 Jul 2020 22:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA8F46E14F;
	Sun, 19 Jul 2020 20:40:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A8696E14F
 for <spice-devel@lists.freedesktop.org>; Sun, 19 Jul 2020 20:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595191243;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gfraUlvxDwPnbRVL186taU7qlHWX45VBbjm/+lvTwhE=;
 b=PxFUQEpEveW2jnlLNhQCqaBj8/b22+th7r97vl4nPPPoCIan44AniZLYyU8KLryITo77G4
 N8fcXT89Dchksrg+HOiopJj214HUnZRlUlL1GK35g7jcVFHYrG7DKbHh5EeCawOecbapMO
 H3Nw/Kk3Z2U/S6oHxiCsbZN2VELtsFM=
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-220-fJLNmy4rOLiUmSdHSelPog-1; Sun, 19 Jul 2020 16:40:39 -0400
X-MC-Unique: fJLNmy4rOLiUmSdHSelPog-1
Received: by mail-il1-f199.google.com with SMTP id c12so9677305ilf.5
 for <spice-devel@lists.freedesktop.org>; Sun, 19 Jul 2020 13:40:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gfraUlvxDwPnbRVL186taU7qlHWX45VBbjm/+lvTwhE=;
 b=gAwUDcm9FcnjlSrPOzi0NOpjZTp4A3Z6j00LBhDZFkDPyEdvna4pdWCOuW2Q3S3nvN
 qsuH79CUqUG+nYS4VOJNGSfRx0YsyWUojKuAKUqdifaUOe6tB+dyxYjicU12dLVUAb/l
 uU0x/RlLlgRC+rgiiLjxpvspeYw1as49YMh8Q89a/ap/XrxvLXTdG6PfvFgN8Uye5lGC
 KmDIKo6A9W6KLPJZH01olw38EYVLRp1FobpF/SUwooci9nLpPEMzfjy/3oc5KF8eYV8U
 cLrHG47j0+ewGASSoarO0GsJTiY/lbGk+6v7mPNBDXCS0EZ6daJvlSLm+RCW6624tKtW
 /vCQ==
X-Gm-Message-State: AOAM532Bw8m4EcnFOugRpfRGH/RncppmYpSlKZbQYxFa/jtRBY0ZVRf6
 FQ+QIXP2CsfK8RmwQ0FKN8eGZclniERFlEXL4rScBzR6D6c2lsWr6gDWog6xcY/ERnE5kGB66Sh
 Lkg8Ei1IE0g5pm4O0Y6Kz52yldVWZaW8QRIsGJ1tNTqzQ048=
X-Received: by 2002:a02:5d49:: with SMTP id w70mr22840017jaa.16.1595191238804; 
 Sun, 19 Jul 2020 13:40:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz/CBWwiAqe0vUNZHQMEhNk8wV41g9qGKd8r+YTaTTBCBTkyJ9qFoxc6c277MOENuEuEdQBLsGF7ZK6iMIoDmQ=
X-Received: by 2002:a02:5d49:: with SMTP id w70mr22840000jaa.16.1595191238387; 
 Sun, 19 Jul 2020 13:40:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAM1wO0mtiMoPAmH89pbCLQPS215fd0Nyq9E79TZDRyHNUHApfQ@mail.gmail.com>
 <CAH=CeiBUGdfSnCmAbq5Cy-wQw-tsLvc+aMEvOKYLcfYbHWA2Vw@mail.gmail.com>
 <CAM1wO0nNXJ2VJOTjxEFWmo6kPLiEm7wtM15iDpbDobDmZmJ17Q@mail.gmail.com>
 <CAH=CeiDXmK5_VHPpvEhTgPXWe=TOcsZRHQjC1NwaYcLgqD_rWg@mail.gmail.com>
 <CAM1wO0m=DMO14efGegCufMmurqc74TXZrFZ_NJAWPXbhZGpY3A@mail.gmail.com>
In-Reply-To: <CAM1wO0m=DMO14efGegCufMmurqc74TXZrFZ_NJAWPXbhZGpY3A@mail.gmail.com>
From: Jakub Janku <jjanku@redhat.com>
Date: Sun, 19 Jul 2020 22:40:27 +0200
Message-ID: <CAH=CeiBG-spBwAxZSuQwPjoAUDL-O54XwjYv4_T45YDLgU3dsA@mail.gmail.com>
To: Koopa Koopa <codingkoopa@gmail.com>
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

On Sun, Jul 19, 2020 at 10:04 PM Koopa Koopa <codingkoopa@gmail.com> wrote:
>
> On 7/19/20, Jakub Janku <jjanku@redhat.com> wrote:
> > On Sun, Jul 19, 2020 at 6:12 PM Koopa Koopa <codingkoopa@gmail.com> wrote:
> >>
> >> On 7/19/20, Jakub Janku <jjanku@redhat.com> wrote:
> >> > Hi!
> >> >
> >> > On Sun, Jul 19, 2020 at 9:34 AM Koopa Koopa <codingkoopa@gmail.com>
> >> > wrote:
> >> >>
> >> >> Hi all,
> >> >>
> >> >> I'm looking to share a folder between my Arch Linux host and a Windows
> >> >> 10
> >> >> guest, and SPICE's folder sharing with webdav seems to be the best
> >> >> option
> >> >> for me. I've set up the QEMU devices that webdav needs, and installed
> >> >> the
> >> >> Windows service. I have the drive mapped, and am able to navigate the
> >> >> host
> >> >> folder (apart from the occasional "Windows cannot access
> >> >> \\localhost@9843\DavWWWRoot\" that doesn't occur again), and copy
> >> >> files
> >> >> from the host to the guest. When trying to copy a new file (with data)
> >> >> or
> >> >> write to an existing file from the guest, though, the application
> >> >> (e.g.
> >> >> File Explorer, or other programs which save files) hangs for a little
> >> >> bit,
> >> >> before the transaction fails. For File Explorer, it displays "Error
> >> >> 0x80070021: The process cannot access the file because another process
> >> >> has
> >> >> locked a portion of the file."
> >> >>
> >> >> This is the output of remote-viewer:
> >> >>   (remote-viewer:16120): GSpice-WARNING **: 12:58:46.205: Warning no
> >> >> automount-inhibiting implementation available
> >> >
> >> > As you say, this happens in non-GNOME environments. But it's related
> >> > to usb redirection, not webdav.
> >> >>
> >> >>   (remote-viewer:16120): phodav-WARNING **: 12:58:57.910:
> >> >> (../phodav-2.4/libphodav/phodav-method-propfind.c:70):prop_resourcetype:
> >> >> code should not be reached
> >> >>
> >> >>   (remote-viewer:16120): phodav-WARNING **: 12:59:04.714:
> >> >> (../phodav-2.4/libphodav/phodav-method-propfind.c:70):prop_resourcetype:
> >> >> code should not be reached
> >> >
> >> > I know that these warnings can happen for example if the shared folder
> >> > contains a broken symlink. Is that your case? Basically anything in
> >> > the shared folder that isn't a regular file or a directory can emit
> >> > this warning, but it shouldn't cause the described issues afaik.
> >>
> >> Yep, that is the case. I had a broken symlink in the root directory of
> >> my share, which explains why that error only occurred in that
> >> directory. I've removed that file, and that error no longer occurs.
> >
> > Great, so that makes this one clear.
> >>
> >> As for the main issue, upon some more testing, I've determined that:
> >> - I can copy files to the root of a $HOME share.
> >> - I cannot copy files to a mounted device within the $HOME share.
> >> - I cannot copy files to a share created at or within the mountpoint.
> >>
> >> The drive that my $HOME is on is ext4, and the mounted device (in
> >> fact, there are two of these in my home directory) is NTFS.
> >
> > How frequent is this issue? Can you copy larger files?
>
> It can be quite inconsistent. Currently, with the $HOME share -
> without directly interacting with the mountpoint, I'm experiencing
> either not being to copy to or from the host. Sometimes one works,
> sometimes neither works. This seems to function the same between
> remote-viewer and spicy.

Ok, I suspected that it might be an issue with timing, so it makes
sense that it's inconsistent.
>
> With regards to file size, I have been using a 1.85KB CSV file and
> 11.7KB PNG file. Trying a 256MB MKV file, it is able to transfer form
> the guest to the host (that is, when that direction is working with
> other files too), but never from the host to the guest. Copying the
> exact file that I had copied from the guest, back to the guest, I get
> an error in File Explorer: "Error 0x800700DF: The file size exceeds
> the limit allowed and cannot be saved."

Yes, that's a known issue, the limit is set by Windows, but can be adjusted.
See this Gitlab report, there's also a link to the instructions how to
change it:

    https://gitlab.freedesktop.org/spice/win32/vd_agent/-/issues/2

The report concerns Win7, I'm not sure whether it applies to Win10 as
well, but you can give it a try.
>
> >>
> >> >>
> >> >>   (remote-viewer:16120): GSpice-WARNING **: 12:59:04.793:
> >> >> (../spice-gtk-0.38/src/channel-webdav.c:330):demux_to_client_cb:
> >> >> runtime
> >> >> check failed: (size == c->demux.size)
> >> >>   phodav-Message: 13:00:06.047: missing lock: /testfile
> >> >> urn:uuid:ceb212f1-f8af-4dd3-b36c-a7e627b6c08a
> >> >>   phodav-Message: 13:00:06.062: missing lock: /testfile
> >> >> urn:uuid:ceb212f1-f8af-4dd3-b36c-a7e627b6c08a
> >> >>   phodav-Message: 13:00:06.076: missing lock: /testfile
> >> >> urn:uuid:ceb212f1-f8af-4dd3-b36c-a7e627b6c08a
> >> >
> >> > I'm not able to reproduce it, so more logs would be helpful.
> >> > Could you please run remote-viewer or spicy with the following options
> >> > and attach the output?
> >> > G_MESSAGES_DEBUG=phodav remote-viewer --spice-debug
> >> >
> >>
> >> Sure. I've attached a remote-viewer log ran with those parameters,
> >> from right before I copied the file, until the File Explorer error was
> >> displayed. I had a share set up to where the mountpoint is the shared
> >> directory, and copied a file named "export1.csv" to the root of the
> >> share.
> >
> > Thanks a lot!
> >
> > Would you be able to recompile spice-gtk with the attached patch (it
> > adds some more logs and could perhaps fix the issue)? If so, please
> > send the output in the same fashion as you did now, spicy is just fine
> > for this purpose.
> >
>
> With this patch applied, I am able to copy files to and from the host
> without any issues. The file limitation when copying from host to
> guest still exists, but that seems very much like an unrelated thing
> (and perhaps a non-issue).

Glad to hear that. I'll prepare a patch and send it for review.
>
> I have attached the log from the unpatched build of spicy, and from
> the patched (and seemingly fixed!) build of spicy. Both log files
> still begin when starting the transfer, and end when File Explorer
> ends or succeeds.

Once again, thanks for your help and time :)
>
> > Cheers,
> > Jakub
> >>
> >> >>
> >> >> I read that the first GSpice error always occurs on non-GNOME host
> >> >> environments. The phodav error occurs whenever I view the root
> >> >> directory
> >> >> of the share, or try copying/writing to a file anywhere in the share.
> >> >> The
> >> >> second GSpice and other phodav messages occur when copying/writing a
> >> >> file
> >> >> in the share.
> >> >>
> >> >> This occurs both with remote-viewer, and spicy. The same result occurs
> >> >> whether or not I have the "Read only" checkbox in remote-viewer
> >> >> checked.
> >> >>
> >> >> Thanks!
> >> >> _______________________________________________
> >> >> Spice-devel mailing list
> >> >> Spice-devel@lists.freedesktop.org
> >> >> https://lists.freedesktop.org/mailman/listinfo/spice-devel
> >> >
> >> > Thanks,
> >> > Jakub
> >> >
> >> >
> >>
> >> Thanks!
> >
>
> Thanks!

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
