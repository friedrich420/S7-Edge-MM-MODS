.class public Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;
.super Ljava/lang/Object;
.source "PSKCProvision.java"

# interfaces
.implements Lcom/android/server/enterprise/otp/engine/provision/IProvision;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

.field private mXMLHandler:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 32
    iput-object v0, p0, mXMLHandler:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    .line 33
    iput-object v0, p0, mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    .line 36
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 37
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    move-result-object v0

    iput-object v0, p0, mXMLHandler:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    .line 38
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v0

    iput-object v0, p0, mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    .prologue
    .line 29
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    .prologue
    .line 29
    iget-object v0, p0, mXMLHandler:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;
    .param p1, "x1"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, prepareDataForDbStorage(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    .prologue
    .line 29
    iget-object v0, p0, mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;
    .param p1, "x1"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, prepareDataForSecureStorage(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private convertStringToAlgoType(Ljava/lang/String;)I
    .registers 4
    .param p1, "oathProtocol"    # Ljava/lang/String;

    .prologue
    .line 292
    if-nez p1, :cond_5

    .line 293
    const/16 v0, 0x401

    .line 301
    :goto_4
    return v0

    .line 295
    :cond_5
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hotp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 296
    const/16 v0, 0x100

    goto :goto_4

    .line 297
    :cond_17
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "totp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 298
    const/16 v0, 0x101

    goto :goto_4

    .line 299
    :cond_29
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ocra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 300
    const/16 v0, 0x102

    goto :goto_4

    .line 301
    :cond_3b
    const/16 v0, 0x404

    goto :goto_4
.end method

.method private doProvisionInThread(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V
    .registers 13
    .param p1, "pskcBuffer"    # Ljava/lang/String;
    .param p2, "tokenId"    # Ljava/lang/String;
    .param p3, "configData"    # Landroid/os/Bundle;
    .param p4, "callerPackage"    # Ljava/lang/String;
    .param p5, "containerId"    # I

    .prologue
    .line 201
    const-string v0, "PSKCProvision::doProvisionInThread Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;-><init>(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->start()V

    .line 289
    return-void
.end method

.method private prepareDataForDbStorage(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9
    .param p1, "kp"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .param p2, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 105
    const-string v2, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "DISPLAY_NAME"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, convertStringToAlgoType(Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, "algoType":I
    const-string v2, "OTP_OATH_PROTOCOL"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const/16 v2, 0x102

    if-ne v0, v2, :cond_49

    .line 110
    const-string v2, "OCRA_SUITE"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_43
    :goto_43
    const-string v2, "PSKCProvision::prepareDataForDbStorage KeyPackage Key is extracted"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 121
    .end local v0    # "algoType":I
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_48
    return-object v1

    .line 112
    .restart local v0    # "algoType":I
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_49
    const/16 v2, 0x101

    if-ne v0, v2, :cond_43

    .line 113
    const-string v2, "OTP_PARAM"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getTimeInterval()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_43

    .line 116
    .end local v0    # "algoType":I
    :cond_60
    const-string v2, "PSKCProvision::prepareDataForDbStorage - KeyPage does not contain any Key"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x0

    goto :goto_48
.end method

.method private prepareDataForSecureStorage(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 13
    .param p1, "kp"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .param p2, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string v7, "PSKCProvision::prepareDataForSecureStorage Enter"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 129
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 132
    .local v6, "sharedSecret":Ljava/lang/String;
    if-eqz p2, :cond_f

    if-nez p1, :cond_11

    .line 133
    :cond_f
    const/4 v1, 0x0

    .line 196
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_10
    return-object v1

    .line 135
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "oathProtocol":Ljava/lang/String;
    invoke-direct {p0, v4}, convertStringToAlgoType(Ljava/lang/String;)I

    move-result v0

    .line 138
    .local v0, "algoType":I
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getSecret()Ljava/lang/String;

    move-result-object v6

    .line 139
    const-string v7, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {v1, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :try_start_2e
    const-string v7, "SHARED_SECRET"

    const/4 v8, 0x0

    invoke-static {v6, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_38} :catch_d9

    .line 150
    const-string v7, "OTP_HASH_ALGO"

    const/16 v8, 0x170

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v7

    if-eqz v7, :cond_79

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getEncryptionType()I

    move-result v7

    if-lez v7, :cond_79

    .line 154
    const-string v7, "SECRET_ENCRYPTION_ALGO"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getEncryptionAlgo()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    const/4 v7, 0x1

    new-array v3, v7, [B

    const/4 v7, 0x0

    const/16 v8, 0x30

    aput-byte v8, v3, v7

    .line 159
    .local v3, "encryptionKey":[B
    const-string v7, "SECRET_ENCRYPTION_KEY"

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 162
    .end local v3    # "encryptionKey":[B
    :cond_79
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v7

    if-eqz v7, :cond_b5

    .line 163
    const/16 v7, 0x102

    if-eq v0, v7, :cond_a0

    .line 164
    const-string v7, "OTP_LENGTH"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getLength()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    :cond_a0
    const-string v7, "OTP_ENCODING"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getEncoding()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    :cond_b5
    const/16 v7, 0x100

    if-ne v0, v7, :cond_f7

    .line 172
    const-string v7, "PSKCProvision::prepareDataForSecureStorage creating hotp"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 173
    const-string v7, "OTP_OATH_PROTOCOL"

    const/16 v8, 0x100

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string v7, "OTP_PARAM"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getCounter()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_10

    .line 143
    :catch_d9
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PSKCProvision::IllegalArgumentException - Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 145
    const/4 v1, 0x0

    goto/16 :goto_10

    .line 176
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_f7
    const/16 v7, 0x101

    if-ne v0, v7, :cond_11b

    .line 177
    const-string v7, "PSKCProvision::prepareDataForSecureStorage creating totp"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 178
    const-string v7, "OTP_OATH_PROTOCOL"

    const/16 v8, 0x101

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    const-string v7, "OTP_PARAM"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getTimeInterval()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_10

    .line 181
    :cond_11b
    const/16 v7, 0x102

    if-ne v0, v7, :cond_15f

    .line 182
    const-string v7, "PSKCProvision::prepareDataForSecureStorage creating ocra"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 183
    const-string v7, "OTP_OATH_PROTOCOL"

    const/16 v8, 0x102

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "ocraSuite":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/enterprise/otp/OCRACheck;->isOcraSuiteValid(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_143

    invoke-static {v5}, Lcom/android/server/enterprise/otp/OCRACheck;->isOtpServiceSupportPresent(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_146

    .line 187
    :cond_143
    const/4 v1, 0x0

    goto/16 :goto_10

    .line 188
    :cond_146
    const-string v7, "OCRA_SUITE"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v7, "OTP_PARAM"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getCounter()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_10

    .line 191
    .end local v5    # "ocraSuite":Ljava/lang/String;
    :cond_15f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PSKCProvision::prepareDataForSecureStorage - Unknown Oath Protocol ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 193
    const/4 v1, 0x0

    goto/16 :goto_10
.end method


# virtual methods
.method public doProvision(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    const-string v0, "PSKCProvision::doProvision ENTER"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 44
    const/4 v6, 0x0

    .line 45
    .local v6, "ret":I
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "callerPackage":Ljava/lang/String;
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 47
    .local v5, "containerId":I
    const/4 v2, 0x0

    .line 48
    .local v2, "internalTokenId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 49
    .local v7, "tokenId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 52
    .local v1, "pskcBuffer":Ljava/lang/String;
    const-string v0, "OTP_PSKC_XML_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    if-nez v1, :cond_31

    .line 54
    const-string v0, "PSKCProvision::doProvision - Invalid PSKC XML data provided"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 55
    const/16 v6, 0x401

    .line 59
    :cond_31
    if-nez v6, :cond_39

    .line 60
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0, v4, v5, p1}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->setWhitelistAndSignerInfo(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v6

    .line 64
    :cond_39
    if-nez v6, :cond_65

    .line 66
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->generateTokenId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 67
    const-string v0, "OTP_TOKEN_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_54

    .line 68
    const-string v0, "PSKCProvision::doProvision -  No vendor id assigned. Assigning from OTP Service"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 69
    const-string v0, "OTP_TOKEN_ID"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    move-object v7, v2

    .line 72
    :cond_54
    const-string v0, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "TOKEN_STATE"

    const/16 v3, 0x300

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v0, "CONTAINER_ID"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    :cond_65
    if-nez v6, :cond_83

    .line 79
    iget-object v0, p0, mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->storeProvisioningData(Landroid/os/Bundle;)I

    move-result v6

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSKCProvision::doProvision - DBHandler.storeProvisioningData() ret = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 83
    :cond_83
    if-nez v6, :cond_8b

    move-object v0, p0

    move-object v3, p1

    .line 84
    invoke-direct/range {v0 .. v5}, doProvisionInThread(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 93
    :goto_8a
    return-object v7

    .line 86
    :cond_8b
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v3, "OTP Token creation failed"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0, v7, v4, v5, v6}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallbackInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSKCProvision::doProvision - Token Creation Failed. [ tokenId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_8a
.end method

.method public doResync(Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 4
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 98
    const-string v0, "PSKCProvision::doResync - not supported"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 99
    const/16 v0, 0x4ff

    return v0
.end method
