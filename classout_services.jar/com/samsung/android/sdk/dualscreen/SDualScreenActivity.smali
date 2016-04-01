.class public Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;
.super Ljava/lang/Object;
.source "SDualScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;,
        Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;,
        Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;,
        Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final FLAG_COUPLED_TASK:I

.field public static final FLAG_FINISH_ALL_ABOVE_CHOSEN_ACTIVITY:I

.field public static final FLAG_FINISH_CALLED_ACTIVITIES:I

.field public static final FLAG_FINISH_REMAIN_TOP_ACTIVITY:I

.field public static final FLAG_FINISH_SOURCE_ACTIVITY:I

.field public static final FLAG_FINISH_TASK:I

.field public static final FLAG_FINISH_TOP_ACTIVITY:I

.field private static final TAG:Ljava/lang/String;

.field public static final TRANSIT_EXPAND:I

.field public static final TRANSIT_SHRINK:I

.field private static mDualScreenAvailable:Z

.field private static mDualScreenAvailableChecked:Z


# instance fields
.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

.field private mSdkExpandRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;

.field private mSdkScreenChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;

.field private mSdkShrinkRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const-class v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 38
    sput-boolean v1, mDualScreenAvailable:Z

    .line 39
    sput-boolean v1, mDualScreenAvailableChecked:Z

    .line 50
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenLaunchParams;->FLAG_COUPLED_TASK:I

    sput v0, FLAG_COUPLED_TASK:I

    .line 57
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_TASK:I

    sput v0, FLAG_FINISH_TASK:I

    .line 64
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_CALLED_ACTIVITIES:I

    sput v0, FLAG_FINISH_CALLED_ACTIVITIES:I

    .line 71
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_SOURCE_ACTIVITY:I

    sput v0, FLAG_FINISH_SOURCE_ACTIVITY:I

    .line 78
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_TOP_ACTIVITY:I

    sput v0, FLAG_FINISH_TOP_ACTIVITY:I

    .line 85
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_ALL_ABOVE_CHOSEN_ACTIVITY:I

    sput v0, FLAG_FINISH_ALL_ABOVE_CHOSEN_ACTIVITY:I

    .line 92
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_REMAIN_TOP_ACTIVITY:I

    sput v0, FLAG_FINISH_REMAIN_TOP_ACTIVITY:I

    .line 100
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->TRANSIT_EXPAND:I

    sput v0, TRANSIT_EXPAND:I

    .line 107
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->TRANSIT_SHRINK:I

    sput v0, TRANSIT_SHRINK:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    if-nez p1, :cond_d

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_d
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity is not initialized properly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1b
    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    .line 151
    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 152
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    .prologue
    .line 32
    iget-object v0, p0, mSdkScreenChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    .prologue
    .line 32
    iget-object v0, p0, mSdkExpandRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    .prologue
    .line 32
    iget-object v0, p0, mSdkShrinkRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;

    return-object v0
.end method

