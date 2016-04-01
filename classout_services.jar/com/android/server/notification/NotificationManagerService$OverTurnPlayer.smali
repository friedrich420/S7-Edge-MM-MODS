.class Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverTurnPlayer"
.end annotation


# instance fields
.field private mIsRegister:Z

.field private mMotionListener:Lcom/samsung/android/motion/MRListener;

.field private mMotionOn:Z

.field private mOverTurnOn:Z

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 3

    .prologue
    .line 4514
    iput-object p1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4515
    invoke-direct {p0}, registerObs()V

    .line 4516
    invoke-direct {p0}, update()V

    .line 4518
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;-><init>(Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, mMotionListener:Lcom/samsung/android/motion/MRListener;

    .line 4540
    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    .prologue
    .line 4508
    invoke-direct {p0}, update()V

    return-void
.end method

.method private registerObs()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 4567
    iget-object v1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4568
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "master_motion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$2;

    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$4600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$2;-><init>(Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4574
    const-string/jumbo v1, "motion_overturn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$3;

    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$4600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$3;-><init>(Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4580
    return-void
.end method

.method private update()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4583
    iget-object v1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4584
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "master_motion"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_28

    move v1, v2

    :goto_16
    iput-boolean v1, p0, mMotionOn:Z

    .line 4585
    iget-boolean v1, p0, mMotionOn:Z

    if-eqz v1, :cond_27

    .line 4586
    const-string/jumbo v1, "motion_overturn"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2a

    :goto_25
    iput-boolean v2, p0, mOverTurnOn:Z

    .line 4589
    :cond_27
    return-void

    :cond_28
    move v1, v3

    .line 4584
    goto :goto_16

    :cond_2a
    move v2, v3

    .line 4586
    goto :goto_25
.end method


# virtual methods
.method public isEnable()Z
    .registers 2

    .prologue
    .line 4543
    iget-boolean v0, p0, mMotionOn:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, mOverTurnOn:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isRegister()Z
    .registers 2

    .prologue
    .line 4547
    iget-boolean v0, p0, mIsRegister:Z

    return v0
.end method

.method public register()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 4551
    iget-object v1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 4553
    .local v0, "mrm":Lcom/samsung/android/motion/MotionRecognitionManager;
    iget-object v1, p0, mMotionListener:Lcom/samsung/android/motion/MRListener;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/motion/MotionRecognitionManager;->registerListenerEvent(Lcom/samsung/android/motion/MRListener;I)V

    .line 4554
    iput-boolean v3, p0, mIsRegister:Z

    .line 4555
    const-string v1, "NotificationService"

    const-string v2, "Reg. OverTurn"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4556
    return-void
.end method

.method public unregister()V
    .registers 4

    .prologue
    .line 4559
    iget-object v1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 4561
    .local v0, "mrm":Lcom/samsung/android/motion/MotionRecognitionManager;
    iget-object v1, p0, mMotionListener:Lcom/samsung/android/motion/MRListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/motion/MotionRecognitionManager;->unregisterListener(Lcom/samsung/android/motion/MRListener;)V

    .line 4562
    const/4 v1, 0x0

    iput-boolean v1, p0, mIsRegister:Z

    .line 4563
    const-string v1, "NotificationService"

    const-string v2, "UnReg. OverTurn"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4564
    return-void
.end method
