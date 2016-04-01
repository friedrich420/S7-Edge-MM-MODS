.class public Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;
.super Landroid/widget/TextView;
.source "TrafficView.java"


# annotations
.annotation runtime Landroid/annotation/SuppressLint;
    value = "HandlerLeak"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;,
        Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;,
        Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000002;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public clock:Landroid/widget/TextView;

.field private downloadDecimalFormat:Ljava/text/DecimalFormat;

.field downloadSpeed:J

.field downloadSuffix:Ljava/lang/String;

.field lastUpdateTime:J

.field private mAttached:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mPref:Landroid/content/SharedPreferences;

.field mRunnable:Ljava/lang/Runnable;

.field mTrafficHandler:Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SuppressLint;
        value = "HandlerLeak"
    .end annotation
.end field

.field networkState:Z

.field networkType:Ljava/lang/String;

.field prefColor:I

.field prefColorMode:I

.field prefDisplay:I

.field prefFontSize:I

.field prefForceUnit:I

.field prefHideInactive:Z

.field prefHideUnit:Z

.field prefNetworkType:Ljava/lang/String;

.field prefPosition:I

.field prefShowDownloadSpeed:Z

.field prefShowUploadSpeed:Z

.field prefSuffix:I

.field prefUpdateInterval:I

.field totalRxBytes:J

.field totalTxBytes:J

.field private uploadDecimalFormat:Ljava/text/DecimalFormat;

.field uploadSpeed:J

.field uploadSuffix:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .locals 7

    :try_start_0
    const-string v2, "com.thanhfhuongf.networkspeedindicator.traffic.TrafficView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->TAG:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mAttached:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->clock:Landroid/widget/TextView;

    move-object v5, v0

    const-string v6, ""

    iput-object v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadSuffix:Ljava/lang/String;

    move-object v5, v0

    const-string v6, ""

    iput-object v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadSuffix:Ljava/lang/String;

    move-object v5, v0

    new-instance v6, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000000;-><init>(Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;)V

    iput-object v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v0

    new-instance v6, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000001;-><init>(Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;)V

    iput-object v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mTrafficHandler:Landroid/os/Handler;

    move-object v5, v0

    new-instance v6, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000002;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView$100000002;-><init>(Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;)V

    iput-object v6, v5, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mRunnable:Ljava/lang/Runnable;

    .line 73
    move-object v5, v0

    invoke-direct {v5}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->loadPreferences()V

    .line 74
    move-object v5, v0

    invoke-direct {v5}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->updateConnectionInfo()V

    .line 75
    move-object v5, v0

    invoke-direct {v5}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->updateViewVisibility()V

    return-void
.end method

