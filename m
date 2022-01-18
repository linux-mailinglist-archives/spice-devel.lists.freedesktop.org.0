Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC6E4924E2
	for <lists+spice-devel@lfdr.de>; Tue, 18 Jan 2022 12:32:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6F7E10E4B7;
	Tue, 18 Jan 2022 11:32:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED5DC10E133
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jan 2022 11:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642505536;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:in-reply-to:in-reply-to:  references:references;
 bh=tsuLpUu1AatoDGUb5dUdYGPmDfN+qlDXCJnHbJzSF90=;
 b=SYdfNbDECvO2xilX4syAvC5Y8YRgDA6pb+Z5BJacWPrtXokIcWUAsY0dmfcVtzDFcsiUha
 JhEr8UMWZww3Zzpwh4AEq8iR6tbeXYcHx79+YQhfy1U6dkXrM73gG144BETsb+fqfQnVt0
 rT5xcFM8khC6expKzNOk6BCTXbm62A4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-460-ksIbF1-FPA2CLjJoxO-lNA-1; Tue, 18 Jan 2022 06:32:04 -0500
X-MC-Unique: ksIbF1-FPA2CLjJoxO-lNA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5753E1083F66;
 Tue, 18 Jan 2022 11:32:03 +0000 (UTC)
Received: from redhat.com (unknown [10.39.195.32])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 453EB6F9CC;
 Tue, 18 Jan 2022 11:32:02 +0000 (UTC)
Date: Tue, 18 Jan 2022 11:31:59 +0000
From: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
To: Ahmad Ismail <ismail783@gmail.com>
Message-ID: <YealL2OWwVPM11yD@redhat.com>
References: <CAHAhJwJGu2W=GJNnm-qTLYnWh1z5vb55XuKMv2O6i47eL9-ovQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHAhJwJGu2W=GJNnm-qTLYnWh1z5vb55XuKMv2O6i47eL9-ovQ@mail.gmail.com>
User-Agent: Mutt/2.1.3 (2021-09-10)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=berrange@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: Re: [Spice-devel] How to mount webdav inside QEMU
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
Reply-To: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Tue, Jan 18, 2022 at 01:11:04AM +0600, Ahmad Ismail wrote:
> I run the VM using
> 
> qemu-system-x86_64 -accel kvm,thread=multi -cpu host -smp 2 -m 4096
> -drive file=mint20.3.qcow2,if=virtio \
> -machine vmport=off \
> -vga qxl -usb -device usb-tablet \
> -spice port=5900,addr=127.0.0.1,disable-ticketing \
> -device virtio-serial-pci \
> -chardev spicevmc,id=spicechannel0,debug=0,name=vdagent \
> -device virtserialport,chardev=spicechannel0,name=com.redhat.spice.0 \
> -device virtserialport,chardev=charchannel1,id=channel1,name=org.spice-space.webdav.0
> \
> -chardev spiceport,name=org.spice-space.webdav.0,id=charchannel1
> 
> The access the VM using remote-viewer spice://127.0.0.1:5900
> 
> Then in the remote viewer I click:
> 
> File > Preference > Share folder > Choose a folder from the Host
> 
> Then In the host I click: Nemo > Network > Spice client folder
> 
> Then the directory is mounted and I can share files between guest and host.
> 
> I want to get rid of the clicks.
> 
> I think to mount a drive I have to use something like
> 
> mount -t davfs https://cs10.cloud.com:2078 /mnt/webdav
> 
> But I am not understanding what URL shall i use after mount -t davfs

This command uses a kernel filesystem driver. I'm not sure how that
works, as SPICE webdav doesn't generally use that. When you're
mounting in a GNOME desktop UI, it uses 'GIO' to mount it.

If you're logged into your sesssion, you can do that using

  gio mount dav+sd://Spice%2520folder._webdav._tcp.local/


You can use 'gio mount --list' to confirm that URL, after mounting
it from the UI.

The actual mount appears in /run/user/$UID/gvfs/$URL where $URL
is the same as the URL given to 'gio mount'

Regards,
Daniel
-- 
|: https://berrange.com      -o-    https://www.flickr.com/photos/dberrange :|
|: https://libvirt.org         -o-            https://fstop138.berrange.com :|
|: https://entangle-photo.org    -o-    https://www.instagram.com/dberrange :|

