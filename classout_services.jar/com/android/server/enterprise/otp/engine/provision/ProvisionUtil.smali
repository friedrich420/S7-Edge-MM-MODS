.class public Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;
.super Ljava/lang/Object;
.source "ProvisionUtil.java"


# static fields
.field static final MAX:I = 0xf4240

.field static final MIN:I = 0x186a0


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .registers 11
    .param p0, "input"    # [B

    .prologue
    .line 150
    if-nez p0, :cond_4

    .line 151
    const/4 v3, 0x0

    .line 161
    :goto_3
    return-object v3

    .line 153
    :cond_4
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 154
    .local v2, "formatter":Ljava/util/Formatter;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_c
    if-ge v4, v5, :cond_22

    aget-byte v1, v0, v4

    .line 155
    .local v1, "b":B
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 157
    .end local v1    # "b":B
    :cond_22
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "hex":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hex string conversion of byte array is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static checkSecureStorageData(Landroid/os/Bundle;Z)I
    .registers 12
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "isCreate"    # Z

    .prologue
    const-wide/16 v8, 0x1

    const/16 v3, 0x101

    const/4 v7, 0x1

    const/16 v6, 0x102

    const/16 v0, 0x401

    .line 46
    const-string v1, "ProvisionUtil::checkSecureStorageData Enter"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 47
    const-string v1, "OTP_OATH_PROTOCOL"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_30

    const-string v1, "OTP_OATH_PROTOCOL"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_30

    const-string v1, "OTP_OATH_PROTOCOL"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_30

    .line 50
    const-string v0, "ProvisionUtil::checkSecureStorageData Exit with error unsupported algo"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 51
    const/16 v0, 0x404

    .line 133
    :goto_2f
    return v0

    .line 55
    :cond_30
    if-eqz p1, :cond_40

    const-string v1, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_40

    .line 56
    const-string v1, "ProvisionUtil::checkSecureStorageData - invalid token id"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2f

    .line 61
    :cond_40
    if-eqz p1, :cond_50

    const-string v1, "SHARED_SECRET"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_50

    .line 62
    const-string v1, "ProvisionUtil::checkSecureStorageData - invalid shared secret"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2f

    .line 66
    :cond_50
    if-eqz p1, :cond_ba

    .line 68
    const-string v1, "OTP_OATH_PROTOCOL"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_87

    const-string v1, "OTP_PARAM"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-gez v1, :cond_87

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisionUtil::checkSecureStorageData - invalid totp step size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OTP_PARAM"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2f

    .line 75
    :cond_87
    const-string v1, "OTP_OATH_PROTOCOL"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_a3

    const-string v1, "OCRA_SUITE"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_a3

    .line 77
    const-string v1, "ProvisionUtil::checkSecureStorageData - invalid OCRA suite"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2f

    .line 82
    :cond_a3
    const-string v1, "OTP_LENGTH"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v7, :cond_140

    const-string v1, "OTP_OATH_PROTOCOL"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_140

    .line 84
    const-string v1, "ProvisionUtil::checkSecureStorageData - invalid otp length"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 89
    :cond_ba
    const-string v1, "OTP_OATH_PROTOCOL"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_fc

    const-string v1, "OTP_PARAM"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_fc

    const-string v1, "OTP_PARAM"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-gez v1, :cond_fc

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisionUtil::checkSecureStorageData - invalid totp step size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OTP_PARAM"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 97
    :cond_fc
    const-string v1, "OTP_OATH_PROTOCOL"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_121

    const-string v1, "OCRA_SUITE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_121

    const-string v1, "OCRA_SUITE"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_121

    .line 100
    const-string v1, "ProvisionUtil::checkSecureStorageData - invalid OCRA suite"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 105
    :cond_121
    const-string v1, "OTP_LENGTH"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_140

    const-string v1, "OTP_LENGTH"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v7, :cond_140

    const-string v1, "OTP_OATH_PROTOCOL"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_140

    .line 107
    const-string v1, "ProvisionUtil::checkSecureStorageData - invalid otp length"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 113
    :cond_140
    if-nez p1, :cond_155

    const-string v1, "OCRA_SUITE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_155

    .line 114
    const-string v1, "OTP_PARAM"

    const-string v2, "OTP_PARAM"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 118
    :cond_155
    const-string v1, "SECRET_ENCRYPTION_ALGO"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x186

    if-eq v1, v2, :cond_176

    const-string v1, "SECRET_ENCRYPTION_ALGO"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_176

    const-string v1, "SECRET_ENCRYPTION_PASSWORD"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_176

    .line 121
    const-string v1, "ProvisionUtil::checkSecureStorageData - secret decryption key/password missing"

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 126
    :cond_176
    if-eqz p1, :cond_187

    const-string v0, "OTP_ENCODING"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_187

    .line 127
    const-string v0, "OTP_ENCODING"

    const/16 v1, 0x141

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    :cond_187
    if-eqz p1, :cond_198

    const-string v0, "OTP_HASH_ALGO"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_198

    .line 131
    const-string v0, "OTP_HASH_ALGO"

    const/16 v1, 0x170

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    :cond_198
    const/4 v0, 0x0

    goto/16 :goto_2f
