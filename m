Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E24C577D26
	for <lists+spice-devel@lfdr.de>; Mon, 18 Jul 2022 10:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1F30AC599;
	Mon, 18 Jul 2022 08:07:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com
 [IPv6:2001:4860:4864:20::2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D97DAC594
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Jul 2022 08:07:09 +0000 (UTC)
Received: by mail-oa1-x2b.google.com with SMTP id
 586e51a60fabf-10c0119dd16so21892312fac.6
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Jul 2022 01:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uYfX0zYzaGWMPWMUr3vCuniCEUpyPKTt20fqSqRV4k8=;
 b=b+QZRekHMil7aM1WxjV5QL/eyL5HT9nDb+NuyFoQRaZ/GTglgXIs4rkoT04TlqbQ3K
 vcKe4HtOYaCFD0poc2HFWEaJD1wqTLu5BQpYNMcockQJByFt1vSvyyfrucc13XJTPBU9
 neUedRlIXSUiLwmbTH7UGzu1IsjLnNv4eyEJ/VujprKwaV/QlloPydOTxPdotXNl3jn2
 mzCVsn09M1YeF+gXZacGPT5U//OrjlvvtwhTkjdZzTkYO0PKsS1cpb1OkctwdXLsUHAq
 JssJLmDNu96hnyky3nh0iHC0/w+oUzBBHpIzVBQOwk9VT1LVXFm79A36RFzHbRMmTvK6
 Gkcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uYfX0zYzaGWMPWMUr3vCuniCEUpyPKTt20fqSqRV4k8=;
 b=jxXeJeLEK2/Xs38DydFuF8Xk1tcVobPdu2w/JXf8nJ+u+TSDhMV+PLX3qnOdFVA4I+
 +rr+5cvPCyAuFJAUZsptWl9uP5f9hxir4tNOtzEzGyeSoiyvD4H4SOuVGJTU7gXux8j5
 rBIBt6If84bBVsNjzL57dbBhDzC/aBx3gDKsVDzObI3TitNDYWdu18V2zfIxZ3NUhxCB
 KWlgjVi2gk5vUDcjgVewVW4b+vz6CnS/0h8jIhnyPUd42tGSgNFoQ20O3K0y6OE4KwW5
 l0e/Sf5YxMrBISgV76VheVQhEqyPwMNKJ8XhoW88ip3+rhs3qIKw7qQPtG4KMu3wEhxj
 1UzQ==
X-Gm-Message-State: AJIora9NdRWu37BdyDgJecpdBy9DX81eSmCczvGkvkY6Jwv80B9++o9c
 W2pPx3p1+aBxKnUl69euHjvvMNx7yphSyHAJ8Q4WC05f
X-Google-Smtp-Source: AGRyM1tbNLgGPtBTY3hsgouFXhrs22i7rxfFTTwhTtU5ZCaY9WA9ca7WUCVEys6mpjzXHRpM+KsQt2rryuWUO+IwRSo=
X-Received: by 2002:a05:6870:1c8:b0:10c:275c:33e1 with SMTP id
 n8-20020a05687001c800b0010c275c33e1mr14411072oad.179.1658131628433; Mon, 18
 Jul 2022 01:07:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220717181538.BBFC030B86B74@chwww1.confidesk.com>
In-Reply-To: <20220717181538.BBFC030B86B74@chwww1.confidesk.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 18 Jul 2022 09:06:57 +0100
Message-ID: <CAHt6W4fiG=u4Pf6semLHeQyTT=sHkzLQrSvbx2-YFP-SrVq5hA@mail.gmail.com>
To: bobc@confidesk.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] connect to xspice via a unix-socket
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno lun 18 lug 2022 alle ore 08:56 bob cantor
<bobc@confidesk.com> ha scritto:
>
> Is it possible to connect to xspice via a unix-socket rather than a tcp-port?  (I would like to connect to xspice running in a LXC comtainer.  The container and host are on the same machine, but there is no network connection between them).
>

Hi,
  currently only TCP is supported but the change should not be that difficult.

Frediano
