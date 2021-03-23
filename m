Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B49634646A
	for <lists+spice-devel@lfdr.de>; Tue, 23 Mar 2021 17:07:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F5456EC53;
	Tue, 23 Mar 2021 16:07:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from sonic313-19.consmr.mail.gq1.yahoo.com
 (sonic313-19.consmr.mail.gq1.yahoo.com [98.137.65.82])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C27236E0E1
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Mar 2021 10:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1616496609; bh=WQgmjgTDqGXlyok3K3CB/1ixfi2xt0yTh5ujWNGTH3E=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To;
 b=lTCTNkW5H4as8Ba8RN2Y1AZ5QZaH74uihgswd/zG8vrhWV0W/oT/7heA8b00EVYUvY9vj1HhJNAqnC7NNya/dZ+hBXZF3GxYxuZS0dhIrw6OmUkxA5DZqP/wtUIWxcYc/KS35C6F7OSxWQJD4cT7ouRM+5h8X5GcSdyNZLrJoS+alL1oWKOTZciUkp7k+xbvMqB7VchskkVqPqNG01eeZtLdxsrdl/BPQPOlvxEWcolECHTu8dmwCrRLtcAOcu/TzSB9xV4yg27nE/zuEu2yF2h0w/qzaTD0PHj2axuoifxf4BDj0E0IT3pfWtfD9UHSUVuewxDmGR43FKul5KoLCA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1616496609; bh=LS51Tit6dfooDMf/ROydlz63hp1Mu8z2YEufgOFf6+v=;
 h=X-Sonic-MF:Date:From:To:Subject:From:Subject;
 b=q4dVg7YSevXdiUEUvqmBKqGXRCf4Pqd94JBoGILKlqg9g3q0BhGDlauSe8w0WraR1sjDNILSFYzjDrqBKEZoZMs0ws0Z2Zp/2tZGHGLuDCkVjWRWBLz+Z/FOa2uEKYq1OhHrApeW5JNdTppxQ8gm2HY7DHguWsyFA8S5UQpCdfs3N7pdIkioOOPgnqXfg8S27XpGNAVHjvX2pMJwZIUewOKf7uUE8396tPJdG0HkvrQurmsBrfz52tEbM5IPbHL9FexHE4FfT64iHl8Gi7u2DwgFnC3tVS/kYIg9SEDjiFJuh/sKCEtn1/nODm6Y4GPy4qev8Oxbu8RVjk9H2GpjgQ==
