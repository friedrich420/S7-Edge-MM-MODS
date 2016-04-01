.class public Lcom/android/server/enterprise/otp/engine/common/OTPEnums;
.super Ljava/lang/Object;
.source "OTPEnums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/otp/engine/common/OTPEnums$1;,
        Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;,
        Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;,
        Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method public static final keyUsageToStr(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;)Ljava/lang/String;
    .registers 4
    .param p0, "keyusage"    # Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    .prologue
    .line 40
    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$1;->$SwitchMap$com$android$server$enterprise$otp$engine$common$OTPEnums$KeyUsage:[I

    invoke-virtual {p0}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_30

    .line 87
    const-string v0, "Unknown"

    .line 91
    .local v0, "p":Ljava/lang/String;
    :goto_d
    return-object v0

    .line 42
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_e
    const-string v0, "OTP"

    .line 43
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_d

    .line 46
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_11
    const-string v0, "CR"

    .line 47
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_d

    .line 50
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_14
    const-string v0, "Encrypt"

    .line 51
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_d

    .line 54
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_17
    const-string v0, "Integrity"

    .line 55
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_d

    .line 58
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_1a
    const-string v0, "Verify"

    .line 59
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_d

    .line 62
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_1d
    const-string v0, "Unlock"

    .line 63
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_d

    .line 66
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_20
    const-string v0, "Decrypt"

    .line 67
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_d

    .line 70
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_23
    const-string v0, "KeyWrap"

    .line 71
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_d

    .line 74
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_26
    const-string v0, "Unwrap"

    .line 75
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_d

    .line 78
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_29
    const-string v0, "Derive"

    .line 79
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_d

    .line 82
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_2c
    const-string v0, "Generate"

    .line 83
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_d

    .line 40
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
    .end packed-switch
.end method

.method public static strToKeyUsage(Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;
    .registers 2
    .param p0, "keyusage"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v0, "OTP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 96
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->OTP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    .line 118
    :goto_a
    return-object v0

    .line 97
    :cond_b
    const-string v0, "CR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 98
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->CR:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_a

    .line 99
    :cond_16
    const-string v0, "Encrypt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 100
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ENCRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_a

    .line 101
    :cond_21
    const-string v0, "Integrity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 102
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->INTEGRITY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_a

    .line 103
    :cond_2c
    const-string v0, "Verify"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 104
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->VERIFY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_a

    .line 105
    :cond_37
    const-string v0, "Unlock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 106
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNLOCK:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_a

    .line 107
    :cond_42
    const-string v0, "Decrypt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 108
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->DECRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_a

    .line 109
    :cond_4d
    const-string v0, "KeyWrap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 110
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->KEYWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_a

    .line 111
    :cond_58
    const-string v0, "Unwrap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 112
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_a

    .line 113
    :cond_63
    const-string v0, "Derive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 114
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->DERIVE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_a

    .line 115
    :cond_6e
    const-string v0, "Generate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 116
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->GENERATE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_a

    .line 118
    :cond_79
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_a
.end method
