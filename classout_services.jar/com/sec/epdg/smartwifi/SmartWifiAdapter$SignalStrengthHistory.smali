.class final Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SignalStrengthHistory"
.end annotation


# static fields
.field private static final INVALID_SIGNAL:I = -0x8c

.field private static final MAX_READINGS:I = 0x14


# instance fields
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
            "Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthReading;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V
    .registers 4

    .prologue
    .line 764
    iput-object p1, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    const/4 v0, 0x0

    iput v0, p0, mIndex:I

    .line 768
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, mPingThread:Ljava/util/concurrent/Future;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p2, "x1"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter$1;

    .prologue
    .line 764
    invoke-direct {p0, p1}, <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    return-void
.end method

.method private declared-synchronized getLastKnownReading()Landroid/telephony/SignalStrength;
    .registers 3

    .prologue
    .line 927
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    iget-object v1, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthReading;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthReading;->getSignalStrength()Landroid/telephony/SignalStrength;
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

.method private declared-synchronized removeOldestReadingIfFull()V
    .registers 4

    .prologue
    .line 784
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 785
    .local v0, "size":I
    const/16 v1, 0x14

    if-lt v0, v1, :cond_18

    .line 787
    iget-object v1, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 788
    const-string v1, "[SMARTWIFI]"

    const-string v2, "Radio oldest entry removed"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 790
    :cond_18
    monitor-exit p0

    return-void

    .line 784
    .end local v0    # "size":I
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized runPingIfNeeded()V
    .registers 4

    .prologue
    .line 775
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mPingThread:Ljava/util/concurrent/Future;

    if-nez v0, :cond_1a

    .line 777
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

    .line 781
    :goto_18
    monitor-exit p0

    return-void

    .line 779
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

    .line 775
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addReading(Landroid/telephony/SignalStrength;)V
    .registers 11
    .param p1, "sigstr"    # Landroid/telephony/SignalStrength;

    .prologue
    const v8, 0x7fffffff

    .line 808
    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, getLastKnownLteRSRP()I

    move-result v3

    .line 809
    .local v3, "lastLteRSRP":I
    invoke-virtual {p0}, getLastKnownCdmaDb()I

    move-result v2

    .line 810
    .local v2, "lastCdmaDb":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v1

    .line 811
    .local v1, "currentLteRSRP":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v4

    div-int/lit8 v0, v4, 0xa

    .line 813
    .local v0, "currentCdmaDb":I
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lastLteRSRP is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "currentLteRSRP is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lastCdmaDb is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "currentCdmaDb is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-direct {p0}, removeOldestReadingIfFull()V

    .line 817
    iget-object v4, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    new-instance v5, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthReading;

    iget-object v6, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v7, 0x0

    invoke-direct {v5, v6, p1, v7}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthReading;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/telephony/SignalStrength;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    const-string v4, "[SMARTWIFI]"

    const-string v5, "Radio entry added"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v4, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteProfilingStarted:Z
    invoke-static {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v4

    if-eqz v4, :cond_112

    .line 824
    if-ne v3, v8, :cond_81

    .line 825
    const/16 v3, -0x8c

    .line 828
    :cond_81
    if-ne v1, v8, :cond_85

    .line 829
    const/16 v1, -0x8c

    .line 832
    :cond_85
    if-nez v3, :cond_8c

    .line 833
    iget-object v4, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postStartLteRunnable(I)V
    invoke-static {v4, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)V

    .line 836
    :cond_8c
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThGood:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1200()I

    move-result v4

    if-lt v1, v4, :cond_cf

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThGood:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1200()I

    move-result v4

    if-ge v3, v4, :cond_cf

    .line 838
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RSRP is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mLteThGood "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThGood:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1200()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " posting mRunnableLteOn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-object v4, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableLteOn:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v5

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postLteRunnableFinal(Ljava/lang/Runnable;)V
    invoke-static {v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V

    .line 842
    :cond_cf
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThLow:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1500()I

    move-result v4

    if-ge v1, v4, :cond_112

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThLow:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1500()I

    move-result v4

    if-lt v3, v4, :cond_112

    .line 844
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RSRP is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mLteThLow "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThLow:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1500()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " posting mRunnableLteOff"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v4, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableLteOff:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1600(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v5

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postLteRunnableFinal(Ljava/lang/Runnable;)V
    invoke-static {v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V

    .line 849
    :cond_112
    iget-object v4, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaProfilingStarted:Z
    invoke-static {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v4

    if-eqz v4, :cond_1b2

    .line 851
    if-ltz v0, :cond_125

    .line 852
    const-string v4, "[SMARTWIFI]"

    const-string v5, "Ril indicated the wrong Ec/Io value"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const/16 v0, -0x8c

    .line 856
    :cond_125
    if-nez v2, :cond_12c

    .line 857
    iget-object v4, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postCdmaRunnable(I)V
    invoke-static {v4, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1800(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)V

    .line 860
    :cond_12c
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1900()I

    move-result v4

    if-le v0, v4, :cond_16f

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1900()I

    move-result v4

    if-gt v2, v4, :cond_16f

    .line 862
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cdma Ec/IO is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCdmaTh "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1900()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " posting mRunnableCdmaOn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v4, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableCdmaOn:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v5

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postCdmaRunnableFinal(Ljava/lang/Runnable;)V
    invoke-static {v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V

    .line 866
    :cond_16f
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1900()I

    move-result v4

    if-gt v0, v4, :cond_1b2

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1900()I

    move-result v4

    if-le v2, v4, :cond_1b2

    .line 868
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cdma Ec/IO is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCdmaTh "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1900()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " posting mRunnableCdmaOff"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v4, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v5, p0, this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableCdmaOff:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2200(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v5

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postCdmaRunnableFinal(Ljava/lang/Runnable;)V
    invoke-static {v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V
    :try_end_1b2
    .catchall {:try_start_4 .. :try_end_1b2} :catchall_1b4

    .line 873
    :cond_1b2
    monitor-exit p0

    return-void

    .line 808
    .end local v0    # "currentCdmaDb":I
    .end local v1    # "currentLteRSRP":I
    .end local v2    # "lastCdmaDb":I
    .end local v3    # "lastLteRSRP":I
    :catchall_1b4
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized clearReadings()V
    .registers 3

    .prologue
    .line 876
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 877
    const-string v0, "[SMARTWIFI]"

    const-string v1, "cdma history cleared"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 880
    :cond_15
    iget-object v0, p0, mPingThread:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1c

    .line 882
    const/4 v0, 0x0

    iput-object v0, p0, mPingThread:Ljava/util/concurrent/Future;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 884
    :cond_1c
    monitor-exit p0

    return-void

    .line 876
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastKnownCdmaDb()I
    .registers 2

    .prologue
    .line 913
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_17

    move-result v0

    if-eqz v0, :cond_c

    .line 914
    const/4 v0, 0x0

    .line 916
    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    :try_start_c
    invoke-direct {p0}, getLastKnownReading()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v0

    div-int/lit8 v0, v0, 0xa
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    goto :goto_a

    .line 913
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastKnownLteRSRP()I
    .registers 2

    .prologue
    .line 920
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    move-result v0

    if-eqz v0, :cond_c

    .line 921
    const/4 v0, 0x0

    .line 923
    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    :try_start_c
    invoke-direct {p0}, getLastKnownReading()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLteRsrp()I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_15

    move-result v0

    goto :goto_a

    .line 920
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastKnownReadingLevel()I
    .registers 2

    .prologue
    .line 906
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    move-result v0

    if-eqz v0, :cond_c

    .line 907
    const/4 v0, 0x0

    .line 909
    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    :try_start_c
    invoke-direct {p0}, getLastKnownReading()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_15

    move-result v0

    goto :goto_a

    .line 906
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPingResult()Ljava/lang/Boolean;
    .registers 7

    .prologue
    .line 793
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, runPingIfNeeded()V

    .line 794
    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_3a

    .line 796
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

    .line 802
    :goto_14
    :try_start_14
    const-string v3, "[SMARTWIFI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA Ping thread returned : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const/4 v3, 0x0

    iput-object v3, p0, mPingThread:Ljava/util/concurrent/Future;
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_3a

    .line 804
    monitor-exit p0

    return-object v2

    .line 797
    :catch_31
    move-exception v1

    .line 798
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_32
    const-string v3, "[SMARTWIFI]"

    const-string v4, "InterruptedException CDMA getPingResult"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3a

    goto :goto_14

    .line 793
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "ret":Ljava/lang/Boolean;
    :catchall_3a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 799
    .restart local v2    # "ret":Ljava/lang/Boolean;
    :catch_3d
    move-exception v1

    .line 800
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3e
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3a

    goto :goto_14
.end method

.method public declared-synchronized isCdmaSignalGoodEnough()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 887
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 889
    const-string v2, "[SMARTWIFI]"

    const-string/jumbo v3, "not enough cdma history"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_40

    .line 901
    :goto_12
    monitor-exit p0

    return v1

    .line 894
    :cond_14
    :try_start_14
    invoke-direct {p0}, getLastKnownReading()Landroid/telephony/SignalStrength;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .line 895
    .local v0, "cdmaStrength":I
    if-gez v0, :cond_38

    .line 896
    const-string v1, "[SMARTWIFI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CDMA too weak to handover"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const/4 v1, 0x0

    goto :goto_12

    .line 899
    :cond_38
    const-string v2, "[SMARTWIFI]"

    const-string v3, "cdma signal strong enough"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_40

    goto :goto_12

    .line 887
    .end local v0    # "cdmaStrength":I
    :catchall_40
    move-exception v1

    monitor-exit p0

    throw v1
.end method