.method static synthetic access$1000007(Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->updateConnectionInfo()V

    return-void
.end method

.method static synthetic access$1000008(Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->createText()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$1000011(Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->updateViewVisibility()V

    return-void
.end method

.method static synthetic access$L1000000()Ljava/lang/String;
    .locals 3

    sget-object v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->TAG:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$S1000000(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->TAG:Ljava/lang/String;

    return-void
.end method

.method private createText()Ljava/lang/String;
    .locals 17

    .prologue
    .line 236
    move-object/from16 v0, p0

    move-object v10, v0

    iget v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefForceUnit:I

    packed-switch v10, :pswitch_data_0

    .line 245
    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadSpeed:J

    long-to-float v10, v10

    const/high16 v11, 0x100000

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/4 v11, 0x1

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_6

    .line 246
    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadSpeed:J

    long-to-float v10, v10

    const/high16 v11, 0x49800000    # 1048576.0f

    div-float/2addr v10, v11

    move v3, v10

    .line 247
    const-string v10, "MB"

    move-object v1, v10

    .line 248
    move-object v10, v0

    new-instance v11, Ljava/text/DecimalFormat;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string v13, " ##0.0"

    invoke-direct {v12, v13}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v11, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadDecimalFormat:Ljava/text/DecimalFormat;

    .line 259
    :goto_0
    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadSpeed:J

    long-to-float v10, v10

    const/high16 v11, 0x100000

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/4 v11, 0x1

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_8

    .line 260
    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadSpeed:J

    long-to-float v10, v10

    const/high16 v11, 0x49800000    # 1048576.0f

    div-float/2addr v10, v11

    move v4, v10

    .line 261
    const-string v10, "MB"

    move-object v2, v10

    .line 262
    move-object v10, v0

    new-instance v11, Ljava/text/DecimalFormat;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string v13, " ##0.0"

    invoke-direct {v12, v13}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v11, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadDecimalFormat:Ljava/text/DecimalFormat;

    .line 294
    :goto_1
    move-object v10, v0

    iget-boolean v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefHideInactive:Z

    if-eqz v10, :cond_a

    move v10, v3

    const/4 v11, 0x0

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_a

    .line 297
    const-string v10, ""

    move-object v5, v10

    .line 302
    :goto_2
    move-object v10, v0

    iget-boolean v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefHideInactive:Z

    if-eqz v10, :cond_b

    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadSpeed:J

    const/4 v12, 0x0

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gtz v10, :cond_b

    .line 303
    const-string v10, ""

    move-object v6, v10

    .line 309
    :goto_3
    move-object v10, v0

    iget v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefSuffix:I

    packed-switch v10, :pswitch_data_1

    .line 323
    :goto_4
    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    if-le v10, v11, :cond_1

    .line 324
    move-object v10, v0

    iget-boolean v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefHideUnit:Z

    if-nez v10, :cond_0

    .line 325
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 327
    :cond_0
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadSuffix:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 329
    :cond_1
    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    if-le v10, v11, :cond_3

    .line 330
    move-object v10, v0

    iget-boolean v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefHideUnit:Z

    if-nez v10, :cond_2

    .line 331
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 333
    :cond_2
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadSuffix:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 336
    :cond_3
    move-object v10, v0

    iget-boolean v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefShowUploadSpeed:Z

    if-nez v10, :cond_4

    .line 337
    const-string v10, ""

    move-object v5, v10

    .line 339
    :cond_4
    move-object v10, v0

    iget-boolean v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefShowDownloadSpeed:Z

    if-nez v10, :cond_5

    .line 340
    const-string v10, ""

    move-object v6, v10

    .line 343
    :cond_5
    const-string v10, ""

    move-object v7, v10

    .line 344
    move-object v10, v0

    iget v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefDisplay:I

    const/4 v11, 0x0

    if-ne v10, v11, :cond_c

    .line 345
    const-string v10, "\n"

    move-object v7, v10

    .line 351
    :goto_5
    const-string v10, ""

    move-object v8, v10

    .line 352
    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    if-le v10, v11, :cond_d

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    if-le v10, v11, :cond_d

    .line 353
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 358
    :goto_6
    move-object v10, v8

    move-object v0, v10

    return-object v0

    .line 249
    :cond_6
    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadSpeed:J

    long-to-float v10, v10

    const/high16 v11, 0x44800000    # 1024.0f

    div-float/2addr v10, v11

    const/4 v11, 0x1

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_7

    .line 250
    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadSpeed:J

    long-to-float v10, v10

    const/high16 v11, 0x44800000    # 1024.0f

    div-float/2addr v10, v11

    move v3, v10

    .line 251
    const-string v10, "KB"

    move-object v1, v10

    .line 252
    move-object v10, v0

    new-instance v11, Ljava/text/DecimalFormat;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string v13, " ##0"

    invoke-direct {v12, v13}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v11, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadDecimalFormat:Ljava/text/DecimalFormat;

    goto/16 :goto_0

    .line 254
    :cond_7
    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadSpeed:J

    long-to-float v10, v10

    move v3, v10

    .line 255
    const-string v10, "B"

    move-object v1, v10

    .line 256
    move-object v10, v0

    new-instance v11, Ljava/text/DecimalFormat;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string v13, " ##0"

    invoke-direct {v12, v13}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v11, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadDecimalFormat:Ljava/text/DecimalFormat;

    goto/16 :goto_0

    .line 263
    :cond_8
    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadSpeed:J

    long-to-float v10, v10

    const/high16 v11, 0x44800000    # 1024.0f

    div-float/2addr v10, v11

    const/4 v11, 0x1

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_9

    .line 264
    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadSpeed:J

    long-to-float v10, v10

    const/high16 v11, 0x44800000    # 1024.0f

    div-float/2addr v10, v11

    move v4, v10

    .line 265
    const-string v10, "KB"

    move-object v2, v10

    .line 266
    move-object v10, v0

    new-instance v11, Ljava/text/DecimalFormat;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string v13, " ##0"

    invoke-direct {v12, v13}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v11, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadDecimalFormat:Ljava/text/DecimalFormat;

    goto/16 :goto_1

    .line 268
    :cond_9
    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadSpeed:J

    long-to-float v10, v10

    move v4, v10

    .line 269
    const-string v10, "B"

    move-object v2, v10

    .line 270
    move-object v10, v0

    new-instance v11, Ljava/text/DecimalFormat;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string v13, " ##0"

    invoke-direct {v12, v13}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v11, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadDecimalFormat:Ljava/text/DecimalFormat;

    goto/16 :goto_1

    .line 274
    :pswitch_0
    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadSpeed:J

    long-to-float v10, v10

    move v4, v10

    .line 275
    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadSpeed:J

    long-to-float v10, v10

    move v3, v10

    .line 276
    const-string v10, "B"

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v2, v11

    move-object v1, v10

    .line 277
    move-object v10, v0

    move-object v11, v0

    new-instance v12, Ljava/text/DecimalFormat;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    const-string v14, " ##0"

    invoke-direct {v13, v14}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object v15, v11

    move-object/from16 v16, v12

    move-object/from16 v11, v16

    move-object v12, v15

    move-object/from16 v13, v16

    iput-object v13, v12, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadDecimalFormat:Ljava/text/DecimalFormat;

    iput-object v11, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadDecimalFormat:Ljava/text/DecimalFormat;

    .line 278
    goto/16 :goto_1

    .line 280
    :pswitch_1
    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadSpeed:J

    long-to-float v10, v10

    const/high16 v11, 0x44800000    # 1024.0f

    div-float/2addr v10, v11

    move v4, v10

    .line 281
    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadSpeed:J

    long-to-float v10, v10

    const/high16 v11, 0x44800000    # 1024.0f

    div-float/2addr v10, v11

    move v3, v10

    .line 282
    const-string v10, "KB"

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v2, v11

    move-object v1, v10

    .line 283
    move-object v10, v0

    move-object v11, v0

    new-instance v12, Ljava/text/DecimalFormat;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    const-string v14, " ##0"

    invoke-direct {v13, v14}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object v15, v11

    move-object/from16 v16, v12

    move-object/from16 v11, v16

    move-object v12, v15

    move-object/from16 v13, v16

    iput-object v13, v12, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadDecimalFormat:Ljava/text/DecimalFormat;

    iput-object v11, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadDecimalFormat:Ljava/text/DecimalFormat;

    .line 284
    goto/16 :goto_1

    .line 286
    :pswitch_2
    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadSpeed:J

    long-to-float v10, v10

    const/high16 v11, 0x49800000    # 1048576.0f

    div-float/2addr v10, v11

    move v4, v10

    .line 287
    move-object v10, v0

    iget-wide v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadSpeed:J

    long-to-float v10, v10

    const/high16 v11, 0x49800000    # 1048576.0f

    div-float/2addr v10, v11

    move v3, v10

    .line 288
    const-string v10, "MB"

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v2, v11

    move-object v1, v10

    .line 289
    move-object v10, v0

    move-object v11, v0

    new-instance v12, Ljava/text/DecimalFormat;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    const-string v14, " ##0.0"

    invoke-direct {v13, v14}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object v15, v11

    move-object/from16 v16, v12

    move-object/from16 v11, v16

    move-object v12, v15

    move-object/from16 v13, v16

    iput-object v13, v12, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadDecimalFormat:Ljava/text/DecimalFormat;

    iput-object v11, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadDecimalFormat:Ljava/text/DecimalFormat;

    .line 290
    goto/16 :goto_1

    .line 300
    :cond_a
    move-object v10, v0

    iget-object v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadDecimalFormat:Ljava/text/DecimalFormat;

    move v11, v3

    float-to-double v11, v11

    invoke-virtual {v10, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    goto/16 :goto_2

    .line 306
    :cond_b
    move-object v10, v0

    iget-object v10, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadDecimalFormat:Ljava/text/DecimalFormat;

    move v11, v4

    float-to-double v11, v11

    invoke-virtual {v10, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    goto/16 :goto_3

    .line 311
    :pswitch_3
    move-object v10, v0

    move-object v11, v0

    const-string v12, " "

    move-object v15, v11

    move-object/from16 v16, v12

    move-object/from16 v11, v16

    move-object v12, v15

    move-object/from16 v13, v16

    iput-object v13, v12, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadSuffix:Ljava/lang/String;

    iput-object v11, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadSuffix:Ljava/lang/String;

    .line 312
    goto/16 :goto_4

    .line 314
    :pswitch_4
    move-object v10, v0

    const-string v11, " \u25b2 "

    iput-object v11, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadSuffix:Ljava/lang/String;

    .line 315
    move-object v10, v0

    const-string v11, " \u25bc "

    iput-object v11, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadSuffix:Ljava/lang/String;

    .line 316
    goto/16 :goto_4

    .line 318
    :pswitch_5
    move-object v10, v0

    const-string v11, " \u25b3 "

    iput-object v11, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->uploadSuffix:Ljava/lang/String;

    .line 319
    move-object v10, v0

    const-string v11, " \u25bd "

    iput-object v11, v10, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->downloadSuffix:Ljava/lang/String;

    .line 320
    goto/16 :goto_4

    .line 348
    :cond_c
    const-string v10, " "

    move-object v7, v10

    goto/16 :goto_5

    .line 356
    :cond_d
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    goto/16 :goto_6

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 309
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private isCorrectNetworkType()Z
    .locals 4

    .prologue
    .line 374
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefNetworkType:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefNetworkType:Ljava/lang/String;

    const-string v3, "both"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .line 378
    :goto_0
    return v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefNetworkType:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->networkType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.thanhfhuongf.networkspeedindicator_preferences"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mPref:Landroid/content/SharedPreferences;

    .line 398
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "force_unit"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/thanhfhuongf/networkspeedindicator/Common;->getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefForceUnit:I

    .line 399
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "show_upload_speed"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefShowUploadSpeed:Z

    .line 400
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "show_download_speed"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefShowDownloadSpeed:Z

    .line 401
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "hide_unit"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefHideUnit:Z

    .line 402
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "hide_inactive"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefHideInactive:Z

    .line 403
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "font_size"

    const/16 v5, 0xa

    invoke-static {v3, v4, v5}, Lcom/thanhfhuongf/networkspeedindicator/Common;->getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefFontSize:I

    .line 404
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "position"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/thanhfhuongf/networkspeedindicator/Common;->getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefPosition:I

    .line 405
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "suffix"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/thanhfhuongf/networkspeedindicator/Common;->getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefSuffix:I

    .line 406
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "network_type"

    const-string v5, "both"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefNetworkType:Ljava/lang/String;

    .line 407
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "display"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/thanhfhuongf/networkspeedindicator/Common;->getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefDisplay:I

    .line 408
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "update_interval"

    const/16 v5, 0x3e8

    invoke-static {v3, v4, v5}, Lcom/thanhfhuongf/networkspeedindicator/Common;->getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefUpdateInterval:I

    .line 409
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "color_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/thanhfhuongf/networkspeedindicator/Common;->getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefColorMode:I

    .line 410
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "color"

    const v5, -0x333334

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefColor:I

    return-void
.end method

.method private updateConnectionInfo()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    const v5, 0x0

    iput-boolean v5, v0, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->networkState:Z

    sget-object v4, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->TAG:Ljava/lang/String;

    const-string v5, "updateConnectionInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 218
    move-object v4, v0

    invoke-virtual {v4}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    move-object v1, v4

    .line 221
    move-object v4, v1

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    move-object v2, v4

    .line 222
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 223
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    iput-boolean v5, v4, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->networkState:Z

    .line 224
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->networkType:Ljava/lang/String;

    .line 225
    sget-object v4, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "networkType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->networkType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :cond_0
    return-void
.end method

.method private updateViewVisibility()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 383
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->networkState:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-direct {v2}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->isCorrectNetworkType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    move-object v2, v0

    iget-boolean v2, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mAttached:Z

    if-eqz v2, :cond_0

    .line 385
    move-object v2, v0

    invoke-virtual {v2}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->updateTraffic()V

    .line 387
    :cond_0
    move-object v2, v0

    const v3, 0x1

    invoke-virtual {v2, v3}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->setVisibility(I)V

    .line 389
    :goto_0
    return-void

    :cond_1
    move-object v2, v0

    const v3, 0x8

    invoke-virtual {v2, v3}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    move-object v3, v0

    invoke-super {v3}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 196
    move-object v3, v0

    iget-boolean v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mAttached:Z

    if-nez v3, :cond_0

    .line 197
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mAttached:Z

    .line 198
    new-instance v3, Landroid/content/IntentFilter;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v3

    .line 199
    move-object v3, v1

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    move-object v3, v1

    const-string v4, "com.thanhfhuongf.networkspeedindicator.changed"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    move-object v3, v0

    invoke-virtual {v3}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v3

    .line 203
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->updateViewVisibility()V

    .line 204
    move-object v3, v0

    invoke-direct {v3}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->loadPreferences()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 210
    move-object v2, v0

    iget-boolean v2, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mAttached:Z

    if-eqz v2, :cond_0

    .line 211
    move-object v2, v0

    invoke-virtual {v2}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mAttached:Z

    :cond_0
    return-void
.end method

.method public refreshColor()V
    .locals 4
    .annotation runtime Landroid/annotation/SuppressLint;
        value = "NewApi"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefColorMode:I

    packed-switch v2, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 98
    :pswitch_0
    move-object v2, v0

    const-string v3, "#ffffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->setTextColor(I)V

    .line 100
    goto :goto_0

    .line 102
    :pswitch_1
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefColor:I

    invoke-virtual {v2, v3}, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->setTextColor(I)V

    .line 103
    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public refreshPosition()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefPosition:I

    packed-switch v2, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 82
    :pswitch_0
    goto :goto_0

    .line 85
    :pswitch_1
    goto :goto_0

    .line 88
    :pswitch_2
    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 362
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mTrafficHandler:Landroid/os/Handler;

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 363
    move-object v2, v0

    iget-object v2, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mTrafficHandler:Landroid/os/Handler;

    move-object v3, v0

    iget-object v3, v3, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mRunnable:Ljava/lang/Runnable;

    move-object v4, v0

    iget v4, v4, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->prefUpdateInterval:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    return-void
.end method

.method public updateTraffic()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    move-object v2, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->lastUpdateTime:J

    .line 231
    move-object v2, v0

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->totalRxBytes:J

    .line 232
    move-object v2, v0

    iget-object v2, v2, Lcom/thanhfhuongf/networkspeedindicator/traffic/TrafficView;->mTrafficHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v2

    return-void
.end method