X-YMail-OSG: bJGasFsVM1m7.ginUoDJQo.IZzo5vlvlD2sZxJRIrkFW5I5uzmES_YlO1BYM8md
 HyLGdvOetFf4h.Cs6bxSt5UWwTFXwLpO9liHUJJBLI6mJaYG4nqUPyg5s8c4BseEgWysMCGjbTj_
 NH_PFX3lGpdO10lvDS92cjkEVejeKjHJNmvsof1kjZ8pyyf8iK1NyvHaDY8qDJP.fh_2yb5zkU1P
 zdaTnDUFJi_yM182w4ma4ZYl5vwZsqNLwKTjbaNKmN7omWiBMFxV.pucs7t0fPaRNvWYKQsDQBxX
 RQC8uIevY4LIVLkoC5SDauYqIuiGGaLW2jusFikA0F.j_caiUgCiZGy3BRAaXELXtPCsmHrSxEWj
 4pcQ8ieAwJ5XGLEmPrLmJSehZVzxgEARhXoBoXiSh5zl.a22WyrY5QvhDNdplT77GU_u.IvWaAPI
 XwGvjmsNuffztnpOGBw_8I8qh.0MogcA09vGAb3lT01R1CVrdtf5d2iK2XpG0ininr2H57wdD_q3
 ZavnLFN_5.AQAIiAx2M5kQQlhYFeJ8JA33c6R8ABtJ9ooHoa0vDArxAxxIFwMf0j4BWOFsr2fbzr
 TWkW19hQwTZCiiwJggqW8iFxlvS5aIATKVPO.rGyWQKtaGiaa9QUHQ_Gpo0rzjUNQQTbMti25.Sw
 DXCjhusksgtjHQ74xPTLV5d3nQk7Vha5MGkYpY7LAGjiTOZkyPsUNIA_53JU.rGoQcAu8h7O.b9E
 3Cs9vyGLxLC8I_d1f1GA1ZYo6kOucYO1zymLxRKc7BP6OFu1R3FY5ZLYeUfWPTI.3Nb.EiMfUmPw
 DC74z8YArai17qM1w5cptQrdNyqhWpQquD4JHnknPHswoOIEvGDdd3MWyfql1WqO0ujN8ujW0k30
 z_rHcAN4evluv9wjCoW6IYNSlOl7SAJfs_h3JimXFZMkMlSm3Tc5LCBZkLwOMMo.8YYo_njA82oC
 op0ZhpEXllj.153UPdEUyPrW6bOT2eCxAI65XfJzRmEiVPHXI3W2OjPXPKe2QjupIQ4d35Rgne66
 c0gBOwidCWTfwCzyh7Q01itVwffYG3Y7hZEyakKXZjbPEdgHbBcNLkLXohmlPXCHO1pNn5DWBVq4
 1a695mtkMtiADnIkZK8WBBrfatwjRxMN9jAwDm9HgX7AJ9R2nCDibC9yqV0WjwPjnl1mV1ATpLbF
 A3DW.9uy2G5Pp4j9FzKMgNCyzTRmLrsMVnwV_BJIQp3_T6.OZnuS.JvU0prCzeA.KgANauoBRVkm
 giEaO9wiPHJJ0CN.HGlDcrzfSAuz1WCnAf6Kvg376B_sNg1aZ0EwtHyppcZZVYWp53eDkU07JkLY
 e_9PTq412Ham5RFuXQ03dqJgaikpHeFt.WbSy7bmO46V90Dk6y0kmi9PV0xL3sp7Wf4XipGmUv4_
 1TQux79WY21hjGkq5XYf8F7qUFL1UshWgvVcpegcwdhj58pSsxyN4q9EXNzL2cauGQLon5ymSsyR
 m6ZXOaxRT9jJq8VCaVlSsnA.acOOOKb0w4Nu.0Ok2LmBDo9V1F04dyUznPAcWd1S7WMlqUkYhEXT
 oKp2_u1Rdl4Qjj5zTle.wLsyW7mpER_RNkAcf1NfuuY3_L4zG0FMC.dMdbNny7WD.GjrxHbJQaKf
 HkilgJNbotzTMzqPTKZJCRVlSFQATj9iIdaLAbBiPqgIpOIuch9as9TQlCp3Qr_i_IfINJMjk0x.
 ewSmNSqxASQsp4Y.ZHIZVknftocnQO_ml6NphWGmjIihj5uT9At81QVjSYggEa8JWJ9T6s_zvCkm
 1jEQKDzyDkuycx4UoPoVBCwn72BFTNIHMho2KRvhunjyfKQTM7eIs9yzUmRYCOPkGlqfmjRmj8i1
 SlQrSS_OpE5AvBDwMYC90BwODB5m1TQIT9HDMItfuoxRMAnnHPfcUhh0A5a9ac.si2_zLnum14Xb
 2kTJ6npRXrf2iJtRC2.X1ZYuKtVqsJp9evFGQmLUumRWFiRXzpLPSdwVGdQWb5oPqeDMJdpb1P5E
 2W.vv59oohGRgcKNyfb2uCTZDbEn0b9IRbkjVcC1j1l.JQC25.HqZW_3mVVTgS81adeKrxWBEvP9
 pqmCbamNwAyvo.iSiWqineZHGkBaqO1sdrc5ssnFN_t7w7wNS8EmPkK4ffY16HMQk8LfVk7Fx311
 Vb3UnuOYdhX714o_evrfsSa80hKyJHuO0egySJOBZJ2sc4n12QANV0ANyst4EqaOttp4amV_xJi4
 gsAXjwQXw7HisxC9dx6kAGlZt6G7TZsZa49POz84TN6pLumPrNgaNm0wfF406SL5RulXSZTknG8.
 opisOWGA64Vbug96Tc1hTJlMUX.jvglUT3_O2D7crnZ9l3k6The1VztNv4VgRMOyjt96X6gbN3UX
 KXnAP5pmHNVGTsqiKm6XhNrsAHOBh4ipH6HBBf1cKE7EQv.bhRMHdI.TPqGaska7TsIrEJ0nIAb_
 jvLxI.YzI6Qan2utLchrBr822ZShKxZQJGRfsM0uN1WDCvOY00avggVPwZst.yq9md1lLO8bJHR7
 cTd9wHwT_qYOdOx7XEbxAUtdtf551mkMekRaq1BS4FoptFxDCH.CFeISKoWT_RGwmISz9UrvkJR1
 9rxOuzLPZ4oGJozrg1Os98QEdx22sibXvVRHIVqeUIiw4Yp56JLoPu4Vnz.nSL6CjQ.s-
