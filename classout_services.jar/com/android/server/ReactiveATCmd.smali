.class public Lcom/android/server/ReactiveATCmd;
.super Ljava/lang/Object;
.source "ReactiveATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_COMMAND_REACTIVE:Ljava/lang/String; = "REACTIVE"

.field private static final AT_RESPONSE_CONN_FAILED:Ljava/lang/String; = "NG (FAILED CONNECTION)"

.field private static final AT_RESPONSE_END:Ljava/lang/String; = "\r\n\r\nOK\r\n"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID_PARAM)"

.field private static final AT_RESPONSE_NA:Ljava/lang/String; = "NA"

.field private static final AT_RESPONSE_START:Ljava/lang/String; = "\r\n"

.field private static final AT_RESPONSE_STATUS_LOCK:Ljava/lang/String; = "LOCK"

.field private static final AT_RESPONSE_STATUS_LOCK_1:Ljava/lang/String; = "LOCK_1"

.field private static final AT_RESPONSE_STATUS_LOCK_2:Ljava/lang/String; = "LOCK_2"

.field private static final AT_RESPONSE_STATUS_LOCK_3:Ljava/lang/String; = "LOCK_3"

.field private static final AT_RESPONSE_STATUS_LOCK_4:Ljava/lang/String; = "LOCK_4"

.field private static final AT_RESPONSE_STATUS_LOCK_5:Ljava/lang/String; = "LOCK_5"

.field private static final AT_RESPONSE_STATUS_TRIGGERED:Ljava/lang/String; = "TRIGGERED"

.field private static final AT_RESPONSE_STATUS_UNLOCK:Ljava/lang/String; = "UNLOCK"

.field private static final LOCK_STATE_1:I = 0x3

.field private static final LOCK_STATE_2:I = 0x4

.field private static final LOCK_STATE_3:I = 0x5

.field private static final LOCK_STATE_4:I = 0x6

.field private static final LOCK_STATE_5:I = 0x7

.field private static final SERVICE_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field private static final SERVICE_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final SERVICE_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveATCmd"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mErrorCode:I

