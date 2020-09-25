Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1E2278D00
	for <lists+spice-devel@lfdr.de>; Fri, 25 Sep 2020 17:42:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B0AD6ED10;
	Fri, 25 Sep 2020 15:42:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com
 [IPv6:2607:f8b0:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2EC06ED10
 for <spice-devel@lists.freedesktop.org>; Fri, 25 Sep 2020 15:42:47 +0000 (UTC)
Received: by mail-ot1-x332.google.com with SMTP id m13so2680618otl.9
 for <spice-devel@lists.freedesktop.org>; Fri, 25 Sep 2020 08:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6Vxsh09KeLPX1uBlO6+5EW5+UkqvpZjbCerUtbMPIxg=;
 b=rDsIXg/oLyd/thU7xeZkqCTXaLWvGGHhl+sU3B0jTtfvD8LydCsnHiTmGESBm3qE3V
 eRkMLYveIznBjGaEJsbImR+hxZN7L7dO6CQuvpEOUrnwb9zBzMkEdOJl7P8Q9mr4uYZN
 xesnqWLrUiUSQ6tP/9uKgjfj6FhBJT6s8CqA0LyHau1zkxc/KBbqYJ3ctgSWouCqNIAk
 618z1baOsLrQZ4FgxrF5vaDEnPib1Sjd7SIzMGzfze4i2WTzt98B/dKdVeAE1FBs89Wx
 HSzdLoq9WLC9tU+jr6LE1HbkuZcgvRYAGK7uxjBDDsUwXrRBxYJCrvswOR3biYsKkpuB
 +lUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6Vxsh09KeLPX1uBlO6+5EW5+UkqvpZjbCerUtbMPIxg=;
 b=dJ3i79+2sBTME9rVZ8pUSavYPnEtyTSe+y46CNutum3TwLY7ix+cURoYgz07YwL4/g
 nlqGuWulthzPYRewKye/RUPSmWdtll1xLRW4AIqUHkmNkGDtlWba2BvZ5COrBpKyiNgd
 kntFA/CM3acgZBWmYn0e6ZAXaNzePG+nDjj3KHlB4vZoOrF7Dd5vpTZm/otTlPIUaXpF
 rs+t7f1hbfYlHTANBHFpb28fDD712mq/7cLi5n/zibhpYMSiq3Z44ZTQIwRieLdDNU7T
 kgWt3FQeFdDTZgKDTFBcxWQufusP34lTeavtHQVbfUELce+miXP2BNgB/xPUTv6+/Ne3
 Jwrg==
X-Gm-Message-State: AOAM530h2ZPsh+o+/PCUQ4vZZBu7aizMusFGpMnHszaGDmbfYaZ2iP9y
 Yb2oGE3rAwFbJoW0LHeG//BgIPHor9Y=
X-Google-Smtp-Source: ABdhPJy0iu93v1fACI1DsjRb1h09SI3yfAHFdr9v7hILoGYUOarhoUnyLhYaJvE+VoMyy6Q7SJaExQ==
X-Received: by 2002:a9d:27a1:: with SMTP id c30mr698270otb.214.1601048566762; 
 Fri, 25 Sep 2020 08:42:46 -0700 (PDT)
Received: from ian.penurio.us ([47.184.24.231])
 by smtp.gmail.com with ESMTPSA id j24sm709870otn.64.2020.09.25.08.42.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Sep 2020 08:42:46 -0700 (PDT)
From: Ian Pilcher <arequipeno@gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
References: <rkg5ci$shh$1@ciao.gmane.io>
 <797216314.2109588.1601019269472.JavaMail.zimbra@redhat.com>
 <0e7f6ade-765e-aa65-ff6d-7c3a46f759a8@gmail.com>
Message-ID: <0534731c-4506-e8ba-25df-fa26fe448085@gmail.com>
Date: Fri, 25 Sep 2020 10:42:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <0e7f6ade-765e-aa65-ff6d-7c3a46f759a8@gmail.com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 9/25/20 9:47 AM, Ian Pilcher wrote:
> On 9/25/20 2:34 AM, Frediano Ziglio wrote:
> 
>> Can you post the agent logs when it's not working?
> 
> Where are the agent logs stored?
> 

Found 'em.

Here is the vdagent.log when the GPU is disabled (when the mouse works):

4348::INFO::2020-09-25 10:26:31,627::run::***Agent started in session 1***
4348::INFO::2020-09-25 10:26:31,627::log_version::0.9.0.0
4348::INFO::2020-09-25 10:26:31,627::debug_print_config::\\.\DISPLAY1 
[Before SetDisplayConfig] (0,0) (1680x1050).
4348::INFO::2020-09-25 10:26:31,627::set_display_config::path states 
says nothing changed
4348::INFO::2020-09-25 10:26:31,627::consistent_displays::#qxls 1 #others 0
4348::INFO::2020-09-25 10:26:31,643::send_announce_capabilities::Sending 
capabilities:
4348::INFO::2020-09-25 10:26:31,643::send_announce_capabilities::6B7
4348::INFO::2020-09-25 10:26:31,643::run::Connected to server
4348::INFO::2020-09-25 
10:26:31,643::input_desktop_message_loop::Desktop: Winlogon
4348::INFO::2020-09-25 10:26:31,658::handle_announce_capabilities::Got 
capabilities (1)
4348::INFO::2020-09-25 10:26:31,674::handle_announce_capabilities::35077
4348::INFO::2020-09-25 10:26:31,674::send_announce_capabilities::Sending 
capabilities:
4348::INFO::2020-09-25 10:26:31,674::send_announce_capabilities::6B7
4348::INFO::2020-09-25 10:26:31,674::handle_announce_capabilities::Got 
capabilities (1)
4348::INFO::2020-09-25 10:26:31,674::handle_announce_capabilities::35077
4348::INFO::2020-09-25 10:26:31,674::set::setting display options
4348::INFO::2020-09-25 10:26:31,674::get_user_process_id::explorer.exe 
not found
4348::INFO::2020-09-25 
10:26:31,674::reload_from_registry::get_user_process_id failed
4348::INFO::2020-09-25 10:26:31,674::handle_max_clipboard::Set max 
clipboard size: 104857600
4348::INFO::2020-09-25 10:26:31,674::handle_mon_config::0. 1680*1050*32 
(0,0) 1
4348::INFO::2020-09-25 10:26:31,674::consistent_displays::#qxls 1 #others 0
4348::INFO::2020-09-25 10:26:31,674::update_mode_position::\\.\DISPLAY1 
updated path mode to (0, 0) - (1680 x1050)
4348::INFO::2020-09-25 10:26:31,674::handle_max_clipboard::Set max 
clipboard size: 104857600
4348::INFO::2020-09-25 10:26:31,674::handle_mon_config::0. 1680*1050*32 
(0,0) 1
4348::INFO::2020-09-25 10:26:31,674::consistent_displays::#qxls 1 #others 0
4348::INFO::2020-09-25 10:26:31,674::update_mode_position::\\.\DISPLAY1 
updated path mode to (0, 0) - (1680 x1050)
4348::INFO::2020-09-25 10:26:33,408::handle_control_event::Control command 3
4348::INFO::2020-09-25 10:26:33,408::handle_control_event::session logon
4348::INFO::2020-09-25 10:26:36,440::handle_control_event::Control command 2
4348::INFO::2020-09-25 
10:26:36,440::input_desktop_message_loop::Desktop: Default
4348::INFO::2020-09-25 10:26:36,440::input_desktop_message_loop::First 
display setting
4348::INFO::2020-09-25 10:26:36,440::load::loading display setting
4348::INFO::2020-09-25 10:26:36,440::reload_from_registry::explorer pid 5796
4348::INFO::2020-09-25 10:26:36,440::reload_wallpaper::
4348::INFO::2020-09-25 10:26:36,440::reload_wallpaper::wallpaper wasn't 
disabled
4348::INFO::2020-09-25 10:26:36,440::reload_font_smoothing::
4348::INFO::2020-09-25 10:26:36,440::reload_font_smoothing::font 
smoothing value didn't change
4348::INFO::2020-09-25 10:26:36,440::reload_animation::
4348::INFO::2020-09-25 10:26:36,440::reload_win_animation::
4348::INFO::2020-09-25 10:26:36,440::reload_win_animation::reload window 
animation: success
4348::INFO::2020-09-25 10:26:36,440::reload_ui_effects::
4348::INFO::2020-09-25 
10:26:36,440::reload_ui_effects::UserPreferencesMask = 80071e9e 12
4348::INFO::2020-09-25 10:26:46,268::handle_control_event::Control command 2
4348::INFO::2020-09-25 
10:26:46,268::input_desktop_message_loop::Desktop: Winlogon
4348::INFO::2020-09-25 10:26:50,596::handle_control_event::Control command 2
4348::INFO::2020-09-25 
10:26:50,596::input_desktop_message_loop::Desktop: Default
4348::INFO::2020-09-25 10:27:48,096::event_dispatcher::received stop event
4348::INFO::2020-09-25 10:27:48,112::run::Agent stopped

And here is vdagent.log when the GPU is enabled (when the mouse doesn't
work):

4172::INFO::2020-09-25 10:09:09,885::run::***Agent started in session 1***
4172::INFO::2020-09-25 10:09:09,885::log_version::0.9.0.0
4172::INFO::2020-09-25 10:09:09,885::debug_print_config::\\.\DISPLAY1 
[Before SetDisplayConfig] (0,0) (1680x1050).
4172::INFO::2020-09-25 10:09:09,885::set_display_config::path states 
says nothing changed
4172::INFO::2020-09-25 10:09:09,885::consistent_displays::#qxls 1 #others 4
4172::INFO::2020-09-25 10:09:09,885::run::No QXL devices!
4172::INFO::2020-09-25 10:09:09,901::send_announce_capabilities::Sending 
capabilities:
4172::INFO::2020-09-25 10:09:09,901::send_announce_capabilities::6B7
4172::INFO::2020-09-25 10:09:09,901::run::Connected to server
4172::INFO::2020-09-25 
10:09:09,901::input_desktop_message_loop::Desktop: Winlogon
4172::INFO::2020-09-25 10:09:09,916::handle_announce_capabilities::Got 
capabilities (1)
4172::INFO::2020-09-25 10:09:09,916::handle_announce_capabilities::35077
4172::INFO::2020-09-25 10:09:09,916::send_announce_capabilities::Sending 
capabilities:
4172::INFO::2020-09-25 10:09:09,916::send_announce_capabilities::6B7
4172::INFO::2020-09-25 10:09:09,916::handle_announce_capabilities::Got 
capabilities (1)
4172::INFO::2020-09-25 10:09:09,916::handle_announce_capabilities::35077
4172::INFO::2020-09-25 10:09:09,916::set::setting display options
4172::INFO::2020-09-25 10:09:09,916::get_user_process_id::explorer.exe 
not found
4172::INFO::2020-09-25 
10:09:09,916::reload_from_registry::get_user_process_id failed
4172::INFO::2020-09-25 10:09:09,916::handle_max_clipboard::Set max 
clipboard size: 104857600
4172::INFO::2020-09-25 10:09:09,916::consistent_displays::#qxls 1 #others 4
4172::INFO::2020-09-25 10:09:09,916::handle_max_clipboard::Set max 
clipboard size: 104857600
4172::INFO::2020-09-25 10:09:09,916::consistent_displays::#qxls 1 #others 4
4172::INFO::2020-09-25 10:09:12,182::handle_control_event::Control command 3
4172::INFO::2020-09-25 10:09:12,182::handle_control_event::session logon
4172::INFO::2020-09-25 10:09:15,651::handle_control_event::Control command 2
4172::INFO::2020-09-25 
10:09:15,651::input_desktop_message_loop::Desktop: Default
4172::INFO::2020-09-25 10:09:15,651::input_desktop_message_loop::First 
display setting
4172::INFO::2020-09-25 10:09:15,651::load::loading display setting
4172::INFO::2020-09-25 10:09:15,666::reload_from_registry::explorer pid 6488
4172::INFO::2020-09-25 10:09:15,666::reload_wallpaper::
4172::INFO::2020-09-25 10:09:15,666::reload_wallpaper::wallpaper wasn't 
disabled
4172::INFO::2020-09-25 10:09:15,666::reload_font_smoothing::
4172::INFO::2020-09-25 10:09:15,666::reload_font_smoothing::font 
smoothing value didn't change
4172::INFO::2020-09-25 10:09:15,666::reload_animation::
4172::INFO::2020-09-25 10:09:15,666::reload_win_animation::
4172::INFO::2020-09-25 10:09:15,666::reload_win_animation::reload window 
animation: success
4172::INFO::2020-09-25 10:09:15,666::reload_ui_effects::
4172::INFO::2020-09-25 
10:09:15,666::reload_ui_effects::UserPreferencesMask = 80071e9e 12
4172::INFO::2020-09-25 10:09:23,104::handle_control_event::Control command 2
4172::INFO::2020-09-25 
10:09:23,104::input_desktop_message_loop::Desktop: Winlogon
4172::INFO::2020-09-25 10:09:27,416::handle_control_event::Control command 2
4172::INFO::2020-09-25 
10:09:27,416::input_desktop_message_loop::Desktop: Default
4172::INFO::2020-09-25 10:10:36,182::event_dispatcher::received stop event
4172::INFO::2020-09-25 10:10:36,182::run::Agent stopped

Line 6 of the non-working log says "run::No QXL devices!", which does
seem like it might be a problem.  :-)

(Is the a bug tracker somewhere that would be a more appropriate place
for this?)

Thanks!

-- 
========================================================================
Ian Pilcher                                         arequipeno@gmail.com
-------- "I grew up before Mark Zuckerberg invented friendship" --------
========================================================================
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
