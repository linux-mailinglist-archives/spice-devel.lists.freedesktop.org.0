Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 223751D7B3D
	for <lists+spice-devel@lfdr.de>; Mon, 18 May 2020 16:29:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9561F89E2A;
	Mon, 18 May 2020 14:29:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 2040 seconds by postgrey-1.36 at gabe;
 Mon, 18 May 2020 13:00:34 UTC
Received: from relay163.nicmail.ru (relay163.nicmail.ru [91.189.117.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B3A16E31E
 for <spice-devel@lists.freedesktop.org>; Mon, 18 May 2020 13:00:34 +0000 (UTC)
Received: from [10.28.138.152] (port=50410 helo=mail.nic.ru)
 by relay.hosting.mail.nic.ru with esmtp (Exim 5.55)
 (envelope-from <iliya@i-terezie.ru>) id 1jaeqj-00037r-CQ
 for spice-devel@lists.freedesktop.org; Mon, 18 May 2020 15:26:30 +0300
Received: from [10.28.138.49] (account iliya@i-terezie.ru HELO mail.nic.ru)
 by incarp1104.int.hosting.nic.ru (Exim 5.55)
 with id 1jaeqj-0000cE-Os for spice-devel@lists.freedesktop.org;
 Mon, 18 May 2020 15:26:29 +0300
MIME-Version: 1.0
Date: Mon, 18 May 2020 15:26:28 +0300
From: =?UTF-8?Q?=D0=98=D0=BB=D1=8C=D1=8F?= <iliya@i-terezie.ru>
To: spice-devel@lists.freedesktop.org
Message-ID: <5f8d4665157ae5fc7b8e2c27f5d81b14@i-terezie.ru>
X-Sender: iliya@i-terezie.ru
User-Agent: Roundcube Webmail/1.1.9
X-Mailman-Approved-At: Mon, 18 May 2020 14:29:30 +0000
Subject: [Spice-devel] Work via slow networks
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


I have a problem with slow rendering of a changing desktop via a slow 
network. SPICE tries to render all the states of the screen 
sequentially, instead of immediately drawing the final state.

What settings can you remove this behavior?
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
