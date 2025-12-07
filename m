Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD03CAC81D
	for <lists+spice-devel@lfdr.de>; Mon, 08 Dec 2025 09:33:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E18210E3CF;
	Mon,  8 Dec 2025 08:33:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ji1gLoM3";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
 [209.85.219.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D382C10E34F
 for <spice-devel@lists.freedesktop.org>; Sun,  7 Dec 2025 12:20:14 +0000 (UTC)
Received: by mail-qv1-f44.google.com with SMTP id
 6a1803df08f44-8823e39c581so52221746d6.3
 for <spice-devel@lists.freedesktop.org>; Sun, 07 Dec 2025 04:20:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765110014; x=1765714814; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RGShbK9xQsr2NjS/qZuDJNtffOJ6jq/hb7bzFL9+MF4=;
 b=ji1gLoM388RWX3U4YW3CX+YLGRh8hBa4859xJ7x+2w/xuOfbBKwxAfd8jBM8Q12Bkn
 ZhwmWYRA0SNhh4muA3cvgdOD0I+3Tsnocd3wwh718HchvjgJnm+AylgmqJQWyoYX4tkF
 rGkZxy8N/lMrgeFGBUMIzNAeH57i8Dj7yvAqs+kzVwKmjybfX86DxocZWq+/KUPXFZIi
 cVNmRqQZsUBv+MlvYBgxkBlE6lekLJQjej6b7aCbLRar1OGmhS0130jTWsJbd95pWsGP
 4CO1pav0ynpV5Q6wRB9dBzN1i5S3QS9jP5cVT7EMeJqOHXCyIgDEg8Vfh9Z7hFV94uY/
 rcvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765110014; x=1765714814;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=RGShbK9xQsr2NjS/qZuDJNtffOJ6jq/hb7bzFL9+MF4=;
 b=lNbbwaXpHZ1reTUOr7YpDhK0WCzoO0QK+jvkefeSRdA6W9LH1qNORd5xJs96N6POcV
 OlwcPq2I3Q+Op2QDwDYZOuf3BPyCHs9Upp8dPz187RkUz3n4ddLPklZBknhDxX2egrnn
 M2ZjAuZz6LzeaNukdFYIuBJI5O1MVXgRKP9iNPQNO3eh4rJHhwyYEByPQ3XrHrNFVkSg
 DDP9pl/MqoQunqsIJPvwnG2Bc8tqkhvsdIQdBrTWVm5FREp7rSPpsNzCRHFjX3pIJ2JA
 3drFTARVcTTay+CdN8lb76vvcBbkcvW6XyegLUEVEBxaBGSutTUObd7SnmK3PqyufOD/
 ef4A==
X-Gm-Message-State: AOJu0YxCHoYi/ZTyDpc2HX+BO9q7IJVEYegDsYGl8WRbafEmx1Jfu1Y8
 0mu166rIDu2qmn5o8DCH483KUCiRtLF3/bPYpICQWNwX9zFx+qAqZ17NZ4PCdw==
X-Gm-Gg: ASbGncsGwasAb/Ezv/NeXo48SLorIycKzpcQQfvuFKeCjTkONT8gLVSUW4jMe6kR9Zd
 VdxGbtSi9pQMU80KdWJYV3e59iyVd8CIZmkTAi+vnIHrUV8oAxGQo1VRtAoK+jrpS7yyJepfr9B
 LxaWoF2QzaXkD/YAsQZfWbbLKufrGKmigotP3w4ONGitJedwjnM9N/rGuwO9avXhwuJOvw0P74N
 vSMYdIxes87rdrGc0/cJng0IsOALkV4/qm+rKIqj2bRNxTXDKPBPB6KKQ0ltfKtIrRnDRnASOmw
 KgPWLnEjCvaM6FvzY9cVlo6w1eLUsbEYM12FakySSZU8HKWruGjdHPDku0MdXHfFeDSklTqPjeU
 pQwYWYIl7HB7+yf1wyhZD3WssiOyCHAXd9hufbNpoT1YjPwvHlSQG8vjdZDI5IJzNS7/M72IpNo
 I3Mbdkqk5e3VRBMlxSQHwo7XU=
X-Google-Smtp-Source: AGHT+IHEpTLAacPxApmSoFl5aQCzQ0fhgFsSmI5Dg/irUTxm7tnwiQid4UrfDE6ElBrarz7WSFkaGQ==
X-Received: by 2002:a05:6214:518c:b0:880:531a:e656 with SMTP id
 6a1803df08f44-8883dba0df2mr79341676d6.29.1765110013773; 
 Sun, 07 Dec 2025 04:20:13 -0800 (PST)
Received: from localhost.localdomain ([2602:47:d950:ab00:9e6b:ff:fe52:2d0a])
 by smtp.googlemail.com with ESMTPSA id
 6a1803df08f44-88827f4d413sm78258766d6.18.2025.12.07.04.20.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Dec 2025 04:20:13 -0800 (PST)
From: Nicholas Vinson <nvinson234@gmail.com>
To: spice-devel@lists.freedesktop.org
Cc: Nicholas Vinson <nvinson234@gmail.com>, Uri Lublin <uril@redhat.com>,
 Frediano Ziglio <freddy77@gmail.com>
Subject: [PATCH v3 1/2] m4/spice-compile-warnings.m4: disable -Wmissing-braces
Date: Sun,  7 Dec 2025 07:19:36 -0500
Message-ID: <9d504f79e028dede8ea8b8a1ecd2678e97f1a6e4.1765109578.git.nvinson234@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1765109578.git.nvinson234@gmail.com>
References: <cover.1765109578.git.nvinson234@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 08 Dec 2025 08:33:46 +0000
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

Disable the -Wmissing-braces warning as it suggests adding braces to
designated initializes in a manner that violates C++20 rules.

Signed-off-by: Nicholas Vinson <nvinson234@gmail.com>
---
 m4/spice-compile-warnings.m4 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/m4/spice-compile-warnings.m4 b/m4/spice-compile-warnings.m4
index abe4a912..d2e1acc8 100644
--- a/m4/spice-compile-warnings.m4
+++ b/m4/spice-compile-warnings.m4
@@ -84,6 +84,7 @@ AC_DEFUN([SPICE_COMPILE_WARNINGS],[
     dontwarn="$dontwarn -Wstrict-prototypes"
     dontwarn="$dontwarn -Wsuggest-final-methods"
     dontwarn="$dontwarn -Wsuggest-final-types"
+    dontwarn="$dontwarn -Wmissing-braces"
 
     # Get all possible GCC warnings
     gl_MANYWARN_ALL_GCC([maybewarn])
-- 
2.52.0

