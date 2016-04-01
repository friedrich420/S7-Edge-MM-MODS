.class final Lcom/android/server/am/MultiWindowFacadeService$BinderService;
.super Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;
.source "MultiWindowFacadeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowFacadeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowFacadeService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/MultiWindowFacadeService;)V
    .registers 2

    .prologue
    .line 1176
    iput-object p1, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/MultiWindowFacadeService;Lcom/android/server/am/MultiWindowFacadeService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/MultiWindowFacadeService;
    .param p2, "x1"    # Lcom/android/server/am/MultiWindowFacadeService$1;

    .prologue
    .line 1176
    invoke-direct {p0, p1}, <init>(Lcom/android/server/am/MultiWindowFacadeService;)V

    return-void
.end method


# virtual methods
.method public addTab(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 1318
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->addTab(Landroid/os/IBinder;)V

    .line 1319
    return-void
.end method

.method public appMinimizingStarted(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1359
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->appMinimizingStarted(Landroid/os/IBinder;)V

    .line 1360
    return-void
.end method

.method public changeTaskToCascade(Landroid/graphics/Point;IZ)Z
    .registers 5
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "zone"    # I
    .param p3, "bMinimize"    # Z

    .prologue
    .line 1266
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->changeTaskToCascade(Landroid/graphics/Point;IZ)Z

    move-result v0

    return v0
.end method

.method public changeTaskToFull(I)V
    .registers 3
    .param p1, "zone"    # I

    .prologue
    .line 1262
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->changeTaskToFull(I)V

    .line 1263
    return-void
.end method

.method public closeMultiWindowPanel()Z
    .registers 2

    .prologue
    .line 1429
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->closeMultiWindowPanel()Z

    move-result v0

    return v0
.end method

.method public exchangeTopTaskToZone(II)Z
    .registers 4
    .param p1, "zone1"    # I
    .param p2, "zone2"    # I

    .prologue
    .line 1218
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->exchangeTopTaskToZone(II)Z

    move-result v0

    return v0
.end method

.method public exitByCloseBtn(I)V
    .registers 3
    .param p1, "taskId"    # I

    .prologue
    .line 1238
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->exitByCloseBtn(I)V

    .line 1239
    return-void
.end method

.method public finishAllTasks(Landroid/os/IBinder;I)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1350
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->finishAllTasks(Landroid/os/IBinder;I)V

    .line 1351
    return-void
.end method

.method public getArrangeState()I
    .registers 2

    .prologue
    .line 1242
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getArrangeState()I

    move-result v0

    return v0
.end method

.method public getAvailableMultiInstanceCnt()I
    .registers 2

    .prologue
    .line 1274
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getAvailableMultiInstanceCnt()I

    move-result v0

    return v0
.end method

.method public getCenterBarPoint(I)Landroid/graphics/Point;
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 1186
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentOrientation()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1364
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getCurrentOrientation()I

    move-result v0

    return v0
.end method

.method public getDragAndDropModeOfStack(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1389
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getDragAndDropModeOfStack(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public getEnabledFeaturesFlags()J
    .registers 3

    .prologue
    .line 1409
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getEnabledFeaturesFlags()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpectedOrientation()I
    .registers 2

    .prologue
    .line 1214
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getExpectedOrientation()I

    move-result v0

    return v0
.end method

.method public getFocusedStackLayer()I
    .registers 2

    .prologue
    .line 1246
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getFocusedStackLayer()I

    move-result v0

    return v0
.end method

.method public getFocusedZone()I
    .registers 2

    .prologue
    .line 1250
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getFocusedZone()I

    move-result v0

    return v0
.end method

.method public getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 1230
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalSystemUiVisibility()I
    .registers 2

    .prologue
    .line 1258
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getGlobalSystemUiVisibility()I

    move-result v0

    return v0
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 1198
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceThroughSystemProcess(Ljava/lang/String;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1419
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getPreferenceThroughSystemProcess(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRecentTaskSize(II)I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1369
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->getRecentTaskSize(II)I

    move-result v0

    return v0
.end method

.method public getRunningPenWindowCnt()I
    .registers 2

    .prologue
    .line 1434
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getRunningPenWindowCnt()I

    move-result v0

    return v0
.end method

.method public getRunningScaleWindows()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1374
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getRunningScaleWindows()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTasks(II)Ljava/util/List;
    .registers 4
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

    .prologue
    .line 1234
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->getRunningTasks(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSplitMaxWeight()F
    .registers 2

    .prologue
    .line 1302
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getSplitMaxWeight()F

    move-result v0

    return v0
.end method

.method public getSplitMinWeight()F
    .registers 2

    .prologue
    .line 1298
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getSplitMinWeight()F

    move-result v0

    return v0
.end method

.method public getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 1206
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getStackId(Landroid/os/IBinder;)I
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 1334
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackId(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 1210
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 1310
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getSystemDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .prologue
    .line 1354
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTabs()Ljava/util/List;
    .registers 2
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
    .line 1326
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->getTabs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getZoneBounds(I)Landroid/graphics/Rect;
    .registers 3
    .param p1, "zone"    # I

    .prologue
    .line 1226
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getZoneBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public isEnableMakePenWindow(I)Z
    .registers 3
    .param p1, "notIncludeTaskId"    # I

    .prologue
    .line 1306
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->isEnableMakePenWindow(I)Z

    move-result v0

    return v0
.end method

.method public isSplitSupportedForTask(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 1439
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->isSplitSupportedForTask(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public minimizeTask(ILandroid/graphics/Point;Z)Z
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "iconLocation"    # Landroid/graphics/Point;
    .param p3, "stayResumed"    # Z

    .prologue
    .line 1270
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->minimizeTask(ILandroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method public minimizeWindow(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 1178
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->minimizeWindow(Landroid/os/IBinder;)V

    .line 1179
    return-void
.end method

.method public moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .param p4, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 1290
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/MultiWindowFacadeService;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1291
    return-void
.end method

.method public needHideTrayBar()Z
    .registers 2

    .prologue
    .line 1222
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->needHideTrayBar()Z

    move-result v0

    return v0
.end method

.method public needMoveOnlySpecificTaskToFront(I)Z
    .registers 3
    .param p1, "taskId"    # I

    .prologue
    .line 1286
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->needMoveOnlySpecificTaskToFront(I)Z

    move-result v0

    return v0
.end method

.method public needToExposureTitleBarMenu()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1379
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFacadeService;->needToExposureTitleBarMenu()Z

    move-result v0

    return v0
.end method

.method public registerMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V
    .registers 3
    .param p1, "observer"    # Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;

    .prologue
    .line 1444
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->registerMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V

    .line 1445
    return-void
.end method

.method public registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .registers 3
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1394
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 1395
    return-void
.end method

.method public registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V
    .registers 4
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1399
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V

    .line 1400
    return-void
.end method

.method public removeAllTasks(Landroid/os/IBinder;IZ)V
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "logging"    # Z

    .prologue
    .line 1346
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->removeAllTasks(Landroid/os/IBinder;IZ)V

    .line 1347
    return-void
.end method

.method public removeTab(I)Z
    .registers 3
    .param p1, "stackId"    # I

    .prologue
    .line 1322
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->removeTab(I)Z

    move-result v0

    return v0
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    .line 1342
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1343
    return-void
.end method

.method public setCenterBarPoint(ILandroid/graphics/Point;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1182
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 1183
    return-void
.end method

.method public setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1384
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V

    .line 1385
    return-void
.end method

.method public setFocusAppByZone(I)V
    .registers 3
    .param p1, "zone"    # I

    .prologue
    .line 1278
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->setFocusAppByZone(I)V

    .line 1279
    return-void
.end method

.method public setFocusedStack(IZ)V
    .registers 4
    .param p1, "stackId"    # I
    .param p2, "tapOutSide"    # Z

    .prologue
    .line 1330
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setFocusedStack(IZ)V

    .line 1331
    return-void
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 1190
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1191
    return-void
.end method

.method public setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p3, "loggingReason"    # I

    .prologue
    .line 1194
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 1195
    return-void
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .registers 3
    .param p1, "open"    # Z

    .prologue
    .line 1254
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->setMultiWindowTrayOpenState(Z)V

    .line 1255
    return-void
.end method

.method public setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 1202
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 1203
    return-void
.end method

.method public setStackBoundByStackId(ILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "stackId"    # I
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 1338
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->setStackBoundByStackId(ILandroid/graphics/Rect;)V

    .line 1339
    return-void
.end method

.method public startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 1294
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1295
    return-void
.end method

.method public unregisterMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V
    .registers 3
    .param p1, "observer"    # Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;

    .prologue
    .line 1449
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->unregisterMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V

    .line 1450
    return-void
.end method

.method public unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .registers 3
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1404
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 1405
    return-void
.end method

.method public updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1282
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 1283
    return-void
.end method

.method public updateMinimizeSize(Landroid/os/IBinder;[I)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "size"    # [I

    .prologue
    .line 1314
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->updateMinimizeSize(Landroid/os/IBinder;[I)V

    .line 1315
    return-void
.end method

.method public updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "requester"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 1424
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFacadeService;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1425
    return-void
.end method

.method public updatePreferenceThroughSystemProcess(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1414
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->updatePreferenceThroughSystemProcess(Ljava/lang/String;I)V

    .line 1415
    return-void
.end method
