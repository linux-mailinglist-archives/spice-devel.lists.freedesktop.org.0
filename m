Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AC13655CF
	for <lists+spice-devel@lfdr.de>; Tue, 20 Apr 2021 11:56:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DB1F89FDD;
	Tue, 20 Apr 2021 09:56:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A74F89FEA
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Apr 2021 09:56:25 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id n2so57308955ejy.7
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Apr 2021 02:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language;
 bh=JLRNipHldFHJivwZ7cH9JuzcRJsqYtipfAlefdyCeZg=;
 b=Zn1DU6tDYWrQ0Uv0TsVEnUvgr5NaeZkdgOB/1fzm7aqXyr7vEdVLfKssfcA7FBtc/S
 OLHb9wfHqDZgzxpwi9Imyqhdq6FguZb9/gA3DRjdts5JbKSoNkwHPy0QLf/8CWz4GQqx
 R4RI3CQ6CpxVCfV+P2FmpqngZR/r3PpgnmWM4g+EHvcTt9rwsC7774q21CN9rBRfnqCN
 rEIE9kc054FsH4bVumIULT32epmrux+Ijo+G7Ebs3M49kHh6WRzTr/hTaQrb6cDl6ViN
 veCp5wUtrWQNDblWCA4TuBUHJCQoeBPsJYpvKhrfZ5o2fXvQzsi0Ux3DGHHrT/6e03B+
 sHWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:message-id:date:user-agent
 :mime-version:content-language;
 bh=JLRNipHldFHJivwZ7cH9JuzcRJsqYtipfAlefdyCeZg=;
 b=owqKhiE9kn+paAKTiuwnllDYz0nGQ091RZCGi1dmDw3Zyw6dNFUQ9AFjX50fm9/1o4
 pRU9+6vO2pnjA2OeR7yUGHHz8w5mtoX3ML8XYMOfUv1SRK3ZS5xvWGLN1nZ0PVHb5vNC
 yAEttLbgmZ2hWDFBCc38jGRj8jUr+HP8xf0Z7aEOqo83WKDoFXFZgGnFu8JO0cYTfvIo
 JhFh+q7JT038xMVoIzPkmIaj7sMbTLzoYpzJpXjbv4y16gkDSF75ZcTontRgQ0StbcM8
 797lx/tn3+HNeH2l0D0PG9iKBzIMzichm+1IR6K++4PqQCgGLJZeb2VWQBZmjlD5O3OA
 nhKQ==
X-Gm-Message-State: AOAM533caFQMnOziy80zb4liQsBXuxzYteZANZ36blLuusN6iDVuakMl
 vyIfEM+PiWr6O0M/Qc/GGCZGAboraY4=
X-Google-Smtp-Source: ABdhPJweI6Un9wZeUeuy7BttgmklKLIvbLageuCT7OIMBiqlrPTYXhhjbUUa1e/2sJkRKW31rxWrEw==
X-Received: by 2002:a17:906:d81:: with SMTP id
 m1mr26945788eji.105.1618912584222; 
 Tue, 20 Apr 2021 02:56:24 -0700 (PDT)
Received: from [192.168.1.3] (93-48-172-72.ip258.fastwebnet.it. [93.48.172.72])
 by smtp.googlemail.com with ESMTPSA id l9sm11877895ejz.96.2021.04.20.02.56.23
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Apr 2021 02:56:23 -0700 (PDT)
From: Germano Massullo <germano.massullo@gmail.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <5861b1c3-a4f5-2faf-4dc7-dd8167ec3ea5@gmail.com>
Date: Tue, 20 Apr 2021 11:56:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
Content-Language: en-US
Subject: [Spice-devel] Fedora 34 guests can no longer paste from host
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
Content-Type: multipart/mixed; boundary="===============1125961575=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1125961575==
Content-Type: multipart/alternative;
 boundary="------------F6B64E0E4EBEFCCD13FC9D3E"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------F6B64E0E4EBEFCCD13FC9D3E
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit

Good day, I always used with success a Fedora 33 KDE host (qemu/kvm/libvirt+virt-manager) and a F33 KDE guest, and I have always been to copy paste from host to guest and viceversa

Now I tested two Fedora 34 Beta guests:
- KDE spin
- Workstation (GNOME)
and both of them fail to paste text and files from the host. spice-vdagent version is the same on both F33 and F34 guests: 0.21.0. Host machine has spice-gtk3-0.39-1.fc33.x86_64
All machines mentioned in this bugreport are Xorg based.

Hereunder I attach output of
$ SPICE_DEBUG=1 virt-viewer --connect qemu:///system
https://germano.fedorapeople.org/bugreport/spice/spice_debug.txt

# virsh dumpxml fedora34gnome
https://germano.fedorapeople.org/bugreport/spice/virsh_dumpxml.txt
 
What can be the problem?
Thank you



--------------F6B64E0E4EBEFCCD13FC9D3E
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="content-type" content="text/html;
      charset=ISO-8859-15">
  </head>
  <body>
    <pre class="bz_comment_text" id="comment_text_0">Good day, I always used with success a Fedora 33 KDE host (qemu/kvm/libvirt+virt-manager) and a F33 KDE guest, and I have always been to copy paste from host to guest and viceversa

Now I tested two Fedora 34 Beta guests:
- KDE spin
- Workstation (GNOME)
and both of them fail to paste text and files from the host. spice-vdagent version is the same on both F33 and F34 guests: 0.21.0. Host machine has spice-gtk3-0.39-1.fc33.x86_64
All machines mentioned in this bugreport are Xorg based.

Hereunder I attach output of
$ SPICE_DEBUG=1 virt-viewer --connect qemu:///system
<a class="moz-txt-link-freetext" href="https://germano.fedorapeople.org/bugreport/spice/spice_debug.txt">https://germano.fedorapeople.org/bugreport/spice/spice_debug.txt</a>

# virsh dumpxml fedora34gnome
<a class="moz-txt-link-freetext" href="https://germano.fedorapeople.org/bugreport/spice/virsh_dumpxml.txt">https://germano.fedorapeople.org/bugreport/spice/virsh_dumpxml.txt</a>
 
What can be the problem?
Thank you


</pre>
  </body>
</html>

--------------F6B64E0E4EBEFCCD13FC9D3E--

--===============1125961575==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1125961575==--
