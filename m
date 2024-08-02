Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F9F945E1F
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2024 14:53:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E301310E0BC;
	Fri,  2 Aug 2024 12:53:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 7390 seconds by postgrey-1.36 at gabe;
 Fri, 02 Aug 2024 12:53:00 UTC
Received: from ms-10.1blu.de (ms-10.1blu.de [178.254.4.101])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8FA310E0BC
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2024 12:53:00 +0000 (UTC)
Received: from [37.201.240.20] (helo=[192.168.179.14])
 by ms-10.1blu.de with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mnl@mnl.de>) id 1sZpr1-00FFIO-Ry;
 Fri, 02 Aug 2024 12:49:47 +0200
Message-ID: <88627e60-b00d-4002-bc9a-7f9be7e96640@mnl.de>
Date: Fri, 2 Aug 2024 12:49:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: spice-devel@lists.freedesktop.org
Content-Language: de-DE
From: Michael Lipp <mnl@mnl.de>
Subject: virtio-vga two monitors and spice
Autocrypt: addr=mnl@mnl.de; keydata=
 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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Con-Id: 352429
X-Con-U: 0-mnl
X-Originating-IP: 37.201.240.20
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

Hi,

when I start qemu with "-device virtio-vga,max_outputs=2" and connect 
using spice, I get two windows representing two monitors as expected.

However, only one of these works. The other shows "Display output is not 
active.". xrandr says "Virtual-2 disconnected" (consistent but not helpful).

Is this supposed to work? If so, what am I missing? Or do I have to use 
QXL in order to use two monitors?

     Michael


