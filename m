Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD60C8355F
	for <lists+spice-devel@lfdr.de>; Tue,  6 Aug 2019 17:35:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98FD589D79;
	Tue,  6 Aug 2019 15:35:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42C4889D79
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 15:35:01 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id 207so78677710wma.1
 for <spice-devel@lists.freedesktop.org>; Tue, 06 Aug 2019 08:35:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qhGHztDYUuEknynIurb0By+7k/CNymGccGUcYZkICPg=;
 b=epwW1iKrRE22IpX7Gjr+N39SqHTr+MuvoCn9d6orD2wyLDertK8fSV2Ny+qo8KK7pm
 MSnK0eNIzk8IS7cXHSkhKR+vQgkchLLtiUMokRd8IkPTKHgTELUJwovJdXbgci0aHz4k
 0Ht5YUJFop6vMimpZkSuJSklP5HuaWW3AOGgsn+MEawmQvYbn0muREAci3UCxDNexICw
 09SjtjFVH1coG7Cxi4ApYbexxg0SvuQr2hq74kX/hypKhsRrwwcTdc7Tuo7sLCTGVeNA
 oco+r/pBd4tip3g8MFPmClFbGKWks+0XamegQOIMGeYBWyBWi5XNSuMJTYmjYZRWMX3F
 Nwow==
X-Gm-Message-State: APjAAAUPVbOLpWxgcE1nD4jNTB0+jcjYVnGDkYNSVVDuVToD9Vih4JQa
 DF/5Q/nx9x16W5a/7oU9tGlL2lwFK1UAgw==
X-Google-Smtp-Source: APXvYqy8Ji/wEOMJZMeKem9FrpzqxWHTclyAICjQ/KVPXqwz0n0EkV1H7vTS0by336jYbHei0ooyCA==
X-Received: by 2002:a1c:ef0c:: with SMTP id n12mr5143697wmh.132.1565105699491; 
 Tue, 06 Aug 2019 08:34:59 -0700 (PDT)
