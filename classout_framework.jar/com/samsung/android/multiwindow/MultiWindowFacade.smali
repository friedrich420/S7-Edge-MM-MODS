.class public final Lcom/samsung/android/multiwindow/MultiWindowFacade;
.super Ljava/lang/Object;
.source "MultiWindowFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    }
.end annotation


# static fields
.field public static final ARRANGE_SPLITED:I = 0x1

.field public static final ARRANGE_SPLITED3L:I = 0x2

.field public static final ARRANGE_SPLITED3R:I = 0x4

.field public static final ARRANGE_SPLITED4:I = 0x8

.field public static final ARRANGE_UNKNOWN:I = 0x0

.field public static final GET_TASK_ALLSTATE:I = 0x0

.field public static final GET_TASK_CURRENT_USER_ONLY:I = 0x2

.field public static final GET_TASK_EXCLUDE_MOVETASKTOBACK:I = 0x4

.field public static final GET_TASK_RESUMED_ONLY:I = 0x1

.field public static final GET_TASK_WITH_CURRENT_PROFILE:I = 0x10

.field public static final GET_TOP_ACTIVITY_MULTIWINDOW_STYLE:I = 0x8

.field public static final MULTIWINDOW_ABSOLUTE_TOPACTIVITY:I = 0x2

.field public static final MULTIWINDOW_EXCLUDED_CASCADE_TYPE:I = 0x1

.field public static final SPLIT_MAX_WEIGHT:F = 0.8f

.field public static final SPLIT_MIN_WEIGHT:F = 0.2f

.field public static TASK_CONTROLLER_TYPE_RECENT:I

.field public static TASK_CONTROLLER_TYPE_RUNNING:I


# instance fields
.field private mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 707
    const/4 v0, 0x0

    sput v0, TASK_CONTROLLER_TYPE_RUNNING:I

    .line 712
    const/4 v0, 0x1

    sput v0, TASK_CONTROLLER_TYPE_RECENT:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/multiwindow/IMultiWindowFacade;)V
    .registers 3
    .param p1, "service"    # Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    .line 45
    iput-object p1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    .line 46
    return-void
.end method


