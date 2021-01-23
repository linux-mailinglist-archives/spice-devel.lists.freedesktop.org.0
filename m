Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF2A301BBF
	for <lists+spice-devel@lfdr.de>; Sun, 24 Jan 2021 13:07:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFA0B89D64;
	Sun, 24 Jan 2021 12:07:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A79826E218
 for <spice-devel@lists.freedesktop.org>; Sat, 23 Jan 2021 19:10:37 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id f1so2393222lfu.3
 for <spice-devel@lists.freedesktop.org>; Sat, 23 Jan 2021 11:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=klL3NedjXN1uE9rS2JYHejONldUP9ENfDBsmwEkOI7o=;
 b=ftyRgQq7fqa9jqz1acOI5UM7SgwVV8+WC4ZSgRO0G5AburmYJ2JkrP06mzmXFRNqmk
 kffGWRwu5vrmiAQ1UOfr7Za+O2ZPO2RBEDs08wdq09bURf9gxafBWeebJklJbcY6wpSt
 Jzys8FWkhWku5IOVBWvittCcjmJLVWVIW9aYf4PIQhUc3UPHXQj6uuJ0D6Wh7Km89aTd
 dWzobWL/J4R26EoKZvvq/4imMBFWcRwACz2xPynLDQG534wy18hVjpHGVQDY+LuVI18t
 h78++uKp3FXHmCWJdBjlQkmtJ0EJlwF4a+Nkjzqr4nsVDNQJmOnNcjUL7cnkDGln3pKG
 touA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=klL3NedjXN1uE9rS2JYHejONldUP9ENfDBsmwEkOI7o=;
 b=ijE/HORMSsN6w7f1Wt+jG4J/m5SjFq4VMcUPrYIwpfx+HPBSQPN20UB4hdIjwf5yWX
 uScqx8xolUDlUo+Oh2blkGDZUuQSZw1hsQ0v1yVdKkYj/vaMRy3+DaMOKtBF58XjQ49y
 MVBBrbzjmoWNGeERK+UPD2X/tnOPNdTgMfRUss6QmYx7Ri+hjf6UAGWR8xJSkhoecUTW
 mBeiqOvEOPXjv7FzBRnYqV7KOVOqLFVvm/e+ZN3j1ZOp6qyKEsnxX23KgX1L5YktweV6
 9LsWUZH5jxlos40JPQVB0YJzXOnAavy2pcbSpYHy71ZDvjArGXyVnvCVgMo0PnUfy9w7
 9Xuw==
X-Gm-Message-State: AOAM530gjHcHQZVGP1ARKuAj1/NDM5CYdrx/NFcUlrtGZ0Yf8TClt0M8
 t9e4xmbOonNEMI0tumUnti3ujnTOwZodww==
X-Google-Smtp-Source: ABdhPJyU+Wt0o/5JgRhjsnpIVyJ0xtqo80CSEcMWYA+d1MXhpFHLDuO/2B2wN+SFOUWMwB3+Av3J+g==
X-Received: by 2002:ac2:551e:: with SMTP id j30mr454290lfk.595.1611429035582; 
 Sat, 23 Jan 2021 11:10:35 -0800 (PST)
Received: from ?IPv6:2a03:1ac0:6dc3:311::1? ([2a03:1ac0:6dc3:311::1])
 by smtp.gmail.com with ESMTPSA id z8sm1293043ljk.88.2021.01.23.11.10.34
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Jan 2021 11:10:35 -0800 (PST)
To: spice-devel@lists.freedesktop.org
From: =?UTF-8?B?0LjQu9GM0Y8g0L/QsNGJ0YPQug==?= <ilusha.paschuk@gmail.com>
Message-ID: <515db8c9-723a-8211-05d1-b6e49386e666@gmail.com>
Date: Sat, 23 Jan 2021 22:10:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Sun, 24 Jan 2021 12:07:01 +0000
Subject: [Spice-devel] disable atspi keystrokes capturing when keyboard is
 grapped
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

please sea the details in the following github issue:

https://github.com/virt-manager/virt-manager/issues/206


they refered to this library as a target to implement feature about i'm 
asking.

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
