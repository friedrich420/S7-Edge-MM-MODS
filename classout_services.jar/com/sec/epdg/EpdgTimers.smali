.class public Lcom/sec/epdg/EpdgTimers;
.super Ljava/lang/Object;
.source "EpdgTimers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgTimers$EpdgTimer;,
        Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    }
.end annotation


# static fields
.field private static final EPDG_RATE_LIMIT_TICK:I = 0x2710

.field public static final EPDG_TIMER_TEPDG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[EPDGTimers]"

.field private static mEdpgTimers:Lcom/sec/epdg/EpdgTimers;

.field private static mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;


# instance fields
.field private mTimerValue:[I

.field private final mePdgHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, mEdpgTimers:Lcom/sec/epdg/EpdgTimers;

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    sput-object v0, mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "hdlr"    # Landroid/os/Handler;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, mTimerValue:[I

    .line 34
    iput-object p1, p0, mePdgHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/EpdgTimers;Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/EpdgTimers;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .prologue
    .line 10
    invoke-direct {p0, p1}, onTimerFinished(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    return-void
.end method

.method public static getInstance(Landroid/os/Handler;IIIIIIII)Lcom/sec/epdg/EpdgTimers;
    .registers 18
    .param p0, "hdlr"    # Landroid/os/Handler;
    .param p1, "tepdg"    # I
    .param p2, "tLte"    # I
    .param p3, "t1x"    # I
    .param p4, "hoDelayWifi"    # I
    .param p5, "hoDelay"    # I
    .param p6, "t1xscan"    # I
    .param p7, "wifiRssiDelay"    # I
    .param p8, "tWifiIpConfig"    # I

    .prologue
    .line 38
    sget-object v0, mEdpgTimers:Lcom/sec/epdg/EpdgTimers;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/sec/epdg/EpdgTimers;

    invoke-direct {v0, p0}, <init>(Landroid/os/Handler;)V

    sput-object v0, mEdpgTimers:Lcom/sec/epdg/EpdgTimers;

    .line 41
    :cond_b
    sget-object v0, mEdpgTimers:Lcom/sec/epdg/EpdgTimers;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, setTimerValue(IIIIIIII)V

    .line 43
    sget-object v0, mEdpgTimers:Lcom/sec/epdg/EpdgTimers;

    return-object v0
.end method

.method private onTimerFinished(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V
    .registers 4
    .param p1, "tType"    # Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .prologue
    .line 93
    iget-object v1, p0, mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 94
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerCommand()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 95
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 96
    return-void
.end method

.method private setTimerValue(IIIIIIII)V
    .registers 11
    .param p1, "tepdg"    # I
    .param p2, "tLte"    # I
    .param p3, "t1x"    # I
    .param p4, "hoDelayWifi"    # I
    .param p5, "hoDelay"    # I
    .param p6, "t1xscan"    # I
    .param p7, "wifiRssiDelay"    # I
    .param p8, "tWifiIpConfig"    # I

    .prologue
    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    const/4 v1, 0x4

    aput p5, v0, v1

    const/4 v1, 0x5

    aput p6, v0, v1

    const/4 v1, 0x6

    aput p7, v0, v1

    const/4 v1, 0x7

    aput p8, v0, v1

    iput-object v0, p0, mTimerValue:[I

    .line 53
    return-void
.end method


# virtual methods
.method public isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    .registers 6
    .param p1, "tType"    # Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 57
    .local v0, "index":I
    sget-object v1, mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3c

    sget-object v1, mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->getTimerType()Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v2

    if-ne v1, v2, :cond_3c

    .line 59
    const-string v1, "[EPDGTimers]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timer is running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x1

    .line 62
    :goto_3b
    return v1

    :cond_3c
    const/4 v1, 0x0

    goto :goto_3b
.end method

.method public setTimerValue(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;I)V
    .registers 5
    .param p1, "tType"    # Lcom/sec/epdg/EpdgTimers$EpdgTimerType;
    .param p2, "epdgTimerValue"    # I

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 48
    .local v0, "index":I
    iget-object v1, p0, mTimerValue:[I

    aput p2, v1, v0

    .line 49
    return-void
.end method

.method public startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    .registers 13
    .param p1, "tType"    # Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 67
    .local v0, "index":I
    const/4 v8, 0x0

    .line 68
    .local v8, "result":Z
    sget-object v1, mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_19

    sget-object v1, mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->getTimerType()Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    if-ne v1, v2, :cond_75

    .line 70
    :cond_19
    iget-object v1, p0, mTimerValue:[I

    aget v1, v1, v0

    if-nez v1, :cond_3d

    .line 71
    const-string v1, "[EPDGTimers]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timer value is 0. NOT started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .line 79
    .end local v8    # "result":Z
    .local v9, "result":I
    :goto_3c
    return v9

    .line 74
    .end local v9    # "result":I
    .restart local v8    # "result":Z
    :cond_3d
    sget-object v10, mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    new-instance v1, Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    iget-object v2, p0, mTimerValue:[I

    aget v2, v2, v0

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v4, v2

    const-wide/16 v6, 0x2710

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/epdg/EpdgTimers$EpdgTimer;-><init>(Lcom/sec/epdg/EpdgTimers;Lcom/sec/epdg/EpdgTimers$EpdgTimerType;JJ)V

    aput-object v1, v10, v0

    .line 75
    sget-object v1, mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->start()Landroid/os/CountDownTimer;

    .line 76
    const/4 v8, 0x1

    .line 77
    const-string v1, "[EPDGTimers]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timer started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    move v9, v8

    .line 79
    .restart local v9    # "result":I
    goto :goto_3c
.end method

.method public stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V
    .registers 6
    .param p1, "tType"    # Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 84
    .local v0, "index":I
    sget-object v1, mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_46

    sget-object v1, mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->getTimerType()Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->getTimerId()I

    move-result v2

    if-ne v1, v2, :cond_46

    .line 86
    sget-object v1, mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->cancel()V

    .line 87
    sget-object v1, mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 88
    const-string v1, "[EPDGTimers]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timer stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 23
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    .local v1, "status":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_6
    sget-object v2, mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    array-length v2, v2

    if-ge v0, v2, :cond_48

    .line 25
    sget-object v2, mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v2, v2, v0

    if-eqz v2, :cond_45

    .line 26
    sget-object v2, mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->getTimerType()Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->NOTDEFINED:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    if-eq v2, v3, :cond_45

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nEpdg TimerType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, mTimers:[Lcom/sec/epdg/EpdgTimers$EpdgTimer;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgTimers$EpdgTimer;->getTimerType()Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 30
    :cond_48
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
