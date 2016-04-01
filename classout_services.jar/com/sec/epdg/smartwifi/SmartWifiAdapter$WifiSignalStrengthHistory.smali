.class final Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiSignalStrengthHistory"
.end annotation


# static fields
.field private static final MAX_READINGS:I = 0x14


# instance fields
.field private mDefaultWifiBadDbValue:I

.field private mDefaultWifiGoodDbValue:I

.field private mDefaultWifiLevel:I

.field private mIndex:I

.field private mPingThread:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSignalStrengthHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthReading;",
            ">;"
        }
    .end annotation
.end field

.field private mWeakWifiLevel:I

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 950
    iput-object p1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 953
    iput v2, p0, mIndex:I

    .line 954
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    .line 957
    const/4 v0, 0x0

    iput-object v0, p0, mPingThread:Ljava/util/concurrent/Future;

    .line 958
    iput v2, p0, mWeakWifiLevel:I

    .line 959
    iput v2, p0, mDefaultWifiLevel:I

    .line 960
    iput v2, p0, mDefaultWifiGoodDbValue:I

    .line 961
    iput v2, p0, mDefaultWifiBadDbValue:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p2, "x1"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter$1;

    .prologue
    .line 950
    invoke-direct {p0, p1}, <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;)I
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    .prologue
    .line 950
    invoke-direct {p0}, getLastKnownReadingLevel()I

    move-result v0

    return v0
.end method

.method private declared-synchronized getLastKnownReading()Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 1169
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    iget-object v1, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthReading;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthReading;->getSignalStrength()Ljava/lang/Integer;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_17

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getLastKnownReadingLevel()I
    .registers 2

    .prologue
    .line 1162
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    move-result v0

    if-eqz v0, :cond_c

    .line 1163
    const/4 v0, 0x0

    .line 1165
    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    :try_start_c
    invoke-direct {p0}, getLastKnownReading()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_15

    move-result v0

    goto :goto_a

    .line 1162
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isWifiSignalDegraded(II)Z
    .registers 8
    .param p1, "lastStrength"    # I
    .param p2, "currentStrength"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1099
    const-string v2, "[SMARTWIFI]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWifiSignalDegraded: lastStrength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentStrength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1103
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2500()I

    move-result v2

    if-ge p2, v2, :cond_3c

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2400()I

    move-result v2

    if-lt p1, v2, :cond_3c

    .line 1120
    :cond_3b
    :goto_3b
    return v0

    .line 1106
    :cond_3c
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHandoverDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3200()I

    move-result v2

    if-gt p2, v2, :cond_57

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHandoverDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3200()I

    move-result v2

    if-le p1, v2, :cond_57

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2500()I

    move-result v2

    if-ge p1, v2, :cond_57

    .line 1109
    const-string v1, "[SMARTWIFI]"

    const-string/jumbo v2, "isWifiSignalDegraded: Wifi rssi further dropped till handover DB value"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_57
    move v0, v1

    .line 1113
    goto :goto_3b

    .line 1116
    :cond_59
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2500()I

    move-result v2

    if-ge p2, v2, :cond_65

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2400()I

    move-result v2

    if-ge p1, v2, :cond_3b

    :cond_65
    move v0, v1

    .line 1120
    goto :goto_3b
.end method

