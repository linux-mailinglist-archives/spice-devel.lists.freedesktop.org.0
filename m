Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C75265C649
	for <lists+spice-devel@lfdr.de>; Tue,  3 Jan 2023 19:30:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2C5010E011;
	Tue,  3 Jan 2023 18:30:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.tol.fr (mail.tol.fr [82.66.50.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E9F410E011
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Jan 2023 18:30:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="------------Yz1h6Dyq4YLAPBXtFULul8Mz"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=couderc.eu; s=2017;
 t=1672770647; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+h0h2+H9ZfFKjRPXQ14hoYCHF2RhD/6OlTfLm4BlgXE=;
 b=TwCGxPzJOzELX27VrgMKew1iLaQaON/Ol4jPIzm477xyuk/xlehr6p8diO5HrpdEV9MITj
 xu+hUGrbYFbBH9KsZDvLghxO3okkOtkkm/BgM6Z6u3cXaK0v4n+LBaEhjqY5tB+k8/1l4t
 LofmnneiMC4g/sMInWp26kryDfiydfADpJpwQWRbGrqzioCv4nVqpIX4UzSqHdoU4pb35F
 bqZBlrkdvNuTffC5qSjStZJaq0vpUNaggS0m++54LNsvDOPJRzH4ySHJ5v7lbOsjPNYFkf
 QIyIR/ivSOx7C6XbAwqHwBoenBZUuZXMpZDZBOIkLgatE9C477ZkEPgj4FND4g==
Message-ID: <accf4220-d9ec-e752-9ee3-1c97c232775d@couderc.eu>
Date: Tue, 3 Jan 2023 19:30:46 +0100
MIME-Version: 1.0
Content-Language: fr
To: Uri Lublin <ulublin@redhat.com>
References: <a95fc8c4-6384-4b9a-7e09-878dab49c164@couderc.eu>
 <CAAg9qJ0MRKu8RnONLAEum1asJaYerTcCWjPQLt05fk4qbW9JHQ@mail.gmail.com>
From: Pierre Couderc <pierre@couderc.eu>
In-Reply-To: <CAAg9qJ0MRKu8RnONLAEum1asJaYerTcCWjPQLt05fk4qbW9JHQ@mail.gmail.com>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=couderc.eu;
 s=2017; t=1672770647; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+h0h2+H9ZfFKjRPXQ14hoYCHF2RhD/6OlTfLm4BlgXE=;
 b=pbkk3aSq9ePX0WCuxWgAfejvmGaegrd7VRPOX6xAUkCWU1OeSVdXUaTg0/QhLk3TOlKlHu
 p7evjV4fN74Q8g6nzoBT4DyaxzrPhz/HHl3/WjK6QnKnEPsaTn+3ZoHvS/qgdmHBhLfTdC
 H7P1to3tBro7pNf6xtPnA+07mGMCtEu+bENhCh/y+MpgAAF7kgJmgVHIss8EwQhgWTzXkW
 gcYsINX7WukaVt9UPaqTQ/SOwgJH7u4DzltUA6n+RJm5OvpQ1erzNdYRv63NXtHwg2iGb/
 3HVOtOXNbgOT53rlrBrvQvHxzv3PpB42HRLMoq1xabAWrzNuNp/weNF2Z5JZJw==
ARC-Seal: i=1; s=2017; d=couderc.eu; t=1672770647; a=rsa-sha256; cv=none;
 b=krLJK0HhMWCO3fqGx6VWrpmX2XEzmYUx1YTgClzjNPs7FIehzlAUKWR2mLtx9FdrXPNWJO/4cXd0Fq1rHbpIaTixGNUi5QgphNRHeQ/xccycrLOhM53BRT1NFJ8alHWzAnxvUbTcNJ4lURuUDlFibzKRdGMj+Um8j7VSmCgg92hg7VwmydqkQx89i4KxtMO6QJyyikAO5wdb8yiu0jfvt18fRAxikBGl/b+4q3Cq06eqD9qyCTGXsFyvtTbWwnFLqkFomgO7YlkSG8GvJ0Rr4pXA5F4UjcXxMIc1fkUIwCOPcnM4nBSru6vOgGbqAS8O2nGBt3+uqnRmjhu5IG6Exg==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=tol smtp.mailfrom=pierre@couderc.eu
Subject: Re: [Spice-devel] In spicy,
 how to change shft-F12 to ungrab the mouse ?
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

This is a multi-part message in MIME format.
--------------Yz1h6Dyq4YLAPBXtFULul8Mz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Le 1/3/23 à 14:38, Uri Lublin a écrit :
> Hi,
>
> Happy new year everybody.
>
> On Wed, Dec 28, 2022 at 11:11 AM Pierre Couderc <pierre@couderc.eu> wrote:
>
>     Is is possible ? how ?
>
>
> You can try adding the following to spicy configuration file
> (e.g. in $HOME/.config/spicy/settings on my Fedora), under [general]:
> grab-sequence=Alt_L+Control_L
>
> Hope that helps,
>     Uri.
>
Thnk you, it helps very much...

It works. But I amsurprised that if I try to change Alt_L+Control_L for 
exmple Alt_G+Control_G it does not work...

Aniway, Alt_L+Control_L is enogh for my needs...

--------------Yz1h6Dyq4YLAPBXtFULul8Mz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">Le 1/3/23 à 14:38, Uri Lublin a écrit :<br>
    </div>
    <blockquote type="cite"
cite="mid:CAAg9qJ0MRKu8RnONLAEum1asJaYerTcCWjPQLt05fk4qbW9JHQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div>Hi,</div>
            <div><br>
            </div>
            <div>Happy new year everybody.</div>
          </div>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Wed, Dec 28, 2022 at
            11:11 AM Pierre Couderc &lt;<a
              href="mailto:pierre@couderc.eu" moz-do-not-send="true"
              class="moz-txt-link-freetext">pierre@couderc.eu</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">Is is possible ? how ?<br>
          </blockquote>
          <div><br>
          </div>
          <div>You can try adding the following to spicy configuration
            file</div>
          <div>(e.g. in $HOME/.config/spicy/settings on my Fedora),
            under [general]:</div>
          <div>grab-sequence=Alt_L+Control_L</div>
          <div><br>
          </div>
          <div>Hope that helps,</div>
          <div>    Uri.<br>
          </div>
          <br>
        </div>
      </div>
    </blockquote>
    <p>Thnk you, it helps very much...</p>
    <p>It works. But I amsurprised that if I try to change
      Alt_L+Control_L for exmple Alt_G+Control_G it does not work...</p>
    <p>Aniway, Alt_L+Control_L is enogh for my needs...<br>
    </p>
  </body>
</html>

--------------Yz1h6Dyq4YLAPBXtFULul8Mz--
