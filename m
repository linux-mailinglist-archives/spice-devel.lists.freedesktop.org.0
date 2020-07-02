Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC280212066
	for <lists+spice-devel@lfdr.de>; Thu,  2 Jul 2020 11:54:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B4FB6EABF;
	Thu,  2 Jul 2020 09:54:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F9CA6EABF
 for <spice-devel@lists.freedesktop.org>; Thu,  2 Jul 2020 09:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593683689;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9wa9IijoolLJGpfY3uuqt5fLh4i11U6XuN8c+BwQR+4=;
 b=I+vAAk85ZXPGa5WWLl6J+XQ8N9OAuqWPwDHqM6YMArBqPhsO00IVWFMDQX4E/IDzIiNuA6
 +RuKm7XaoP98j5V5sPAtEgcP61l5Riq5e9xbJQhBXA5W40fMaLNAmfNXJ+d+DgO9a6cHM3
 oa+YrvqWO+tca8K8cyB1Icfmk+h5Pe4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-276-Ew4YQ1r6N4K6mhPIdg9Cdg-1; Thu, 02 Jul 2020 05:54:48 -0400
X-MC-Unique: Ew4YQ1r6N4K6mhPIdg9Cdg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1BDC218FE860;
 Thu,  2 Jul 2020 09:54:47 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.206])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 19A8F6109F;
 Thu,  2 Jul 2020 09:54:45 +0000 (UTC)
To: Peter Kecho <peterkecho@gmail.com>, spice-devel@lists.freedesktop.org
References: <CAH2czN4u-BCHHGsA9eGo5m3LgF0xUXhZWzxJ-xOBtgUJDH8bxQ@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <3dc1a89a-39de-e85c-915b-fe7495ce2982@redhat.com>
Date: Thu, 2 Jul 2020 12:54:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAH2czN4u-BCHHGsA9eGo5m3LgF0xUXhZWzxJ-xOBtgUJDH8bxQ@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=uril@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] drag and drop
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

On 7/2/20 8:57 AM, Peter Kecho wrote:
> Hello.
> 
> I'm using a Manjaro host with XFCE and running a windows 10 vm on KVM. I 
> have downloaded and ran the spice guest tools latest on the windows 
> client and can now copy and paste from host to vm and from vm to host, 
> but can only drag and drop from host to vm. I cannot drag and drop from 
> vm to host. Please advise.

Hi,

The drag and drop feature only works from client to guest.

If you need to copy files both ways, you can try using webdav

Uri.

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
