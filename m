Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E844066EB
	for <lists+spice-devel@lfdr.de>; Fri, 10 Sep 2021 07:51:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11CA26E96D;
	Fri, 10 Sep 2021 05:51:27 +0000 (UTC)
X-Original-To: Spice-devel@lists.freedesktop.org
Delivered-To: Spice-devel@lists.freedesktop.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BAAB6E96D
 for <Spice-devel@lists.freedesktop.org>; Fri, 10 Sep 2021 05:51:26 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id k24so854196pgh.8
 for <Spice-devel@lists.freedesktop.org>; Thu, 09 Sep 2021 22:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=f5rhZM5Z+XQw4Z9QPt5NbwYiaE6MpoyB2j2N6spo5vU=;
 b=qkIhtZOwCIN2qQ0LxfLSZsW7krk6xdt1AgSPvrZaMX6UfVVCa+/H3I5Ki7UgzglTV7
 Pr1evVx7399/RU51I2gKTQnfxFkSZSZehaZ+TRKGNID6xuRV90y5RPGNT88Ni40ZOuVX
 iasSCoxr09aP48NEAnv9dmTUqf0qxPHgo6FihEqwxFe7Sy/OcQvBhURfs4NqGQY+pD5O
 a2gnF+YIhMOhGZmmBbobIUYR8HiP1yapJYpG1vTRl5kF3WYxtuWiTh6qydvE7rJqA6uN
 eb2TD59SmfMDzsgJHfWgao/Qw/YtYhezqdLxX66tOUI944UekSmO5FBf6j2XJSCSEMtk
 HvYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=f5rhZM5Z+XQw4Z9QPt5NbwYiaE6MpoyB2j2N6spo5vU=;
 b=yTiMnc86szvErVAGsTJYSJAPszQBDorPtJcNgcL2bpewuXXOFGD17ZI2CzcheJVKDH
 ffwHVQjxzgM7U/R9z/0Q5C9u9KGPtnHXJr6TCKZHsvaei6CSeNIf8wTL33FRo1TEjWt5
 k9vtBB6PbWU06sJJagT4fe7KBUgqHlE3GNDExJMwiPcN+k6GHoqIEzI9AujGEQ9/xWQw
 ihDBtL1AnxyO7z8ft8v+EqYylpBjBQh3MNW2+lgX2cwFctybej3o/W2f7WXjhlhAvRJM
 6ILt1cNSF9/k0PKd2BlBN1YY+3Z11E/kTaNzJvp68UjIxYKUF6YfOV4v6Kzp8kJam1It
 aMYQ==
X-Gm-Message-State: AOAM532vh/nsN3QpU51C2+IxbMPYWi73BEbvVg03j2zVDfr94b9bhZL7
 aVRdL9IEX/Xuu6myRucy1Fau1quBTQe0mWt9GSskDDuZc64=
X-Google-Smtp-Source: ABdhPJxOugPn8DlqhTOOhFBnlNn7EAZouyqlHH7HbtN2nT8Bs4+fyI04+Kj8AXTTmiyxC+I5nhL63IlGivgL9MsO+qM=
X-Received: by 2002:a63:9d44:: with SMTP id i65mr5880625pgd.69.1631253085549; 
 Thu, 09 Sep 2021 22:51:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:6e8d:0:0:0:0 with HTTP; Thu, 9 Sep 2021 22:51:25
 -0700 (PDT)
From: Andrey Af <public.irkutsk@gmail.com>
Date: Fri, 10 Sep 2021 05:51:25 +0000
Message-ID: <CAGusqHLAmqD6HgJ5ebUoOOt4sgdJhvvaLn+X5AtJjDTY7=q=Cw@mail.gmail.com>
To: Spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Subject: [Spice-devel] spice protocol 11.5 encrypted password
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

Hi,

For encrypted password, there is definitely no data length market?
For example, I don't need a password, authentication is verified by
another part of the code, how can I skip this?
