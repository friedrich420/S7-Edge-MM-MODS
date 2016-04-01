.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;
.super Ljava/lang/Object;
.source "PinPolicy.java"


# instance fields
.field private mMaxFailedAttempts:I

.field private mMaxLength:I

.field private mMinLength:I

.field private mPinEncoding:Ljava/lang/String;

.field private mPinKeyId:Ljava/lang/String;

.field private mPinUsageMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxFailedAttempts()I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, mMaxFailedAttempts:I

    return v0
.end method

.method public getMaxLength()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, mMaxLength:I

    return v0
.end method

.method public getMinLength()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, mMinLength:I

    return v0
.end method

.method public getPinEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, mPinEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getPinKeyID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, mPinKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getPinUsageMode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, mPinUsageMode:Ljava/lang/String;

    return-object v0
.end method

.method public setMaxFailedAttempts(Ljava/lang/String;)V
    .registers 3
    .param p1, "maxFailedAttempts"    # Ljava/lang/String;

    .prologue
    .line 31
    if-eqz p1, :cond_8

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mMaxFailedAttempts:I

    .line 34
    :cond_8
    return-void
.end method

.method public setMaxLength(Ljava/lang/String;)V
    .registers 3
    .param p1, "maxLength"    # Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p1, :cond_8

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mMaxLength:I

    .line 54
    :cond_8
    return-void
.end method

.method public setMinLength(Ljava/lang/String;)V
    .registers 3
    .param p1, "minLength"    # Ljava/lang/String;

    .prologue
    .line 41
    if-eqz p1, :cond_8

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mMinLength:I

    .line 44
    :cond_8
    return-void
.end method

.method public setPinEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "pinEncoding"    # Ljava/lang/String;

    .prologue
    .line 71
    if-eqz p1, :cond_4

    .line 72
    iput-object p1, p0, mPinEncoding:Ljava/lang/String;

    .line 74
    :cond_4
    return-void
.end method

.method public setPinKeyID(Ljava/lang/String;)V
    .registers 2
    .param p1, "pinKeyID"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, mPinKeyId:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setPinUsageMode(Ljava/lang/String;)V
    .registers 2
    .param p1, "pinEncoding"    # Ljava/lang/String;

    .prologue
    .line 61
    if-eqz p1, :cond_4

    .line 62
    iput-object p1, p0, mPinUsageMode:Ljava/lang/String;

    .line 64
    :cond_4
    return-void
.end method
