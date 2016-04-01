.class synthetic Lcom/sec/epdg/EpdgServerSelection$1;
.super Ljava/lang/Object;
.source "EpdgServerSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgServerSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$epdg$EpdgService$DnsRetryReason:[I

.field static final synthetic $SwitchMap$com$sec$epdg$EpdgService$EpdgServerIpResetReason:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 230
    invoke-static {}, Lcom/sec/epdg/EpdgService$DnsRetryReason;->values()[Lcom/sec/epdg/EpdgService$DnsRetryReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$sec$epdg$EpdgService$DnsRetryReason:[I

    :try_start_9
    sget-object v0, $SwitchMap$com$sec$epdg$EpdgService$DnsRetryReason:[I

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_RECONNECT:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_86

    :goto_14
    :try_start_14
    sget-object v0, $SwitchMap$com$sec$epdg$EpdgService$DnsRetryReason:[I

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->TEPDG_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_84

    :goto_1f
    :try_start_1f
    sget-object v0, $SwitchMap$com$sec$epdg$EpdgService$DnsRetryReason:[I

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->MAPCON_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_82

    :goto_2a
    :try_start_2a
    sget-object v0, $SwitchMap$com$sec$epdg$EpdgService$DnsRetryReason:[I

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_IPTYPE_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_80

    :goto_35
    :try_start_35
    sget-object v0, $SwitchMap$com$sec$epdg$EpdgService$DnsRetryReason:[I

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->SCREEN_ON_INTENT:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_7e

    :goto_40
    :try_start_40
    sget-object v0, $SwitchMap$com$sec$epdg$EpdgService$DnsRetryReason:[I

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->DATA_RETRY_8MIN_ONWARD_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_7c

    .line 187
    :goto_4b
    invoke-static {}, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->values()[Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$sec$epdg$EpdgService$EpdgServerIpResetReason:[I

    :try_start_54
    sget-object v0, $SwitchMap$com$sec$epdg$EpdgService$EpdgServerIpResetReason:[I

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_7a

    :goto_5f
    :try_start_5f
    sget-object v0, $SwitchMap$com$sec$epdg$EpdgService$EpdgServerIpResetReason:[I

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_ALL:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_78

    :goto_6a
    :try_start_6a
    sget-object v0, $SwitchMap$com$sec$epdg$EpdgService$EpdgServerIpResetReason:[I

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_76

    :goto_75
    return-void

    :catch_76
    move-exception v0

    goto :goto_75

    :catch_78
    move-exception v0

    goto :goto_6a

    :catch_7a
    move-exception v0

    goto :goto_5f

    .line 230
    :catch_7c
    move-exception v0

    goto :goto_4b

    :catch_7e
    move-exception v0

    goto :goto_40

    :catch_80
    move-exception v0

    goto :goto_35

    :catch_82
    move-exception v0

    goto :goto_2a

    :catch_84
    move-exception v0

    goto :goto_1f

    :catch_86
    move-exception v0

    goto :goto_14
.end method
