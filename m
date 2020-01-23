Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF335146EB1
	for <lists+spice-devel@lfdr.de>; Thu, 23 Jan 2020 17:54:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 429A36E0F5;
	Thu, 23 Jan 2020 16:54:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77B256E0F5
 for <spice-devel@lists.freedesktop.org>; Thu, 23 Jan 2020 16:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579798494;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=6MWfHeXj/jcGzQ19XTK/ZTVlRK9tOyBkdhz69lVnNzo=;
 b=i+tQO/QyJorhQIrSPcMQcxgkC1iAGFJ4ne0FPsyHe6dv00L0pXdDaPhavfXppi7iFwtYYH
 3NEfZHIdXdb49YrFF3A71tkyFHJMcqXtJXuJ4VhatX1EFDjYLMPsF0f2qVfn5Q9zxkBVOq
 /m8BxhLjIuooPSQKgBXdnIlgR07hP68=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-314-1YbcYA13O9qGk68Gd1n76A-1; Thu, 23 Jan 2020 11:54:52 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9A264800D4C
 for <spice-devel@lists.freedesktop.org>; Thu, 23 Jan 2020 16:54:51 +0000 (UTC)
Received: from [10.10.120.235] (ovpn-120-235.rdu2.redhat.com [10.10.120.235])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4B52F5DA60
 for <spice-devel@lists.freedesktop.org>; Thu, 23 Jan 2020 16:54:51 +0000 (UTC)
To: spice-devel@lists.freedesktop.org
From: Cole Robinson <crobinso@redhat.com>
Message-ID: <6038cad0-6cfa-22cd-f3df-3a4f82e0e9c1@redhat.com>
Date: Thu, 23 Jan 2020 11:54:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: 1YbcYA13O9qGk68Gd1n76A-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] help debugging: Assertion
 `!xcb_xlib_threads_sequence_lost' failed.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi all,

For the past year+ we have had a steady trickle of virt-manager X11
threading crashes. This is the f31 bug I've duped all the other ones
too, but there were a handful that were auto closed by Fedora
end-of-life bug cleanup: https://bugzilla.redhat.com/show_bug.cgi?id=1756065

The message that goes along with this is:

[xcb] Unknown sequence number while processing queue
[xcb] Most likely this is a multi-threaded client and XInitThreads has
not been called
[xcb] Aborting, sorry about that.
remote-viewer: xcb_io.c:263: poll_for_event: Assertion
`!xcb_xlib_threads_sequence_lost' failed.
Aborted (core dumped)

That may not apply to all the poll_for_error() bugs but it's most of the
ones I have dug into.

I figured there was some threading issue in virt-manager and I was
mostly ignoring the bugs until I found time to try and diagnose. I'm not
really finding anything in virt-manager though, and some similar issues
make me think maybe this is spice-gtk or something lower.

This user can reproduce the same error with remote-viewer + spice + X11
ssh forwarding: https://bugzilla.redhat.com/show_bug.cgi?id=1758384

This user can reproduce the virt-manager crash multiple times a day, and
it's always when interacting with a spice-gtk console:
https://bugzilla.redhat.com/show_bug.cgi?id=1792576

Anyone have any ideas how to debug this further? What spice-gtk
debugging info would be helpful?

The reporter in the last bug can reproduce regularly and is responsive,
so feel free to just jump in there if you would like to help.

Thanks,
Cole

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
