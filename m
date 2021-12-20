Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE2A47A575
	for <lists+spice-devel@lfdr.de>; Mon, 20 Dec 2021 08:46:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1017210EF6F;
	Mon, 20 Dec 2021 07:46:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com
 [IPv6:2607:f8b0:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0494310EF6F
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Dec 2021 07:46:06 +0000 (UTC)
Received: by mail-oi1-x231.google.com with SMTP id t23so14603805oiw.3
 for <spice-devel@lists.freedesktop.org>; Sun, 19 Dec 2021 23:46:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=SBPw4nxhZW16YbSNfofUp1sAQmHXP8vGpliNj36AsDQ=;
 b=brpvZG2ivsNamUQuZOlTb9o8804G19+YOZy46ccjaxRhhTORRv0mUBEgr0EwHiShwS
 eqSlr6sKSmfUFtHK5fdPIOjKNpWK9edsdz+dPG9smY9Mi9gBpeeIOCrPZnmN/H3sGgjH
 B6WPsEUKnIu2AeEZkziA8eY+UT1jtVUWLsgiT7+hsn1ihODm+uE7t4wQdUU+BqeVntRH
 leU56DIVdR7SavFFVsp/l1WzCAnGaRy4axqEVS54uAb2SBoiH04wH07JIq6cCsyazF3j
 u3IUAvB5C1U421w3baDVyHLkRAj/kngTHy87s01n/L3bLh8P+5Vm4jVf1jU4TP/sF3Qj
 b+4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=SBPw4nxhZW16YbSNfofUp1sAQmHXP8vGpliNj36AsDQ=;
 b=zBl+RCq+L1BIaShx1DTygmfaJGT75sYzrLXj/gOuLweGy5X0UizPjYHfBFgWhBM1TH
 OnscWRTseHkDl+QZy+Q/Wc05OnCy7F/CUz/TNJCBxUDLiMLoQueIL7wG2oUZjQimOr1/
 ZxF06oID6df8UeS+pYUAmfkzdRDDwj4UZxfDtHNopR0LtB6acTdqD/j3kWed0gIPdmiC
 Ijep3xCSYNf921Foc6CoZBFJ6pbxXLNeJqVgUNKli51x+Il6wzkxQpfkzNXSXl2Ap9f2
 Ul2dO9OQ/MabVHnQsqyshwnIrFjq/ejPDDSERORYmvAfkKdEeT03hErXg2A7Pruvnyce
 J9Mg==
X-Gm-Message-State: AOAM531zL5WBHeN/MC75VZE7RpXtvRoqwNWLpGnKwx+S8+hRVksyfXGH
 UnVBnVQtgPKI1AWmvjq4nd1YEDFUY8+9uMfFEG/J6VbNLis=
X-Google-Smtp-Source: ABdhPJyyBrbTFOKyqlDz1nAlIkriAl4mUCR86c1hsxKs1A6L2mHvQiSzbcsFHUvi26HFlSakGMME/H2L2ieQExYco+4=
X-Received: by 2002:a05:6808:1647:: with SMTP id
 az7mr11168296oib.179.1639986365123; 
 Sun, 19 Dec 2021 23:46:05 -0800 (PST)
MIME-Version: 1.0
From: i iordanov <iiordanov@gmail.com>
Date: Mon, 20 Dec 2021 02:45:29 -0500
Message-ID: <CAMS0tn2RYzqoFQhYXaGRSnOXe9t_Lnz9t2kBah7VL+2H0R57hQ@mail.gmail.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: [Spice-devel] attaching a USB device by libusb_device or
 libusb_device_handle on Android
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
Cc: support@morpheusly.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi guys,

I saw that the developers at libusb have done a bunch of work to
support accessing USB devices on unrooted Android devices, and in
response to a user request, I decided to look into the current state
of the implementation.

I am able to obtain permissions and get both:

libusb_device *dev

and

libusb_device_handle *handle

for an attached USB stick, but now do not have a good idea how to
request libspice to attach the device to the remote.

Is there an API exposed that would permit me to attach devices by
either libusb_device or libusb_device_handle? In either case, any
pointers on how to accomplish this are welcome!

Sincerely,
iordan

-- 
The conscious mind has only one thread of execution.