.end method

.method public static generateSessionId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 41
    new-instance v0, Ljava/lang/Double;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x41612a87e0000000L    # 8999999.0

    mul-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    .line 42
    .local v0, "temp":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static generateTokenId(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Double;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x412b774000000000L    # 900000.0

    mul-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    .line 36
    .local v0, "temp":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "tokenId":Ljava/lang/String;
    return-object v1
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "data":[B
    if-eqz p0, :cond_2d

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 140
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_2d

    .line 142
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 141
    add-int/lit8 v1, v1, 0x2

    goto :goto_e

    .line 146
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2d
    return-object v0
.end method

.method public static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 288
    const/4 v3, 0x0

    .line 290
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 291
    .local v2, "line":Ljava/lang/String;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_27

    .line 292
    .end local v3    # "result":Ljava/lang/StringBuilder;
    .local v4, "result":Ljava/lang/StringBuilder;
    :try_start_7
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 293
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 294
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_11

    .line 296
    .end local v0    # "br":Ljava/io/BufferedReader;
    :catch_1b
    move-exception v1

    move-object v3, v4

    .line 297
    .end local v4    # "result":Ljava/lang/StringBuilder;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "result":Ljava/lang/StringBuilder;
    :goto_1d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 299
    .end local v1    # "e":Ljava/io/IOException;
    :goto_20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .end local v3    # "result":Ljava/lang/StringBuilder;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "result":Ljava/lang/StringBuilder;
    :cond_25
    move-object v3, v4

    .line 298
    .end local v4    # "result":Ljava/lang/StringBuilder;
    .restart local v3    # "result":Ljava/lang/StringBuilder;
    goto :goto_20

    .line 296
    .end local v0    # "br":Ljava/io/BufferedReader;
    :catch_27
    move-exception v1

    goto :goto_1d
.end method

.method public static setWhitelistAndSignerInfo(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)I
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x401

    .line 168
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/otp/CallerVerification;->fetchSignature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "callerSignInfo":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 171
    const-string v9, "ProvisionUtil::setWhitelistAndSignerInfo - ERROR in fetching callers signature"

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 172
    const/4 p3, 0x0

    .line 224
    :goto_e
    return v8

    .line 177
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 178
    .local v7, "strSignList":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, "strPkglist":Ljava/lang/String;
    const-string v9, "WHITELISTED_PACKAGES"

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 182
    .local v3, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v9, "WHITELISTED_PKG_SIGNER_INFO"

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 184
    .local v5, "signList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_cf

    if-eqz v5, :cond_cf

    .line 187
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_56

    .line 188
    const-string v9, "ProvisionUtil::setWhitelistAndSignerInfo - Lists size Mismatch"

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 189
    const/4 p3, 0x0

    .line 190
    goto :goto_e

    .line 193
    :cond_56
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 194
    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callerSignInfo":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 195
    .restart local v0    # "callerSignInfo":Ljava/lang/String;
    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 196
    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 199
    :cond_7f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    .local v2, "p":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_83

    .line 201
    .end local v2    # "p":Ljava/lang/String;
    :cond_a7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ab
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_117

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 202
    .local v4, "s":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_ab

    .line 204
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "s":Ljava/lang/String;
    :cond_cf
    if-eqz v3, :cond_117

    if-nez v5, :cond_117

    .line 208
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_dc

    .line 209
    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 211
    :cond_dc
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_e0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_117

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    .restart local v2    # "p":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 213
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "0:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 214
    goto :goto_e0

    .line 219
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Ljava/lang/String;
    :cond_117
    const-string v8, "WHITELISTED_PACKAGES"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 220
    const-string v8, "WHITELISTED_PKG_SIGNER_INFO"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 221
    const-string v8, "WHITELISTED_PACKAGES"

    invoke-virtual {p3, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v8, "WHITELISTED_PKG_SIGNER_INFO"

    invoke-virtual {p3, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v8, 0x0

    goto/16 :goto_e
.end method

.method public static validateCertificateHash(Landroid/content/Context;Landroid/os/Bundle;)I
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 230
    const-string v8, "ProvisionUtil::validateCertificateHash | Enter"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 232
    const/4 v6, 0x0

    .line 233
    .local v6, "ret":I
    const/4 v4, 0x0

    .line 236
    .local v4, "otpCert":[B
    const-string v8, "ENCRYPTION_CERTIFICATE_HASH"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 238
    .local v7, "vendorCertHash":[B
    if-nez v7, :cond_16

    .line 239
    const-string v8, "ProvisionUtil::validateCertificateHash - Vendor\'s ENCRYPTION_CERTIFICATE_HASH is null"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 240
    const/16 v6, 0x401

    .line 243
    :cond_16
    if-nez v6, :cond_29

    .line 245
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getCertificate()[B

    move-result-object v4

    .line 247
    if-nez v4, :cond_29

    .line 248
    const-string v8, "ProvisionUtil::validateCertificateHash - OTP Certificate not found. OTP_CERT_NOT_SUPPORTED"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 249
    const/16 v6, 0x40e

    .line 253
    :cond_29
    if-nez v6, :cond_42

    .line 256
    :try_start_2b
    const-string v8, "SHA-256"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 257
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 260
    .local v5, "otpCertHash":[B
    invoke-static {v5, v7}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v8

    if-nez v8, :cond_42

    .line 261
    const-string v8, "ProvisionUtil::validateCertificateHash - Invalid ENCRYPTION_CERTIFICATE_HASH"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2b .. :try_end_40} :catch_4f

    .line 262
    const/16 v6, 0x411

    .line 271
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v5    # "otpCertHash":[B
    :cond_42
    :goto_42
    if-nez v6, :cond_59

    .line 272
    const-string v8, "ProvisionUtil::validateCertificateHash - SUCCESSFUL"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 273
    const-string v8, "ProvisionUtil::validateCertificateHash | End"

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 282
    :goto_4e
    return v6

    .line 265
    :catch_4f
    move-exception v2

    .line 266
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v8, "ProvisionUtil::validateCertificateHash - OTP Certificate digest calulation failed."

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_42

    .line 275
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "callerPackage":Ljava/lang/String;
    new-instance v8, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v1, v8, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 278
    .local v1, "containerId":I
    const-string v8, "OTP_TOKEN_ID"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v0, v1, v6}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallbackInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 280
    const-string v8, "ProvisionUtil::validateCertificateHash - Hash vertification Failed."

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_4e
.end method