.method private isWifiSignalUpgraded(II)Z
    .registers 6
    .param p1, "lastStrength"    # I
    .param p2, "currentStrength"    # I

    .prologue
    .line 1075
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWifiSignalUpgraded: lastStrength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentStrength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2400()I

    move-result v0

    if-lt p2, v0, :cond_35

    if-eqz p2, :cond_35

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2500()I

    move-result v0

    if-lt p1, v0, :cond_33

    if-nez p1, :cond_35

    :cond_33
    const/4 v0, 0x1

    :goto_34
    return v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method private isWifiSignalUpgradedToL2WHandoverThreshold(I)Z
    .registers 5
    .param p1, "currentStrength"    # I

    .prologue
    .line 1083
    const/4 v0, 0x0

    .line 1084
    .local v0, "result":Z
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v1, :cond_26

    .line 1085
    iget-object v1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isL2WHandoverProfilingRunning()Z

    move-result v1

    if-eqz v1, :cond_1e

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2400()I

    move-result v1

    if-lt p1, v1, :cond_1e

    if-eqz p1, :cond_1e

    .line 1087
    const-string v1, "[SMARTWIFI]"

    const-string v2, "L2WHandoverProfiling is running and wifi is now better then wifi A"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const/4 v0, 0x1

    .line 1095
    :goto_1d
    return v0

    .line 1090
    :cond_1e
    const-string v1, "[SMARTWIFI]"

    const-string v2, "No need to send L2WHandoverProfiling runnable"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 1093
    :cond_26
    const-string v1, "[SMARTWIFI]"

    const-string v2, "Wifi threshold based handovers are disabled"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private declared-synchronized runPingIfNeeded()V
    .registers 4

    .prologue
    .line 993
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mPingThread:Ljava/util/concurrent/Future;

    if-nez v0, :cond_1a

    .line 995
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;

    iget-object v1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v2, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mAddrToReach:Ljava/net/InetAddress;
    invoke-static {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$900(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/net/InetAddress;)V

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;->run()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, mPingThread:Ljava/util/concurrent/Future;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_33

    .line 999
    :goto_18
    monitor-exit p0

    return-void

    .line 997
    :cond_1a
    :try_start_1a
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ping already running : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_33

    goto :goto_18

    .line 993
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addInitialReading(Ljava/lang/Integer;)V
    .registers 6
    .param p1, "sigstr"    # Ljava/lang/Integer;

    .prologue
    .line 1017
    monitor-enter p0

    :try_start_1
    const-string v0, "[SMARTWIFI]"

    const-string v1, "Initial wifi entry added"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthReading;

    iget-object v2, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthReading;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Integer;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 1020
    monitor-exit p0

    return-void

    .line 1017
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addReading(Ljava/lang/Integer;)V
    .registers 9
    .param p1, "sigstr"    # Ljava/lang/Integer;

    .prologue
    .line 1023
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, getLastKnownReadingLevel()I

    move-result v1

    .line 1024
    .local v1, "lastStrength":I
    iget-object v3, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1025
    .local v2, "size":I
    const/16 v3, 0x14

    if-lt v2, v3, :cond_1d

    .line 1027
    iget-object v3, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1028
    const-string v3, "[SMARTWIFI]"

    const-string/jumbo v4, "wifi oldest entry removed"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :cond_1d
    const-string v3, "[SMARTWIFI]"

    const-string/jumbo v4, "wifi entry added"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v3, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthReading;

    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v6, 0x0

    invoke-direct {v4, v5, p1, v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthReading;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Integer;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1034
    .local v0, "currentStrength":I
    invoke-direct {p0, v1, v0}, isWifiSignalUpgraded(II)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 1035
    iget-object v3, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v4, 0x0

    # setter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mMetHoThreshold:Z
    invoke-static {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2302(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Z)Z

    .line 1037
    const-string v3, "[SMARTWIFI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wifi signal is upgraded : (lastStrength"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : mWeakWifiLevel"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mWeakWifiLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : mWifiGoodDbValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2400()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : mWifiBadDbValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2500()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : currentStrength)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v3, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v4, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOn:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2600(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOff:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v5

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startProfilingTask(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    invoke-static {v3, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2800(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_9d
    .catchall {:try_start_1 .. :try_end_9d} :catchall_b1

    .line 1072
    :cond_9d
    :goto_9d
    monitor-exit p0

    return-void

    .line 1045
    :cond_9f
    :try_start_9f
    invoke-direct {p0, v0}, isWifiSignalUpgradedToL2WHandoverThreshold(I)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 1046
    iget-object v3, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v4, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableL2WHandoverOn:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2900(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v4

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postRunnableToEpdg(Ljava/lang/Runnable;)V
    invoke-static {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V
    :try_end_b0
    .catchall {:try_start_9f .. :try_end_b0} :catchall_b1

    goto :goto_9d

    .line 1023
    .end local v0    # "currentStrength":I
    .end local v1    # "lastStrength":I
    .end local v2    # "size":I
    :catchall_b1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1048
    .restart local v0    # "currentStrength":I
    .restart local v1    # "lastStrength":I
    .restart local v2    # "size":I
    :cond_b4
    :try_start_b4
    const-string v3, "[SMARTWIFI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No need to run ping : (lastStrength"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : mWeakWifiLevel"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mWeakWifiLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : mWifiGoodDbValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2400()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : mWifiBadDbValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2500()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : currentStrength)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-direct {p0, v1, v0}, isWifiSignalDegraded(II)Z

    move-result v3

    if-eqz v3, :cond_14f

    .line 1055
    const-string v3, "[SMARTWIFI]"

    const-string v4, "Wifi entered into weak zone again"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_11f

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13c

    :cond_11f
    iget-object v3, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isVoLTEHandoverReady()Z
    invoke-static {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v3

    if-nez v3, :cond_13c

    .line 1058
    const-string v3, "[SMARTWIFI]"

    const-string v4, "But ignore W2L HO in non-LTE NW"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v3, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setHandoverThresholdMet(Z)V

    .line 1060
    iget-object v3, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v4, 0x1

    # setter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mMetHoThreshold:Z
    invoke-static {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2302(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Z)Z

    goto/16 :goto_9d

    .line 1062
    :cond_13c
    iget-object v3, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v4, 0x0

    # setter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mMetHoThreshold:Z
    invoke-static {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2302(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Z)Z

    .line 1063
    iget-object v3, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v4, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOff:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v4

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postRunnableToEpdg(Ljava/lang/Runnable;)V
    invoke-static {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V

    goto/16 :goto_9d

    .line 1066
    :cond_14f
    iget-object v3, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getHandoverThresholdMet()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 1067
    const-string v3, "[SMARTWIFI]"

    const-string v4, "Need to clear handover threshold"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v3, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setHandoverThresholdMet(Z)V
    :try_end_164
    .catchall {:try_start_b4 .. :try_end_164} :catchall_b1

    goto/16 :goto_9d
.end method

.method public declared-synchronized clearReadings()V
    .registers 3

    .prologue
    .line 1126
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1127
    const-string v0, "[SMARTWIFI]"

    const-string/jumbo v1, "wifi history cleared"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    iget-object v0, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1130
    :cond_16
    iget-object v0, p0, mPingThread:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1d

    .line 1132
    const/4 v0, 0x0

    iput-object v0, p0, mPingThread:Ljava/util/concurrent/Future;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 1134
    :cond_1d
    monitor-exit p0

    return-void

    .line 1126
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultWeakWifiLevel()I
    .registers 2

    .prologue
    .line 972
    monitor-enter p0

    :try_start_1
    iget v0, p0, mDefaultWifiLevel:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultWifiBadDbValue()I
    .registers 2

    .prologue
    .line 989
    monitor-enter p0

    :try_start_1
    iget v0, p0, mDefaultWifiBadDbValue:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultWifiGoodDbValue()I
    .registers 2

    .prologue
    .line 985
    monitor-enter p0

    :try_start_1
    iget v0, p0, mDefaultWifiGoodDbValue:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPingResult()Ljava/lang/Boolean;
    .registers 7

    .prologue
    .line 1002
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, runPingIfNeeded()V

    .line 1003
    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_3a

    .line 1005
    .local v2, "ret":Ljava/lang/Boolean;
    :try_start_a
    iget-object v3, p0, mPingThread:Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_14} :catch_31
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_14} :catch_3d
    .catchall {:try_start_a .. :try_end_14} :catchall_3a

    .line 1011
    :goto_14
    :try_start_14
    const-string v3, "[SMARTWIFI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wifi Ping thread returned : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const/4 v3, 0x0

    iput-object v3, p0, mPingThread:Ljava/util/concurrent/Future;
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_3a

    .line 1013
    monitor-exit p0

    return-object v2

    .line 1006
    :catch_31
    move-exception v1

    .line 1007
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_32
    const-string v3, "[SMARTWIFI]"

    const-string v4, "InterruptedException Wifi getPingResult"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3a

    goto :goto_14

    .line 1002
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "ret":Ljava/lang/Boolean;
    :catchall_3a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1008
    .restart local v2    # "ret":Ljava/lang/Boolean;
    :catch_3d
    move-exception v1

    .line 1009
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3e
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3a

    goto :goto_14
.end method

.method public declared-synchronized getWeakWifiLevel()I
    .registers 2

    .prologue
    .line 964
    monitor-enter p0

    :try_start_1
    iget v0, p0, mWeakWifiLevel:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWifiSignalGoodEnough()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 1137
    monitor-enter p0

    :try_start_2
    iget-object v4, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1139
    const-string v3, "[SMARTWIFI]"

    const-string/jumbo v4, "not enough wifi history"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_4c

    .line 1140
    const/4 v3, 0x1

    .line 1158
    :goto_13
    monitor-exit p0

    return v3

    .line 1142
    :cond_15
    :try_start_15
    invoke-direct {p0}, getLastKnownReading()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1143
    .local v2, "wifiSignal":I
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2500()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 1144
    .local v0, "badWifiValue":I
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2400()I

    move-result v1

    .line 1146
    .local v1, "goodWifiValue":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1147
    if-gt v2, v0, :cond_6a

    .line 1148
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wifi too weak to handover"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_15 .. :try_end_4b} :catchall_4c

    goto :goto_13

    .line 1137
    .end local v0    # "badWifiValue":I
    .end local v1    # "goodWifiValue":I
    .end local v2    # "wifiSignal":I
    :catchall_4c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1152
    .restart local v0    # "badWifiValue":I
    .restart local v1    # "goodWifiValue":I
    .restart local v2    # "wifiSignal":I
    :cond_4f
    if-ge v2, v1, :cond_6a

    .line 1153
    :try_start_51
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wifi too weak to handover"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1157
    :cond_6a
    const-string v3, "[SMARTWIFI]"

    const-string/jumbo v4, "wifi strong enough"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p0}, getPingResult()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_79
    .catchall {:try_start_51 .. :try_end_79} :catchall_4c

    move-result v3

    goto :goto_13
.end method

.method public declared-synchronized setDefaultWeakWifiLevel(I)V
    .registers 3
    .param p1, "wifiLevel"    # I

    .prologue
    .line 976
    monitor-enter p0

    :try_start_1
    iput p1, p0, mDefaultWifiLevel:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 977
    monitor-exit p0

    return-void

    .line 976
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultWifiDbValue(II)V
    .registers 4
    .param p1, "goodValue"    # I
    .param p2, "badValue"    # I

    .prologue
    .line 980
    monitor-enter p0

    :try_start_1
    iput p1, p0, mDefaultWifiGoodDbValue:I

    .line 981
    iput p2, p0, mDefaultWifiBadDbValue:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 982
    monitor-exit p0

    return-void

    .line 980
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWeakWifiLevel(I)V
    .registers 3
    .param p1, "wifiLevel"    # I

    .prologue
    .line 968
    monitor-enter p0

    :try_start_1
    iput p1, p0, mWeakWifiLevel:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 969
    monitor-exit p0

    return-void

    .line 968
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
