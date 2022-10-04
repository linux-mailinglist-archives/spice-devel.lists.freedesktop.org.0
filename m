Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 638EC5F3F80
	for <lists+spice-devel@lfdr.de>; Tue,  4 Oct 2022 11:26:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25DEA10E336;
	Tue,  4 Oct 2022 09:26:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com
 [IPv6:2001:4860:4864:20::2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D46610E336
 for <spice-devel@lists.freedesktop.org>; Tue,  4 Oct 2022 09:26:41 +0000 (UTC)
Received: by mail-oa1-x2e.google.com with SMTP id
 586e51a60fabf-127dca21a7dso15815905fac.12
 for <spice-devel@lists.freedesktop.org>; Tue, 04 Oct 2022 02:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=MpkDTJaaqyhejs5bJOTU+C5/YUXr72be0vT/fxYECUE=;
 b=OzxD4hqYOL3e+jIy/bqlov5ZNyYxkmbWLwEQXrMQiX06XMqyx/CVrczsbyAWuIsUF8
 gRSNyrQsSM3+8EOvzhss3ooc6a9rfK6YzzJd3xvZCBznUkyYQ3nQbtBQAXlzWuShRj52
 02zWSQA19GqERub354f1PImlR8PtGIwgo9lngYsmr8fMWSFYvxNYAwNmqILs3hrmkRLC
 Pvh0yg55nMJVI2iZfXVNl/cvHv8FuJAfFPch72tSlysG+dALSE0GcijsLuiC/O4EFRz2
 V+w7nW33g3ir3t3jnL5XqrsMKsPfpdG4oQEJlBWIwk5Paqo9qBholxBSOrlPMA5PK+35
 KKlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=MpkDTJaaqyhejs5bJOTU+C5/YUXr72be0vT/fxYECUE=;
 b=AOnNK5my/jPA/za2L13FXW1gxfd07vDgJ6gUXGEPxGTXUAt/jZJkQpXL6IX22fH6fZ
 LjU+x3HEuyU1nzlgdM5p2MQN4EvoS49apNYsAcflUsvoM3J56reSL2RcxUzYChEYOpmJ
 wRiSmsppTJM39nD+mvCkmT1mKsjGvtbBiytcgkD8hjuUAO3zJKOup951+lOuGPffBVIB
 HGsX3vyCqUxTAak2DYoMs6NN/SF658dr02aNqbyKqR6KBKFZxpblr8/NyJISZRibAclP
 wfXUze3Mh8Sy6gycawNUR2ycq4vhZiu0g161dh8+4nQIUCWcXU7czM82/JpE29QiUw0/
 vURQ==
X-Gm-Message-State: ACrzQf2ufvJ0kn23FsasnbouunkTwFWG+KnZfmdflb70nbohPzszK8Cv
 WTpPFKAyRFDb7nKElSlMFXxxcoWNd+thCATN3vKAUBpNqOQ=
X-Google-Smtp-Source: AMsMyM5skdLaneHSZdnlqni96h8+z/BpAG/1L37IrmBn1Gp/LI1BCazkLcYQCOsXcPexCDC2ayYrXFe7Fod+NKpmIy0=
X-Received: by 2002:a05:6870:b608:b0:131:cbbd:e75d with SMTP id
 cm8-20020a056870b60800b00131cbbde75dmr7546697oab.1.1664875600115; Tue, 04 Oct
 2022 02:26:40 -0700 (PDT)
MIME-Version: 1.0
References: <9d1283403bde42b39b6db664a9dee1fd@Greenatom.ru>
 <20221004085948.y3m2kvq3m27if7q7@tapioca>
In-Reply-To: <20221004085948.y3m2kvq3m27if7q7@tapioca>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 4 Oct 2022 10:26:28 +0100
Message-ID: <CAHt6W4cp_zC54sRsw+NxKVMRQep+j3k5gU6iM0ey-15f0PUY2g@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] spice webdav proxy
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 "Yury A. Produnov" <YAProdunov@greenatom.ru>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Frediano

Il giorno mar 4 ott 2022 alle ore 10:00 Victor Toso
<victortoso@redhat.com> ha scritto:
>
> Hi,
>
> On Fri, Sep 30, 2022 at 11:38:12AM +0000, Yury A. Produnov wrote:
> > Hello.
> > I installed spice-webdavd-latest inside the guest.
> > Everything works and the drive connects with the letter Z:/
> > But I need to change the letter to W:/
> > If I use the map-drive.bat script I get two identical drives with different letters.
> > Please help me to configure it.
> >
> > Best regards,
> > Yuriy Produnov
>
> If I recall correctly [0], the latest spice-webdavd should map to the
> next letter available (since v2.1).
>
> Looking briefly at `REG ADD` [1] of map-drive.bat, not sure what
> is the correct argument to chose a target driver name, if
> possible... I think you would need another command to map "Spice
> client" to a "W:/".
>
> [0] https://gitlab.gnome.org/GNOME/phodav/-/commit/13151735cb97bc4e95deb72597c1024d139504e3
> [1] https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/reg-add
>
> Cheers,
> Victor

Hi,
   I suppose that if the user is using the script to map the driver
you can use a

net use W: http://localhost:9843/

to map to the specific "W" drive.

Frediano
