.class public Lcom/sec/epdg/VerizonIkeError;
.super Lcom/sec/epdg/RfcIkeError;
.source "VerizonIkeError.java"


# static fields
.field public static final MAJOR_NETWORK_FAILURE_MAX:I = 0x2936

.field public static final MINOR_NW_FAILURE_MAX:I = 0x2742

.field public static final NETWORK_FAILURE:I = 0x2904

.field public static final NETWORK_TOO_BUSY:I = 0x2710

.field public static final NO_SUBSCRIPTION:I = 0x2328

.field public static final NW_PERMANENT_FAILURE_MAX:I = 0x2b2a

.field public static final PERMANENT_UE_FAILURE_MAX:I = 0x235a

.field public static final RAT_DISALLOWED:I = 0x2af9

.field public static final ROAMING_NOT_ALLOWED:I = 0x2af8


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/sec/epdg/RfcIkeError;-><init>()V

    .line 17
    return-void
.end method

.method public static getVerizonIkeErrorCode(I)I
    .registers 8
    .param p0, "code"    # I

    .prologue
    const/16 v5, 0x235a

    const/16 v3, 0x2af8

    const/16 v2, 0x2904

    const/16 v1, 0x2710

    const/16 v4, 0x2328

    .line 23
    invoke-static {p0}, getRfcIkeErrorCode(I)I

    move-result v0

    .line 24
    .local v0, "ret":I
    if-eqz v0, :cond_11

    .line 57
    .end local v0    # "ret":I
    :goto_10
    return v0

    .line 27
    .restart local v0    # "ret":I
    :cond_11
    sparse-switch p0, :sswitch_data_52

    .line 48
    const/16 v6, 0x2742

    invoke-static {v1, v6, p0}, isIkeErrorCodeBetween(III)Z

    move-result v6

    if-eqz v6, :cond_34

    move v0, v1

    .line 49
    goto :goto_10

    :sswitch_1e
    move v0, v1

    .line 29
    goto :goto_10

    .line 31
    :sswitch_20
    const/16 v0, 0x2742

    goto :goto_10

    :sswitch_23
    move v0, v2

    .line 33
    goto :goto_10

    .line 35
    :sswitch_25
    const/16 v0, 0x2936

    goto :goto_10

    :sswitch_28
    move v0, v3

    .line 37
    goto :goto_10

    .line 39
    :sswitch_2a
    const/16 v0, 0x2af9

    goto :goto_10

    .line 41
    :sswitch_2d
    const/16 v0, 0x2b2a

    goto :goto_10

    :sswitch_30
    move v0, v4

    .line 43
    goto :goto_10

    :sswitch_32
    move v0, v5

    .line 45
    goto :goto_10

    .line 50
    :cond_34
    const/16 v1, 0x2936

    invoke-static {v2, v1, p0}, isIkeErrorCodeBetween(III)Z

    move-result v1

    if-eqz v1, :cond_3e

    move v0, v2

    .line 51
    goto :goto_10

    .line 52
    :cond_3e
    const/16 v1, 0x2b2a

    invoke-static {v3, v1, p0}, isIkeErrorCodeBetween(III)Z

    move-result v1

    if-eqz v1, :cond_48

    move v0, v3

    .line 53
    goto :goto_10

    .line 54
    :cond_48
    invoke-static {v4, v5, p0}, isIkeErrorCodeBetween(III)Z

    move-result v1

    if-eqz v1, :cond_50

    move v0, v4

    .line 55
    goto :goto_10

    .line 57
    :cond_50
    const/4 v0, 0x0

    goto :goto_10

    .line 27
    :sswitch_data_52
    .sparse-switch
        0x2328 -> :sswitch_30
        0x235a -> :sswitch_32
        0x2710 -> :sswitch_1e
        0x2742 -> :sswitch_20
        0x2904 -> :sswitch_23
        0x2936 -> :sswitch_25
        0x2af8 -> :sswitch_28
        0x2af9 -> :sswitch_2a
        0x2b2a -> :sswitch_2d
    .end sparse-switch
.end method

.method public static isIkeErrorCodeBetween(III)Z
    .registers 4
    .param p0, "min"    # I
    .param p1, "max"    # I
    .param p2, "code"    # I

    .prologue
    .line 19
    if-lt p2, p0, :cond_6

    if-gt p2, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static printVerizonIkeErrorCode(I)Ljava/lang/String;
    .registers 3
    .param p0, "code"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "result":Ljava/lang/String;
    invoke-static {p0}, printRfcIkeErrorCode(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_9

    move-object v1, v0

    .line 101
    .end local v0    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    :goto_8
    return-object v1

    .line 69
    .end local v1    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    :cond_9
    sparse-switch p0, :sswitch_data_2e

    .line 98
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    move-object v1, v0

    .line 101
    .end local v0    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_8

    .line 71
    .end local v1    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    :sswitch_12
    const-string v0, "NETWORK_TOO_BUSY"

    .line 72
    goto :goto_10

    .line 74
    :sswitch_15
    const-string v0, "MINOR_NW_FAILURE_MAX"

    .line 75
    goto :goto_10

    .line 77
    :sswitch_18
    const-string v0, "NETWORK_FAILURE"

    .line 78
    goto :goto_10

    .line 80
    :sswitch_1b
    const-string v0, "MAJOR_NETWORK_FAILURE_MAX"

    .line 81
    goto :goto_10

    .line 83
    :sswitch_1e
    const-string v0, "ROAMING_NOT_ALLOWED"

    .line 84
    goto :goto_10

    .line 86
    :sswitch_21
    const-string v0, "RAT_DISALLOWED"

    .line 87
    goto :goto_10

    .line 89
    :sswitch_24
    const-string v0, "NW_PERMANENT_FAILURE_MAX"

    .line 90
    goto :goto_10

    .line 92
    :sswitch_27
    const-string v0, "NO_SUBSCRIPTION"

    .line 93
    goto :goto_10

    .line 95
    :sswitch_2a
    const-string v0, "PERMANENT_UE_FAILURE_MAX"

    .line 96
    goto :goto_10

    .line 69
    nop

    :sswitch_data_2e
    .sparse-switch
        0x2328 -> :sswitch_27
        0x235a -> :sswitch_2a
        0x2710 -> :sswitch_12
        0x2742 -> :sswitch_15
        0x2904 -> :sswitch_18
        0x2936 -> :sswitch_1b
        0x2af8 -> :sswitch_1e
        0x2af9 -> :sswitch_21
        0x2b2a -> :sswitch_24
    .end sparse-switch
.end method
