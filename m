Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2A2345954
	for <lists+spice-devel@lfdr.de>; Tue, 23 Mar 2021 09:12:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2318B88BBA;
	Tue, 23 Mar 2021 08:12:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from sonic314-48.consmr.mail.sg3.yahoo.com
 (sonic314-48.consmr.mail.sg3.yahoo.com [106.10.240.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CB126E852
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Mar 2021 08:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1616487092; bh=JDwVg1YeWij1bzVg6CXUMNyKMzRE7Mu8E1jiUyK+aHk=;
 h=Date:From:Reply-To:Subject:References:From:Subject:Reply-To;
 b=knWVEJxpSoxNjbaU2d2OiVmLcdsAdSudh13aT1dKTII7Sd0vqfHbR9EN9iHAyxH8bcUv08ORWlZ6WehmwEfzr/WX6uDLpT6t1dk50ApO+FyQG37J5rYFo/28hfHpL9XNOdE/mkzVp9Xsqapl6zz4zifRojO2ujG/rDakfodABqfkthw3XqkDbNl/bQL+8IPTvD4VnaNUrKyCI57xEDL+Rh/MKhnv+8ByK9WfTqKXRJJTBC8kK0lCizmk3cjB4lAm9ketrcHgpL38VrXJjdHwu1A8jefZbTAx3Ed+WvRhKIkYEDOIum2joQBUbqeL82hOw5rE6O0jpP7ZEIRe3LT9zA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1616487092; bh=aOKB3jnA5GwkS4lJv+WsP0d80x5XmmILNyBgKt9CO+h=;
 h=X-Sonic-MF:Date:From:Subject:From:Subject;
 b=X1X8PAJnUfRSBuXTFIZnUNb6TT4+C3WQG0Tjm3UpgNgKtOP0J2bsOTGh7A3gd/USptDcWGbBxm9XAQ4wZwK9nSizcZQ0huxM84SBIing38ufv9P4LFsX8N4fgeunLqqWOlownI3+1C9QGVUX2m5yPWGwVzxQqzq1G6JCvdRe1ZlC8ewUWTHVKYQEQJVyHdLAYz4+nTCeHq1Lvy0CvAZBQJWTNPaHTQjjeqWnaXKPYE7kV0TYAEAGAQTaIvl5pfM728equCOQ5EY4lgAjU49vnHnNG0pdNBIocWnDL7aQ89RKTmV+zpXE/RBLnxFaJzWqcU5xElZd8swclpLXwSzQDA==
X-YMail-OSG: 1FQGmq4VM1nhyUyJvNL2EVLWIQ7Y1D6Pgsp..okfaSsDAo85HBOuhHVGvsKP19M
 EzZHR3J2ypHGoCt7.5xsjv_c3Dcw1hB8UKSybK0CWZ8fGI_knwak3TIgtgwnTqFukgAwVltKgxvD
 7k3FIz2sLpUUZ75h9rwJpESqaJCAepgCHPWSZrBTNMyAxohCzLeNfii9C0XD6HIwSgHYbfN3p2j6
 pBEIaX6E8HKhXeof339VuCK64VAbkR1oepclZeF0LS9j6Xp_8yMjLu5EC9aya73hxVfkIct3ro2j
 KZ8v7xEjA5kB1JFDy_AClDO52EdfOItXXQXAeZQZMecmvn0eOgdWfjNSuJ1v4AXhfct2IHzGlMpe
 83HjHz48rkyZC70FKfcZswg6BmWpZ1t84rzq3AtvdOlRw4RyPmtd5yM3LwbOrG0XmDBiFiIQ59bV
 _61J_GgE0SjrH2tgmH3E6L.ntKhgrTrlid2xem7ERE3.m9XV0ZllU77Q_LFn3uCoAEe6I3Juptcn
 Y91LZXVyWxtvSVoq_NwXN7Fn6IFN0IsuXgCp0HXlqz1K0K4ir1_F45.Z4Pq6l.yp5fIY2Qfy1uZj
 W4hWcP43DcIgmBanvsoSSLNx5sXI8f70tQ9qp76qClLrnL0oMOOiZ4uFifTc6zdC82PjCTLAkS1I
 zkPqRqAtogQM6uwQJ_RBYAJuE65NkS2wxIO9NpO0EA9PDjYQfDtDtIq0Q05IrTR3xmPGd6pKezoA
 x3p6TqZqEODEqF4tZ0yxRWTQOlWDUmUTNOS432fnwXotB9nNyGoL7.VnWGs4ivxOdQnItrGHwxkL
 EAEWJn.jxHrdjmHMN5I_.tJ4C35HBz6KKC88DjQLjUULQdw6QLteaLjmeqr.27kpAlzmLyk98oj5
 MFDUBp1Es3rr7QoHQQ4vWdflotVl7ALjNf3fm_P301CRxEoD8Nj36q0EthZtynyIqraPXQcs4LKL
 V17yGO_m.wx1I5WGnBpJ.e3R6uTelyss2KDPX3DLGu8pClZapSpL7110RB1oFUu2yP.OOuT6JeWZ
 KHb.2leP25Sjzy8rBgZx_UV6NVcpKYzs11EkvdXWuIxQ35_AxnBtH5BA4PzQNVu0KP7sro4ODHIs
 nT24wNAgzXWorbST3Oic95qw2ir_P9XLnrX0VxzdeHZAGgAgAs_gsxToOuH1IjKYA6jjFkdsxgDf
 f6Bk6zynhG5Li7l94LZE5wWqK.DZMkr1fW9DgMU4ZBEIu3kahe7gJTu6rXxyZEeBchhNL_INl.2S
 LEINh5r8lVYOnZ_9uS9of1SiY76QFoRGHyPpZCZ4PYNYzh3sBmA4Yi6EOAcZ8QECCfA_s_Dt6iaj
 L2XxqfWv2TPucmsaPeLdA6RewhBiS_atX7LNjaCLs7bhRWy0W6LAYxa4MwBlz_OPAUJRZyNbBEoH
 i2XKs9sTOw_BJRhDAauazMZLKQHKSMzK8bXyUGmrdzyWTpmzV1Qr_uoXrl9yIqnTWmHxf.h2aZY0
 d90j4oFi8hsmH8QgKzUGWPlhlD.oFgsQROTTsXwB8meGc86ixnMjvAOs7HXDIBdiVpbbUthX_qD3
 gzSXuUmWejSz.eOmvDFkAnCOYJAcpZAQBAt8IxEncJTISkcH._04TsGX4oRozyqYvlpw.wXqBggl
 yq5ihvr8ud3FJ3Mnnwu2l49U11ZlFH3otj6vEE2qfG_kRCsiqtuBbPjipMlASWfkWz.zPgTmZEos
 SdU9Uk5Pt8TS7aklC0He_MF9CIFqiMNeutCyEhq3edQI6ZacNIdfczdLZ1AcetbzG8jHJ5Ohe5yg
 02iYIxWckXo0lOa8VsnUS__g2x8xQozW9t_Jyb3.rtBPB3.BkoD8eiGJGADB6S_mmiWs0S7q0Mt_
 6tLHubtAdbpYt7PxIY3O2bOYiIrizHKyhnJEi2RnR44qX7Zsu2OXkZrNKdkSi_ROTzna0_p9Uk6v
 hJk2V468TKVy5fRU0DPERSH_LTbkddFBJE6MiKXS9npKMDRowExNfWEfV2LE.YEu7mozk_45wwhG
 UwxRFYmNCfWk9S3CccDYS4kvFG90kDSnKneXy6OL8HRXHdXNbbgw0TbaJ8v9LXt5y.pM3uUTDW2P
 Df7WAuRzaw1I4BFfqEkk.Qi50RL.OUcUkq58qrycE3SOoJraui7IeAesv.E8wd21nueMQ8vs0G1T
 WmHbKVmSAJOcLPKKM_ksm2eYvCo86ml9hkem1TsRvp5qQreq6cBzG.49EXHuXfCZqTvvHSZXWvts
 NuJBd3LlCVnTCYU78mZoiyQwI7SQJ4V.3mT3XeXxdndWDIuYk5oAxo.YRdTifGNlUFSxoemV7cLQ
 eF8oSQebCfQBcSiFhAXhLc5kwfCMmTAbACzSWp0ec.mctLYcqGUJSBcwfstmIq7qb2lUruF8iVS4
 0eEwtWkluID5YYxpesIlGsL4ZZ0c9nJhuyZfNfxrSzE2yz17in_V9Ie2c6dDvgY.lvtGEwwLWmQI
 fry8hwuprwDjjRxbDMZXwLWJtItm.hmQnS.I.C40Vvwcm_xUP9oLLxsTBV_lD2_gcUFRtQrvXg1e
 4.w.Qse_oxI2CwiEgakTxL6us5F20n.7Mfp9ZbDDY2HA.NI7fIhL6LicD5iQlnbW_NDx66oXDv79
 MnmS1ip1h_86reZ.pY_dmkRpG7iUndldakMyDjlfsrR0CofzO3OK6Qx7MmWHYDIGhSIxdf5NWcVq
 89__YW4s1zk6TA05ElPRuvb4krUl1d7ruaEk8MqUppDjWh2dJo4AnpCJVqE.eA6joJ6_zfIK79pz
 Mo3lAcaL9B_NEUnvhJ.vlDdH8ebw0eTwGONX2bKzCUQ9B0IAxhks_LdVBpt_WczsphKx4.9.ai6s
 LuzONRP0xIaKRPOCn8FSqT.OqruGV.W..7rPzObzVRFneuz.uq0heaedrkKOYpFyaqa7uHcTHbl0
 1svBn3SU24wrPaDfhKuZdZlreP3mcw1tR3PT_F7AHq4YsN9_OessXp3cdnybnMAcyMPVcanLc7oO
 R.Ybnuz.alO0feytdWkKDvNS0iS1t3o0xTQxczoqEYpXXZtqZtPGHPvUR2Hl4wIpH0IxYTu5MKKT
 geoOj0tJuYACx_lOBKS.AGT.p6ha7svuyaf0zlWW_0ILcwXdZVp0JUOeW9RuAmeAW4AY6eJLCkVU
 XM5uq0jZHkcRquE7gogokkmsomioWcQn5aIDRhLf6RfZGQmkSOPep10cH83yQWiyc3eZXEVpzdhN
 _BgBMwKEXkInKpXmzV9SaUB_KzV0UOC6vD5v.hz94P51juTqg0lxd6.phClutGynOhazNVFSORs9
 LD7WnPY462r37U_QZPoBnkVofcx.TOCC2bVeBQdo34dSDyqgXaMJvk2q9p9gPxI53wA0hCgPmtYc
 7Fk3nzQfQN6mXf9SYgyUkcANdxwf_KvHGNFkza6Rkg7Ky9IDTqG8R3S9BvepmZKXW2tqItlU5.Xd
 zg1pUURad0q5xDrnS.1q6fcB5VrMGYtFw6DCqpzEky4.GK1aOPSWC3iPVhoTkT34a8WPwZyc0DFd
 Rx2LzibtZp0FcbV0IO13GDNvJ8bgwhRLpJYeU_7m71Dz_.DYAeK2KuW6Z5rKAjEbjratH9WXViR5
 9itTRIvQpK5MgIBdzkv7ijpDqjk.MJ2EyGrpCVy1t8XFp2QbO8y3Ghq.jVXEyeD.47jv1rXkjdRB
 bLdplgk5L6N.CI1AtPKcvJ2ebHPewOhes9OsUgxRqdh4htH4bHfuvZbasLoch_4e2nM9oc0sVXMo
 rzWsvmOycfS5eDwyYCu7rQmDE3GcT5OCpMSIW3AePdtgBah4N20N6hBLVfvjnqAv_9u4TjTePZJo
 U28ujkWMljQQMxLCzMU6uHUhKXjPSCYQ9MMSodpOpkZGsN1uhKU8e5Q0uLnKSLmHMu0jSMHF.QTI
 tp4Q7HOak7Zl8O46bJjM1jWQxiCtX05LW4AR6T2jx_5_MQveW787tnhUbR9vgcqVY.wpZoUJMLcE
 .ic6Pi8zkPrs55J1vraa_pqePLIRLv.XkOhwb_f8uM8IozB4NuwCqbuJ0WFFNKCKgjRlJ4NzBPm6
 CMr8Yeazf02K2h6GWNs1qJR3TPbjEeVc6t7ZPL.Llj8_vGDHjRucpBsE._L54oNlGapgqmEbdlMe
 oZ7yimZr9x3JiXZoh4rFiNOYwsKzdokrmHXbkLCAuOs0FK1YcrHpn.lAoOzGzu_zD7OIVQLRuIxg
 wNcya9qfkKlZW8YysWeedJsHpzY..wTxSABS_DdZaRcSrDPlob0TlbiMe5mktj53DTQBQouGeIl9
 UYhGcZxDMy4Pp08eZqTIKUgXPPG9DqYP.ncTUDty5eNtPYCg1wKYEUPdLFs5pgCeHn7RghAdcTjm
 11gMfPNhPeDfmiY2g.HExj0RyDkL7E9F5lGplA28B1W3CkPnceQRoCqJbpGLupX5I.THXC8WFdjj
 BfTzrt1w8R5pBDODIzfvrFi4EWo7d_n3rPWQ4a4WNMB28vWRuF8fEpCwn1WewdcD_aG7iRqkH5Pr
 ydRUq5uRv7nHdb4_2IgN4.y8AcdKbGmGNvq5rcPK9OwxNm9Y0doiJgE48.0B.BtQJkqBlY065r2g
 BZAf3gKME2dSsxLjkyIYmul7p2F_VuoDM.MVHmuSoZnyJcM2gu1Gs.THwDEMtEJU256hDTWDEOYd
 DoN9TCRvHX4yfx6Q9J0AD2RMNoMuDvenla6zkBvu4YOJUx9rDb_fx_1rkgnqxfFzaUpvsC2cN74x
 X_5SeZVUjez03trcnJNxQVX6e3hOjgdg8VoirLwIt_Rm5QoVIdZ_HQUZOBlNbtk2NmJhFj2bH_1v
 3jSJBB5YyZvGTE3duUEh272n2sD6IPZD1lc36Go4R8OYF5jEGHBQiQ5ktWO.OQ5teH8cXH2Svox4
 drS4jQXU3RvwQaXPYDXJ4CtAhJaTPKytB5X0JZaq8UM0ee.pYOBUMD.r3JQoWS9n46Qsi2iWimek
 E7exhrODPVQVBwbBuzZc_MfjSc97oXxyePSu2iFVPwubKV3H5xjEkF.Tj_1EDiodyKCN61y7isK6
 FVb3KDDmktQGX8FpV.egNQEDuQMG0_s8rMAd49o3PTr8dK6gsW2IIbcS.fRZJgJMvvMjBuLCgj7O
 LtER5gsypc.l70QSwF9K0UHSyx6laednhd7XIEXvy52TOnmUuThp.JvSzRzkVHo9LoKuezVgejf0
 E0AmJPkX48Mesh0mEXDAxgozvM2avsS766rSKSLmh8.hp3l.cbReyL_6yFzz7krGb70YIM7bNVUX
 2jFtclipEXSEWpUNXSCP3eudwOYmrYnMCMghSkgaK7hDqLeVco9oEWyWm.T7.UKqqH0IEE0HE174
 XS3tvOBtdAyhsHRAC0CveGnuRlsd5W7Ip4D4-
X-Sonic-MF: <boacoteiv0ire@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.sg3.yahoo.com with HTTP; Tue, 23 Mar 2021 08:11:32 +0000
Date: Tue, 23 Mar 2021 08:09:30 +0000 (UTC)
From: Peter Florian <boacoteiv0ire@yahoo.com>
Message-ID: <650424105.103565.1616486970951@mail.yahoo.com>
MIME-Version: 1.0
References: <650424105.103565.1616486970951.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.17936 YMailNodin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90
 Safari/537.36
X-Mailman-Approved-At: Tue, 23 Mar 2021 08:12:25 +0000
Subject: [Spice-devel] Hello,
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
Reply-To: peterflorian019@gmail.competer
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>



Hello,


My name is Mrs. Peter Florian and I am a British Citizen. My husband died recently on Coronavirus and I am presently in hospital suffering Cancer Disease. My husband has a deposit of 15.200.000 GBP in a prime Bank here in London. Before my husband was taken to Isolation center where he died, he told me to use the funds to establish animal care clinics. We have special love for animals. Due to my present health condition, I will not be able to handle this project. Therefore, I want to donate the 15.200.000.00 GBP to you so that you will set up an animal care Foundation in your country. A clinic where animals will be treated in your country for free. I see in television that people donates funds to orphanage homes and don't care about animals. I and my husband wants to make a difference in the world to let people understand that animals are important to nature. Please let me know your interest so that I will ask my lawyer to prepare a contract Agreement on your name. Please don't forge
 t that my health condition is bad, therefore I want you to reply this message as soon as possible so you will receive the funds before anything happens to me. I am waiting to hear from you.


Thank you,
Mrs. Peter Florian
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
