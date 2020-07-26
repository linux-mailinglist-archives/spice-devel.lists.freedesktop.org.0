Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B6822DF2A
	for <lists+spice-devel@lfdr.de>; Sun, 26 Jul 2020 14:48:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AB6389D87;
	Sun, 26 Jul 2020 12:48:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9E3289D87
 for <spice-devel@lists.freedesktop.org>; Sun, 26 Jul 2020 12:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595767699;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RCtwXWkTaz2Sb7hNEc13joiEHi8OAnlafb+m7biqMic=;
 b=cOznu4Bdu0Uc46C5Sp4ocfWa+n8rQjvjsySxKl0cqVab2y3D83wuF9C+LLZEYea4jqDtpG
 m3fI9A7r3RoMEoqCBDMkBDjpjZxdWsZMdu+UkSoYrKOetPxn0FgEQcgRsvzTbbLlHUMc1p
 CKzsSqPakqKf4h/AjmS0ZWSlRAm9uaQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-80-d-HCPWJNMqSS7LGKofANeQ-1; Sun, 26 Jul 2020 08:48:17 -0400
X-MC-Unique: d-HCPWJNMqSS7LGKofANeQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C1ED1005510;
 Sun, 26 Jul 2020 12:48:16 +0000 (UTC)
Received: from lub.tlv (ovpn-112-53.ams2.redhat.com [10.36.112.53])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 884D58FA3B;
 Sun, 26 Jul 2020 12:48:15 +0000 (UTC)
To: Armin Ranjbar <zoup@zoup.org>,
 Spice List <spice-devel@lists.freedesktop.org>
References: <CAOvx4-3XCxvmZCa+77Zt4eJAV0qMbuZtu0ZSYYYLfmp5jhmkpA@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <5c38c86c-76b3-ad20-37e4-35b5ac376fa8@redhat.com>
Date: Sun, 26 Jul 2020 15:48:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAOvx4-3XCxvmZCa+77Zt4eJAV0qMbuZtu0ZSYYYLfmp5jhmkpA@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=uril@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] spice-streaming-agent, the motivation and drive
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

On 7/25/20 6:43 PM, Armin Ranjbar wrote:
> Dear All
> 
> First of all, let me thank you again for your efforts!
> 
> I was reading on spice-streaming-agent, which is in experimental stage, and
> I was wondering what is the driver behind the idea?
> Will that lead to less bandwidth consumption? less latency? or is it just a
> refactoring to make the codebase cleaner?

Hi,

It is possible to configure a VM with a hardware GPU (either assign the 
whole
device to the VM or a part of it).
That is helpful for running, on the guest, applications that require such
strong GPU (e.g. 3D graphics).
When that is the case, spice-streaming-agent can use the GPU
on the guest
to stream video (encode the screenbuffer and send it).
This is what spice-streaming-agent does and it indeed leads to less 
bandwidth used.

Uri.

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
