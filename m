Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BFF23FEAD
	for <lists+spice-devel@lfdr.de>; Sun,  9 Aug 2020 16:11:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0570189FE3;
	Sun,  9 Aug 2020 14:11:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37DA989FE3
 for <spice-devel@lists.freedesktop.org>; Sun,  9 Aug 2020 14:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596982258;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eAKqhWbvQ4AZP2mAj81Wl83iXiy5WEpM67xzOYyou/I=;
 b=MV8jwt5evIeGEoRqoqjxn4mNvdpMmWMYh480Y5qbwBwmIeuEEQw5Ei5vrlxddiVQ3yE59o
 31WtxqxtVrPojsh66k4sq+A/9NlD8eS7NMu5E7MkqdCMP1wKfWaDhBMrQeYJFSEg0QRTz5
 6qM36I3It36haSoJsjq2VzykJJl6uMI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-420-_BawLwsZOIKkXsNYsmtQoA-1; Sun, 09 Aug 2020 10:10:56 -0400
X-MC-Unique: _BawLwsZOIKkXsNYsmtQoA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8C4581005504;
 Sun,  9 Aug 2020 14:10:55 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.231])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B3D0B5FC3B;
 Sun,  9 Aug 2020 14:10:54 +0000 (UTC)
To: "D. L. Fuller" <dlfuller@clientandfuller.com>,
 spice-devel@lists.freedesktop.org
References: <CAHUfaU-tGwT_1evuTRZ_U9P0y-P8opcAkgBWE1NVf5Q6FsbY2A@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <f9eae79b-0d37-084b-3195-a2fb71c3ad07@redhat.com>
Date: Sun, 9 Aug 2020 17:10:52 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAHUfaU-tGwT_1evuTRZ_U9P0y-P8opcAkgBWE1NVf5Q6FsbY2A@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=uril@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] OSX Client Bundle
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 8/8/20 10:44 PM, D. L. Fuller wrote:
> Noob here trying to use SPICE from a Mac for a Proxmox VM.
> 

Note that I do not run Promox VMs nor use a Mac client.

> 
> I downloaded and installed RemoteViewer from 
> RemoteViewer-0.5.7-1.dmg.And setup my Ubuntu VM for SPICE in the Proxmox 
> Console. Then I had to download the "download" file which I assume is 
> not needed in this case.

Is the "download" file of type .vv, e.g. console.vv?

If it is, try running from the command line: remote-viewer 
<path-of-console.vv>

BTW, is 0.5.7 the latest verion of remote-viewer for Mac ?

> 
> RemoteViewer opens with a window requesting an URL.Everything I try is 
> rejected.
> 
> 
> What am I missing?Any suggestions sure appreciated.
> 

If you know the hostname and port the spice-server is listening
on (via qemu-kvm), try -- spice://host:port

Uri

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
