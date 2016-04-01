.class public Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
.super Ljava/lang/Object;
.source "AuthenticationResult.java"


# static fields
.field public static final AUTH_FAIL_REASON_AUTH_FAILED:I = 0x1

.field public static final AUTH_FAIL_REASON_COMMAND_DATA_LOST:I = 0x15

.field public static final AUTH_FAIL_REASON_COMMAND_DUPLICATED:I = 0x18

.field public static final AUTH_FAIL_REASON_COMMAND_OUT_OF_SEQUENCE:I = 0x17

.field public static final AUTH_FAIL_REASON_COMMAND_REJECTED:I = 0x14

.field public static final AUTH_FAIL_REASON_COMMAND_TIMEOUT:I = 0x16

.field public static final AUTH_FAIL_REASON_CONECTIVITY_BUSY:I = 0xd

.field public static final AUTH_FAIL_REASON_CONECTIVITY_DOWN:I = 0xc

.field public static final AUTH_FAIL_REASON_CONECTIVITY_ERROR:I = 0xa

.field public static final AUTH_FAIL_REASON_CONECTIVITY_MAXIMUM_CONNECTION_REACHED:I = 0xb

.field public static final AUTH_FAIL_REASON_INTERNAL_ERROR:I = 0x5a

.field public static final AUTH_FAIL_REASON_SESSION_BUSY:I = 0x1e

.field public static final AUTH_FAIL_REASON_SESSION_INTERRUPTED:I = 0x20

.field public static final AUTH_FAIL_REASON_SESSION_TIMEOUT:I = 0x1f

.field public static final AUTH_FAIL_REASON_TIMEOUT:I = 0x5b

.field public static final AUTH_REASON:Ljava/lang/String; = "reason"

.field public static final AUTH_SUCCESS:I = 0x0

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_AUTHENTICATION_ADDRESS:Ljava/lang/String; = "address"

.field public static final EXTRA_CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "connectivity_type"

.field public static final EXTRA_ID:Ljava/lang/String; = "extra_id"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field isKeyChanged:Z

.field isUrlExist:Z

.field mAuthenticationResult:Z

.field private mBundle:Landroid/os/Bundle;

.field mByteArrayExtraData:[B

.field mByteArrayManagerURI:[B

.field mConnectivityType:I

.field mExtraID:[B

.field mReason:I

.field mRequestPkg:Ljava/lang/String;

.field mStringExtraData:Ljava/lang/String;

.field mStringManagerURI:Ljava/lang/String;

.field needKeyChange:Z

.field private publicKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, mBundle:Landroid/os/Bundle;

    .line 47
    iput-boolean v1, p0, mAuthenticationResult:Z

    .line 56
    const/16 v0, 0x5a

    iput v0, p0, mReason:I

    .line 60
    iput-boolean v1, p0, isUrlExist:Z

    return-void
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .registers 8
    .param p1, "input"    # [B

    .prologue
    .line 183
    if-eqz p1, :cond_28

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_23

    .line 186
    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 188
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :goto_27
    return-object v2

    :cond_28
    const-string/jumbo v2, "null"

    goto :goto_27
.end method

.method public getByteArrayExtraData()[B
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, mByteArrayExtraData:[B

    return-object v0
.end method

.method public getByteArrayManagerURI()[B
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, mByteArrayManagerURI:[B

    return-object v0
.end method

.method public getConnectivityType()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, mConnectivityType:I

    return v0
.end method

.method public getExtraId()[B
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, mExtraID:[B

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, mReason:I

    return v0
.end method

.method public getRequestPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, mRequestPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getResultBundle()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 153
    iget-object v0, p0, mExtraID:[B

    if-eqz v0, :cond_e

    .line 154
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "extra"

    iget-object v2, p0, mExtraID:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 155
    :cond_e
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStringExtraData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, mStringExtraData:Ljava/lang/String;

    return-object v0
.end method

.method public getStringManagerURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, mStringManagerURI:Ljava/lang/String;

    return-object v0
.end method

.method public isKeyChanged()Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, isKeyChanged:Z

    return v0
.end method

.method public needKeyChange()Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, needKeyChange:Z

    return v0
.end method

.method public setConnectivityType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 145
    iput p1, p0, mConnectivityType:I

    .line 146
    return-void
.end method

.method public setExtraData([B)V
    .registers 5
    .param p1, "data"    # [B

    .prologue
    .line 102
    iput-object p1, p0, mByteArrayExtraData:[B

    .line 103
    if-eqz p1, :cond_16

    .line 105
    :try_start_4
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, mStringExtraData:Ljava/lang/String;

    .line 106
    iget-object v1, p0, mStringExtraData:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mStringExtraData:Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_16} :catch_17

    .line 111
    :cond_16
    :goto_16
    return-void

    .line 107
    :catch_17
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    iput-object v1, p0, mStringExtraData:Ljava/lang/String;

    goto :goto_16
.end method

.method public setExtraId([B)V
    .registers 7
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    if-eqz p1, :cond_21

    .line 120
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, mExtraID:[B

    .line 121
    iget-object v1, p0, mExtraID:[B

    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 122
    array-length v1, p1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_20

    .line 123
    iget-object v1, p0, mExtraID:[B

    const/16 v2, 0x15

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 124
    .local v0, "url":I
    if-ne v0, v4, :cond_20

    .line 125
    iput-boolean v4, p0, isUrlExist:Z

    .line 130
    .end local v0    # "url":I
    :cond_20
    :goto_20
    return-void

    .line 128
    :cond_21
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "setExtraId : data is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public setKeyChanged(Z)V
    .registers 2
    .param p1, "isKeyChanged"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, isKeyChanged:Z

    .line 164
    return-void
.end method

.method public setManagerURI([B)V
    .registers 5
    .param p1, "uri"    # [B

    .prologue
    .line 86
    iput-object p1, p0, mByteArrayManagerURI:[B

    .line 87
    if-eqz p1, :cond_16

    .line 89
    :try_start_4
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, mStringManagerURI:Ljava/lang/String;

    .line 90
    iget-object v1, p0, mStringManagerURI:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mStringManagerURI:Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_16} :catch_17

    .line 95
    :cond_16
    :goto_16
    return-void

    .line 91
    :catch_17
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    iput-object v1, p0, mStringManagerURI:Ljava/lang/String;

    goto :goto_16
.end method

.method public setNeedKeyChange(Z)V
    .registers 2
    .param p1, "needKeyChange"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, needKeyChange:Z

    .line 83
    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, publicKey:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setReason(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 171
    iput p1, p0, mReason:I

    .line 172
    if-nez p1, :cond_12

    .line 173
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    iput-boolean v2, p0, isKeyChanged:Z

    .line 175
    iput-boolean v2, p0, needKeyChange:Z

    .line 180
    :goto_11
    return-void

    .line 179
    :cond_12
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_11
.end method

.method public setRequestPackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, mRequestPkg:Ljava/lang/String;

    .line 138
    return-void
.end method
