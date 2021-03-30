Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC7434ECC6
	for <lists+spice-devel@lfdr.de>; Tue, 30 Mar 2021 17:42:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A15FA6E92F;
	Tue, 30 Mar 2021 15:42:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 749FE6E92F
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Mar 2021 15:42:10 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id d8so6371087plh.11
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Mar 2021 08:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=sVFq/kA43bJmOF4/b3HOKrc7NqQfMQB9mXr2EZ3TeiA=;
 b=sUHm/zdRiWVyNmiCtqHFhcDGBi6IFgLQm4+PElcHwZGb/8BMw8AIEza6jDomjqVIla
 BLoPCxydxMy/rKudTufZINr2wTNuuuUr+98vHdre148ifMYjV+M6RGuphXQqXz+FYesd
 UW8378VJfbZUP0yOzOvH5pzm1aumK4efNuXYCyMvAedsg3CN9yM/1nmNbgjQu+D6ZHMm
 zbD3zYSQ0XjTFSuteF5e7Nx6lmWuofb7rqQlyNCYXShjjJ4ixiybUAuR1Ebjr0Ij6v09
 eTN4F9prCi6vIPhTBikQPGzgzMF0CEV18opFasJr8gvPGmrL/v0ZusQSIDlkk1nZoGUz
 Jt4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=sVFq/kA43bJmOF4/b3HOKrc7NqQfMQB9mXr2EZ3TeiA=;
 b=kLNv4EMl2KTA1Xh3CzNTWtAGt7hUFj4t7txW+Iw9fErqnsLP2UZy+FXoQAQKvFGELf
 C/beQH7r/EVi4ewIBNI0hazdjXE4SWyF9VnwJc0gHt90/UOddwyw6og6eI9E3bj+h7b8
 KGg35wIrHZ9kar9qKYMU0/nj+59uvh0z3vE+mSQUmWidrY2yOcnwSetLcy0WyXhfEzWf
 OHeIF/uLE75d+o4s4DiF+9/OA+RQ+YT+ONxk9GSztY40NSgUlFvnJZCDhZguika+DgeG
 r5E9RNae1SgSIFqmIelDi4tKpXSViPg9oEg6TjFKT1l1fm3i6VFUSyVKr5xuRbdYiBbD
 g6Cw==
X-Gm-Message-State: AOAM5308xYlTbVxSAn65QrxNk6SJn5lfHlaHPLLUoBbcGGvWf6+CHysP
 jTPbSE5K/D6qqHRZWmES49ZY7TqO1abtcJbKI4dAjAlw
X-Google-Smtp-Source: ABdhPJzq9pQH8AIzabd8XIXg9IX9eU5NRfXccgFuLFzpyXwLMZsNCk8WeZG8bF0hdqk1ph5u0h+R+Cu06w1hMFuf7h4=
X-Received: by 2002:a17:90a:a4cb:: with SMTP id
 l11mr4791609pjw.144.1617118929873; 
 Tue, 30 Mar 2021 08:42:09 -0700 (PDT)
MIME-Version: 1.0
From: James Harvey <jamespharvey20@gmail.com>
Date: Tue, 30 Mar 2021 11:41:59 -0400
Message-ID: <CA+X5Wn5k173Z+i2vcW1nXuP1SjCNhUM104iCRMJODrbfGB5Y1A@mail.gmail.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
Subject: [Spice-devel] spice-gtk: Synchronized/duplicated input across
 multiple widgets
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

I think a very useful addition to spice would be
synchronized/duplicated input, so one physical input can be given
simultaneously to multiple spice servers.

The most common use for this might be system administration.  An admin
would be able to connect to multiple machines, and perform common
tasks on all of them at once, such as upgrading software, manual
malware scans, changing settings, etc.

This exists in a few other programs.  There are ssh clients that do
this, but personally I use tmux's synchronized panes feature for this
after I've started different ssh connections in them.  I'm not aware
of any linux GUI remote clients with this feature, and the only
Windows GUI remote clients I'm aware of with it are BlueStacks and
Nox, which are android emulators built upon VM software.

Obviously, it is on the user to ensure input works as intended.  If
servers have different resolutions, layouts, icon placements, if one
hasn't finished a previous task, etc, identical input may not have
identical behavior in all clients.

Before understanding the extent of what spice-gtk handles, I
approached the remmina developers, largely because one instance of
their client can already handle multiple connections in tabs or
separate windows.  Now understanding that spice-gtk receives the
physical mouse input and sends it to the spice server, it looks to me
by far that the easiest way to do this is make a chance in spice-gtk
and then have the clients do whatever is necessary to inform the
widgets to enter/exit this mode.

In tmux, the "setw synchronize-panes" command toggles synchronizing
input among all panes in a window, so giving input to any of them is
duplicated in the others.  There's no master pane that has to be typed
into.

In the Windows android emulators BlueStacks and Nox, their
synchronized input feature allows you on a remote connection window to
select other running connections to receive synchronized input from
that window.  The one you start from is the master window, which you
have to give input to for it to be duplicated.  If you give input into
one of the other windows you've selected to receive synchronization,
the input is only given to that window, which is useful if a window
becomes unsynchronized to easily bring it back to where the others are
without needing to toggle the overall synchronization or turn
including that window off.

I think it would be nice if a spice client could tell spice-gtk to
enter/exit either of these modes: synchronized input among a group of
spice-gtk widgets; or synchronized input made in a master spice-gtk
widget to be given to a number of spice-gtk widgets.

I think a restriction that spice-gtk widgets can only synchronize with
other widgets running on the same machine would simplify
implementation and security concerns.  Perhaps the spice developers
would want only widgets running within the same process to be able to
synchronize.  In that case, remmina might be most easily able to
implement this feature, but other clients could add the ability to run
multiple connections within a single process to be able to implement
it as well.

Is this something someone would like to implement?  If not, is it
something that someone would be willing to mentor, giving me locations
of existing code that likely need changes, etc?  And if I could get it
working, that the feature would likely be accepted as a pull request
rather than denied as an unwanted feature?
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