X-Sonic-MF: <bg271828@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.gq1.yahoo.com with HTTP; Tue, 23 Mar 2021 10:50:09 +0000
Date: Tue, 23 Mar 2021 10:50:08 +0000 (UTC)
From: "Dr. Jennifer Nussbaum" <bg271828@yahoo.com>
To: Julien Rope <jrope@redhat.com>
Message-ID: <965619202.3203082.1616496608587@mail.yahoo.com>
In-Reply-To: <CAD5yKqwRzPD5Pp4N1W9V1=weDFLy6mdcg5JoBFARh9o+VxOMUQ@mail.gmail.com>
References: <1460907569.2869086.1616420768731.ref@mail.yahoo.com>
 <1460907569.2869086.1616420768731@mail.yahoo.com>
 <20210322145139.kuigwqkyjdkby35r@wingsuit>
 <2044021456.514716.1616426838206@mail.yahoo.com>
 <b734810e-8bba-7afd-b104-5b48a06659f7@redhat.com>
 <749011737.954954.1616435403564@mail.yahoo.com>
 <CAD5yKqwRzPD5Pp4N1W9V1=weDFLy6mdcg5JoBFARh9o+VxOMUQ@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.17936 YMailNorrin Mozilla/5.0 (X11;
 Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko)
 Chrome/88.0.4324.192 Safari/537.36
X-Mailman-Approved-At: Tue, 23 Mar 2021 16:07:14 +0000
Subject: Re: [Spice-devel] Multiple monitors at 4K, in virt-manager?
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
Content-Type: multipart/mixed; boundary="===============0110774464=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0110774464==
Content-Type: multipart/alternative; 
	boundary="----=_Part_3203081_1456700740.1616496608585"

------=_Part_3203081_1456700740.1616496608585
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 On Tuesday, March 23, 2021, 04:04:27 AM EDT, Julien Rope <jrope@redhat.com=
> wrote:
=20
=20
 > I still am offered only 2952 x 1781 in the guest. With those settings ex=
