Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C8D278ECC
	for <lists+spice-devel@lfdr.de>; Fri, 25 Sep 2020 18:39:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17A946ED3D;
	Fri, 25 Sep 2020 16:39:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 469FE89829
 for <spice-devel@lists.freedesktop.org>; Fri, 25 Sep 2020 16:39:08 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601051946;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Qkz2XZY5tWk3FC0iZDEuadag9IsejIcTr8olqaTEpWI=;
 b=SZQrbOwSlcjIbfGVgF2Nz+MGctisgxp9NE8TcmEocXSo39kUD5DJ1S9/Ao4oAj6gG39Z0Q
 0A58lQs5HaW7KRmAee5MDPNGpHSp0MZ+v7ciKrCGaDGWLneXGY/RRtFkb57ydFztI+eER0
 zt7T9A1Fmcj6sOdSk76jkgm9gwAz3fA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-479-wSxmz4EIM5CGd9ngTYWsTQ-1; Fri, 25 Sep 2020 12:39:04 -0400
X-MC-Unique: wSxmz4EIM5CGd9ngTYWsTQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 02E76104D3F3;
 Fri, 25 Sep 2020 16:39:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EE4615576F;
 Fri, 25 Sep 2020 16:39:02 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E4CA41826D2A;
 Fri, 25 Sep 2020 16:39:02 +0000 (UTC)
Date: Fri, 25 Sep 2020 12:39:01 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Ian Pilcher <arequipeno@gmail.com>
Message-ID: <276489302.2166051.1601051941846.JavaMail.zimbra@redhat.com>
In-Reply-To: <0534731c-4506-e8ba-25df-fa26fe448085@gmail.com>
References: <rkg5ci$shh$1@ciao.gmane.io>
 <797216314.2109588.1601019269472.JavaMail.zimbra@redhat.com>
 <0e7f6ade-765e-aa65-ff6d-7c3a46f759a8@gmail.com>
 <0534731c-4506-e8ba-25df-fa26fe448085@gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.1]
Thread-Topic: Windows 10 VDAgent incompatible with "hidden" KVM?
Thread-Index: +aCUvbbGq5gIAa7ix3Uw7bIGnhMI3Q==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Windows 10 VDAgent incompatible with "hidden" KVM?
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

