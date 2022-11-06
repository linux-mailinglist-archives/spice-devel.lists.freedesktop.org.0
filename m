Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1F761E0CE
	for <lists+spice-devel@lfdr.de>; Sun,  6 Nov 2022 09:10:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADC3210E013;
	Sun,  6 Nov 2022 08:10:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7082A10E203
 for <spice-devel@lists.freedesktop.org>; Sun,  6 Nov 2022 07:02:31 +0000 (UTC)
Date: Sun, 06 Nov 2022 07:02:12 +0000
Authentication-Results: mail-41103.protonmail.ch;
 dkim=pass (2048-bit key) header.d=proton.me header.i=@proton.me
 header.b="Uk7PLRHg"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
 s=protonmail; t=1667718144; x=1667977344;
 bh=9WWPpcUu/aiHFPz1/MorNKDsAk1QdtAl6HAR9Te6ZRw=;
 h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=Uk7PLRHgk0oXvnQ5yVFT9WQCkYgCQZlpPz+pzWGWwLQh1q2sA8BvDrhptpbIxgKny
 rwoxIx440N0Ph6hydF4kXr3IKMZ0CwwkNirsZ/AmoLsbBIKE1ZoyIW0CBgnyS6iMLG
 5LSYsJAEhDuWXEtRsQn7khfyDUWnlIMCJGDGsRDXSHVGxkqYpX+bRPaW29mZbZtgA4
 omsCOl2tUKNFHPUN5mKSVKB2sWtopgnN6tJO3Cd7ExJs4eE4luLnSiNHRI8TVzkTj+
 sPjAt8mO6ozZBMQeihGnzIDLbG+KFDkDJdNl8NUuAh5a6ZX/OljQN2ubTaS/wHC6Jb
 h46ohf6pqDVKA==
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
From: let-me-use-copy-and-paste <let-me-use-copy-and-paste@proton.me>
Message-ID: <PYPGGnYoyG-Z7cu7sTB5CUQnfLogiolh-k4lRx8ajo4vNyZDFnkqPNzftiZIDVzziqXf6LxYpAQt3kw5rnHWNdOrao_ObxBN58ZAM_IHGCY=@proton.me>
Feedback-ID: 60728310:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Sun, 06 Nov 2022 08:10:18 +0000
Subject: [Spice-devel] Agent crashes on Alpine Linux guest due to lack of
 /dev/uinput
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

I installed Alpine Linux 3.16 virtual machine edition on QEMU/KVM using Vir=
t-Manager. I installed XFCE on it. I wanted to enable copy-and-paste, so I =
tried to install spice-vdagent on it, but it kept crashing. I checked the o=
utput using the "-x" parameter, and basically, it crashed due to the lack o=
f /dev/uinput. The screenshot is at=C2=A0https://i.imgur.com/9WKaVG8.png

I do not know Linux much, so I am not sure if /dev/uinput is not present du=
e to the settings of the virtual machine or because I have not installed so=
mething on Alpine Linux. I tried the standard edition of Alpine, and right =
after the installation, /dev/uinput was not present.

In case that Alpine Linux indeed does not support /dev/uinput, can't the sp=
ice service run anyway? All I want is text copy-and-paste between the host =
and the guest, and does that feature need /dev/uinput?