cept 'heads=3D"2"', it is exactly>=C2=A0> the same--that resolution, and on=
ly one display, "Virtual-0".>=C2=A0>=C2=A0>=C2=A0> As mentioned in my origi=
nal message, when I use the Virtio instead of the QXL device, I do get 4K,>=
=C2=A0> though again choosing 'heads=3D"2"' doesn't give me an additional d=
isplay in the guest. (Curiously>=C2=A0> the one display I get is "Virtual-1=
" rather than "Virtual-0".) With this device there's no option for>=C2=A0> =
changing the video memory in the XML.>=C2=A0
>=C2=A0The numbering (Virtual-0 vs Virtual-1) is expected - this is not an =
issue.>=C2=A0
>=C2=A0Do you actually get the choice of additional=C2=A0displays in virt-v=
iewer (not in the guest) ?>=C2=A0Under the top menu "View -> Displays" you =
should have a list of available displays. Do you see them ? Are they enable=
d or grayed out ?
Ah, that is some kind of progress!
This is not visible in the integrated viewer in virt-manager, but when I la=
unch virt-viewer on itsown, yes, I do get the option of two displays. And e=
nabling them both does allow me to launcha second display.
I cannot then launch the display settings in the guest, however; it segfaul=
ts right away. I'll look into=C2=A0that. But xrandr does report two display=
s; the second one is=C2=A02135 x 1647, though. Not clear why Istill don't g=
et a 4K option with QXL.
If I try this with the virtio device (instead of QXL) with two heads, it's =
similar: a separate virt-viewer=C2=A0instance allows=C2=A0me to launch two =
displays; in this case xrandr reports 4K displays. But as before,=C2=A0the =
display settings manager segfaults right away.
Exploring further.
Jen
 =20
------=_Part_3203081_1456700740.1616496608585
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp824f5d92yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div></div>
        <div><span style=3D"color: rgb(38, 40, 42);">On Tuesday, March 23, =
2021, 04:04:27 AM EDT, Julien Rope &lt;jrope@redhat.com&gt; wrote:</span><b=
r></div></div><div id=3D"ydp2b8affbeyahoo_quoted_6959992461" class=3D"ydp2b=
8affbeyahoo_quoted"><div style=3D"font-family:'Helvetica Neue', Helvetica, =
Arial, sans-serif;font-size:13px;color:#26282a;">
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp2b8affbeyiv9802186794"><div dir=3D"ltr">=
<div dir=3D"ltr" style=3D"color:rgb(38,40,42);font-family:Helvetica, Arial,=
 sans-serif;font-size:13px;">&gt; I still am offered only 2952 x 1781 in th=
e guest. With those settings except 'heads=3D"2"', it is exactly</div><div =
dir=3D"ltr" style=3D"color:rgb(38,40,42);font-family:Helvetica, Arial, sans=
-serif;font-size:13px;" data-setdir=3D"false"><span>&gt;&nbsp;</span>&gt; t=
he same--that resolution, and only one display, "Virtual-0".</div><div dir=
=3D"ltr" style=3D"color:rgb(38,40,42);font-family:Helvetica, Arial, sans-se=
rif;font-size:13px;" data-setdir=3D"false"><span>&gt;&nbsp;</span>&gt;&nbsp=
;</div><div dir=3D"ltr" style=3D"color:rgb(38,40,42);font-family:Helvetica,=
 Arial, sans-serif;font-size:13px;" data-setdir=3D"false"><span>&gt;&nbsp;<=
/span>&gt; As mentioned in my original message, when I use the Virtio inste=
ad of the QXL device, I do get 4K,</div><div dir=3D"ltr" style=3D"color:rgb=
(38,40,42);font-family:Helvetica, Arial, sans-serif;font-size:13px;" data-s=
etdir=3D"false"><span>&gt;&nbsp;</span>&gt; though again choosing 'heads=3D=
"2"' doesn't give me an additional display in the guest. (Curiously</div><d=
iv dir=3D"ltr" style=3D"color:rgb(38,40,42);font-family:Helvetica, Arial, s=
ans-serif;font-size:13px;" data-setdir=3D"false"><span>&gt;&nbsp;</span>&gt=
; the one display I get is "Virtual-1" rather than "Virtual-0".) With this =
device there's no option for</div><div dir=3D"ltr" style=3D"color:rgb(38,40=
,42);font-family:Helvetica, Arial, sans-serif;font-size:13px;" data-setdir=
=3D"false"><span>&gt;&nbsp;</span>&gt; changing the video memory in the XML=
.</div><div dir=3D"ltr" style=3D"color:rgb(38,40,42);font-family:Helvetica,=
 Arial, sans-serif;font-size:13px;" data-setdir=3D"false"><span>&gt;&nbsp;<=
/span><br clear=3D"none"></div><div style=3D"color:rgb(38,40,42);font-famil=
y:Helvetica, Arial, sans-serif;font-size:13px;" dir=3D"ltr" data-setdir=3D"=
false"><span>&gt;&nbsp;</span>The numbering (Virtual-0 vs Virtual-1) is exp=
ected - this is not an issue.</div><div style=3D"color:rgb(38,40,42);font-f=
amily:Helvetica, Arial, sans-serif;font-size:13px;" dir=3D"ltr" data-setdir=
=3D"false"><span>&gt;&nbsp;</span><br clear=3D"none"></div><div style=3D"co=
lor:rgb(38,40,42);font-family:Helvetica, Arial, sans-serif;font-size:13px;"=
 dir=3D"ltr" data-setdir=3D"false"><span>&gt;&nbsp;</span>Do you actually g=
et the choice of additional&nbsp;displays in virt-viewer (not in the guest)=
 ?</div><div style=3D"color:rgb(38,40,42);font-family:Helvetica, Arial, san=
