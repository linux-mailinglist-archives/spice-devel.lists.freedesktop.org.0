Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C4D1E25D6
	for <lists+spice-devel@lfdr.de>; Tue, 26 May 2020 17:44:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB0FD6E20C;
	Tue, 26 May 2020 15:44:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EA6D6E20C
 for <spice-devel@lists.freedesktop.org>; Tue, 26 May 2020 15:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590507858;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KKRPqNYtoRAoOJ4Hq6BOgppLMdK64zyz9Acd2zmrfXw=;
 b=fOy3rXcNXdFgtHQInfNclOYbPFzgAmx8JyGAe8OYxsb9IHUZa8BwxIeGaJVr92FP9WqAzB
 m5OsIEWOwYFa2/QyYLepkEM6vT0mNCn+CjMUQzQb2bgEBpqR5t7IP/Luq60L110EDVBiv3
 F4uh48+HwXu3I4bXFXRjiFKQZ8G6X7o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-186-bln20cUSN8yVEZ5qf73i0Q-1; Tue, 26 May 2020 11:44:10 -0400
X-MC-Unique: bln20cUSN8yVEZ5qf73i0Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DEFB8107ACCA;
 Tue, 26 May 2020 15:44:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D8D5D6FB85;
 Tue, 26 May 2020 15:44:09 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B0AED1809541;
 Tue, 26 May 2020 15:44:09 +0000 (UTC)
Date: Tue, 26 May 2020 11:44:09 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jeremy White <jwhite@codeweavers.com>
Message-ID: <80043775.28156178.1590507849418.JavaMail.zimbra@redhat.com>
In-Reply-To: <9de80072-fffc-9155-d2dc-9aab7ad73745@codeweavers.com>
References: <9de80072-fffc-9155-d2dc-9aab7ad73745@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.11]
Thread-Topic: Brainstorming help with x11spice on socket permissions across
 users
Thread-Index: 7unkMBhZJphceiG/pKCwXmBpDb2yWw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Brainstorming help with x11spice on socket
 permissions across users
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

I suppose you are talking about the unix socket for vdagent, right?

> 
> Hi all,
> 
> I'm trying to get x11spice and spice-html5, at least as packaged for
> Fedora, into a pretty much 'turn key' state.
> 
> I've got 3 use cases.  The first is user A sharing their current
> desktop, either for themselves, or to get help.  That case is largely
> done, imho, modulo some documentation and perhaps some streamlining.
> The second is user A getting access to a new session for themselves.  I
> don't feel blocked on this case; the work should be straight forward, if
> fiddly (I may regret those words; doing a secure 'su' like function out
> of apache may be harder than I think).
> 

I would check for the 2nd case if the session is maintained in case you
are using SystemD. I suppose the user could want to launch a background
X11 session and disconnect from the system.

> The 3rd case, however, has me troubled.  This is the case that user A
> (potentially apache) starts x11spice which then does an xdmcp request to
> gdm, and eventually supports a log in by user B.  This makes it
> challenging to provide a way for user B to launch a spice agent or a
> pulseaudio daemon and have it securely connect back to the spice process
> started by user A.  The approach I've used in the past is to have a
> privileged binary use information from an X atom to adjust socket
> permissions.  But that feels unsatisfying, and it seems to me that this
> is an area with a lot of modern thinking that I've largely missed.
> 

As far as I know in the normal (physical) case in case of XDMCP two X11
sessions are involved and X11 client have to reconnect to another session.
So for symmetry you should reconnect the client and have separate socket
for vdagent. Sockets are associated (permission) to different users and
processes are associated to same user.

> As an added complexity, in the ideal case, you have a vdagent running as
> user A during the login process, which knows to reap itself and give way
> to a vdagent launched by user B.
> 
> I was hoping that others would have modern instincts on how to more
> correctly implement the third use case.  Clue bats or other ideas welcome.
> 
> Cheers,
> 
> Jeremy

To be honest I don't remember last time I used XDMCP.

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
