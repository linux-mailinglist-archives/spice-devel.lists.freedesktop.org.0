Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0BE1ED449
	for <lists+spice-devel@lfdr.de>; Wed,  3 Jun 2020 18:25:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9101289D44;
	Wed,  3 Jun 2020 16:25:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from forward501p.mail.yandex.net (forward501p.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22D1D89CBC
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Jun 2020 16:25:10 +0000 (UTC)
Received: from mxback8o.mail.yandex.net (mxback8o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::22])
 by forward501p.mail.yandex.net (Yandex) with ESMTP id 4121335005B3;
 Wed,  3 Jun 2020 19:25:05 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback8o.mail.yandex.net (mxback/Yandex) with ESMTP id uiDOpFVM4J-P4mKICie; 
 Wed, 03 Jun 2020 19:25:04 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1591201504; bh=E2wdlbP8DbZGEpSTAezuRIRt92K8n2+2aSl/8Ad4bFs=;
 h=Message-Id:Cc:Subject:In-Reply-To:Date:References:To:From;
 b=gSOQYfr/SYw3TuoQjRPAPkUujINeunNcITc8VB15ktyEHql+PIvLsNfgp32WsPlog
 ivJyYSbzFmVWsn2vSQMxqvpmOVeDWTGmvCfgr8SXtDxc9jDt49dn7jzFuO1K7KDcI/
 4TpKll19gSeZnKETVx8adYrErlL5Mj4XQVeS0Sfw=
Authentication-Results: mxback8o.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by myt5-7210d748eb79.qloud-c.yandex.net with HTTP;
 Wed, 03 Jun 2020 19:25:04 +0300
From: ole-krutov@yandex.ru
To: Frediano Ziglio <fziglio@redhat.com>
In-Reply-To: <1526329713.28934691.1591186350304.JavaMail.zimbra@redhat.com>
References: <1173961590757190@mail.yandex.ru>
 <1526329713.28934691.1591186350304.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Wed, 03 Jun 2020 19:25:04 +0300
Message-Id: <383741591201473@mail.yandex.ru>
Subject: Re: [Spice-devel] spice-streaming-agent and Wayland?
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0222995836=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0222995836==
Content-Transfer-Encoding: 8bit
Content-Type: text/html; charset=utf-8

<div>Yes, did it, thank you.</div><div> </div><div>03.06.2020, 15:12, "Frediano Ziglio" &lt;fziglio@redhat.com&gt;:</div><blockquote><blockquote> Hi all,<br /> with "standard" X session there's no problem to run spice-streaming-agent,<br /> just set up DISPLAY and XAUTHORITY env vars and we ready to go. But what to<br /> do in case, for example, ubuntu 20.04 in its default flavour? There's no<br /> such variables and I suspect that there's much differencies under the<br /> hood...</blockquote><p><br />Hi,<br />  there's no current plan, we are working on some issues with Wayland<br />(fixed cursor grab, some are working on clipboard).<br />Can you open an issue? Capturing on Wayland is a bit more complicated<br />compared to X11.<br /><br />Frediano<br /> </p></blockquote>

--===============0222995836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0222995836==--
