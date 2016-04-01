.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;
.super Ljava/lang/Object;
.source "ResponseFormat.java"


# instance fields
.field private mCheckDigit:Z

.field private mEncoding:I

.field private mLength:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encodingToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "encoding"    # I

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "result":Ljava/lang/String;
    const/16 v1, 0x141

    if-ne p1, v1, :cond_8

    .line 24
    const-string v0, "DECIMAL"

    .line 33
    :cond_7
    :goto_7
    return-object v0

    .line 25
    :cond_8
    const/16 v1, 0x201

    if-ne p1, v1, :cond_f

    .line 26
    const-string v0, "HEXADECIMAL"

    goto :goto_7

    .line 27
    :cond_f
    const/16 v1, 0x202

    if-ne p1, v1, :cond_16

    .line 28
    const-string v0, "ALPHANUMERIC"

    goto :goto_7

    .line 29
    :cond_16
    const/16 v1, 0x203

    if-ne p1, v1, :cond_1d

    .line 30
    const-string v0, "BASE64"

    goto :goto_7

    .line 31
    :cond_1d
    const/16 v1, 0x204

    if-ne p1, v1, :cond_7

    .line 32
    const-string v0, "BINARY"

    goto :goto_7
.end method

.method public getCheckDigit()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, mCheckDigit:Z

    return v0
.end method

.method public getEncoding()I
    .registers 2

    .prologue
    .line 18
    iget v0, p0, mEncoding:I

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, mLength:I

    return v0
.end method

.method public setCheckDigit(Ljava/lang/String;)V
    .registers 3
    .param p1, "checkDigit"    # Ljava/lang/String;

    .prologue
    .line 55
    if-eqz p1, :cond_e

    .line 56
    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, mCheckDigit:Z

    .line 62
    :cond_e
    :goto_e
    return-void

    .line 59
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, mCheckDigit:Z

    goto :goto_e
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "DECIMAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 38
    const/16 v0, 0x141

    iput v0, p0, mEncoding:I

    .line 48
    :cond_c
    :goto_c
    return-void

    .line 39
    :cond_d
    const-string v0, "HEXADECIMAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 40
    const/16 v0, 0x201

    iput v0, p0, mEncoding:I

    goto :goto_c

    .line 41
    :cond_1a
    const-string v0, "ALPHANUMERIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 42
    const/16 v0, 0x202

    iput v0, p0, mEncoding:I

    goto :goto_c

    .line 43
    :cond_27
    const-string v0, "BASE64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 44
    const/16 v0, 0x203

    iput v0, p0, mEncoding:I

    goto :goto_c

    .line 45
    :cond_34
    const-string v0, "BINARY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 46
    const/16 v0, 0x204

    iput v0, p0, mEncoding:I

    goto :goto_c
.end method

.method public setLength(Ljava/lang/String;)V
    .registers 3
    .param p1, "length"    # Ljava/lang/String;

    .prologue
    .line 69
    if-eqz p1, :cond_8

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mLength:I

    .line 72
    :cond_8
    return-void
.end method