s-serif;font-size:13px;" dir=3D"ltr" data-setdir=3D"false"><span>&gt;&nbsp;=
</span>Under the top menu "View -&gt; Displays" you should have a list of a=
vailable displays. Do you see them ? Are they enabled or grayed out ?</div>=
<div style=3D"color:rgb(38,40,42);font-family:Helvetica, Arial, sans-serif;=
font-size:13px;"><br></div><div style=3D"color:rgb(38,40,42);font-family:He=
lvetica, Arial, sans-serif;font-size:13px;" dir=3D"ltr" data-setdir=3D"fals=
e">Ah, that is some kind of progress!</div><div style=3D"color:rgb(38,40,42=
);font-family:Helvetica, Arial, sans-serif;font-size:13px;" dir=3D"ltr" dat=
a-setdir=3D"false"><br></div><div style=3D"color:rgb(38,40,42);font-family:=
Helvetica, Arial, sans-serif;font-size:13px;" dir=3D"ltr" data-setdir=3D"fa=
lse">This is not visible in the integrated viewer in virt-manager, but when=
 I launch virt-viewer on its</div><div style=3D"color:rgb(38,40,42);font-fa=
mily:Helvetica, Arial, sans-serif;font-size:13px;" dir=3D"ltr" data-setdir=
=3D"false">own, yes, I do get the option of two displays. And enabling them=
 both does allow me to launch</div><div style=3D"color:rgb(38,40,42);font-f=
amily:Helvetica, Arial, sans-serif;font-size:13px;" dir=3D"ltr" data-setdir=
=3D"false">a second display.</div><div style=3D"color:rgb(38,40,42);font-fa=
mily:Helvetica, Arial, sans-serif;font-size:13px;" dir=3D"ltr" data-setdir=
=3D"false"><br></div><div style=3D"color:rgb(38,40,42);font-family:Helvetic=
a, Arial, sans-serif;font-size:13px;" dir=3D"ltr" data-setdir=3D"false">I c=
annot then launch the display settings in the guest, however; it segfaults =
right away. I'll look into&nbsp;</div><div style=3D"color:rgb(38,40,42);fon=
t-family:Helvetica, Arial, sans-serif;font-size:13px;" dir=3D"ltr" data-set=
dir=3D"false">that. But xrandr does report two displays; the second one is&=
nbsp;2135 x 1647, though. Not clear why I</div><div style=3D"color:rgb(38,4=
0,42);font-family:Helvetica, Arial, sans-serif;font-size:13px;" dir=3D"ltr"=
 data-setdir=3D"false">still don't get a 4K option with QXL.</div><div styl=
e=3D"color:rgb(38,40,42);font-family:Helvetica, Arial, sans-serif;font-size=
:13px;" dir=3D"ltr" data-setdir=3D"false"><span><br></span></div><div style=
=3D"color:rgb(38,40,42);font-family:Helvetica, Arial, sans-serif;font-size:=
13px;" dir=3D"ltr" data-setdir=3D"false"><span>If I try this with the virti=
o device (instead of QXL) with two heads, it's similar: a separate virt-vie=
wer&nbsp;</span></div><div style=3D"color:rgb(38,40,42);font-family:Helveti=
ca, Arial, sans-serif;font-size:13px;" dir=3D"ltr" data-setdir=3D"false"><s=
pan>instance allows&nbsp;</span>me to launch two displays; in this case xra=
ndr reports 4K displays. But as before,&nbsp;</div><div style=3D"color:rgb(=
38,40,42);font-family:Helvetica, Arial, sans-serif;font-size:13px;" dir=3D"=
ltr" data-setdir=3D"false">the display settings manager segfaults right awa=
y.</div><div style=3D"color:rgb(38,40,42);font-family:Helvetica, Arial, san=
s-serif;font-size:13px;" dir=3D"ltr" data-setdir=3D"false"><span><br></span=
></div><div style=3D"color:rgb(38,40,42);font-family:Helvetica, Arial, sans=
-serif;font-size:13px;" dir=3D"ltr" data-setdir=3D"false"><span>Exploring f=
urther.</span></div><div style=3D"color:rgb(38,40,42);font-family:Helvetica=
, Arial, sans-serif;font-size:13px;" dir=3D"ltr" data-setdir=3D"false"><spa=
n><br></span></div><div style=3D"color:rgb(38,40,42);font-family:Helvetica,=
 Arial, sans-serif;font-size:13px;" dir=3D"ltr" data-setdir=3D"false"><span=
>Jen</span></div><div style=3D"color:rgb(38,40,42);font-family:Helvetica, A=
rial, sans-serif;font-size:13px;" dir=3D"ltr" data-setdir=3D"false"><span><=
br></span></div></div>
</div></div>
            </div>
        </div></body></html>
------=_Part_3203081_1456700740.1616496608585--

--===============0110774464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0110774464==--
