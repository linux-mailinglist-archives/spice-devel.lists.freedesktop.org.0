Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D26E8609EDB
	for <lists+spice-devel@lfdr.de>; Mon, 24 Oct 2022 12:21:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32F3D10E30A;
	Mon, 24 Oct 2022 10:21:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com
 [IPv6:2001:4860:4864:20::2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63B4210E30A
 for <spice-devel@lists.freedesktop.org>; Mon, 24 Oct 2022 10:21:20 +0000 (UTC)
Received: by mail-oa1-x2c.google.com with SMTP id
 586e51a60fabf-1322fa1cf6fso11303559fac.6
 for <spice-devel@lists.freedesktop.org>; Mon, 24 Oct 2022 03:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gmiadb16kMlOPbWIue/tL0SAn0FVViSunLGb2ImhO8s=;
 b=Hs98A7/RdIikhNT5dZLsjqGAx9HrtcNwN/qh4nrX6Fe+XEt8EsDYn9nyWRQMslq8q9
 KIoBjLO67RQFe+7Jji1wJ/jaAegUPuEWtcQXQzSPVxbuqzG35yh2OOr10d/2djdNLFLg
 5U7ttZgqj2n5QEBfvNwNUTnibGln8HYE2SYT5gAO993SwnC+LTzJhL8DqNliP8SGy+x4
 7JEOveq6NJJVTXFdc+vG/kpo090r2sdXdpLeNA6YjYhedBrreMkBnsLSYwqeIa1BE20a
 g1Jbs6Z4uQrKdrz0tT6n/DXeHobDnHEPbI2nrAbfzhtRXPrHyYQzEcSG81LnKMSqPNU/
 zTzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gmiadb16kMlOPbWIue/tL0SAn0FVViSunLGb2ImhO8s=;
 b=e8aL26jubhyXVFGL/rGHmWIOZACOC/3Qno9KEtvMfwjqs1kLLUaQKZpnMRuaDJ89Qg
 G04c1gdZJT8op1v5XxUat+IWng0nfJtfZv/uPaLrZhSM2XDZ8S2c/RYOsoflbIKffc27
 ep23u9apTnuPt1aS2QjpOruCA73pdI/yaDFHO3AOOyUbxbdcYl5wm0GoKQeGeTv7YBAe
 HMlcHDAp+b5c7Y2qyVc2ZK6gFLcTz4dJm7qy12bqytbvKv8UGKsd3G5R2ijxL6ucowP7
 CWxoz8InHU0eSPB1Ji57WQ7WiixpeEfZnJSlrdG/opCPy3m7hawbTB2LKM6CC6Ch2L58
 KkTg==
X-Gm-Message-State: ACrzQf2NeHtGeClR83X+MCPVndWQX4XdYlYg7NWRb7+Hw9GLhGYNNr6a
 K9ECaX7V+RM97lncV60s+CckomuPdx8NAZQnkxI=
X-Google-Smtp-Source: AMsMyM5YxXNRT09UVACQvzu2+KYgCPp8yPOmHlVIxZyRtBJZ1yjRoouK3RMy7gS6laLFaZ0JSns9RJBxRENsOLbGA+A=
X-Received: by 2002:a05:6870:8316:b0:13b:6e7e:41ef with SMTP id
 p22-20020a056870831600b0013b6e7e41efmr5528431oae.179.1666606879546; Mon, 24
 Oct 2022 03:21:19 -0700 (PDT)
MIME-Version: 1.0
References: <20221022115115.23040-1-vr_qemu@t-online.de>
In-Reply-To: <20221022115115.23040-1-vr_qemu@t-online.de>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 24 Oct 2022 11:21:08 +0100
Message-ID: <CAHt6W4eKT+m3K5K1Aux7ki3TZwd19T0xcK0K3m80pR=rbVPjiQ@mail.gmail.com>
To: =?UTF-8?Q?Volker_R=C3=BCmelin?= <vr_qemu@t-online.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [PATCH] sound: fix pointer arithmetic in
 snd_record_handle_write()
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno sab 22 ott 2022 alle ore 12:51 Volker R=C3=BCmelin
<vr_qemu@t-online.de> ha scritto:
>
> The variable 'now' counts in audio sample frames, but the variable
> 'data' is of type uint8_t *. Multiply 'now' by the size of an audio
> sample frame to get the correct source pointer.
>
> This improves the quality of audio recordings in QEMU a little bit.
>
> Fixes: 5d5a7bd181 ("sound: Avoid cast that could cause alignment problems=
")
> Signed-off-by: Volker R=C3=BCmelin <vr_qemu@t-online.de>
> ---
>  server/sound.cpp | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/server/sound.cpp b/server/sound.cpp
> index eca2706c..4909d158 100644
> --- a/server/sound.cpp
> +++ b/server/sound.cpp
> @@ -302,7 +302,7 @@ static bool snd_record_handle_write(RecordChannelClie=
nt *record_client, size_t s
>      memcpy(record_client->samples + write_pos, data, now << 2);
>
>      if (size) {
> -        memcpy(record_client->samples, data + now, size << 2);
> +        memcpy(record_client->samples, data + (now << 2), size << 2);
>      }
>
>      if (record_client->write_pos - record_client->read_pos > RECORD_SAMP=
LES_SIZE) {

Hi Volker,
   merged.

Thanks,
  Frediano
