Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 226E622538A
	for <lists+spice-devel@lfdr.de>; Sun, 19 Jul 2020 20:38:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DABE6E0DC;
	Sun, 19 Jul 2020 18:38:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 454416E0C5
 for <spice-devel@lists.freedesktop.org>; Sun, 19 Jul 2020 18:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595183930;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=edxHYG5WRFafpMiRi9vPjhQrmGvi5lJ8Q+wbl71Idvg=;
 b=gHcSv3aSSmPHBagRT9lC9R+e2MA0McqfG9sUhdN0JiEb+KzK0gLXiGkBnl2vF8glITh91i
 jBgBnDc2dz7Y/bjMVtoeIzsgsOlq5evTEP725OSrNhptkipQcDsjkr07I77VNKcj0+vfxh
 vWpnKVGj10aTQv1mtXTyPwJpKAfI/rs=
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-241-4g18tRxMOJqfoZoEC2fSdA-1; Sun, 19 Jul 2020 14:38:43 -0400
X-MC-Unique: 4g18tRxMOJqfoZoEC2fSdA-1
Received: by mail-io1-f69.google.com with SMTP id i204so9828071ioa.2
 for <spice-devel@lists.freedesktop.org>; Sun, 19 Jul 2020 11:38:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=edxHYG5WRFafpMiRi9vPjhQrmGvi5lJ8Q+wbl71Idvg=;
 b=DKMxzjm0KRAGWcB9nMln2yo2IaXHoFm2tOBRFvIiWl4m0YOO7w5CQzYvEn2+788CUY
 iqkyqUxUCOvyIO3v6sn1SLl0zEdl32ydiI8Oyh5tA0ieg6ot1eRUYwvRH7VMVqS85VT7
 NeUvmFG5Aw04DazHLm/6XgLO3XqAx5uxenZUsRCo5zjRxISvces22jtkfcGjsJLjj0EC
 nIhsu3eTm8Jg5aLY0LS4GRnp1PEW6uY3Ifircl08qh/jRnkH0Q2SX2OFf84BMaZsmUlf
 HhVwZ9YRCQ2T7VM2AY412f9M7gbLmYJhT3p1TcqUqCTjPcaFW1+c/sMWN29IORgDZFoZ
 MUKQ==
X-Gm-Message-State: AOAM532tQaq6MKLuCg5iqAYA2RNbaiDKUOWqOCsdADTB31lgDBpWDMBH
 sSi0oCP2tVwYmRa/i0qV2IpTIUosY9aPFK6S4/9G1sAG1zAcDb50mYVKlw8q6HfptonLtDKvQ99
 ++geP2H9T1WQlIx/KkmPlPJg6CpLF0VocAYyUoFTqvY6dV28=
X-Received: by 2002:a92:5f12:: with SMTP id t18mr20056647ilb.267.1595183922148; 
 Sun, 19 Jul 2020 11:38:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyOitVMzG/KSBuY3Je4r+UoDBC9ueJLXLG+X0N/TxqEeGRVQWLh6gebWgphJpOIuPsg7/Z4i0PxaAXFnZQpvK4=
X-Received: by 2002:a92:5f12:: with SMTP id t18mr20056618ilb.267.1595183921717; 
 Sun, 19 Jul 2020 11:38:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAM1wO0mtiMoPAmH89pbCLQPS215fd0Nyq9E79TZDRyHNUHApfQ@mail.gmail.com>
 <CAH=CeiBUGdfSnCmAbq5Cy-wQw-tsLvc+aMEvOKYLcfYbHWA2Vw@mail.gmail.com>
 <CAM1wO0nNXJ2VJOTjxEFWmo6kPLiEm7wtM15iDpbDobDmZmJ17Q@mail.gmail.com>
In-Reply-To: <CAM1wO0nNXJ2VJOTjxEFWmo6kPLiEm7wtM15iDpbDobDmZmJ17Q@mail.gmail.com>
From: Jakub Janku <jjanku@redhat.com>
Date: Sun, 19 Jul 2020 20:38:30 +0200
Message-ID: <CAH=CeiDXmK5_VHPpvEhTgPXWe=TOcsZRHQjC1NwaYcLgqD_rWg@mail.gmail.com>
To: Koopa Koopa <codingkoopa@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="00000000000001fcb205aacfb31e"
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--00000000000001fcb205aacfb31e
Content-Type: text/plain; charset="UTF-8"