Received: from pinea.redhat.com (25.119.19.109.rev.sfr.net. [109.19.119.25])
 by smtp.gmail.com with ESMTPSA id y18sm84860282wmi.23.2019.08.06.08.34.58
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 08:34:58 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  6 Aug 2019 17:34:47 +0200
Message-Id: <20190806153453.20616-4-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190806153453.20616-1-kpouget@redhat.com>
References: <20190806153453.20616-1-kpouget@redhat.com>
MIME-Version: 1.0
Subject: [Spice-devel] [RFC spice-server 3/3] streaming: Restart guest video
 streams on video-codec changes
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCByZXNldHMgdGhlIGhvc3QgYW5kIGd1ZXN0IHZpZGVvIHN0cmVhbXMgd2hlbiB0
aGUgY2xpZW50CmNoYW5nZXMgdGhlIHByZWZlcnJlZCB2aWRlby1jb2RlY3Mgb3Igd2hlbiB0aGUg
aG9zdCBhZG1pbiB1cGRhdGVzIHRoZQpsaXN0IG9mIHZpZGVvLWNvZGVjcyBhbGxvd2VkLgoKVE9E
TzogcmVzdGFydCBvbmx5IHRoZSBzdHJlYW1zIG9mIHRoZSBjbGllbnQgdGhhdCBjaGFuZ2VkIGNv
ZGVjcwoKU2lnbmVkLW9mZi1ieTogS2V2aW4gUG91Z2V0IDxrcG91Z2V0QHJlZGhhdC5jb20+Ci0t
LQogc2VydmVyL21haW4tZGlzcGF0Y2hlci5jICAgfCAzMSArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKystCiBzZXJ2ZXIvbWFpbi1kaXNwYXRjaGVyLmggICB8ICAxICsKIHNlcnZlci9yZWQt
c3RyZWFtLWRldmljZS5jIHwgIDYgKysrLS0tCiBzZXJ2ZXIvcmVkLXN0cmVhbS1kZXZpY2UuaCB8
ICAyICstCiBzZXJ2ZXIvcmVkcy5jICAgICAgICAgICAgICB8IDExICsrKysrKysrKysrCiBzZXJ2
ZXIvcmVkcy5oICAgICAgICAgICAgICB8ICAyICstCiBzZXJ2ZXIvc3RyZWFtLWNoYW5uZWwuYyAg
ICB8ICA2ICsrKysrKwogNyBmaWxlcyBjaGFuZ2VkLCA1MyBpbnNlcnRpb25zKCspLCA2IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9tYWluLWRpc3BhdGNoZXIuYyBiL3NlcnZlci9t
YWluLWRpc3BhdGNoZXIuYwppbmRleCAyY2E2OGE0ZC4uMDRmNWFjODggMTAwNjQ0Ci0tLSBhL3Nl
cnZlci9tYWluLWRpc3BhdGNoZXIuYworKysgYi9zZXJ2ZXIvbWFpbi1kaXNwYXRjaGVyLmMKQEAg
LTEyNiw3ICsxMjYsNyBAQCBlbnVtIHsKICAgICBNQUlOX0RJU1BBVENIRVJfTUlHUkFURV9TRUFN
TEVTU19EU1RfQ09NUExFVEUsCiAgICAgTUFJTl9ESVNQQVRDSEVSX1NFVF9NTV9USU1FX0xBVEVO
Q1ksCiAgICAgTUFJTl9ESVNQQVRDSEVSX0NMSUVOVF9ESVNDT05ORUNULAotCisgICAgTUFJTl9E
SVNQQVRDSEVSX1JFU0VUX1NUUkVBTV9DSEFOTkVMUywKICAgICBNQUlOX0RJU1BBVENIRVJfTlVN
X01FU1NBR0VTCiB9OwogCkBAIC0xNDgsNiArMTQ4LDExIEBAIHR5cGVkZWYgc3RydWN0IE1haW5E
aXNwYXRjaGVyQ2xpZW50RGlzY29ubmVjdE1lc3NhZ2UgewogICAgIFJlZENsaWVudCAqY2xpZW50
OwogfSBNYWluRGlzcGF0Y2hlckNsaWVudERpc2Nvbm5lY3RNZXNzYWdlOwogCisKK3R5cGVkZWYg
c3RydWN0IE1haW5EaXNwYXRjaGVyUmVzZXRTdHJlYW1DaGFubmVsTWVzc2FnZSB7CisgICAgUmVk
Q2xpZW50ICpjbGllbnQ7Cit9IE1haW5EaXNwYXRjaGVyUmVzZXRTdHJlYW1DaGFubmVsTWVzc2Fn
ZTsKKwogLyogY2hhbm5lbF9ldmVudCAtIGNhbGxzIGNvcmUtPmNoYW5uZWxfZXZlbnQsIG11c3Qg
YmUgZG9uZSBpbiBtYWluIHRocmVhZCAqLwogc3RhdGljIHZvaWQgbWFpbl9kaXNwYXRjaGVyX2hh
bmRsZV9jaGFubmVsX2V2ZW50KHZvaWQgKm9wYXF1ZSwKICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICpwYXlsb2FkKQpAQCAtMjAzLDYgKzIwOCwx
NyBAQCBzdGF0aWMgdm9pZCBtYWluX2Rpc3BhdGNoZXJfaGFuZGxlX2NsaWVudF9kaXNjb25uZWN0
KHZvaWQgKm9wYXF1ZSwKICAgICBnX29iamVjdF91bnJlZihtc2ctPmNsaWVudCk7CiB9CiAKK3N0
YXRpYyB2b2lkIG1haW5fZGlzcGF0Y2hlcl9oYW5kbGVfcmVzZXRfc3RyZWFtX2NoYW5uZWwodm9p
ZCAqb3BhcXVlLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB2b2lkICpwYXlsb2FkKQoreworICAgIFJlZHNTdGF0ZSAqcmVkcyA9IG9wYXF1
ZTsKKyAgICBNYWluRGlzcGF0Y2hlclJlc2V0U3RyZWFtQ2hhbm5lbE1lc3NhZ2UgX19hdHRyaWJ1
dGVfXygodW51c2VkKSkgKm1zZyA9IHBheWxvYWQ7CisKKyAgICAvKiBUT0RPOiByZXNldCBvbmx5
IHRoZSBjaGFyIGRldmljZSBsaW5rZWQgdG8gbXNnLmNsaWVudCAqLworCisgICAgcmVkc19yZXNl
dF9hbGxfc3RyZWFtX2NoYXJfZGV2aWNlcyhyZWRzKTsKK30KKwogdm9pZCBtYWluX2Rpc3BhdGNo
ZXJfc2VhbWxlc3NfbWlncmF0ZV9kc3RfY29tcGxldGUoTWFpbkRpc3BhdGNoZXIgKnNlbGYsCiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBSZWRDbGll
bnQgKmNsaWVudCkKIHsKQEAgLTI0Nyw2ICsyNjMsMTYgQEAgdm9pZCBtYWluX2Rpc3BhdGNoZXJf
Y2xpZW50X2Rpc2Nvbm5lY3QoTWFpbkRpc3BhdGNoZXIgKnNlbGYsIFJlZENsaWVudCAqY2xpZW50
KQogICAgIH0KIH0KIAordm9pZCBtYWluX2Rpc3BhdGNoZXJfcmVzZXRfc3RyZWFtX2NoYW5uZWxz
KE1haW5EaXNwYXRjaGVyICpzZWxmLCBSZWRDbGllbnQgKmNsaWVudCkKK3sKKyAgICBNYWluRGlz
cGF0Y2hlclJlc2V0U3RyZWFtQ2hhbm5lbE1lc3NhZ2UgbXNnOworCisgICAgbXNnLmNsaWVudCA9
IGNsaWVudDsKKworICAgIGRpc3BhdGNoZXJfc2VuZF9tZXNzYWdlKERJU1BBVENIRVIoc2VsZiks
IE1BSU5fRElTUEFUQ0hFUl9SRVNFVF9TVFJFQU1fQ0hBTk5FTFMsCisgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgJm1zZyk7Cit9CisKIC8qCiAgKiBGSVhNRToKICAqIFJlZHMgcm91dGluZXMg
c2hvdWxkbid0IGJlIGV4cG9zZWQuIEluc3RlYWQgcmVkcy5jIHNob3VsZCByZWdpc3RlciB0aGUg
Y2FsbGJhY2tzLApAQCAtMjgyLDYgKzMwOCw5IEBAIHZvaWQgbWFpbl9kaXNwYXRjaGVyX2NvbnN0
cnVjdGVkKEdPYmplY3QgKm9iamVjdCkKICAgICBkaXNwYXRjaGVyX3JlZ2lzdGVyX2hhbmRsZXIo
RElTUEFUQ0hFUihzZWxmKSwgTUFJTl9ESVNQQVRDSEVSX0NMSUVOVF9ESVNDT05ORUNULAogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtYWluX2Rpc3BhdGNoZXJfaGFuZGxlX2NsaWVu
dF9kaXNjb25uZWN0LAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzaXplb2YoTWFp
bkRpc3BhdGNoZXJDbGllbnREaXNjb25uZWN0TWVzc2FnZSksIGZhbHNlKTsKKyAgICBkaXNwYXRj
aGVyX3JlZ2lzdGVyX2hhbmRsZXIoRElTUEFUQ0hFUihzZWxmKSwgTUFJTl9ESVNQQVRDSEVSX1JF
U0VUX1NUUkVBTV9DSEFOTkVMUywKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbWFp
bl9kaXNwYXRjaGVyX2hhbmRsZV9yZXNldF9zdHJlYW1fY2hhbm5lbCwKKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgc2l6ZW9mKE1haW5EaXNwYXRjaGVyUmVzZXRTdHJlYW1DaGFubmVs
TWVzc2FnZSksIGZhbHNlKTsKIH0KIAogc3RhdGljIHZvaWQgbWFpbl9kaXNwYXRjaGVyX2ZpbmFs
aXplKEdPYmplY3QgKm9iamVjdCkKZGlmZiAtLWdpdCBhL3NlcnZlci9tYWluLWRpc3BhdGNoZXIu
aCBiL3NlcnZlci9tYWluLWRpc3BhdGNoZXIuaAppbmRleCBlMTI0NGY4My4uNmQ1ZjUwYTAgMTAw
NjQ0Ci0tLSBhL3NlcnZlci9tYWluLWRpc3BhdGNoZXIuaAorKysgYi9zZXJ2ZXIvbWFpbi1kaXNw
YXRjaGVyLmgKQEAgLTU4LDYgKzU4LDcgQEAgdm9pZCBtYWluX2Rpc3BhdGNoZXJfc2V0X21tX3Rp
bWVfbGF0ZW5jeShNYWluRGlzcGF0Y2hlciAqc2VsZiwgUmVkQ2xpZW50ICpjbGllbnQKICAqIHRo
YXQgdHJpZ2dlcmVkIHRoZSBjbGllbnQgZGVzdHJ1Y3Rpb24uCiAgKi8KIHZvaWQgbWFpbl9kaXNw
YXRjaGVyX2NsaWVudF9kaXNjb25uZWN0KE1haW5EaXNwYXRjaGVyICpzZWxmLCBSZWRDbGllbnQg
KmNsaWVudCk7Cit2b2lkIG1haW5fZGlzcGF0Y2hlcl9yZXNldF9zdHJlYW1fY2hhbm5lbHMoTWFp
bkRpc3BhdGNoZXIgKnNlbGYsIFJlZENsaWVudCAqY2xpZW50KTsKIAogTWFpbkRpc3BhdGNoZXIq
IG1haW5fZGlzcGF0Y2hlcl9uZXcoUmVkc1N0YXRlICpyZWRzKTsKIApkaWZmIC0tZ2l0IGEvc2Vy
dmVyL3JlZC1zdHJlYW0tZGV2aWNlLmMgYi9zZXJ2ZXIvcmVkLXN0cmVhbS1kZXZpY2UuYwppbmRl
eCA2MjBlNTgxZS4uYzU1MWRlNjkgMTAwNjQ0Ci0tLSBhL3NlcnZlci9yZWQtc3RyZWFtLWRldmlj
ZS5jCisrKyBiL3NlcnZlci9yZWQtc3RyZWFtLWRldmljZS5jCkBAIC03MDIsOCArNzAyLDggQEAg
c3RyZWFtX2RldmljZV9jcmVhdGVfY2hhbm5lbChTdHJlYW1EZXZpY2UgKmRldikKICAgICBzdHJl
YW1fY2hhbm5lbF9yZWdpc3Rlcl9xdWV1ZV9zdGF0X2NiKHN0cmVhbV9jaGFubmVsLCBzdHJlYW1f
ZGV2aWNlX3N0cmVhbV9xdWV1ZV9zdGF0LCBkZXYpOwogfQogCi1zdGF0aWMgdm9pZAotcmVzZXRf
Y2hhbm5lbHMoU3RyZWFtRGV2aWNlICpkZXYpCit2b2lkCitzdHJlYW1fZGV2aWNlX3Jlc2V0X2No
YW5uZWxzKFN0cmVhbURldmljZSAqZGV2KQogewogICAgIGlmIChkZXYtPnN0cmVhbV9jaGFubmVs
KSB7CiAgICAgICAgIHN0cmVhbV9jaGFubmVsX3Jlc2V0KGRldi0+c3RyZWFtX2NoYW5uZWwpOwpA
QCAtNzYzLDcgKzc2Myw3IEBAIHN0cmVhbV9kZXZpY2VfcG9ydF9ldmVudChSZWRDaGFyRGV2aWNl
ICpjaGFyX2RldiwgdWludDhfdCBldmVudCkKICAgICBkZXYtPmhhc19lcnJvciA9IGZhbHNlOwog
ICAgIGRldi0+Zmxvd19zdG9wcGVkID0gZmFsc2U7CiAgICAgcmVkX2NoYXJfZGV2aWNlX3Jlc2V0
KGNoYXJfZGV2KTsKLSAgICByZXNldF9jaGFubmVscyhkZXYpOworICAgIHN0cmVhbV9kZXZpY2Vf
cmVzZXRfY2hhbm5lbHMoZGV2KTsKIAogICAgIC8vIGVuYWJsZSB0aGUgZGV2aWNlIGFnYWluLiBX
ZSByZS1lbmFibGUgaXQgb24gY2xvc2UgYXMgb3RoZXJ3aXNlIHdlIGRvbid0IHdhbnQgdG8gZ2V0
IGEKICAgICAvLyBmYWlsdXJlIHdoZW4gIHdlIHRyeSB0byByZS1vcGVuIHRoZSBkZXZpY2UgYXMg
d291bGQgaGFwcGVuIGlmIHdlIGtlZXAgaXQgZGlzYWJsZWQKZGlmZiAtLWdpdCBhL3NlcnZlci9y
ZWQtc3RyZWFtLWRldmljZS5oIGIvc2VydmVyL3JlZC1zdHJlYW0tZGV2aWNlLmgKaW5kZXggYWEy
YjIzYTIuLjBmMDgwMjI4IDEwMDY0NAotLS0gYS9zZXJ2ZXIvcmVkLXN0cmVhbS1kZXZpY2UuaAor
KysgYi9zZXJ2ZXIvcmVkLXN0cmVhbS1kZXZpY2UuaApAQCAtNTUsNyArNTUsNyBAQCBTdHJlYW1E
ZXZpY2UgKnN0cmVhbV9kZXZpY2VfY29ubmVjdChSZWRzU3RhdGUgKnJlZHMsIFNwaWNlQ2hhckRl
dmljZUluc3RhbmNlICpzaQogICogSWYgdGhlIGNoYW5uZWwgYWxyZWFkeSBleGlzdHMgdGhlIGZ1
bmN0aW9uIGRvZXMgbm90aGluZy4KICAqLwogdm9pZCBzdHJlYW1fZGV2aWNlX2NyZWF0ZV9jaGFu
bmVsKFN0cmVhbURldmljZSAqZGV2KTsKLQordm9pZCBzdHJlYW1fZGV2aWNlX3Jlc2V0X2NoYW5u
ZWxzKFN0cmVhbURldmljZSAqZGV2KTsKIGNvbnN0IFN0cmVhbURldmljZURpc3BsYXlJbmZvICpz
dHJlYW1fZGV2aWNlX2dldF9kZXZpY2VfZGlzcGxheV9pbmZvKFN0cmVhbURldmljZSAqZGV2KTsK
IAogLyoqCmRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkcy5jIGIvc2VydmVyL3JlZHMuYwppbmRleCBh
Mzc5NWFiOS4uOWFhZTgzOGQgMTAwNjQ0Ci0tLSBhL3NlcnZlci9yZWRzLmMKKysrIGIvc2VydmVy
L3JlZHMuYwpAQCAtMzMwMSw2ICszMzAxLDE3IEBAIHN0YXRpYyB2b2lkIHJlZHNfb25fY2hhcl9k
ZXZpY2VfZGVzdHJveShSZWRzU3RhdGUgKnJlZHMsCiAgICAgcmVkcy0+Y2hhcl9kZXZpY2VzID0g
Z19saXN0X3JlbW92ZShyZWRzLT5jaGFyX2RldmljZXMsIGRldik7CiB9CiAKK3ZvaWQgcmVkc19y
ZXNldF9hbGxfc3RyZWFtX2NoYXJfZGV2aWNlcyhSZWRzU3RhdGUgKnJlZHMpCit7CisgICAgUmVk
Q2hhckRldmljZSAqZGV2OworCisgICAgR0xJU1RfRk9SRUFDSChyZWRzLT5jaGFyX2RldmljZXMs
IFJlZENoYXJEZXZpY2UsIGRldikgeworICAgICAgICBpZiAoSVNfU1RSRUFNX0RFVklDRShkZXYp
KSB7CisgICAgICAgICAgICBzdHJlYW1fZGV2aWNlX3Jlc2V0X2NoYW5uZWxzKFNUUkVBTV9ERVZJ
Q0UoZGV2KSk7CisgICAgICAgIH0KKyAgICB9Cit9CisKIHN0YXRpYyBpbnQgc3BpY2Vfc2VydmVy
X2NoYXJfZGV2aWNlX2FkZF9pbnRlcmZhY2UoU3BpY2VTZXJ2ZXIgKnJlZHMsCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3BpY2VCYXNlSW5zdGFuY2UgKnNpbikK
IHsKZGlmZiAtLWdpdCBhL3NlcnZlci9yZWRzLmggYi9zZXJ2ZXIvcmVkcy5oCmluZGV4IGUzMzU1
ZjgxLi5lYzEwNjM5NCAxMDA2NDQKLS0tIGEvc2VydmVyL3JlZHMuaAorKysgYi9zZXJ2ZXIvcmVk
cy5oCkBAIC01Myw3ICs1Myw3IEBAIGJvb2wgcmVkc19jb25maWdfZ2V0X3BsYXliYWNrX2NvbXBy
ZXNzaW9uKFJlZHNTdGF0ZSAqcmVkcyk7IC8vIHVzZWQgYnkgcGxheWJhY2sKIAogdm9pZCByZWRz
X3NlbmRfZGV2aWNlX2Rpc3BsYXlfaW5mbyhSZWRzU3RhdGUgKnJlZHMpOwogdm9pZCByZWRzX2hh
bmRsZV9hZ2VudF9tb3VzZV9ldmVudChSZWRzU3RhdGUgKnJlZHMsIGNvbnN0IFZEQWdlbnRNb3Vz
ZVN0YXRlICptb3VzZV9zdGF0ZSk7IC8vIHVzZWQgYnkgaW5wdXRzX2NoYW5uZWwKLQordm9pZCBy
ZWRzX3Jlc2V0X2FsbF9zdHJlYW1fY2hhcl9kZXZpY2VzKFJlZHNTdGF0ZSAqcmVkcyk7CiBHQXJy
YXkqIHJlZHNfZ2V0X3JlbmRlcmVycyhSZWRzU3RhdGUgKnJlZHMpOwogY2hhciAqcmVkc19nZXRf
dmlkZW9fY29kZWNfZnVsbG5hbWUoUmVkVmlkZW9Db2RlYyAqY29kZWMpOwogCmRpZmYgLS1naXQg
YS9zZXJ2ZXIvc3RyZWFtLWNoYW5uZWwuYyBiL3NlcnZlci9zdHJlYW0tY2hhbm5lbC5jCmluZGV4
IGUwZTQxODk1Li45OWNlN2M5YSAxMDA2NDQKLS0tIGEvc2VydmVyL3N0cmVhbS1jaGFubmVsLmMK
KysrIGIvc2VydmVyL3N0cmVhbS1jaGFubmVsLmMKQEAgLTQ2NSw2ICs0NjUsMTIgQEAgc3RyZWFt
X2NoYW5uZWxfaGFuZGxlX3ByZWZlcnJlZF92aWRlb19jb2RlY190eXBlKFJlZENoYW5uZWxDbGll
bnQgKnJjYywKICAgICBnX2NsZWFyX3BvaW50ZXIoJnNjYy0+Y2xpZW50X3ByZWZlcnJlZF92aWRl
b19jb2RlY3MsIGdfYXJyYXlfdW5yZWYpOwogICAgIHNjYy0+Y2xpZW50X3ByZWZlcnJlZF92aWRl
b19jb2RlY3MgPSB2aWRlb19zdHJlYW1fcGFyc2VfcHJlZmVycmVkX2NvZGVjcyhtc2cpOwogCisg
ICAgLyogUmVzZXQgdmlkZW8gc3RyZWFtcyAqLworICAgIFJlZENsaWVudCAqY2xpZW50ID0gcmVk
X2NoYW5uZWxfY2xpZW50X2dldF9jbGllbnQocmNjKTsKKyAgICBSZWRzU3RhdGUgKnJlZHMgPSBy
ZWRfY2xpZW50X2dldF9zZXJ2ZXIoY2xpZW50KTsKKworICAgIG1haW5fZGlzcGF0Y2hlcl9yZXNl
dF9zdHJlYW1fY2hhbm5lbHMocmVkc19nZXRfbWFpbl9kaXNwYXRjaGVyKHJlZHMpLCBjbGllbnQp
OworCiAgICAgcmV0dXJuIFRSVUU7CiB9CiAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
