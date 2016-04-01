.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;
.super Ljava/lang/Object;
.source "ChallengeFormat.java"


# instance fields
.field private mCheckDigit:Z

.field private mEncoding:Ljava/lang/String;

.field private mMax:I

.field private mMin:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckDigit()Z
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, mCheckDigit:Z

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, mMax:I

    return v0
.end method

.method public getMin()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, mMin:I

    return v0
.end method

.method public setCheckDigit(Ljava/lang/String;)V
    .registers 3
    .param p1, "checkDigit"    # Ljava/lang/String;

    .prologue
    .line 29
    if-eqz p1, :cond_e

    .line 30
    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, mCheckDigit:Z

    .line 36
    :cond_e
    :goto_e
    return-void

    .line 33
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, mCheckDigit:Z

    goto :goto_e
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, mEncoding:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setMax(Ljava/lang/String;)V
    .registers 3
    .param p1, "max"    # Ljava/lang/String;

    .prologue
    .line 52
    if-eqz p1, :cond_8

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mMax:I

    .line 54
    :cond_8
    return-void
.end method

.method public setMin(Ljava/lang/String;)V
    .registers 3
    .param p1, "min"    # Ljava/lang/String;

    .prologue
    .line 43
    if-eqz p1, :cond_8

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mMin:I

    .line 45
    :cond_8
    return-void
.end method
