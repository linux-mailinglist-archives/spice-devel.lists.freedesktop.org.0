Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB817671FB
	for <lists+spice-devel@lfdr.de>; Fri, 28 Jul 2023 18:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 815C410E0E3;
	Fri, 28 Jul 2023 16:37:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com
 [IPv6:2607:f8b0:4864:20::c33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FFCD10E0E3
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jul 2023 16:37:10 +0000 (UTC)
Received: by mail-oo1-xc33.google.com with SMTP id
 006d021491bc7-5675add2980so1606482eaf.3
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jul 2023 09:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690562229; x=1691167029;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KKv1w7dg8mQlsNAkT0vBA16O9vhHrc1kpvvsh4ku/f4=;
 b=pBtSr98b51C7nGb2gxDXRTULz6Wqh83vR/SeWmoqhx9tIAMvPGbGxMOx06AZP0nWcI
 tanNTZP18qwXgUBC0XXuIaDkL5Fv8lxXCHV0MlHTI25qrGnYLLIFvVbzTb2g8lc6VpRH
 un98S68dMnpzRdT/t7bYrqnd7L5yr/XqxjwuZQ+lb2bIyp9jWCq5lyx7dNrWjbUk/bcb
 LhftGtc1K19KwfQLuEm8eVULllWrTxHbcI39a9ocq01qxBuvg1f9eswBHNtcZ3+ebn+t
 D2A1OqUjNi7eyxaacUEDmmA//SHf88FCGeVRc0NG6qC6NPP4ciG+d5hIOaLWXvTNZc1x
 BLXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690562229; x=1691167029;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KKv1w7dg8mQlsNAkT0vBA16O9vhHrc1kpvvsh4ku/f4=;
 b=b7o02RYrSYQVchVDWAtbpmBaHHYJ+zpMIIat+iJ7vDm8uGr73bS/dSgV4y1ZWt38DE
 vXr4p8ixQd7H2X3kdoU/W7eV+g3IroHrnaqPEOf61F6rWBIY4OBbWm/FEPurNEazTlmO
 0CaHeCxT0lGGv9ZieYZpgVKZwRQXMjGbI2KMipiD41ziptc1O8zzBqqr1XbePDme5hYO
 DE81vpRYMkw1Yp0nXas2WfWtxZ91GS2P4/BvIJQLvi9co4u5QOX9nKBaN0XF+AwxWFFC
 AyJho4aN3EEtIBv4EXKSximX/l8fTabY2dErlHAmMlwInvdmXo77sUL7/+RXoYb5NoXF
 sqng==
X-Gm-Message-State: ABy/qLar25wEzvmoSUAkfZF3IPOoP1yWAdxpEmThRDqqDRVe/JBVbLxx
 UsbYnzx1gf+WAO/XdqyVawpC6MMKRiBzmsvfmk0338JlRZ8=
X-Google-Smtp-Source: APBJJlGaw3jjRIdSQhPG4EG0sFV2efipWCD8zYlyjE1/lUOZIJly5HDNz0YvUsMuDyVs1aL4x3sopRLvFYpOSl3CT4g=
X-Received: by 2002:a4a:3452:0:b0:563:49fd:e772 with SMTP id
 n18-20020a4a3452000000b0056349fde772mr2993736oof.4.1690562229144; Fri, 28 Jul
 2023 09:37:09 -0700 (PDT)
MIME-Version: 1.0
References: <310653f2.21156.1899a420e01.Coremail.32217118@mail.dlut.edu.cn>
In-Reply-To: <310653f2.21156.1899a420e01.Coremail.32217118@mail.dlut.edu.cn>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 28 Jul 2023 17:36:58 +0100
Message-ID: <CAHt6W4eDZhSz7hk+DXtiecnhT_rwqBvhutB9yS82E2=r5SY-yg@mail.gmail.com>
To: =?UTF-8?B?6ZyN6YeR6bmP?= <32217118@mail.dlut.edu.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [spice-streaming-agent]spice-streaming-agent
 warning
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno ven 28 lug 2023 alle ore 03:10 =E9=9C=8D=E9=87=91=E9=B9=8F
<32217118@mail.dlut.edu.cn> ha scritto:
>
> Hello dear devs,
>
> spice-streaming-agent create a new display window but all black on client=
 , and a message in guest's terminal:
>
> spice-streaming-agent[9710]: Warning: the Frame Capture plugin returned d=
evice display info for more than one display device, but we currently only =
support a single device. Sending information for first device to the server=
.
>
>
> what should I do to solve this prooblem?
>
> Thanks in advance !

Hi,
  I don't remember how the check is exactly done but basically the
agent is complaining that you have more than 1 cards.
How many Gpu cards did you assign to the guest and with which types?
Looking at the code the error string is in
src/spice-streaming-agent.cpp checking the response of
get_device_display_info call to the plugin.
The agent can load multiple plugins and choose the best one based on
client codecs and other information. By default there's a mjpeg plugin
(mainly for fallback) and installed a GStreamer plugin. If I remember
(but maybe I'm wrong) they use Xorg/X11.

Frediano