On Sun, Jul 19, 2020 at 6:12 PM Koopa Koopa <codingkoopa@gmail.com> wrote:
>
> On 7/19/20, Jakub Janku <jjanku@redhat.com> wrote:
> > Hi!
> >
> > On Sun, Jul 19, 2020 at 9:34 AM Koopa Koopa <codingkoopa@gmail.com> wrote:
> >>
> >> Hi all,
> >>
> >> I'm looking to share a folder between my Arch Linux host and a Windows 10
> >> guest, and SPICE's folder sharing with webdav seems to be the best option
> >> for me. I've set up the QEMU devices that webdav needs, and installed the
> >> Windows service. I have the drive mapped, and am able to navigate the host
> >> folder (apart from the occasional "Windows cannot access
> >> \\localhost@9843\DavWWWRoot\" that doesn't occur again), and copy files
> >> from the host to the guest. When trying to copy a new file (with data) or
> >> write to an existing file from the guest, though, the application (e.g.
> >> File Explorer, or other programs which save files) hangs for a little bit,
> >> before the transaction fails. For File Explorer, it displays "Error
> >> 0x80070021: The process cannot access the file because another process has
> >> locked a portion of the file."
> >>
> >> This is the output of remote-viewer:
> >>   (remote-viewer:16120): GSpice-WARNING **: 12:58:46.205: Warning no
> >> automount-inhibiting implementation available
> >
> > As you say, this happens in non-GNOME environments. But it's related
> > to usb redirection, not webdav.
> >>
> >>   (remote-viewer:16120): phodav-WARNING **: 12:58:57.910:
> >> (../phodav-2.4/libphodav/phodav-method-propfind.c:70):prop_resourcetype:
> >> code should not be reached
> >>
> >>   (remote-viewer:16120): phodav-WARNING **: 12:59:04.714:
> >> (../phodav-2.4/libphodav/phodav-method-propfind.c:70):prop_resourcetype:
> >> code should not be reached
> >
> > I know that these warnings can happen for example if the shared folder
> > contains a broken symlink. Is that your case? Basically anything in
> > the shared folder that isn't a regular file or a directory can emit
> > this warning, but it shouldn't cause the described issues afaik.
>
> Yep, that is the case. I had a broken symlink in the root directory of
> my share, which explains why that error only occurred in that
> directory. I've removed that file, and that error no longer occurs.

Great, so that makes this one clear.
>
> As for the main issue, upon some more testing, I've determined that:
> - I can copy files to the root of a $HOME share.
> - I cannot copy files to a mounted device within the $HOME share.
> - I cannot copy files to a share created at or within the mountpoint.
>
> The drive that my $HOME is on is ext4, and the mounted device (in
> fact, there are two of these in my home directory) is NTFS.

How frequent is this issue? Can you copy larger files?
>
> >>
> >>   (remote-viewer:16120): GSpice-WARNING **: 12:59:04.793:
> >> (../spice-gtk-0.38/src/channel-webdav.c:330):demux_to_client_cb: runtime
> >> check failed: (size == c->demux.size)
> >>   phodav-Message: 13:00:06.047: missing lock: /testfile
> >> urn:uuid:ceb212f1-f8af-4dd3-b36c-a7e627b6c08a
> >>   phodav-Message: 13:00:06.062: missing lock: /testfile
> >> urn:uuid:ceb212f1-f8af-4dd3-b36c-a7e627b6c08a
> >>   phodav-Message: 13:00:06.076: missing lock: /testfile
> >> urn:uuid:ceb212f1-f8af-4dd3-b36c-a7e627b6c08a
> >
> > I'm not able to reproduce it, so more logs would be helpful.
> > Could you please run remote-viewer or spicy with the following options
> > and attach the output?
> > G_MESSAGES_DEBUG=phodav remote-viewer --spice-debug
> >
>
> Sure. I've attached a remote-viewer log ran with those parameters,
> from right before I copied the file, until the File Explorer error was
> displayed. I had a share set up to where the mountpoint is the shared
> directory, and copied a file named "export1.csv" to the root of the
> share.

Thanks a lot!

Would you be able to recompile spice-gtk with the attached patch (it
adds some more logs and could perhaps fix the issue)? If so, please
send the output in the same fashion as you did now, spicy is just fine
for this purpose.

Cheers,
Jakub
>
> >>
> >> I read that the first GSpice error always occurs on non-GNOME host
> >> environments. The phodav error occurs whenever I view the root directory
> >> of the share, or try copying/writing to a file anywhere in the share. The
> >> second GSpice and other phodav messages occur when copying/writing a file
> >> in the share.
> >>
> >> This occurs both with remote-viewer, and spicy. The same result occurs
> >> whether or not I have the "Read only" checkbox in remote-viewer checked.
> >>
> >> Thanks!
> >> _______________________________________________
> >> Spice-devel mailing list
> >> Spice-devel@lists.freedesktop.org
> >> https://lists.freedesktop.org/mailman/listinfo/spice-devel
> >
> > Thanks,
> > Jakub
> >
> >
>
> Thanks!

--00000000000001fcb205aacfb31e
Content-Type: text/x-patch; charset="UTF-8"; 
	name="0001-fix-check-if-client-is-closed.patch"
Content-Disposition: attachment; 
	filename="0001-fix-check-if-client-is-closed.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kctf3dba0>
X-Attachment-Id: f_kctf3dba0

RnJvbSAyMWEzODAxMjViZGEwNmIzNDQzYTkzYTcwNTAwYzU5OWJlYzc0MWRmIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiA9P1VURi04P3E/SmFrdWI9MjBKYW5rPUM1PUFGPz0gPGpqYW5r
dUByZWRoYXQuY29tPgpEYXRlOiBTdW4sIDE5IEp1bCAyMDIwIDIwOjI0OjE2ICswMjAwClN1Ympl
Y3Q6IFtQQVRDSCBzcGljZS1ndGtdIGZpeDogY2hlY2sgaWYgY2xpZW50IGlzIGNsb3NlZApNSU1F
LVZlcnNpb246IDEuMApDb250ZW50LVR5cGU6IHRleHQvcGxhaW47IGNoYXJzZXQ9VVRGLTgKQ29u
dGVudC1UcmFuc2Zlci1FbmNvZGluZzogOGJpdAoKU2lnbmVkLW9mZi1ieTogSmFrdWIgSmFua8Wv
IDxqamFua3VAcmVkaGF0LmNvbT4KLS0tCiBzcmMvY2hhbm5lbC13ZWJkYXYuYyB8IDI1ICsrKysr
KysrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtd2ViZGF2LmMgYi9zcmMvY2hh
bm5lbC13ZWJkYXYuYwppbmRleCBjNGFkMTQ0Li43NjM5ZDVmIDEwMDY0NAotLS0gYS9zcmMvY2hh
bm5lbC13ZWJkYXYuYworKysgYi9zcmMvY2hhbm5lbC13ZWJkYXYuYwpAQCAtMTg4LDYgKzE4OCw3
IEBAIHR5cGVkZWYgc3RydWN0IENsaWVudAogICAgIEdJT1N0cmVhbSAqcGlwZTsKICAgICBnaW50
NjQgaWQ7CiAgICAgR0NhbmNlbGxhYmxlICpjYW5jZWxsYWJsZTsKKyAgICBnYm9vbGVhbiByZW1v
dmVkOwogCiAgICAgc3RydWN0IHsKICAgICAgICAgZ2ludDY0IGlkOwpAQCAtMjIyLDkgKzIyMywx
MyBAQCBzdGF0aWMgdm9pZCByZW1vdmVfY2xpZW50KENsaWVudCAqY2xpZW50KQogICAgIGlmIChn
X2NhbmNlbGxhYmxlX2lzX2NhbmNlbGxlZChjbGllbnQtPmNhbmNlbGxhYmxlKSkKICAgICAgICAg
cmV0dXJuOwogCisgICAgQ0hBTk5FTF9ERUJVRyhTUElDRV9DSEFOTkVMKGNsaWVudC0+c2VsZiks
ICJyZW1vdmluZyBjbGllbnQgJXAiLCBjbGllbnQpOworCiAgICAgZ19jYW5jZWxsYWJsZV9jYW5j
ZWwoY2xpZW50LT5jYW5jZWxsYWJsZSk7CiAKLSAgICBnX2hhc2hfdGFibGVfcmVtb3ZlKGNsaWVu
dC0+c2VsZi0+cHJpdi0+Y2xpZW50cywgJmNsaWVudC0+aWQpOworICAgIGlmICghY2xpZW50LT5y
ZW1vdmVkKSB7CisgICAgICAgIGdfaGFzaF90YWJsZV9yZW1vdmUoY2xpZW50LT5zZWxmLT5wcml2
LT5jbGllbnRzLCAmY2xpZW50LT5pZCk7CisgICAgfQogfQogCiBzdGF0aWMgdm9pZApAQCAtMjM0
LDYgKzIzOSw4IEBAIG11eF9tc2dfZmx1c2hlZF9jYihHT2JqZWN0ICpzb3VyY2Vfb2JqZWN0LAog
ewogICAgIENsaWVudCAqY2xpZW50ID0gdXNlcl9kYXRhOwogCisgICAgQ0hBTk5FTF9ERUJVRyhT
UElDRV9DSEFOTkVMKGNsaWVudC0+c2VsZiksICJtdXhfbXNnX2ZsdXNoZWRfY2IgZm9yIGNsaWVu
dCAlcCIsIGNsaWVudCk7CisKICAgICBpZiAoc3BpY2Vfdm1jX3dyaXRlX2ZpbmlzaChTUElDRV9D
SEFOTkVMKHNvdXJjZV9vYmplY3QpLCByZXN1bHQsIE5VTEwpID09IC0xIHx8CiAgICAgICAgIGNs
aWVudC0+bXV4LnNpemUgPT0gMCB8fAogICAgICAgICAhY2xpZW50X3N0YXJ0X3JlYWQoY2xpZW50
KSkgewpAQCAtMjUyLDYgKzI1OSw5IEBAIHN0YXRpYyB2b2lkIHNlcnZlcl9yZXBseV9jYihHT2Jq
ZWN0ICpzb3VyY2Vfb2JqZWN0LAogICAgIGdzc2l6ZSBzaXplOwogCiAgICAgc2l6ZSA9IGdfaW5w
dXRfc3RyZWFtX3JlYWRfZmluaXNoKEdfSU5QVVRfU1RSRUFNKHNvdXJjZV9vYmplY3QpLCByZXMs
ICZlcnIpOworCisgICAgQ0hBTk5FTF9ERUJVRyhTUElDRV9DSEFOTkVMKGNsaWVudC0+c2VsZiks
ICJzZXJ2ZXJfcmVwbHlfY2IgZm9yIGNsaWVudCAlcCwgc2l6ZSAlbGQiLCBjbGllbnQsIHNpemUp
OworCiAgICAgaWYgKGVyciB8fCBnX2NhbmNlbGxhYmxlX2lzX2NhbmNlbGxlZChjbGllbnQtPmNh
bmNlbGxhYmxlKSkKICAgICAgICAgZ290byBlbmQ7CiAKQEAgLTI1OSw2ICsyNjksMTIgQEAgc3Rh
dGljIHZvaWQgc2VydmVyX3JlcGx5X2NiKEdPYmplY3QgKnNvdXJjZV9vYmplY3QsCiAgICAgZ19y
ZXR1cm5faWZfZmFpbChzaXplID49IDApOwogICAgIGNsaWVudC0+bXV4LnNpemUgPSBHVUlOVDE2
X1RPX0xFKHNpemUpOwogCisgICAgaWYgKHNpemUgPT0gMCkgeworICAgICAgICAvKiByZW1vdmUg
Y2xpZW50IGVhcmx5ICovCisgICAgICAgIGdfaGFzaF90YWJsZV9yZW1vdmUoY2xpZW50LT5zZWxm
LT5wcml2LT5jbGllbnRzLCAmY2xpZW50LT5pZCk7CisgICAgICAgIGNsaWVudC0+cmVtb3ZlZCA9
IFRSVUU7CisgICAgfQorCiAgICAgc3BpY2Vfdm1jX3dyaXRlX2FzeW5jKFNQSUNFX0NIQU5ORUwo
Y2xpZW50LT5zZWxmKSwKICAgICAgICAgICAgICAgICAgICAgICAgICAgJmNsaWVudC0+bXV4LAog
ICAgICAgICAgICAgICAgICAgICAgICAgICBzaXplb2YoZ2ludDY0KSArIHNpemVvZihndWludDE2
KSArIHNpemUsCkBAIC00MjUsNiArNDQxLDEzIEBAIHN0YXRpYyB2b2lkIGRhdGFfcmVhZF9jYihH
T2JqZWN0ICpzb3VyY2Vfb2JqZWN0LAogCiAgICAgY2xpZW50ID0gZ19oYXNoX3RhYmxlX2xvb2t1
cChjLT5jbGllbnRzLCAmYy0+ZGVtdXguY2xpZW50KTsKIAorICAgIGlmIChjbGllbnQgJiYgZ19p
b19zdHJlYW1faXNfY2xvc2VkKGNsaWVudC0+cGlwZSkpIHsKKyAgICAgICAgQ0hBTk5FTF9ERUJV
RyhzZWxmLCAiY2xpZW50IGluIGhhc2h0YWJsZSwgYnV0IGFscmVhZHkgY2xvc2VkLCByZW1vdmlu
ZyIpOworICAgICAgICBnX2hhc2hfdGFibGVfcmVtb3ZlKGNsaWVudC0+c2VsZi0+cHJpdi0+Y2xp
ZW50cywgJmNsaWVudC0+aWQpOworICAgICAgICBjbGllbnQtPnJlbW92ZWQgPSBUUlVFOworICAg
ICAgICBjbGllbnQgPSBOVUxMOworICAgIH0KKwogICAgIGlmIChjbGllbnQpCiAgICAgICAgIGRl
bXV4X3RvX2NsaWVudChjbGllbnQpOwogICAgIGVsc2UgaWYgKHNpemUgPiAwKSB7Ci0tIAoyLjI2
LjIKCg==
--00000000000001fcb205aacfb31e
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--00000000000001fcb205aacfb31e--

