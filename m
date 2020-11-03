Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E8E2A4969
	for <lists+spice-devel@lfdr.de>; Tue,  3 Nov 2020 16:23:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A4366E8C7;
	Tue,  3 Nov 2020 15:23:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from ciao.gmane.io (static.214.254.202.116.clients.your-server.de
 [116.202.254.214])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C3D66E8C7
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Nov 2020 15:23:12 +0000 (UTC)
Received: from list by ciao.gmane.io with local (Exim 4.92)
 (envelope-from <gcesd-spice-space-devel@m.gmane-mx.org>)
 id 1kZy9O-0001uS-AI
 for spice-devel@lists.freedesktop.org; Tue, 03 Nov 2020 16:23:10 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: spice-devel@lists.freedesktop.org
From: Ian Pilcher <arequipeno@gmail.com>
Date: Tue, 3 Nov 2020 09:23:04 -0600
Message-ID: <rnrskp$6o7$1@ciao.gmane.io>
References: <rncrhu$16el$1@ciao.gmane.io>
 <1165128467.5786858.1603959008695.JavaMail.zimbra@redhat.com>
 <3cea45a2-9c3b-5d96-84ed-6298b91d68c2@gmail.com>
 <CAH=CeiDggDPg5KmCku=gUqSm5Y9FuC9mt5MJfYUu3dzn_Vsw=Q@mail.gmail.com>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
In-Reply-To: <CAH=CeiDggDPg5KmCku=gUqSm5Y9FuC9mt5MJfYUu3dzn_Vsw=Q@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Spice-devel] How to build Windows vdagent?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 10/29/20 10:33 AM, Jakub Janku wrote:
> are you using mingw64-configure?

I wasn't before, as I didn't know about it.  (Thus my original "how do I
do this" question.)

> Sometimes, when you don't know how to build something, you can get
> some hints from the pipeline configuration file, in this case
> .gitlab-ci.yml.

That got me going.  With the hints from that file, I was able to build
the agent.

As it turns out, the "static libpng" error I was seeing was due to this:

   https://gitlab.freedesktop.org/spice/win32/vd_agent/-/issues/17

Thanks!

-- 
========================================================================
                  In Soviet Russia, Google searches you!
========================================================================

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