> 
> On 9/25/20 9:47 AM, Ian Pilcher wrote:
> > On 9/25/20 2:34 AM, Frediano Ziglio wrote:
> > 
> >> Can you post the agent logs when it's not working?
> > 
> > Where are the agent logs stored?
> > 
> 
> Found 'em.
> 
> Here is the vdagent.log when the GPU is disabled (when the mouse works):
> 
> 4348::INFO::2020-09-25 10:26:31,627::run::***Agent started in session 1***
> 4348::INFO::2020-09-25 10:26:31,627::log_version::0.9.0.0
> 4348::INFO::2020-09-25 10:26:31,627::debug_print_config::\\.\DISPLAY1
> [Before SetDisplayConfig] (0,0) (1680x1050).
> 4348::INFO::2020-09-25 10:26:31,627::set_display_config::path states
> says nothing changed
> 4348::INFO::2020-09-25 10:26:31,627::consistent_displays::#qxls 1 #others 0
> 4348::INFO::2020-09-25 10:26:31,643::send_announce_capabilities::Sending
> capabilities:
> 4348::INFO::2020-09-25 10:26:31,643::send_announce_capabilities::6B7
> 4348::INFO::2020-09-25 10:26:31,643::run::Connected to server
> 4348::INFO::2020-09-25
> 10:26:31,643::input_desktop_message_loop::Desktop: Winlogon
> 4348::INFO::2020-09-25 10:26:31,658::handle_announce_capabilities::Got
> capabilities (1)
> 4348::INFO::2020-09-25 10:26:31,674::handle_announce_capabilities::35077
> 4348::INFO::2020-09-25 10:26:31,674::send_announce_capabilities::Sending
> capabilities:
> 4348::INFO::2020-09-25 10:26:31,674::send_announce_capabilities::6B7
> 4348::INFO::2020-09-25 10:26:31,674::handle_announce_capabilities::Got
> capabilities (1)
> 4348::INFO::2020-09-25 10:26:31,674::handle_announce_capabilities::35077
> 4348::INFO::2020-09-25 10:26:31,674::set::setting display options
> 4348::INFO::2020-09-25 10:26:31,674::get_user_process_id::explorer.exe
> not found
> 4348::INFO::2020-09-25
> 10:26:31,674::reload_from_registry::get_user_process_id failed
> 4348::INFO::2020-09-25 10:26:31,674::handle_max_clipboard::Set max
> clipboard size: 104857600
> 4348::INFO::2020-09-25 10:26:31,674::handle_mon_config::0. 1680*1050*32
> (0,0) 1
> 4348::INFO::2020-09-25 10:26:31,674::consistent_displays::#qxls 1 #others 0
> 4348::INFO::2020-09-25 10:26:31,674::update_mode_position::\\.\DISPLAY1
> updated path mode to (0, 0) - (1680 x1050)
> 4348::INFO::2020-09-25 10:26:31,674::handle_max_clipboard::Set max
> clipboard size: 104857600
> 4348::INFO::2020-09-25 10:26:31,674::handle_mon_config::0. 1680*1050*32
> (0,0) 1
> 4348::INFO::2020-09-25 10:26:31,674::consistent_displays::#qxls 1 #others 0
> 4348::INFO::2020-09-25 10:26:31,674::update_mode_position::\\.\DISPLAY1
> updated path mode to (0, 0) - (1680 x1050)
> 4348::INFO::2020-09-25 10:26:33,408::handle_control_event::Control command 3
> 4348::INFO::2020-09-25 10:26:33,408::handle_control_event::session logon
> 4348::INFO::2020-09-25 10:26:36,440::handle_control_event::Control command 2
> 4348::INFO::2020-09-25
> 10:26:36,440::input_desktop_message_loop::Desktop: Default
> 4348::INFO::2020-09-25 10:26:36,440::input_desktop_message_loop::First
> display setting
> 4348::INFO::2020-09-25 10:26:36,440::load::loading display setting
> 4348::INFO::2020-09-25 10:26:36,440::reload_from_registry::explorer pid 5796
> 4348::INFO::2020-09-25 10:26:36,440::reload_wallpaper::
> 4348::INFO::2020-09-25 10:26:36,440::reload_wallpaper::wallpaper wasn't
> disabled
> 4348::INFO::2020-09-25 10:26:36,440::reload_font_smoothing::
> 4348::INFO::2020-09-25 10:26:36,440::reload_font_smoothing::font
> smoothing value didn't change
> 4348::INFO::2020-09-25 10:26:36,440::reload_animation::
> 4348::INFO::2020-09-25 10:26:36,440::reload_win_animation::
> 4348::INFO::2020-09-25 10:26:36,440::reload_win_animation::reload window
> animation: success
> 4348::INFO::2020-09-25 10:26:36,440::reload_ui_effects::
> 4348::INFO::2020-09-25
> 10:26:36,440::reload_ui_effects::UserPreferencesMask = 80071e9e 12
> 4348::INFO::2020-09-25 10:26:46,268::handle_control_event::Control command 2
> 4348::INFO::2020-09-25
> 10:26:46,268::input_desktop_message_loop::Desktop: Winlogon
> 4348::INFO::2020-09-25 10:26:50,596::handle_control_event::Control command 2
> 4348::INFO::2020-09-25
> 10:26:50,596::input_desktop_message_loop::Desktop: Default
> 4348::INFO::2020-09-25 10:27:48,096::event_dispatcher::received stop event
> 4348::INFO::2020-09-25 10:27:48,112::run::Agent stopped
> 
> And here is vdagent.log when the GPU is enabled (when the mouse doesn't
> work):
> 
> 4172::INFO::2020-09-25 10:09:09,885::run::***Agent started in session 1***
> 4172::INFO::2020-09-25 10:09:09,885::log_version::0.9.0.0
> 4172::INFO::2020-09-25 10:09:09,885::debug_print_config::\\.\DISPLAY1
> [Before SetDisplayConfig] (0,0) (1680x1050).
> 4172::INFO::2020-09-25 10:09:09,885::set_display_config::path states
> says nothing changed
> 4172::INFO::2020-09-25 10:09:09,885::consistent_displays::#qxls 1 #others 4
> 4172::INFO::2020-09-25 10:09:09,885::run::No QXL devices!
> 4172::INFO::2020-09-25 10:09:09,901::send_announce_capabilities::Sending
> capabilities:
> 4172::INFO::2020-09-25 10:09:09,901::send_announce_capabilities::6B7
> 4172::INFO::2020-09-25 10:09:09,901::run::Connected to server
> 4172::INFO::2020-09-25
> 10:09:09,901::input_desktop_message_loop::Desktop: Winlogon
> 4172::INFO::2020-09-25 10:09:09,916::handle_announce_capabilities::Got
> capabilities (1)
> 4172::INFO::2020-09-25 10:09:09,916::handle_announce_capabilities::35077
> 4172::INFO::2020-09-25 10:09:09,916::send_announce_capabilities::Sending
> capabilities:
> 4172::INFO::2020-09-25 10:09:09,916::send_announce_capabilities::6B7
> 4172::INFO::2020-09-25 10:09:09,916::handle_announce_capabilities::Got
> capabilities (1)
> 4172::INFO::2020-09-25 10:09:09,916::handle_announce_capabilities::35077
> 4172::INFO::2020-09-25 10:09:09,916::set::setting display options
> 4172::INFO::2020-09-25 10:09:09,916::get_user_process_id::explorer.exe
> not found
> 4172::INFO::2020-09-25
> 10:09:09,916::reload_from_registry::get_user_process_id failed
> 4172::INFO::2020-09-25 10:09:09,916::handle_max_clipboard::Set max
> clipboard size: 104857600
> 4172::INFO::2020-09-25 10:09:09,916::consistent_displays::#qxls 1 #others 4
> 4172::INFO::2020-09-25 10:09:09,916::handle_max_clipboard::Set max
> clipboard size: 104857600
> 4172::INFO::2020-09-25 10:09:09,916::consistent_displays::#qxls 1 #others 4
> 4172::INFO::2020-09-25 10:09:12,182::handle_control_event::Control command 3
> 4172::INFO::2020-09-25 10:09:12,182::handle_control_event::session logon
> 4172::INFO::2020-09-25 10:09:15,651::handle_control_event::Control command 2
> 4172::INFO::2020-09-25
> 10:09:15,651::input_desktop_message_loop::Desktop: Default
> 4172::INFO::2020-09-25 10:09:15,651::input_desktop_message_loop::First
> display setting
> 4172::INFO::2020-09-25 10:09:15,651::load::loading display setting
> 4172::INFO::2020-09-25 10:09:15,666::reload_from_registry::explorer pid 6488
> 4172::INFO::2020-09-25 10:09:15,666::reload_wallpaper::
> 4172::INFO::2020-09-25 10:09:15,666::reload_wallpaper::wallpaper wasn't
> disabled
> 4172::INFO::2020-09-25 10:09:15,666::reload_font_smoothing::
> 4172::INFO::2020-09-25 10:09:15,666::reload_font_smoothing::font
> smoothing value didn't change
> 4172::INFO::2020-09-25 10:09:15,666::reload_animation::
> 4172::INFO::2020-09-25 10:09:15,666::reload_win_animation::
> 4172::INFO::2020-09-25 10:09:15,666::reload_win_animation::reload window
> animation: success
> 4172::INFO::2020-09-25 10:09:15,666::reload_ui_effects::
> 4172::INFO::2020-09-25
> 10:09:15,666::reload_ui_effects::UserPreferencesMask = 80071e9e 12
> 4172::INFO::2020-09-25 10:09:23,104::handle_control_event::Control command 2
> 4172::INFO::2020-09-25
> 10:09:23,104::input_desktop_message_loop::Desktop: Winlogon
> 4172::INFO::2020-09-25 10:09:27,416::handle_control_event::Control command 2
> 4172::INFO::2020-09-25
> 10:09:27,416::input_desktop_message_loop::Desktop: Default
> 4172::INFO::2020-09-25 10:10:36,182::event_dispatcher::received stop event
> 4172::INFO::2020-09-25 10:10:36,182::run::Agent stopped
> 
> Line 6 of the non-working log says "run::No QXL devices!", which does
> seem like it might be a problem.  :-)
>

Yes, it's caused by the "#qxls 1 #others 4", the agent currently does not
like a mix of both QXL and something else. It looks like different tools
create multiple displays. 

There was a recent patch but specifically for a Citrix product.

Maybe it would be a good time to have a fix for more cases.

> (Is the a bug tracker somewhere that would be a more appropriate place
> for this?)
> 
> Thanks!
> 
> --
> ========================================================================
> Ian Pilcher                                         arequipeno@gmail.com
> -------- "I grew up before Mark Zuckerberg invented friendship" --------

More than "invented" I hope "redefined".

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
