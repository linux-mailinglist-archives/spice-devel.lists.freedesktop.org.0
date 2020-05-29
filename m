Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D55F1E7DDB
	for <lists+spice-devel@lfdr.de>; Fri, 29 May 2020 15:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16A896E8EF;
	Fri, 29 May 2020 13:04:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from forward106o.mail.yandex.net (forward106o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::609])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1993C6E8EF
 for <spice-devel@lists.freedesktop.org>; Fri, 29 May 2020 13:04:49 +0000 (UTC)
Received: from mxback21o.mail.yandex.net (mxback21o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::72])
 by forward106o.mail.yandex.net (Yandex) with ESMTP id B30315061E96
 for <spice-devel@lists.freedesktop.org>; Fri, 29 May 2020 16:04:45 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback21o.mail.yandex.net (mxback/Yandex) with ESMTP id T7uvi9gpwW-4j50bZwK;
 Fri, 29 May 2020 16:04:45 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1590757485; bh=KZDccX8tst29ES5b7LaLcwmWZ4Q1mcYuEC1p3gfsN04=;
 h=Message-Id:Date:Subject:To:From;
 b=tcWbN9E9FkJiZICJSzMB/ek0prhmDy7cpDcr52NwOUXxhSd5XQIjp9ZM/qDoxH9gt
 9369XMiua+6WO6hnhu2Zl3Nid8gdJw1qEKodSYAETsZqghCRBcBjCvqnmMFQkyeJL7
 Sqazf6WJtAPzufT4H5poK1+Efb2RPS2IeQ5neMOc=
Authentication-Results: mxback21o.mail.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by sas1-17582c8cbad7.qloud-c.yandex.net with HTTP;
 Fri, 29 May 2020 16:04:45 +0300
From: ole-krutov@yandex.ru
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Fri, 29 May 2020 16:04:45 +0300
Message-Id: <1173961590757190@mail.yandex.ru>
Subject: [Spice-devel] spice-streaming-agent and Wayland?
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
Content-Type: multipart/mixed; boundary="===============1426461640=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1426461640==
Content-Transfer-Encoding: 8bit
Content-Type: text/html; charset=utf-8

<div>Hi all,</div><div> </div><div>with "standard" X session there's no problem to run spice-streaming-agent, just set up DISPLAY and XAUTHORITY env vars and we ready to go.  But what to do in case, for example, ubuntu 20.04 in its default flavour? There's no such variables and I suspect that there's much differencies under the hood...</div>

--===============1426461640==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1426461640==--