# virtual methods
.method public addTab(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 541
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->addTab(Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 545
    :goto_5
    return-void

    .line 542
    :catch_6
    move-exception v0

    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public appMinimizingStarted(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 660
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->appMinimizingStarted(Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 664
    :goto_5
    return-void

    .line 661
    :catch_6
    move-exception v0

    .line 662
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public changeTaskToCascade(Landroid/graphics/Point;IZ)Z
    .registers 6
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "zone"    # I
    .param p3, "bMinimize"    # Z

    .prologue
    .line 380
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->changeTaskToCascade(Landroid/graphics/Point;IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 384
    :goto_6
    return v1

    .line 381
    :catch_7
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 384
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public changeTaskToFull(I)V
    .registers 4
    .param p1, "zone"    # I

    .prologue
    .line 369
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->changeTaskToFull(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 373
    :goto_5
    return-void

    .line 370
    :catch_6
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public closeMultiWindowPanel()Z
    .registers 3

    .prologue
    .line 841
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->closeMultiWindowPanel()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 845
    :goto_6
    return v1

    .line 842
    :catch_7
    move-exception v0

    .line 843
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 845
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public exchangeTopTaskToZone(II)Z
    .registers 5
    .param p1, "zone1"    # I
    .param p2, "zone2"    # I

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->exchangeTopTaskToZone(II)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 194
    :goto_6
    return v1

    .line 192
    :catch_7
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 194
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public exitByCloseBtn(I)V
    .registers 4
    .param p1, "taskId"    # I

    .prologue
    .line 249
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->exitByCloseBtn(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 253
    :goto_5
    return-void

    .line 250
    :catch_6
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public finishAllTasks(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 582
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->finishAllTasks(Landroid/os/IBinder;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 586
    :goto_5
    return-void

    .line 583
    :catch_6
    move-exception v0

    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public getArrangeState()I
    .registers 3

    .prologue
    .line 263
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getArrangeState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 266
    :goto_6
    return v1

    .line 264
    :catch_7
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 266
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAvailableMultiInstanceCnt()I
    .registers 3

    .prologue
    .line 401
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getAvailableMultiInstanceCnt()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 404
    :goto_6
    return v1

    .line 402
    :catch_7
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 404
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCenterBarPoint(I)Landroid/graphics/Point;
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 78
    :goto_6
    return-object v1

    .line 76
    :catch_7
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCurrentOrientation()I
    .registers 3

    .prologue
    .line 695
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    if-eqz v1, :cond_f

    .line 696
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getCurrentOrientation()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 701
    :goto_a
    return v1

    .line 698
    :catch_b
    move-exception v0

    .line 699
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 701
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getDragAndDropModeOfStack(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 333
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getDragAndDropModeOfStack(Landroid/os/IBinder;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 337
    :goto_6
    return v1

    .line 334
    :catch_7
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 337
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getEnabledFeaturesFlags()J
    .registers 5

    .prologue
    .line 785
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getEnabledFeaturesFlags()J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v2

    .line 789
    :goto_6
    return-wide v2

    .line 786
    :catch_7
    move-exception v0

    .line 787
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 789
    const-wide/16 v2, 0x0

    goto :goto_6
.end method

.method public getExpectedOrientation()I
    .registers 3

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getExpectedOrientation()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 160
    :goto_6
    return v1

    .line 158
    :catch_7
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 160
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getFocusedStackLayer()I
    .registers 3

    .prologue
    .line 275
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getFocusedStackLayer()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 278
    :goto_6
    return v1

    .line 276
    :catch_7
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 278
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getFocusedZone()I
    .registers 3

    .prologue
    .line 287
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getFocusedZone()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 290
    :goto_6
    return v1

    .line 288
    :catch_7
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 290
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 4
    .param p1, "flags"    # I

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 182
    :goto_6
    return-object v1

    .line 180
    :catch_7
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 182
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getGlobalSystemUiVisibility()I
    .registers 3

    .prologue
    .line 357
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getGlobalSystemUiVisibility()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 360
    :goto_6
    return v1

    .line 358
    :catch_7
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 360
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 116
    :goto_6
    return-object v1

    .line 114
    :catch_7
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 116
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getPreferenceThroughSystemProcess(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 810
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getPreferenceThroughSystemProcess(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 813
    :goto_6
    return v1

    .line 811
    :catch_7
    move-exception v0

    .line 812
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 813
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRealSize(Landroid/graphics/Rect;Landroid/view/DisplayInfo;)Z
    .registers 8
    .param p1, "outSize"    # Landroid/graphics/Rect;
    .param p2, "di"    # Landroid/view/DisplayInfo;

    .prologue
    const/4 v4, 0x0

    .line 882
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 883
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 884
    .local v1, "dm":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_1e

    .line 885
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 886
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 888
    :cond_1e
    return v4
.end method

.method public getRecentTaskSize(II)I
    .registers 5
    .param p1, "userId"    # I
    .param p2, "maxCount"    # I

    .prologue
    .line 671
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getRecentTaskSize(II)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 675
    :goto_6
    return v1

    .line 672
    :catch_7
    move-exception v0

    .line 673
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 675
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getRunningPenWindowCnt()I
    .registers 3

    .prologue
    .line 855
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getRunningPenWindowCnt()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 859
    :goto_6
    return v1

    .line 856
    :catch_7
    move-exception v0

    .line 857
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 859
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getRunningScaleWindows()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getRunningScaleWindows()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 686
    :goto_6
    return-object v1

    .line 684
    :catch_7
    move-exception v0

    .line 685
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 686
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRunningTasks(II)Ljava/util/List;
    .registers 5
    .param p1, "maxNum"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 238
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getRunningTasks(II)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 241
    :goto_6
    return-object v1

    .line 239
    :catch_7
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 241
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSplitMaxWeight()F
    .registers 3

    .prologue
    .line 482
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getSplitMaxWeight()F
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 485
    :goto_6
    return v1

    .line 483
    :catch_7
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 485
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_6
.end method

.method public getSplitMinWeight()F
    .registers 3

    .prologue
    .line 470
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getSplitMinWeight()F
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 473
    :goto_6
    return v1

    .line 471
    :catch_7
    move-exception v0

    .line 472
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 473
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 136
    :goto_6
    return-object v1

    .line 134
    :catch_7
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 136
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getStackId(Landroid/os/IBinder;)I
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 626
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackId(Landroid/os/IBinder;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 629
    :goto_6
    return v1

    .line 627
    :catch_7
    move-exception v0

    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 629
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 148
    :goto_6
    return-object v1

    .line 146
    :catch_7
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 148
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 518
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 522
    :goto_6
    return-object v1

    .line 519
    :catch_7
    move-exception v0

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 522
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSystemDisplayInfo()Landroid/view/DisplayInfo;
    .registers 3

    .prologue
    .line 591
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 595
    :goto_6
    return-object v1

    .line 592
    :catch_7
    move-exception v0

    .line 593
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 595
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getTabs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowTab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getTabs()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 606
    :goto_6
    return-object v1

    .line 604
    :catch_7
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 606
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getZoneBounds(I)Landroid/graphics/Rect;
    .registers 4
    .param p1, "zone"    # I

    .prologue
    .line 299
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getZoneBounds(I)Landroid/graphics/Rect;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 302
    :goto_6
    return-object v1

    .line 300
    :catch_7
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 302
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isEnableMakePenWindow()Z
    .registers 4

    .prologue
    .line 494
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->isEnableMakePenWindow(I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    move-result v1

    .line 498
    :goto_7
    return v1

    .line 495
    :catch_8
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 498
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public isEnableMakePenWindow(I)Z
    .registers 4
    .param p1, "notIncludeTaskId"    # I

    .prologue
    .line 506
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->isEnableMakePenWindow(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 510
    :goto_6
    return v1

    .line 507
    :catch_7
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 510
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isSplitSupportedForTask(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 869
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->isSplitSupportedForTask(Landroid/os/IBinder;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 873
    :goto_6
    return v1

    .line 870
    :catch_7
    move-exception v0

    .line 871
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 873
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public minimizeTask(ILandroid/graphics/Point;Z)Z
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "iconLocation"    # Landroid/graphics/Point;
    .param p3, "stayResumed"    # Z

    .prologue
    .line 392
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->minimizeTask(ILandroid/graphics/Point;Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 396
    :goto_6
    return v1

    .line 393
    :catch_7
    move-exception v0

    .line 394
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 396
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public minimizeWindow(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->minimizeWindow(Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 57
    :goto_5
    return-void

    .line 54
    :catch_6
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .param p4, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 448
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 452
    :goto_5
    return-void

    .line 449
    :catch_6
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public needHideTrayBar()Z
    .registers 3

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->needHideTrayBar()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 205
    :goto_6
    return v1

    .line 203
    :catch_7
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 205
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public needMoveOnlySpecificTaskToFront(I)Z
    .registers 4
    .param p1, "taskId"    # I

    .prologue
    .line 436
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->needMoveOnlySpecificTaskToFront(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 439
    :goto_6
    return v1

    .line 437
    :catch_7
    move-exception v0

    .line 438
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 439
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public needToExposureTitleBarMenu()Z
    .registers 3

    .prologue
    .line 345
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->needToExposureTitleBarMenu()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 349
    :goto_6
    return v1

    .line 346
    :catch_7
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 349
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public registerMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V
    .registers 4
    .param p1, "observer"    # Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;

    .prologue
    .line 893
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->registerMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 897
    :goto_5
    return-void

    .line 894
    :catch_6
    move-exception v0

    .line 895
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .registers 4
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 719
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 724
    :goto_5
    return-void

    .line 720
    :catch_6
    move-exception v0

    .line 721
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V
    .registers 5
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .param p2, "type"    # I

    .prologue
    .line 731
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 736
    :goto_5
    return-void

    .line 732
    :catch_6
    move-exception v0

    .line 733
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public removeAllTasks(Landroid/os/IBinder;I)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 563
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, removeAllTasks(Landroid/os/IBinder;IZ)V

    .line 564
    return-void
.end method

.method public removeAllTasks(Landroid/os/IBinder;IZ)V
    .registers 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "logging"    # Z

    .prologue
    .line 571
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->removeAllTasks(Landroid/os/IBinder;IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 575
    :goto_5
    return-void

    .line 572
    :catch_6
    move-exception v0

    .line 573
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public removeTab(I)Z
    .registers 4
    .param p1, "stackId"    # I

    .prologue
    .line 552
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->removeTab(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 555
    :goto_6
    return v1

    .line 553
    :catch_7
    move-exception v0

    .line 554
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 555
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    .line 649
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setAppVisibility(Landroid/os/IBinder;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 653
    :goto_5
    return-void

    .line 650
    :catch_6
    move-exception v0

    .line 651
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setCenterBarPoint(ILandroid/graphics/Point;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 68
    :goto_5
    return-void

    .line 65
    :catch_6
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 326
    :goto_5
    return-void

    .line 323
    :catch_6
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setFocusAppByZone(I)V
    .registers 4
    .param p1, "zone"    # I

    .prologue
    .line 413
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setFocusAppByZone(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 417
    :goto_5
    return-void

    .line 414
    :catch_6
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setFocusedStack(IZ)V
    .registers 5
    .param p1, "stackId"    # I
    .param p2, "tapOutSide"    # Z

    .prologue
    .line 615
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setFocusedStack(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 619
    :goto_5
    return-void

    .line 616
    :catch_6
    move-exception v0

    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    if-nez v1, :cond_5

    .line 106
    :goto_4
    return-void

    .line 102
    :cond_5
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_4

    .line 103
    :catch_b
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
.end method

.method public setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .registers 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p3, "loggingReason"    # I

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    if-nez v1, :cond_5

    .line 93
    :goto_4
    return-void

    .line 89
    :cond_5
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_4

    .line 90
    :catch_b
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .registers 4
    .param p1, "open"    # Z

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setMultiWindowTrayOpenState(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 315
    :goto_5
    return-void

    .line 312
    :catch_6
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 129
    :goto_5
    return-void

    .line 126
    :catch_6
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setStackBoundByStackId(ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "stackId"    # I
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 638
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setStackBoundByStackId(ILandroid/graphics/Rect;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 642
    :goto_5
    return-void

    .line 639
    :catch_6
    move-exception v0

    .line 640
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 459
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 463
    :goto_5
    return-void

    .line 460
    :catch_6
    move-exception v0

    .line 461
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public unregisterMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V
    .registers 4
    .param p1, "observer"    # Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;

    .prologue
    .line 901
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->unregisterMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 905
    :goto_5
    return-void

    .line 902
    :catch_6
    move-exception v0

    .line 903
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .registers 4
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 743
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 748
    :goto_5
    return-void

    .line 744
    :catch_6
    move-exception v0

    .line 745
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 424
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 429
    :goto_5
    return-void

    .line 425
    :catch_6
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public updateMinimizeSize(Landroid/os/IBinder;[I)V
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "size"    # [I

    .prologue
    .line 530
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->updateMinimizeSize(Landroid/os/IBinder;[I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 534
    :goto_5
    return-void

    .line 531
    :catch_6
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 823
    if-nez p1, :cond_3

    .line 832
    :goto_2
    return-void

    .line 826
    :cond_3
    :try_start_3
    const-string v1, "MultiWindowFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateMultiWindowSetting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_20} :catch_21

    goto :goto_2

    .line 829
    :catch_21
    move-exception v0

    .line 830
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public updateMultiWindowSetting(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 818
    const-string/jumbo v0, "prev"

    invoke-virtual {p0, p1, v0, p2}, updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 819
    return-void
.end method

.method public updatePreferenceThroughSystemProcess(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 798
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->updatePreferenceThroughSystemProcess(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 802
    :goto_5
    return-void

    .line 799
    :catch_6
    move-exception v0

    .line 800
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method