.method public static forceFocusScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .registers 4
    .param p0, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 503
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forceFocusScreen() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    if-nez p0, :cond_24

    .line 505
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_24
    invoke-static {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->forceFocusScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    .line 508
    return-void
.end method

.method public static getFocusedScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .registers 2

    .prologue
    .line 517
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "getFocusedScreen()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getFocusedScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v0

    return-object v0
.end method

.method public static getTaskInfo(I)Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;
    .registers 4
    .param p0, "taskId"    # I

    .prologue
    .line 528
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTaskInfo() : taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    if-gez p0, :cond_24

    .line 530
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid task id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_24
    invoke-static {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getTaskInfo(I)Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getTopRunningTaskId(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)I
    .registers 4
    .param p0, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 544
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTopRunningTaskId() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    if-nez p0, :cond_24

    .line 546
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_24
    invoke-static {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getTopRunningTaskId(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)I

    move-result v0

    return v0
.end method

.method public static getWindowManager(Landroid/content/Context;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/WindowManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 560
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWindowManager() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    if-nez p1, :cond_24

    .line 562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_24
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getWindowManager(Landroid/content/Context;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method private isDualScreenAvailable()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 703
    sget-boolean v0, mDualScreenAvailableChecked:Z

    if-eqz v0, :cond_8

    .line 704
    sget-boolean v0, mDualScreenAvailable:Z

    .line 709
    :goto_7
    return v0

    .line 706
    :cond_8
    iget-object v0, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    if-eqz v0, :cond_1c

    iget-object v0, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->initialized()Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_15
    sput-boolean v0, mDualScreenAvailable:Z

    .line 708
    sput-boolean v1, mDualScreenAvailableChecked:Z

    .line 709
    sget-boolean v0, mDualScreenAvailable:Z

    goto :goto_7

    .line 706
    :cond_1c
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isExpandable(I)Z
    .registers 5
    .param p0, "taskId"    # I

    .prologue
    .line 576
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isExpandable() taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-static {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->isExpandable(I)Z

    move-result v0

    .line 578
    .local v0, "ret":Z
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isExpandable() ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return v0
.end method

.method public static makeIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)Landroid/content/Intent;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .param p3, "flags"    # I

    .prologue
    .line 595
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeIntent() : context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " targetScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " falgs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    if-eqz p0, :cond_3d

    if-eqz p1, :cond_3d

    if-nez p2, :cond_46

    .line 599
    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid arguments"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 601
    :cond_46
    move-object v0, p1

    .line 602
    .local v0, "ret":Landroid/content/Intent;
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->makeIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)Landroid/content/Intent;

    move-result-object v0

    .line 603
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeIntent() : ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-object v0
.end method

.method public static moveTaskToScreen(ILcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .registers 5
    .param p0, "taskId"    # I
    .param p1, "toScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 632
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToScreen() : taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    if-gez p0, :cond_2e

    .line 634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid task id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_2e
    if-nez p1, :cond_39

    .line 637
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "toScreen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_39
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->moveTaskToScreen(ILcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    .line 640
    return-void
.end method

.method public static moveTaskToScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .registers 5
    .param p0, "fromScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .param p1, "toScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 615
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToScreen() : fromScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    if-nez p0, :cond_2e

    .line 617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fromScreen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_2e
    if-nez p1, :cond_39

    .line 620
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "toScreen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_39
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->moveTaskToScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    .line 623
    return-void
.end method

.method public static sendExpandRequest(I)V
    .registers 4
    .param p0, "targetTaskId"    # I

    .prologue
    .line 649
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendExpandRequest() : targetTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    if-gez p0, :cond_24

    .line 651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid task id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_24
    invoke-static {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sendExpandRequest(I)V

    .line 654
    return-void
.end method

.method public static sendShrinkRequest(ILcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .registers 5
    .param p0, "targetTaskId"    # I
    .param p1, "toScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 663
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendShrinkRequest() : targetTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    if-gez p0, :cond_2e

    .line 665
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid task id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_2e
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sendShrinkRequest(ILcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    .line 668
    return-void
.end method


# virtual methods
.method public canBeCoupled()Z
    .registers 5

    .prologue
    .line 160
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "canBeCoupled()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 162
    iget-object v1, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->canBeCoupled()Z

    move-result v0

    .line 163
    .local v0, "ret":Z
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canBeCoupled() ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v0    # "ret":Z
    :goto_2b
    return v0

    .line 166
    :cond_2c
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "DualScreenManager is not loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public dimScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;Z)V
    .registers 6
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .param p2, "enableDim"    # Z

    .prologue
    .line 178
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dimScreen() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enableDim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-nez p1, :cond_2e

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_2e
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 183
    iget-object v0, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->dimScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;Z)V

    .line 185
    :cond_39
    return-void
.end method

.method public finishCoupledActivity(I)V
    .registers 5
    .param p1, "flags"    # I

    .prologue
    .line 194
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finishCoupledActivity() : flags ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 196
    iget-object v0, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->finishCoupledActivity(I)V

    .line 198
    :cond_24
    return-void
.end method

.method public focusScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .registers 5
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 206
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "focusScreen() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-nez p1, :cond_24

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_24
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 211
    iget-object v0, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->focusScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    .line 213
    :cond_2f
    return-void
.end method

.method public getDisplay(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/Display;
    .registers 5
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 222
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDisplay(DualScreen) : screen ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-nez p1, :cond_24

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_24
    iget-object v0, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_33

    .line 230
    iget-object v0, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 234
    :goto_32
    return-object v0

    .line 232
    :cond_33
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "mDisplayManager is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public getScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .registers 5

    .prologue
    .line 245
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "getScreen()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 247
    iget-object v1, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v0

    .line 248
    .local v0, "ret":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getScreen() ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v0    # "ret":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    :goto_2d
    return-object v0

    .line 251
    :cond_2e
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "DualScreenManager is not loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_2d
.end method

.method public getShrinkRequested()Z
    .registers 6

    .prologue
    .line 262
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "getShrinkRequested()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 264
    iget-object v2, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 265
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getShrinkRequested(Landroid/content/Context;)Z

    move-result v1

    .line 266
    .local v1, "ret":Z
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getShrinkRequested() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "ret":Z
    :goto_31
    return v1

    .line 269
    :cond_32
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "DualScreenManager is not loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v1, 0x0

    goto :goto_31
.end method

.method public moveToScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .registers 5
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 280
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveToScreen() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    if-nez p1, :cond_24

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_24
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 285
    iget-object v0, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->moveToScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    .line 287
    :cond_2f
    return-void
.end method

.method public overrideNextAppTransition(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)V
    .registers 6
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .param p2, "transit"    # I

    .prologue
    .line 301
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "overrideNextAppTransition() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    if-nez p1, :cond_2e

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_2e
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 306
    iget-object v0, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->overrideNextAppTransition(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)V

    .line 308
    :cond_39
    return-void
.end method

.method public requestExpandedDisplayOrientation(I)V
    .registers 5
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 337
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestExpandedDisplayOrientation() : requestedOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 341
    iget-object v0, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->requestExpandedDisplayOrientation(I)V

    .line 343
    :cond_24
    return-void
.end method

.method public requestOppositeDisplayOrientation(I)V
    .registers 5
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 319
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestOppositeDisplayOrientation() : requestedOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 323
    iget-object v0, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->requestOppositeDisplayOrientation(I)V

    .line 325
    :cond_24
    return-void
.end method

.method public setExpandRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;

    .prologue
    .line 413
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "setExpandRequestListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "expandRequestListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;
    iput-object p1, p0, mSdkExpandRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;

    .line 417
    if-eqz p1, :cond_18

    .line 418
    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$2;

    .end local v0    # "expandRequestListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;
    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$2;-><init>(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)V

    .line 426
    .restart local v0    # "expandRequestListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;
    :cond_18
    iget-object v1, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->setExpandRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;)V

    .line 431
    .end local v0    # "expandRequestListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;
    :goto_1d
    return-void

    .line 429
    :cond_1e
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "DualScreenManager is not loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public setExpandable(Z)V
    .registers 5
    .param p1, "expandable"    # Z

    .prologue
    .line 356
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExpandable() : expandable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 359
    iget-object v0, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->setExpandable(Z)V

    .line 361
    :cond_24
    return-void
.end method

.method public setFinishWithCoupledTask(Z)V
    .registers 5
    .param p1, "finish"    # Z

    .prologue
    .line 370
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFinishWithCoupledTask() : finish ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 372
    iget-object v0, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->setFinishWithCoupledTask(Z)V

    .line 374
    :cond_24
    return-void
.end method

.method public setScreenChangeListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;

    .prologue
    .line 383
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "setScreenChangeListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "screenChangeListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;
    iput-object p1, p0, mSdkScreenChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ScreenChangeListener;

    .line 387
    if-eqz p1, :cond_18

    .line 388
    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$1;

    .end local v0    # "screenChangeListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;
    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$1;-><init>(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)V

    .line 399
    .restart local v0    # "screenChangeListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;
    :cond_18
    iget-object v1, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->setScreenChangeListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;)V

    .line 404
    .end local v0    # "screenChangeListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;
    :goto_1d
    return-void

    .line 402
    :cond_1e
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "DualScreenManager is not loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public setShrinkRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;

    .prologue
    .line 440
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "setShrinkRequestListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "shrinkRequestListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;
    iput-object p1, p0, mSdkShrinkRequestListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;

    .line 444
    if-eqz p1, :cond_18

    .line 445
    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$3;

    .end local v0    # "shrinkRequestListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;
    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$3;-><init>(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;)V

    .line 458
    .restart local v0    # "shrinkRequestListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;
    :cond_18
    iget-object v1, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->setShrinkRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;)V

    .line 463
    .end local v0    # "shrinkRequestListener":Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;
    :goto_1d
    return-void

    .line 461
    :cond_1e
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "DualScreenManager is not loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public swapTopTask()V
    .registers 3

    .prologue
    .line 486
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "swapTopTask()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 488
    iget-object v0, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->swapTopTask()V

    .line 492
    :goto_13
    return-void

    .line 490
    :cond_14
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "DualScreenManager is not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public switchScreen()V
    .registers 3

    .prologue
    .line 472
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "switchScreen()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-direct {p0}, isDualScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 474
    iget-object v0, p0, mSDualScreenManagerReflector:Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->switchScreen()V

    .line 478
    :goto_13
    return-void

    .line 476
    :cond_14
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "DualScreenManager is not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method
