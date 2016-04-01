.class public Lcom/android/server/enterprise/otp/OCRACheck;
.super Ljava/lang/Object;
.source "OCRACheck.java"


# instance fields
.field mChallengeType:I

.field mIsPinReq:Z

.field mIsSessionReq:Z

.field mOtpLen:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "ocraSuite"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0, p1}, splitSuite(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static isOcraSuiteValid(Ljava/lang/String;)Z
    .registers 6
    .param p0, "suite"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 32
    const-string v4, "OCRACheck::isOcraSuiteValid Enter"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 34
    if-nez p0, :cond_e

    .line 35
    const-string v4, "OCRACheck::isOcraSuiteValid OcraSuite is NULL"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 51
    :goto_d
    return v3

    .line 39
    :cond_e
    const/4 v1, 0x0

    .line 40
    .local v1, "colonCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_23

    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 42
    .local v0, "c":C
    const/16 v4, 0x3a

    if-ne v0, v4, :cond_20

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 40
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 46
    .end local v0    # "c":C
    :cond_23
    const/4 v4, 0x2

    if-eq v1, v4, :cond_2c

    .line 47
    const-string v4, "OCRACheck::splitSuite OcraSuite not valid"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_d

    .line 51
    :cond_2c
    const/4 v3, 0x1

    goto :goto_d
.end method

.method public static isOtpServiceSupportPresent(Ljava/lang/String;)I
    .registers 6
    .param p0, "suite"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x404

    .line 55
    const-string v3, "OCRACheck::isOtpServiceSupportPresent Enter"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 56
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v0, v3, v4

    .line 57
    .local v0, "CryptoFunction":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v1, v3, v4

    .line 58
    .local v1, "DataInput":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sha512"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2e

    .line 59
    const-string v3, "OCRACheck::isOtpServiceSupportPresent OcraSuite has SHA512"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 76
    :goto_2d
    return v2

    .line 63
    :cond_2e
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "psha512"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_43

    .line 64
    const-string v3, "OCRACheck::isOtpServiceSupportPresent OcraSuite requires Pin in SHA512"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2d

    .line 68
    :cond_43
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "s064"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_7f

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "s128"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_7f

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "s256"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_7f

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "s512"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_85

    .line 72
    :cond_7f
    const-string v3, "OCRACheck::isOtpServiceSupportPresent OcraSuite requires Session support"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2d

    .line 76
    :cond_85
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method private splitSuite(Ljava/lang/String;)V
    .registers 7
    .param p1, "ocraSuite"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 80
    invoke-static {p1}, isOcraSuiteValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 119
    :cond_7
    :goto_7
    return-void

    .line 84
    :cond_8
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v4

    .line 85
    .local v0, "CryptoFunction":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v1, v2, v3

    .line 86
    .local v1, "DataInput":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sha1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_46

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sha256"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_46

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sha512"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_e3

    .line 89
    :cond_46
    const-string v2, "OCRACheck:splitSuite The crypto SHA Algo is supported"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 95
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, mOtpLen:I

    .line 97
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "psha1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_8e

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "psha256"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_8e

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "psha512"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_90

    .line 100
    :cond_8e
    iput-boolean v4, p0, mIsPinReq:Z

    .line 102
    :cond_90
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "qa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_ea

    .line 103
    const/16 v2, 0x202

    iput v2, p0, mChallengeType:I

    .line 113
    :goto_a3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "s064"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_df

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "s128"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_df

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "s256"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_df

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "s512"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_7

    .line 117
    :cond_df
    iput-boolean v4, p0, mIsSessionReq:Z

    goto/16 :goto_7

    .line 91
    :cond_e3
    const-string v2, "OCRACheck:splitSuite The crypto SHA Algo is not supported"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 104
    :cond_ea
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "qn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_fe

    .line 105
    const/16 v2, 0x141

    iput v2, p0, mChallengeType:I

    goto :goto_a3

    .line 106
    :cond_fe
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "qh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_112

    .line 107
    const/16 v2, 0x201

    iput v2, p0, mChallengeType:I

    goto :goto_a3

    .line 109
    :cond_112
    const-string v2, "Other Challenge type is not supported"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_7
.end method


# virtual methods
.method public getChallengeType()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, mChallengeType:I

    return v0
.end method

.method public getOcraOtpLen()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, mOtpLen:I

    return v0
.end method

.method public isPinRequired()Z
    .registers 3

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OCRACheck:isPinRequire Pin req = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mIsPinReq:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 131
    iget-boolean v0, p0, mIsPinReq:Z

    return v0
.end method

.method public isSessionRequired()Z
    .registers 2

    .prologue
    .line 135
    iget-boolean v0, p0, mIsSessionReq:Z

    return v0
.end method
