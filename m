Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D30EF13A4FB
	for <lists+spice-devel@lfdr.de>; Tue, 14 Jan 2020 11:07:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 193676E329;
	Tue, 14 Jan 2020 10:07:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com
 [IPv6:2607:f8b0:4864:20::12c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 954616E329
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Jan 2020 10:07:19 +0000 (UTC)
Received: by mail-il1-x12c.google.com with SMTP id g12so11003972ild.2
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Jan 2020 02:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YT2Qd7H+RZgA7nNCVZdfPo2WQ/CCct7vxIaTD91hKyo=;
 b=bIwS1t1RotNIu7C0E5BPkAAUlggPTugmQehXBTkBOkEo2cIeEb6q5DMVHU9O6dTPXA
 Ab7CNz2Sel7yGh+K/zz+2/DQ9v/oj+95GmUEgm2z/eILoR0Y+t3HgMy7bqnYuFMi3pVt
 +q/PRFBoARuWqzavKjTYlRKCI57GKrLBLxlBS/C0hhif71UokKCr5vrfj9CPOGfGus87
 RqxyuahtIyUj9Kh8u4QvkPEg97RluquDizr1rhQl5WhaWfZ4b+j74faaUF+Rcw+eeY+/
 G4D94ERQVOo19P35hpDxh2qEXEAG3jPNBtykBxeknd12LXAzA5NDpHshD99ysFEIgE8M
 v+Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YT2Qd7H+RZgA7nNCVZdfPo2WQ/CCct7vxIaTD91hKyo=;
 b=XK/N0bqlafeg4WOaQoREvhs7G4Oa9oorBrzEPKmE9hXyVb2beHHIp5a6Q0bzgesRxz
 MoX8WDKJgDXS0XxJdxXX8xH8j1JL1D4Uw8G8kwZqfuGwj4bGpToQ6r80R2xsJfmKUxK8
 FKMWPmHhs7GNQLTP0ZD6nMBUpV7mf7KJO8fYGfD6uQrHWsLhD6nUt25xkXDQZYQcza/O
 uoiDe5Oz7ZwYU5GgV/H8FITMV2e7iqvNXdiXwOe7CQ4/L8sshLf8DZZHXTZgnkiRnzQx
 H3fILgXZUjO7Nsx1K3rZ8ttD5s/autNKkRu32IqIPGfMNHLjUD0tkmgB9S/QTKa+udPK
 g2zg==
X-Gm-Message-State: APjAAAU54Fk/N0q/5i9F4RE46jCU/jRz223DizrAxBWlzb8SGIzbiunR
 pRswt+UxZHbRFEDKUAbmr4hUrSprAjm9B4C/TJvQb7NS
X-Google-Smtp-Source: APXvYqw2djiUt620GhcdeBZG+9prSHAlRFdto1ERx7Ks1xGYjZ9MZoWBLTqznbiJFlyaJAb1lYnU1YsSA4Le/JArBjg=
X-Received: by 2002:a92:3646:: with SMTP id d6mr2545301ilf.148.1578996438877; 
 Tue, 14 Jan 2020 02:07:18 -0800 (PST)
MIME-Version: 1.0
References: <MN2PR06MB5966B91D42D1F839645822D1B3340@MN2PR06MB5966.namprd06.prod.outlook.com>
 <340504604.5713959.1578994995366.JavaMail.zimbra@redhat.com>
In-Reply-To: <340504604.5713959.1578994995366.JavaMail.zimbra@redhat.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Tue, 14 Jan 2020 12:07:05 +0200
Message-ID: <CAOEp5OehVVQxjYW3wR7wTE++Ct4vp-1KUnLOfnL-Z_Vq25DcBw@mail.gmail.com>
To: franklin zhou <codeit@live.com>
Subject: Re: [Spice-devel] 
	=?utf-8?q?windows_server_2012=EF=BC=9A_WDDMInterfa?=
	=?utf-8?q?ce=3A=3Aescape=3A=3Athis_should_never_happen=2E_Status_i?=
	=?utf-8?q?s_0xc000000d?=
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
Cc: Spice List <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Which QXL driver is installed on 2012: qxl.sys for xp/Win7 or
qxldod.sys for win8+?

On Tue, Jan 14, 2020 at 11:43 AM Frediano Ziglio <fziglio@redhat.com> wrote:
>
>
> > In windows server 2012, the follow line " status = _pfnEscape(&escapeData); "
> > always cause error,
> > status is: 0xc000000d, error message is: "INFO::2020-01-14
> > 16:58:23,387::WDDMInterface::escape::this should never happen. Status is
> > 0xc000000d"
> > ==========================
> > bool WDDMInterface::escape(LPCTSTR device_name, void* data, UINT size_data) {
> > .......
>
> > status = _pfnEscape(&escapeData);
>
> > if (!NT_SUCCESS(status)) {
> > vd_printf("this should never happen. Status is 0x%lx", status);
> > };
>
> > }
> > ==============================
> > is this a bug ?
>
> Code is STATUS_INVALID_PARAMETER.
> I don't see any reason (beside from device_name) for this result but
> looks like a bug indeed.
>
> Frediano
>
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
