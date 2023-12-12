Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 544C58119FE
	for <lists+spice-devel@lfdr.de>; Wed, 13 Dec 2023 17:47:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F188210E284;
	Wed, 13 Dec 2023 16:47:35 +0000 (UTC)
X-Original-To: Spice-devel@lists.freedesktop.org
Delivered-To: Spice-devel@lists.freedesktop.org
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com
 [IPv6:2607:f8b0:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB5C510E691
 for <Spice-devel@lists.freedesktop.org>; Tue, 12 Dec 2023 21:15:04 +0000 (UTC)
Received: by mail-ot1-x32c.google.com with SMTP id
 46e09a7af769-6d9e756cf32so3852511a34.2
 for <Spice-devel@lists.freedesktop.org>; Tue, 12 Dec 2023 13:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702415703; x=1703020503; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=VrOb2YHzWKCdLEUMMiEnJrwTcRWP8iKf67fpQCJ8vME=;
 b=dgRqgKPNPzKCgyt931RkTOgPFivSONavMlAY/NsiURZP/1ZBwlXgCwYrign4Fgi8k7
 rswhEAPEQm5lIYwFEFe4dA91A+QGhgqWQLaYXD5qMg1NWKz+fe/5s/hc6UcrcXIGs9pB
 iMam2NuG25xLbJi0DzrWNSxswt638l23QzVBuqfZVwNPKZh5Tu6b2UOSa6YplkSa80iV
 b3WmGQJorkg8vPZS3VBkMlq1qHl6g60m5m9EAEMPzxw/bjtpatOnWAEjU41DHP8KUxI3
 LzRyENXjX1R089rQPejaV3U2gtZtkjuUUfcD2nCn0ffscsYmYWknSABGO31B52iTShi3
 QH0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702415703; x=1703020503;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=VrOb2YHzWKCdLEUMMiEnJrwTcRWP8iKf67fpQCJ8vME=;
 b=VtfDsFfl2x8CoZaTreLqMjP8AgoTlgFY9TnEWbLhhRJalyj0+Aj0Gd+x2nrMK1ACIv
 izTr3sU82vnZGl92aD/sHO5/A/b2hrEUDokbO4a6HqqX4pYxUrJrkXIwPRKbyBDvS7aS
 5tYEOqFSsmCQn1DtSIXl0JCY0gMKk6nY+beXdGRHM3354wGEUVPii2/b9ZdNWqTPlEKa
 aukvxBRmv2SLv2W8wCHSlCB3J0pr/enweD0V5yLe0bGTN5vSQX+ixdDCfblJLWamMpgf
 /IbWHdQb4ql5iCxkbde5TWhBRgjsKsyo0AwJA7pgmj2pbSVFlbWSQ81jsdeckZQZzHN9
 nrWA==
X-Gm-Message-State: AOJu0Yzhy0TlWKXTdPnIYXWqsUoV0z7QpQl2vEUeSumJ1XSbjQ5QdH+7
 CrHp9M6HcxEyqIZAr4OmMkmhzmM9DQxoOJuWaovCsulpzyB8pA==
X-Google-Smtp-Source: AGHT+IFpROErQHWCH8R6GvMhHUrYRfQVKmf5uAQUWcn6g9akWndBWEyFiSIfZd9LwDiq6POoqzwJyqOYFbLEgSIB5uk=
X-Received: by 2002:a05:6830:1084:b0:6d9:e192:56a4 with SMTP id
 y4-20020a056830108400b006d9e19256a4mr6039186oto.17.1702415703569; Tue, 12 Dec
 2023 13:15:03 -0800 (PST)
MIME-Version: 1.0
From: Fabio <cellulare3@gmail.com>
Date: Tue, 12 Dec 2023 22:14:55 +0100
Message-ID: <CAMUN1STk3fxA129c-C3mBFMAL=7_jCaT_EfZ8XazhrdS1DTzpQ@mail.gmail.com>
Subject: usb passtrough
To: Spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000457956060c568b47"
X-Mailman-Approved-At: Wed, 13 Dec 2023 16:47:34 +0000
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

--000000000000457956060c568b47
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ciao, scusa se ti disturbo ma la tua guida non mi =C3=A8 chiara.
Io devo fare collegare una penna USB al client ed usarlo come se fosse
collegato alla mia macchina virtuale di windows in RDP.
il tuo software  per=C3=B2 non funziona....

--000000000000457956060c568b47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ciao, scusa se ti disturbo ma la tua guida non mi =C3=A8 c=
hiara. <br>Io devo fare collegare una penna USB al client ed usarlo come se=
 fosse collegato alla mia macchina virtuale di windows in RDP.<br>il tuo so=
ftware=C2=A0 per=C3=B2 non funziona....</div>

--000000000000457956060c568b47--
