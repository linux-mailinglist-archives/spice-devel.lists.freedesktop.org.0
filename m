Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A164A6145CC
	for <lists+spice-devel@lfdr.de>; Tue,  1 Nov 2022 09:38:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAB1E10E23B;
	Tue,  1 Nov 2022 08:38:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com
 [IPv6:2001:4860:4864:20::2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 639CF10E23B
 for <spice-devel@lists.freedesktop.org>; Tue,  1 Nov 2022 08:38:15 +0000 (UTC)
Received: by mail-oa1-x2d.google.com with SMTP id
 586e51a60fabf-13b6c1c89bdso16044037fac.13
 for <spice-devel@lists.freedesktop.org>; Tue, 01 Nov 2022 01:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=di3SOqdxBlGmRd4l0NwAPF7q5mpmp5oEccY49bo1raM=;
 b=mWzbKCWaLicxKAqG2P6/HT7EYtNMY/qAA4trwo2BwIN7IMRRRsDTMtrNjuq10+obZa
 QEmVlvvXFoh/NVIVrKIr+V44cv0MNHpUlKdkWO7zQvVgNwSpLv2mSHhuO9+KTMAB6x1U
 F3IhnJjGrVHf1n4XyiBRg2Db5AG6p15B8sGAHpkikj1ggk8y/sJSFulzpvHfAURhm1RI
 a3wb4Uj1rSEHxPQl4/BMxO9vs/QhxoQ4zEqCHV9aNxdQYx8T14gS5E6IFmCye2RK9u8d
 b2sX71leXLkeCBGZVZnJnm6DX2qLoGsNa9O/pYaZoIYWvoFlWfYsuRw3wq+TDTcurfUP
 f+uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=di3SOqdxBlGmRd4l0NwAPF7q5mpmp5oEccY49bo1raM=;
 b=s4oRLW5VATGqF7Mgz3UaKtPKrNeaZXGBzZpgLKg/JTk4p1iaixX20y2F77Y7GIfQdo
 fEwI1dqmGfMswwSrHAmREKEGwEMFSe7igXTT2wdEhnTKQfmcpC9DPyyVotTj6JBHRpdb
 /P5HzUwt02l0I+gTDvBN8s4OZRIqYEr1JO514fLSSTUzWkc/MgUiey5o7ZMQeQJ7V6k4
 bY/uEXcnVrtJCGlnAUcpTnSqlogrLqsuIAwRV4tcdtLhplAFD+DfAxezs1jhwEQD0sma
 BVC2SjdTyRzjCqh1806Z1TDB/SpS39MC+wgII1oUgh+Ytr8JAPr2FujHtPcVR4p5KjnX
 0vuQ==
X-Gm-Message-State: ACrzQf2d0mnRUqwMzy0A26Ivyd1frJ7Y0y13eC5gf2MbSPwPfmcn/ybv
 SbV5C9dHeVa9DSDRxZYbCbXwLDR1eea9mwVWLLs=
X-Google-Smtp-Source: AMsMyM7RifUQlTw6uqbo5zP3Kr1XVb4VoouLGQfew4Fe4etkU5hPghwYS3Ue/vBY7uTaz0krqVnFeYDQ3MCrgHq9n84=
X-Received: by 2002:a05:6870:d351:b0:13c:5da4:b09d with SMTP id
 h17-20020a056870d35100b0013c5da4b09dmr15387731oag.1.1667291894621; Tue, 01
 Nov 2022 01:38:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAGeBE=w-KZXVACD6xeeqfoo03K5BZxzA8O2U5x-8=NLsR=ZQKw@mail.gmail.com>
 <CAHt6W4dkGkFVDBQbMFN0+AD24OB18uxhhQC5n4u51PiJGnAi8g@mail.gmail.com>
 <CAGeBE=y4HKusjFMYez9uGEzEMm_9uhgDeW5uakB-bErUWcPoJQ@mail.gmail.com>
 <CAHt6W4eysYyfv-9_W6n5YRv5qSd0rU46=vGf25fAO5s342a3aw@mail.gmail.com>
 <CAGeBE=xYOdDo40ec=T=auNhj-nq8nHXuOWZ6Tt+HT-gniu=YcQ@mail.gmail.com>
 <CAHt6W4cJW-Lj_rE+c9YqrDSft5f0t4RJ41z4bv4y2gVYyyfwNQ@mail.gmail.com>
 <CAAg9qJ3bMd=3_YD4UJ1rHDmm3s7L5NG047eioeuJ209s50MAKg@mail.gmail.com>
 <CAGeBE=w5OVLoKD_E72HdacqCivp=ZS2tuaDoHMJTB82-68W0-A@mail.gmail.com>
 <CAAg9qJ20nfDLfx_8Hboyw-GZpU5t4mrKH7+4L_Ne-wOrqbzEZg@mail.gmail.com>
 <CAGeBE=zLNuypqM296NKHbiVXf-u4hcK3MbTxXG34eOeDSgG_cg@mail.gmail.com>
 <CAGeBE=wNsck1_L88kV=oAVVe5LThruT4SZEJwuZPXrEVds-6tQ@mail.gmail.com>
 <CAAg9qJ1uLht3--b4OwQpiGPj2q=8FZvSF19VG+pQPWTPKz_RzA@mail.gmail.com>
 <CAGeBE=zqf-yb56MWYuok1ych_hsJAWsbwXB0zuFF834Vs2hDRw@mail.gmail.com>
In-Reply-To: <CAGeBE=zqf-yb56MWYuok1ych_hsJAWsbwXB0zuFF834Vs2hDRw@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 1 Nov 2022 08:38:03 +0000
Message-ID: <CAHt6W4e2c266UKZ+3fLFzc8qBcsjbkXWFwdoDj4k7UKdP2dVpg@mail.gmail.com>
To: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] Vdagent not working on a Debian guest
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

Il giorno lun 31 ott 2022 alle ore 23:52 Carlos Gonz=C3=A1lez
<piteccelaya@gmail.com> ha scritto:
>
> After trying it yet again, quoting myself:
> >>As already mentioned, the -f and -o options are serving of absolutely n=
othing
>
> Repeat: *absolutely nothing*
> Same any other directory
>
> Spice-vdagent's logs say nothing at all.
>
> The only ones saying something are remote-viewer and qemu-monitor: "file =
transfer is disabled".
>
> Will you ask me to repeat myself some more times?
> Thanks for that
>
>
> El jue, 27 oct 2022 a las 16:55, Uri Lublin (<uril@redhat.com>) escribi=
=C3=B3:
>>
>>
>>>>
>>>> Now, could we focus on the nasty bug with file transferring? As alread=
y mentioned, the -f and -o options are serving of absolutely nothing...
>>
>>
>> Does it help if you run spice-vdagent -xd -f $HOME ?
>> Did you try other directories with -f ?
>>
>> Uri.

Okay, let's get back to the basics. On a VM I have spice installed and
working. If I run "ps awx | grep spice" I got both spice-vdgentd and
spice-vdagent running.
If I kill (from a graphic terminal console) spice-agent I can launch
manually with something like "spice-agent -d -x -f $HOME/Desktop -o
1". This should be pretty verbose.

Frediano
