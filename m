Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC4576FBA5
	for <lists+spice-devel@lfdr.de>; Fri,  4 Aug 2023 10:06:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B50710E6BB;
	Fri,  4 Aug 2023 08:06:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 1390 seconds by postgrey-1.36 at gabe;
 Thu, 03 Aug 2023 08:19:42 UTC
Received: from mx3.gerwinski.de (mx3.gerwinski.de
 [IPv6:2a01:4f8:192:4405::170:59])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA84B10E5C4
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Aug 2023 08:19:42 +0000 (UTC)
Received: from p548dfd7a.dip0.t-ipconnect.de ([84.141.253.122] helo=mars)
 by m31.gerwinski.de with esmtpa (Exim 4.94.2)
 (envelope-from <f.heckenbach@fh-soft.de>) id 1qRTC6-001pnQ-D8
 for spice-devel@lists.freedesktop.org; Thu, 03 Aug 2023 09:56:28 +0200
Received: from frank by mars with local-rmail (Exim 4.96)
 (envelope-from <f.heckenbach@fh-soft.de>) id 1qRTC6-002fxD-0m
 for spice-devel@lists.freedesktop.org;
 Thu, 03 Aug 2023 09:56:26 +0200
To: spice-devel@lists.freedesktop.org
From: Frank Heckenbach <f.heckenbach@fh-soft.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=ISO-8859-1
Message-Id: <E1qRTC6-002fxD-0m@mars>
Date: Thu, 03 Aug 2023 09:56:26 +0200
X-Mailman-Approved-At: Fri, 04 Aug 2023 08:06:34 +0000
Subject: [Spice-devel] Xspice crashes on start
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

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1038648
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1042862
