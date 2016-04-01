.class public Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
.super Ljava/lang/Thread;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;
    }
.end annotation


# static fields
.field private static final PASSIVE_LOC_COLL_FREQ:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "LppFusion"

.field private static final locReqType:J

.field static final vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;


# instance fields
.field LogFromAPDR:Ljava/lang/String;

.field LogFromLocM:Ljava/lang/String;

.field private apdrStepNumber:J

.field flagGPSAlwaysOn:Z

.field private locRequestInterval:J

.field private final lppQ:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;",
            ">;"
        }
    .end annotation
.end field

.field private final mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

.field private final mLMLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

.field private final mLPPAloLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

.field private final mListGPSPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mListLPPPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

.field private final mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

.field private final mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

.field private final mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

.field private mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

.field private sendBrFlag:Z

.field strAlgo:Ljava/lang/String;

.field strLM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    invoke-static {}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->values()[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    move-result-object v0

    sput-object v0, vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V
    .registers 7
    .param p1, "config"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 27
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;-><init>()V

    iput-object v0, p0, mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    .line 28
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;-><init>()V

    iput-object v0, p0, mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .line 29
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;-><init>()V

    iput-object v0, p0, mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mListLPPPos:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mListGPSPos:Ljava/util/ArrayList;

    .line 34
    iput-object v2, p0, mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    .line 37
    iput-boolean v4, p0, flagGPSAlwaysOn:Z

    .line 40
    const-string v0, "\n<<LPosition>>\n\n"

    iput-object v0, p0, strAlgo:Ljava/lang/String;

    .line 41
    const-string v0, "\n<<LoManager>>\n\n"

    iput-object v0, p0, strLM:Ljava/lang/String;

    .line 44
    const-string v0, "0   0   0   0   0   0"

    iput-object v0, p0, LogFromAPDR:Ljava/lang/String;

    .line 45
    const-string v0, "0   0   0   0"

    iput-object v0, p0, LogFromLocM:Ljava/lang/String;

    .line 50
    const-wide/16 v0, 0x64

    iput-wide v0, p0, apdrStepNumber:J

    .line 51
    const-wide/16 v0, 0x2d

    iput-wide v0, p0, locRequestInterval:J

    .line 71
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, lppQ:Ljava/util/concurrent/BlockingQueue;

    .line 637
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;)V

    iput-object v0, p0, mLMLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

    .line 752
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;)V

    iput-object v0, p0, mLPPAloLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

    .line 865
    iput-boolean v4, p0, sendBrFlag:Z

    .line 140
    const-string v0, "LppFusion"

    const-string v1, "LppFusion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->init(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V

    .line 146
    iget-object v0, p0, mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    iget-object v1, p0, mLPPAloLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->init(Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;)V

    .line 150
    iget v0, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    int-to-long v0, v0

    iput-wide v0, p0, apdrStepNumber:J

    .line 151
    iget v0, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    int-to-long v0, v0

    iput-wide v0, p0, locRequestInterval:J

    .line 153
    iget-wide v0, p0, locRequestInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8d

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, flagGPSAlwaysOn:Z

    .line 159
    :goto_85
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    invoke-direct {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V

    iput-object v0, p0, mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    .line 160
    return-void

    .line 156
    :cond_8d
    iput-boolean v4, p0, flagGPSAlwaysOn:Z

    goto :goto_85
.end method

.method private LocationInfoString(Landroid/location/Location;)Ljava/lang/String;
    .registers 6
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 847
    const-string v0, ""

    .line 848
    .local v0, "str":Ljava/lang/String;
    if-eqz p1, :cond_7d

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    :cond_7d
    return-object v0
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 21
    iget-object v0, p0, mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 21
    iget-object v0, p0, mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 21
    iget-object v0, p0, mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 21
    iget-object v0, p0, mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 21
    iget-object v0, p0, lppQ:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    .param p1, "x1"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    .prologue
    .line 21
    invoke-direct {p0, p1}, addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 21
    iget-object v0, p0, mLMLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    .param p1, "x1"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Landroid/location/Location;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 21
    invoke-direct {p0, p1}, LocationInfoString(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, updateLppFusionStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 21
    iget-object v0, p0, mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 21
    iget-object v0, p0, mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 21
    iget-object v0, p0, mListLPPPos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 21
    iget-object v0, p0, mListGPSPos:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V
    .registers 3
    .param p1, "msgid"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    .prologue
    .line 590
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    .line 591
    return-void
.end method

.method private addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    .registers 7
    .param p1, "msgid"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const-string v1, "LppFusion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addQ:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v1, p0, lppQ:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;

    invoke-direct {v2, p1, p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 602
    .local v0, "res":Z
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v1, :cond_51

    if-eqz p2, :cond_51

    .line 603
    const-string v1, "LppFusion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addQ, array size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_51
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_SLEEP:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v1, :cond_60

    invoke-virtual {p0}, getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_60

    .line 612
    invoke-virtual {p0}, interrupt()V

    .line 614
    :cond_60
    return-void
.end method

.method private threadSleep()V
    .registers 5

    .prologue
    .line 222
    :try_start_0
    const-string v1, "LppFusion"

    const-string v2, "Sleep!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, sleep(J)V

    .line 231
    const-string v1, "LppFusion"

    const-string v2, "Out of Sleep!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_16} :catch_17

    .line 236
    :goto_16
    return-void

    .line 233
    :catch_17
    move-exception v0

    .line 234
    .local v0, "ie":Ljava/lang/InterruptedException;
    const-string v1, "LppFusion"

    const-string v2, "Out of Sleep! 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private updateLppFusionStatus(Ljava/lang/String;)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 823
    iget-object v2, p0, mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    if-eqz v2, :cond_3f

    iget-boolean v2, p0, sendBrFlag:Z

    if-eqz v2, :cond_3f

    .line 824
    const-string v2, "LppFusion"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v2, p0, mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 826
    .local v0, "context_":Landroid/content/Context;
    if-eqz v0, :cond_37

    .line 827
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.contextaware.aggregator.lpp.LppFusion"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "LppFusion"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 828
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2f

    .line 829
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 830
    const-string v2, "LppFusion"

    const-string v3, "Intent sent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    .end local v0    # "context_":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2e
    return-void

    .line 833
    .restart local v0    # "context_":Landroid/content/Context;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2f
    const-string v2, "LppFusion"

    const-string v3, "Intent creation failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 838
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_37
    const-string v2, "LppFusion"

    const-string v3, "Context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 842
    .end local v0    # "context_":Landroid/content/Context;
    :cond_3f
    const-string v2, "LppFusion"

    const-string v3, "Config is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method private waitOnQ()V
    .registers 11

    .prologue
    .line 488
    const/4 v4, 0x1

    .line 489
    .local v4, "polling":Z
    const/4 v5, 0x0

    .line 491
    .local v5, "qdata":Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;
    :goto_2
    if-eqz v4, :cond_62

    .line 494
    :try_start_4
    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_5} :catch_57

    .line 495
    :try_start_5
    iget-object v6, p0, lppQ:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;

    move-object v5, v0

    .line 496
    const-string v6, "LppFusion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received msg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->msgid:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in Q:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, lppQ:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    sget-object v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;->$SwitchMap$com$samsung$android$contextaware$aggregator$lpp$LppFusion$QMsg:[I

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->msgid:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_168

    .line 573
    const-string v6, "LppFusion"

    const-string/jumbo v7, "unspecified msg id"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :goto_52
    :pswitch_52
    monitor-exit p0

    goto :goto_2

    :catchall_54
    move-exception v6

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_54

    :try_start_56
    throw v6
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_57} :catch_57

    .line 577
    :catch_57
    move-exception v2

    .line 578
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v6, "LppFusion"

    const-string v7, "IE in q"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 585
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_62
    const-string v6, "LppFusion"

    const-string/jumbo v7, "polling stopped"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void

    .line 501
    :pswitch_6b
    :try_start_6b
    invoke-direct {p0}, threadSleep()V

    goto :goto_52

    .line 515
    :pswitch_6f
    const/4 v4, 0x0

    .line 516
    iget-object v6, p0, mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(I)V

    goto :goto_52

    .line 520
    :pswitch_7c
    const-string v6, "LppFusion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "size of APDR data "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v3, 0x0

    .local v3, "inx":I
    :goto_9e
    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_104

    .line 524
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Location request MovingStatus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v6, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, updateLppFusionStatus(Ljava/lang/String;)V

    .line 531
    const-wide/16 v6, 0x0

    iput-wide v6, p0, apdrStepNumber:J

    .line 533
    add-int/lit8 v6, v3, 0x1

    int-to-long v6, v6

    iget-wide v8, p0, apdrStepNumber:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_e6

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v6, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_10f

    .line 536
    :cond_e6
    const-string v6, "LppFusion"

    const-string v7, "Location request"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v7, p0, mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_REQUEST:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v8

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v6, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v7, v8, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(II)V

    .line 544
    :cond_104
    iget-object v6, p0, mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverAPDRData(Ljava/util/ArrayList;)V

    goto/16 :goto_52

    .line 523
    :cond_10f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    .line 548
    .end local v3    # "inx":I
    :pswitch_112
    iget-object v6, p0, mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2200(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_52

    .line 553
    :pswitch_123
    iget-object v6, p0, mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_LIST_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2200(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_52

    .line 558
    :pswitch_134
    iget-object v6, p0, mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_52

    .line 563
    :pswitch_145
    iget-object v6, p0, mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_52

    .line 568
    :pswitch_156
    iget-object v6, p0, mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_IN_BATCH_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V
    :try_end_165
    .catchall {:try_start_6b .. :try_end_165} :catchall_54

    goto/16 :goto_52

    .line 498
    nop

    :pswitch_data_168
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_52
        :pswitch_6f
        :pswitch_7c
        :pswitch_112
        :pswitch_123
        :pswitch_134
        :pswitch_145
        :pswitch_156
    .end packed-switch
.end method


# virtual methods
.method public Debug_LogString(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 218
    return-void
.end method

.method public getLogHandle()Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    .registers 2

    .prologue
    .line 861
    iget-object v0, p0, mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    return-object v0
.end method

.method public notifyApdrData(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p1, "apdrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    const-string v1, "LppFusion"

    const-string/jumbo v2, "notifyApdrData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 620
    iget-object v2, p0, mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v3, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APDR data from sensor Hub - moving status : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v1, v1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 626
    :cond_33
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-direct {p0, v1, p1}, addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    .line 628
    return-void
.end method

.method public notifyStayArea(I)V
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 631
    iget-object v0, p0, mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    if-eqz v0, :cond_9

    .line 632
    iget-object v0, p0, mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setStayingAreaFlag(I)V

    .line 634
    :cond_9
    return-void
.end method

.method public pauseLPP()V
    .registers 4

    .prologue
    .line 183
    const-string v0, "LppFusion"

    const-string/jumbo v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v1, 0x6

    const-string v2, "LppFusion, pause()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 189
    return-void
.end method

.method public registerListener(Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;)V
    .registers 3
    .param p1, "lnr"    # Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    .prologue
    .line 202
    iput-object p1, p0, mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    .line 204
    iget-object v0, p0, mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->setILppDataProviderListener(Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;)V

    .line 205
    return-void
.end method

.method public resumeLPP()V
    .registers 4

    .prologue
    .line 192
    const-string v0, "LppFusion"

    const-string/jumbo v1, "resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v1, 0x6

    const-string v2, "LppFusion, resume()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 198
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 164
    const-string v0, "LppFusion"

    const-string/jumbo v1, "run"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v0, "LPPThread"

    invoke-virtual {p0, v0}, setName(Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    const-string v1, "LppFusion"

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    iput-object v0, p0, mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    .line 169
    iget-object v0, p0, mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->start()V

    .line 170
    iget-object v0, p0, mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->START:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(I)V

    .line 172
    invoke-direct {p0}, waitOnQ()V

    .line 173
    return-void
.end method

.method public sendStatusDisable()V
    .registers 2

    .prologue
    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, sendBrFlag:Z

    .line 872
    return-void
.end method

.method public sendStatusEnable()V
    .registers 2

    .prologue
    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, sendBrFlag:Z

    .line 869
    return-void
.end method

.method public setLppResolution(I)V
    .registers 4
    .param p1, "res"    # I

    .prologue
    .line 209
    iget-object v0, p0, mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    if-eqz v0, :cond_9

    .line 210
    iget-object v0, p0, mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->setLppResolution(I)V

    .line 213
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set property command from APP : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Debug_LogString(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public stopLpp()V
    .registers 3

    .prologue
    .line 176
    const-string v0, "LppFusion"

    const-string v1, "LPP stop!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LPPA_STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-direct {p0, v0}, addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V

    .line 180
    return-void
.end method