.field private rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sput-object p1, mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 59
    return-void
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v2, 0x0

    .line 240
    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "params":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_11

    move-result-object v2

    .line 249
    .end local v1    # "params":Ljava/lang/String;
    :goto_10
    return-object v2

    .line 243
    :catch_11
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 64
    .local v0, "response":Ljava/lang/String;
    const-string v0, "REACTIVE"

    .line 65
    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 71
    .local v7, "result":Ljava/lang/String;
    invoke-direct {p0, p1}, parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "params":[Ljava/lang/String;
    const/4 v11, 0x3

    new-array v10, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "1,0,0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "2,0,"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "2,1,"

    aput-object v12, v10, v11

    .line 79
    .local v10, "supportedParams":[Ljava/lang/String;
    if-nez v5, :cond_20

    .line 80
    const-string v11, "NG (INVALID_PARAM)"

    .line 232
    :goto_1f
    return-object v11

    .line 82
    :cond_20
    iget-object v11, p0, rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    if-nez v11, :cond_27

    .line 83
    const-string v11, "NG (FAILED CONNECTION)"

    goto :goto_1f

    .line 85
    :cond_27
    iget-object v11, p0, rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v11}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v11

    if-nez v11, :cond_32

    .line 86
    const-string v11, "NG (FAILED CONNECTION)"

    goto :goto_1f

    .line 89
    :cond_32
    :try_start_32
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 92
    const/4 v11, 0x0

    aget-object v11, v10, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {p1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b1

    .line 94
    iget-object v11, p0, rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v11}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getRawServiceValueForAtCommand()I

    move-result v0

    .line 98
    .local v0, "appliedSolution":I
    packed-switch v0, :pswitch_data_2a0

    .line 159
    iget-object v11, p0, rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v9

    .line 160
    .local v9, "rl_flag":I
    move v3, v9

    .line 164
    .end local v9    # "rl_flag":I
    .local v3, "flag":I
    :goto_6e
    packed-switch v3, :pswitch_data_2aa

    .line 199
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "NG("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v0    # "appliedSolution":I
    .end local v3    # "flag":I
    :goto_8e
    move-object v11, v7

    .line 232
    goto :goto_1f

    .line 102
    .restart local v0    # "appliedSolution":I
    :pswitch_90
    iget-object v11, p0, rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v4

    .line 103
    .local v4, "frp_flag":I
    move v3, v4

    .line 104
    .restart local v3    # "flag":I
    goto :goto_6e

    .line 108
    .end local v3    # "flag":I
    .end local v4    # "frp_flag":I
    :pswitch_99
    iget-object v11, p0, rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v4

    .line 109
    .restart local v4    # "frp_flag":I
    iget-object v11, p0, rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v9

    .line 111
    .restart local v9    # "rl_flag":I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_ac

    .line 112
    move v3, v9

    .restart local v3    # "flag":I
    goto :goto_6e

    .line 113
    .end local v3    # "flag":I
    :cond_ac
    const/4 v11, 0x2

    if-ne v4, v11, :cond_b1

    .line 114
    move v3, v4

    .restart local v3    # "flag":I
    goto :goto_6e

    .line 115
    .end local v3    # "flag":I
    :cond_b1
    if-nez v4, :cond_b7

    if-nez v9, :cond_b7

    .line 117
    const/4 v3, 0x0

    .restart local v3    # "flag":I
    goto :goto_6e

    .line 118
    .end local v3    # "flag":I
    :cond_b7
    const/4 v11, 0x1

    if-ne v4, v11, :cond_be

    if-nez v9, :cond_be

    .line 120
    const/4 v3, 0x3

    .restart local v3    # "flag":I
    goto :goto_6e

    .line 121
    .end local v3    # "flag":I
    :cond_be
    if-nez v4, :cond_c5

    const/4 v11, 0x1

    if-ne v9, v11, :cond_c5

    .line 123
    const/4 v3, 0x4

    .restart local v3    # "flag":I
    goto :goto_6e

    .line 124
    .end local v3    # "flag":I
    :cond_c5
    const/4 v11, 0x1

    if-ne v4, v11, :cond_cd

    const/4 v11, 0x1

    if-ne v9, v11, :cond_cd

    .line 126
    const/4 v3, 0x6

    .restart local v3    # "flag":I
    goto :goto_6e

    .line 128
    .end local v3    # "flag":I
    :cond_cd
    move v3, v9

    .line 129
    .restart local v3    # "flag":I
    goto :goto_6e

    .line 133
    .end local v3    # "flag":I
    .end local v4    # "frp_flag":I
    .end local v9    # "rl_flag":I
    :pswitch_cf
    iget-object v11, p0, rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v4

    .line 134
    .restart local v4    # "frp_flag":I
    iget-object v11, p0, rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v9

    .line 136
    .restart local v9    # "rl_flag":I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_e2

    .line 137
    move v3, v9

    .restart local v3    # "flag":I
    goto :goto_6e

    .line 138
    .end local v3    # "flag":I
    :cond_e2
    const/4 v11, 0x2

    if-ne v4, v11, :cond_e7

    .line 139
    move v3, v4

    .restart local v3    # "flag":I
    goto :goto_6e

    .line 140
    .end local v3    # "flag":I
    :cond_e7
    if-nez v4, :cond_ed

    if-nez v9, :cond_ed

    .line 142
    const/4 v3, 0x0

    .restart local v3    # "flag":I
    goto :goto_6e

    .line 143
    .end local v3    # "flag":I
    :cond_ed
    const/4 v11, 0x1

    if-ne v4, v11, :cond_f5

    if-nez v9, :cond_f5

    .line 145
    const/4 v3, 0x3

    .restart local v3    # "flag":I
    goto/16 :goto_6e

    .line 146
    .end local v3    # "flag":I
    :cond_f5
    if-nez v4, :cond_fd

    const/4 v11, 0x1

    if-ne v9, v11, :cond_fd

    .line 148
    const/4 v3, 0x5

    .restart local v3    # "flag":I
    goto/16 :goto_6e

    .line 149
    .end local v3    # "flag":I
    :cond_fd
    const/4 v11, 0x1

    if-ne v4, v11, :cond_106

    const/4 v11, 0x1

    if-ne v9, v11, :cond_106

    .line 151
    const/4 v3, 0x7

    .restart local v3    # "flag":I
    goto/16 :goto_6e

    .line 153
    .end local v3    # "flag":I
    :cond_106
    move v3, v9

    .line 154
    .restart local v3    # "flag":I
    goto/16 :goto_6e

    .line 167
    .end local v4    # "frp_flag":I
    .end local v9    # "rl_flag":I
    :pswitch_109
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "UNLOCK"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 168
    goto/16 :goto_8e

    .line 171
    :pswitch_11e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "LOCK"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 172
    goto/16 :goto_8e

    .line 175
    :pswitch_133
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "TRIGGERED"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 176
    goto/16 :goto_8e

    .line 179
    :pswitch_148
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "LOCK_1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 180
    goto/16 :goto_8e

    .line 183
    :pswitch_15d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "LOCK_2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 184
    goto/16 :goto_8e

    .line 187
    :pswitch_172
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "LOCK_3"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 188
    goto/16 :goto_8e

    .line 191
    :pswitch_187
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "LOCK_4"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 192
    goto/16 :goto_8e

    .line 195
    :pswitch_19c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "LOCK_5"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 196
    goto/16 :goto_8e

    .line 204
    .end local v0    # "appliedSolution":I
    .end local v3    # "flag":I
    :cond_1b1
    const/4 v11, 0x1

    aget-object v11, v10, v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {p1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_216

    .line 206
    const/4 v11, 0x2

    aget-object v11, v5, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 207
    .local v1, "data":[B
    iget-object v11, p0, rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v11, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->sessionAccept([B)[B

    move-result-object v6

    .line 209
    .local v6, "response":[B
    if-eqz v6, :cond_1f1

    .line 210
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_8e

    .line 212
    :cond_1f1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "NG("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getErrorCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_8e

    .line 215
    .end local v1    # "data":[B
    .end local v6    # "response":[B
    :cond_216
    const/4 v11, 0x2

    aget-object v11, v10, v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {p1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_274

    .line 217
    const/4 v11, 0x2

    aget-object v11, v5, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 218
    .restart local v1    # "data":[B
    iget-object v11, p0, rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v11, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->sessionComplete([B)I

    move-result v8

    .line 220
    .local v8, "ret":I
    iget-object v11, p0, rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    if-nez v8, :cond_255

    .line 221
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "OK"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_8e

    .line 223
    :cond_255
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "NG("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_8e

    .line 226
    .end local v1    # "data":[B
    .end local v8    # "ret":I
    :cond_274
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "NG (INVALID_PARAM)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_286
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_286} :catch_289

    move-result-object v7

    goto/16 :goto_8e

    .line 228
    :catch_289
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "NG (INVALID_PARAM)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_8e

    .line 98
    nop

    :pswitch_data_2a0
    .packed-switch 0x4
        :pswitch_90
        :pswitch_99
        :pswitch_cf
    .end packed-switch

    .line 164
    :pswitch_data_2aa
    .packed-switch 0x0
        :pswitch_109
        :pswitch_11e
        :pswitch_133
        :pswitch_148
        :pswitch_15d
        :pswitch_172
        :pswitch_187
        :pswitch_19c
    .end packed-switch
.end method
