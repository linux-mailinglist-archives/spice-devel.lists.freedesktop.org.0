Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7128895A98
	for <lists+spice-devel@lfdr.de>; Tue,  2 Apr 2024 19:23:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ECA810FEC1;
	Tue,  2 Apr 2024 17:23:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=codeweavers.com header.i=@codeweavers.com header.b="TafIRkip";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 990 seconds by postgrey-1.36 at gabe;
 Tue, 02 Apr 2024 17:23:26 UTC
Received: from mail.codeweavers.com (mail.codeweavers.com [4.36.192.163])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AEFB10FEC3
 for <spice-devel@lists.freedesktop.org>; Tue,  2 Apr 2024 17:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=s1; h=Subject:From:To:Date:Message-ID:Cc:Sender;
 bh=2pohERmOAMDk+q9Ft9xyxajCbNSEvsvMdOq2UYKZdfw=; b=TafIRkipZhRI+Tr8PspQMKrQpn
 APc/UUOvFhM7tUZ3AEl7BCjkgwr/M/zJII3hz79xDAw/LkhVDujxuR/R/OBw9GamoVX+ABfGNQ761
 /FlQQQngpNKwLfY5X5lvbyrGyUDwXe72WZjLryC8Y088hmpATsjd6Ng298IOgDKrVvDZCGEk495qI
 wJbWGU+neAnv6gSvTSYe6FB3utiymyTvU8+2/SH33btqKiv4kRfMdzuFej7pU4VXV0itTzFr4m90H
 GCWPa8Kn7Xgh8TzohvLq41iUZQ7J9nZMfFGDAo+3Sx9lQqZlxu2+mDXPXSlGzZnxLikEjsrYOCSAO
 8lyiaEJg==;
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.96)
 (envelope-from <jwhite@codeweavers.com>) id 1rrhb4-004Sc3-2Y
 for spice-devel@lists.freedesktop.org;
 Tue, 02 Apr 2024 12:06:55 -0500
Message-ID: <23326d29-3eb3-4f23-b782-103b555976ab@codeweavers.com>
Date: Tue, 2 Apr 2024 12:06:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: spice-devel@lists.freedesktop.org
Content-Language: en-US
From: Jeremy White <jwhite@codeweavers.com>
Subject: Anyone want to take over Fedora packaging for spice-html?
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

I've become largely inactive on Spice (due to my semi retirement), and 
the Fedora folks are thinking I should no be a packager [1].

I agree :-/.

Anyone want the job?

Cheers,

Jeremy

[1] https://pagure.io/find-inactive-packagers/issue/1840
