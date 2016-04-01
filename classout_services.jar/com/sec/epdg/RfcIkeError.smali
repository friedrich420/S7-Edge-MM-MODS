.class public Lcom/sec/epdg/RfcIkeError;
.super Ljava/lang/Object;
.source "RfcIkeError.java"


# static fields
.field public static final AUTHENTICATION_FAILED:I = 0x18

.field public static final CHILD_SA_NOT_FOUND:I = 0x2c

.field public static final FAILED_CP_REQUIRED:I = 0x25

.field public static final INTERNAL_ADDRESS_FAILURE:I = 0x24

.field public static final INVALID_IKE_SPI:I = 0x4

.field public static final INVALID_KE_PAYLOAD:I = 0x11

.field public static final INVALID_MAJOR_VERSION:I = 0x5

.field public static final INVALID_MESSAGE_ID:I = 0x9

.field public static final INVALID_SELECTORS:I = 0x27

.field public static final INVALID_SPI:I = 0xb

.field public static final INVALID_SYNTAX:I = 0x7

.field public static final NO_ADDITIONAL_SAS:I = 0x23

.field public static final NO_PROPOSAL_CHOSEN:I = 0xe

.field public static final SINGLE_PAIR_REQUIRED:I = 0x22

.field public static final TEMPORARY_FAILURE:I = 0x2b

.field public static final TS_UNACCEPTABLE:I = 0x26

.field public static final UNKNOWN:I = 0x0

.field public static final UNSUPPORTED_CRITICAL_PAYLOAD:I = 0x1


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getRfcIkeErrorCode(I)I
    .registers 2
    .param p0, "code"    # I

    .prologue
    const/4 v0, 0x0

    .line 29
    sparse-switch p0, :sswitch_data_34

    .line 67
    :goto_4
    :sswitch_4
    return v0

    .line 33
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 35
    :sswitch_7
    const/4 v0, 0x4

    goto :goto_4

    .line 37
    :sswitch_9
    const/4 v0, 0x5

    goto :goto_4

    .line 39
    :sswitch_b
    const/4 v0, 0x7

    goto :goto_4

    .line 41
    :sswitch_d
    const/16 v0, 0x9

    goto :goto_4

    .line 43
    :sswitch_10
    const/16 v0, 0xb

    goto :goto_4

    .line 45
    :sswitch_13
    const/16 v0, 0xe

    goto :goto_4

    .line 47
    :sswitch_16
    const/16 v0, 0x11

    goto :goto_4

    .line 49
    :sswitch_19
    const/16 v0, 0x18

    goto :goto_4

    .line 51
    :sswitch_1c
    const/16 v0, 0x22

    goto :goto_4

    .line 53
    :sswitch_1f
    const/16 v0, 0x23

    goto :goto_4

    .line 55
    :sswitch_22
    const/16 v0, 0x24

    goto :goto_4

    .line 57
    :sswitch_25
    const/16 v0, 0x25

    goto :goto_4

    .line 59
    :sswitch_28
    const/16 v0, 0x26

    goto :goto_4

    .line 61
    :sswitch_2b
    const/16 v0, 0x27

    goto :goto_4

    .line 63
    :sswitch_2e
    const/16 v0, 0x2b

    goto :goto_4

    .line 65
    :sswitch_31
    const/16 v0, 0x2c

    goto :goto_4

    .line 29
    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_5
        0x4 -> :sswitch_7
        0x5 -> :sswitch_9
        0x7 -> :sswitch_b
        0x9 -> :sswitch_d
        0xb -> :sswitch_10
        0xe -> :sswitch_13
        0x11 -> :sswitch_16
        0x18 -> :sswitch_19
        0x22 -> :sswitch_1c
        0x23 -> :sswitch_1f
        0x24 -> :sswitch_22
        0x25 -> :sswitch_25
        0x26 -> :sswitch_28
        0x27 -> :sswitch_2b
        0x2b -> :sswitch_2e
        0x2c -> :sswitch_31
    .end sparse-switch
.end method

.method protected static printRfcIkeErrorCode(I)Ljava/lang/String;
    .registers 2
    .param p0, "code"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "result":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_3c

    .line 125
    const-string/jumbo v0, "null"

    .line 127
    :goto_7
    return-object v0

    .line 74
    :sswitch_8
    const-string v0, "UNSUPPORTED_CRITICAL_PAYLOAD"

    .line 75
    goto :goto_7

    .line 77
    :sswitch_b
    const-string v0, "INVALID_IKE_SPI"

    .line 78
    goto :goto_7

    .line 80
    :sswitch_e
    const-string v0, "INVALID_MAJOR_VERSION"

    .line 81
    goto :goto_7

    .line 83
    :sswitch_11
    const-string v0, "INVALID_SYNTAX"

    .line 84
    goto :goto_7

    .line 86
    :sswitch_14
    const-string v0, "INVALID_MESSAGE_ID"

    .line 87
    goto :goto_7

    .line 89
    :sswitch_17
    const-string v0, "INVALID_SPI"

    .line 90
    goto :goto_7

    .line 92
    :sswitch_1a
    const-string v0, "NO_PROPOSAL_CHOSEN"

    .line 93
    goto :goto_7

    .line 95
    :sswitch_1d
    const-string v0, "INVALID_KE_PAYLOAD"

    .line 96
    goto :goto_7

    .line 98
    :sswitch_20
    const-string v0, "AUTHENTICATION_FAILED"

    .line 99
    goto :goto_7

    .line 101
    :sswitch_23
    const-string v0, "SINGLE_PAIR_REQUIRED"

    .line 102
    goto :goto_7

    .line 104
    :sswitch_26
    const-string v0, "NO_ADDITIONAL_SAS"

    .line 105
    goto :goto_7

    .line 107
    :sswitch_29
    const-string v0, "INTERNAL_ADDRESS_FAILURE"

    .line 108
    goto :goto_7

    .line 110
    :sswitch_2c
    const-string v0, "FAILED_CP_REQUIRED"

    .line 111
    goto :goto_7

    .line 113
    :sswitch_2f
    const-string v0, "TS_UNACCEPTABLE"

    .line 114
    goto :goto_7

    .line 116
    :sswitch_32
    const-string v0, "INVALID_SELECTORS"

    .line 117
    goto :goto_7

    .line 119
    :sswitch_35
    const-string v0, "TEMPORARY_FAILURE"

    .line 120
    goto :goto_7

    .line 122
    :sswitch_38
    const-string v0, "CHILD_SA_NOT_FOUND"

    .line 123
    goto :goto_7

    .line 72
    nop

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_8
        0x4 -> :sswitch_b
        0x5 -> :sswitch_e
        0x7 -> :sswitch_11
        0x9 -> :sswitch_14
        0xb -> :sswitch_17
        0xe -> :sswitch_1a
        0x11 -> :sswitch_1d
        0x18 -> :sswitch_20
        0x22 -> :sswitch_23
        0x23 -> :sswitch_26
        0x24 -> :sswitch_29
        0x25 -> :sswitch_2c
        0x26 -> :sswitch_2f
        0x27 -> :sswitch_32
        0x2b -> :sswitch_35
        0x2c -> :sswitch_38
    .end sparse-switch
.end method
