Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC883C45F9
	for <lists+spice-devel@lfdr.de>; Mon, 12 Jul 2021 10:08:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35C898914D;
	Mon, 12 Jul 2021 08:08:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC80089C0A
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Jul 2021 16:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626021439;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=id7JuFbWtlSIi4DEkQS+hAu8936ur6TDbvaTx+sNhX4=;
 b=KQS+0tj/NPCtRslKoywuqUKblXn+dh+FJMqeaGrEQBnEslwPvNQQQlthhPD2kuJasLVRCd
 /U+Ac3q1CUiyrV8AhZav/7tCeOCkC5HHWaD8q1wYx2MKBgerALDyEuQhV6bRVvDCVzsg0x
 86J9OR8l9pmdvbhSpoaH4kdKaxfyC9s=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-29-r7yiI4z8Mpe3m2y-y2e69g-1; Sun, 11 Jul 2021 12:37:16 -0400
X-MC-Unique: r7yiI4z8Mpe3m2y-y2e69g-1
Received: by mail-lj1-f197.google.com with SMTP id
 m20-20020a2ea5940000b0290186d4298a1cso5072562ljp.10
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Jul 2021 09:37:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=id7JuFbWtlSIi4DEkQS+hAu8936ur6TDbvaTx+sNhX4=;
 b=S3TiS4T9jE+IcItCWGTD7ctJ6yw3uqI3B11MHPPCDLtRhi9X5M4LjM36JRy8GNqI6d
 dnN9E1kFz1nH2myLyJ+jUIJwQM7i39DfgqdJOfh+blQpdZTgQ1DdrOvng70WeaoGSUVJ
 ddSF+7077gIQ1CJ/CFdpev1tG8b2rDqSQxUdqxJ9xstxNBqCJ5BgAGxuzOZ1lk3FjSvt
 D3JLt8X4lg6PyV6UDsGhFbvQnfj4t1BeNS93Tjp40UZfYbppGiNPE2EHdUJ+nIn3atwI
 kqnsD8j+AnzZb9Dlq+Zt3G2Xe279bCOMfYEx9XJ/5Pr7SB+piHI8rVDI4zSAehtiMtvO
 yH2A==
X-Gm-Message-State: AOAM531pehdJCVYUYijl9cDNKA/iho/7e498HEzYlnh1LL9pjmQ7UqyC
 Fqgs4T3QCwWPcdKj5ahlAu01+som0L8kOP3ktZqBiqJwJ8NXqWgyh3YAztNt08BHacDiCfMWO8S
 A6vxbC0bTsUOT4ojAF+P1cT8Ypxw7uvbyJSAfDjViQBTZSg0=
X-Received: by 2002:a05:6512:696:: with SMTP id
 t22mr2534968lfe.100.1626021435228; 
 Sun, 11 Jul 2021 09:37:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzCTDk3vwMD5UGmuIMYpJzFFdtoDod301/Ap7oOU1gmHXBbYIf0QnRs/4ykw9qmZB64htYG2x8UWtb0LHNMmYM=
X-Received: by 2002:a05:6512:696:: with SMTP id
 t22mr2534958lfe.100.1626021434973; 
 Sun, 11 Jul 2021 09:37:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAEZZRpSyMhA9QUq8EnW5CYK0F56VvFgkquqS8318C_AaqV6rNg@mail.gmail.com>
In-Reply-To: <CAEZZRpSyMhA9QUq8EnW5CYK0F56VvFgkquqS8318C_AaqV6rNg@mail.gmail.com>
From: Uri Lublin <ulublin@redhat.com>
Date: Sun, 11 Jul 2021 19:37:03 +0300
Message-ID: <CAAg9qJ2mMfOd8_qdotff3r572OKHgrXwj+ktE=sCykWsphmb1Q@mail.gmail.com>
To: Sofia Son <admjral3@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ulublin@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Mon, 12 Jul 2021 08:08:12 +0000
Subject: Re: [Spice-devel] Speed of file transfers
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
Content-Type: multipart/mixed; boundary="===============0762198560=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0762198560==
Content-Type: multipart/alternative; boundary="00000000000007756505c6db9edd"

--00000000000007756505c6db9edd
Content-Type: text/plain; charset="UTF-8"

On Thu, Jul 8, 2021 at 12:59 PM Sofia Son <admjral3@gmail.com> wrote:

>  hello,i use proxmox host, and remote vms by spice, and why speed file
> transfers through drag and drop is slowly,only 150kb -230kb/s ,how can i
> improve this speed ?although in LAN but when i drag and drop file i have to
> compress file,cant be transfer folder
>


Hi,

1. Drag and Drop transfer rate:
How fast is your connection ?
For example, what is the transfer rate when you copy a file from client to
guest using e.g. scp ?
Is it only for a single host/VM or all hosts/VMs ?

I just tried to drag and drop a big file from my host (Fedora 33) to a VM
running on that host  (Fedora 34 guest) and I'm seeing a much faster
transfer rate.

2. Compress files copied via Drag and Drop:
It's probably good for big files.

3. Transferring a folder via Drag and Drop:
It's not currently possible.
You can transfer a folder via the SPICE WebDAV feature.

Uri

--00000000000007756505c6db9edd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thu, Jul 8, 2021 at 12:59 PM Sofia Son &lt;<a href=3D"m=
ailto:admjral3@gmail.com">admjral3@gmail.com</a>&gt; wrote:<br><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><span style=3D"color:rgb(51,51,51);font-family:Helvetica,Arial,san=
s-serif;font-size:14px">=C2=A0hello,i use proxmox host, and remote vms by s=
pice, and why speed file transfers through drag and drop is slowly,only 150=
kb -230kb/s ,how can i improve this speed ?although in LAN but when i drag =
and drop file i have to compress file,cant=C2=A0be transfer folder</span></=
div></blockquote><div><br></div><div><br></div><div><div>Hi,</div><div><br>=
</div><div>1. Drag and Drop transfer rate:<br></div><div>How fast is your c=
onnection ?</div><div>For example, what is the transfer rate when you copy =
a file from client to guest using e.g. scp ?</div><div>Is it only for a sin=
gle host/VM or all hosts/VMs ?</div><div><br></div><div>I
 just tried to drag and drop a big file from my host (Fedora 33) to a VM
 running on that host=C2=A0 (Fedora 34 guest)  and I&#39;m seeing a much fa=
ster=20
transfer rate.<br></div><div><br></div><div>2. Compress files copied via Dr=
ag and Drop:</div><div>It&#39;s probably good for big files.<br></div><div>=
<br></div><div>3. Transferring a folder via Drag and Drop:</div><div>It&#39=
;s not currently possible.</div><div>You can transfer a folder via the SPIC=
E WebDAV feature.</div>=C2=A0</div><div>Uri<br></div></div></div>

--00000000000007756505c6db9edd--


--===============0762198560==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0762198560==--

