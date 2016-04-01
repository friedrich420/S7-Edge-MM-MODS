.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
.super Ljava/lang/Object;
.source "PBKDF2Params.java"


# instance fields
.field private mIterationCount:I

.field private mKeyLength:I

.field private mSalt:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public byteToStringSalt([B)Ljava/lang/String;
    .registers 3
    .param p1, "salt"    # [B

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "result":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getIterationCount()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, mIterationCount:I

    return v0
.end method

.method public getKeyLength()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, mKeyLength:I

    return v0
.end method

.method public getSalt()[B
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, mSalt:[B

    return-object v0
.end method

.method public setIterationCount(I)V
    .registers 2
    .param p1, "mIterationCount"    # I

    .prologue
    .line 29
    iput p1, p0, mIterationCount:I

    .line 30
    return-void
.end method

.method public setKeyLength(I)V
    .registers 2
    .param p1, "mKeyLength"    # I

    .prologue
    .line 37
    iput p1, p0, mKeyLength:I

    .line 38
    return-void
.end method

.method public setmSalt(Ljava/lang/String;)V
    .registers 3
    .param p1, "salt"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p1}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, mSalt:[B

    .line 22
    return-void
.end method
