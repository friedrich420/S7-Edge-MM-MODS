.class public Lcom/android/server/am/MultiWindowFacadeService;
.super Lcom/android/server/SystemService;
.source "MultiWindowFacadeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowFacadeService$1;,
        Lcom/android/server/am/MultiWindowFacadeService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOGGING_REASON_DOCKING:I = 0x1

.field private static final SAFE_DEBUG:Z

.field private static final SHARED_PREFERENCE_MULTI_WINDOW:Ljava/lang/String; = "shared_preference_multi_window"

.field private static final TAG:Ljava/lang/String; = "MultiWindowFacade"

.field private static sSelf:Lcom/android/server/am/MultiWindowFacadeService;


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mMWOffRequesters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMWOffRequestersLog:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 57
    const/4 v1, 0x0

    sput-object v1, sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    .line 66
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_b

    const/4 v0, 0x0

    :cond_b
    sput-boolean v0, SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 58
    iput-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 59
    iput-object v1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mMWOffRequesters:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mMWOffRequestersLog:Landroid/util/SparseArray;

    .line 70
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 71
    sput-object p0, sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    .line 72
    return-void
.end method

.method private getTopTaskIdByZone(I)I
    .registers 8
    .param p1, "zone"    # I

    .prologue
    .line 424
    const/4 v2, -0x1

    .line 425
    .local v2, "taskId":I
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 426
    .local v0, "ass":Lcom/android/server/am/ActivityStackSupervisor;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v3

    iget v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 427
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 428
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget v2, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 431
    :cond_1d
    const-string v3, "MultiWindowFacade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTopTaskIdByZone zone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return v2
.end method

.method public static self()Lcom/android/server/am/MultiWindowFacadeService;
    .registers 1

    .prologue
    .line 75
    sget-object v0, sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    return-object v0
.end method


# virtual methods
.method public addTab(Landroid/os/IBinder;)V
    .registers 15
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 820
    const/4 v8, -0x1

    .line 822
    .local v8, "stackId":I
    iget-object v11, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 823
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 824
    .local v4, "origId":J
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 825
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v6, :cond_10

    .line 826
    monitor-exit v11

    .line 857
    :goto_f
    return-void

    .line 827
    :cond_10
    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v8

    .line 828
    const/4 v10, -0x1

    if-eq v8, v10, :cond_a5

    .line 829
    iget-object v10, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v10, v8}, Lcom/android/server/am/MultiWindowPolicy;->setTabFrontStack(I)V

    .line 830
    iget-object v10, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v10}, Lcom/android/server/am/MultiWindowPolicy;->getTabs()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 831
    iget-object v10, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v6, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v8, v12}, Lcom/android/server/am/MultiWindowPolicy;->addTab(ILandroid/content/ComponentName;)V

    .line 832
    iget-object v10, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v8, p1}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v1

    .line 834
    .local v1, "bound":Landroid/graphics/Rect;
    iget-object v10, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 835
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_4a
    if-ltz v2, :cond_a5

    .line 836
    iget-object v10, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 837
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v10

    if-eqz v10, :cond_6f

    .line 838
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 839
    .local v9, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v9, :cond_6f

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6f

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x4

    invoke-virtual {v10, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_72

    .line 835
    .end local v9    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_6f
    :goto_6f
    add-int/lit8 v2, v2, -0x1

    goto :goto_4a

    .line 843
    .restart local v9    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_72
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 844
    new-instance v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v3, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 845
    .local v3, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v8

    .line 846
    invoke-virtual {v7, v1}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 847
    const/high16 v10, 0x800000

    const/4 v12, 0x1

    invoke-virtual {v3, v10, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 848
    invoke-virtual {v3, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 849
    iget-object v10, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v10, v7, v3}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 850
    iget-object v10, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v9, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v8, v12}, Lcom/android/server/am/MultiWindowPolicy;->addTab(ILandroid/content/ComponentName;)V

    .line 851
    iget-object v10, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v8, v1}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    goto :goto_6f

    .line 856
    .end local v0    # "N":I
    .end local v1    # "bound":Landroid/graphics/Rect;
    .end local v2    # "i":I
    .end local v3    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v4    # "origId":J
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :catchall_a2
    move-exception v10

    monitor-exit v11
    :try_end_a4
    .catchall {:try_start_4 .. :try_end_a4} :catchall_a2

    throw v10

    .line 855
    .restart local v4    # "origId":J
    .restart local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_a5
    :try_start_a5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 856
    monitor-exit v11
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_a2

    goto/16 :goto_f
.end method

.method public appMinimizingStarted(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 961
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->appMinimizingStarted(Landroid/os/IBinder;)V

    .line 962
    return-void
.end method

.method public changeTaskToCascade(Landroid/graphics/Point;IZ)Z
    .registers 8
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "zone"    # I
    .param p3, "bMinimize"    # Z

    .prologue
    .line 597
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow()Z

    move-result v1

    if-nez v1, :cond_c

    .line 598
    const/4 v0, 0x0

    .line 605
    :goto_b
    return v0

    .line 600
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 601
    .local v2, "origId":J
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->changeTypeOfTaskToCascade(Landroid/graphics/Point;IZ)Z

    move-result v0

    .line 604
    .local v0, "bSuccess":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b
.end method

.method public changeTaskToFull(I)V
    .registers 5
    .param p1, "zone"    # I

    .prologue
    .line 591
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 592
    .local v0, "origId":J
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->changeTypeOfTaskToNormal(I)V

    .line 593
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 594
    return-void
.end method

.method public closeMultiWindowPanel()Z
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1143
    iget-object v8, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1144
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1145
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v8, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1147
    invoke-virtual {v2, v10, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1148
    .local v4, "topRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_56

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v9, 0x4000000

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_56

    move v1, v6

    .line 1150
    .local v1, "isMultiWindowPanel":Z
    :goto_3c
    if-eqz v1, :cond_f

    .line 1151
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1152
    .local v5, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_f

    .line 1153
    iget-object v8, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9, v7, v10, v6}, Lcom/android/server/am/ActivityManagerService;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    .line 1154
    iget-object v8, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const v11, 0x10a0049

    invoke-virtual {v8, v9, v10, v11, v7}, Lcom/android/server/am/ActivityManagerService;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1160
    .end local v1    # "isMultiWindowPanel":Z
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "tr":Lcom/android/server/am/TaskRecord;
    :goto_55
    return v6

    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_56
    move v1, v7

    .line 1148
    goto :goto_3c

    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_58
    move v6, v7

    .line 1160
    goto :goto_55
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 142
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_33

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump MultiWindowFacade from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    :goto_32
    return-void

    .line 148
    :cond_33
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 149
    :try_start_36
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    const-string v5, "----------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    const-string v5, "MULTIWINDOW SERVICE (dumpsys multiwindow facade service)"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    const-string/jumbo v5, "mCenterBarPoint="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v5

    if-eqz v5, :cond_ac

    .line 154
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 158
    :goto_56
    const-string v5, "----------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v5, "mTabFrontStack="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowPolicy;->getTabFrontStack()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 163
    const-string/jumbo v5, "mTabMap :"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowPolicy;->getTabs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowTab;

    .line 165
    .local v3, "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    const-string v5, "   "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v5, "stackid = "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 169
    const-string v5, " ,component = "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_7e

    .line 182
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    :catchall_a9
    move-exception v5

    monitor-exit v6
    :try_end_ab
    .catchall {:try_start_36 .. :try_end_ab} :catchall_a9

    throw v5

    .line 156
    :cond_ac
    :try_start_ac
    const-string/jumbo v5, "null"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_56

    .line 173
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_b3
    const-string v5, "----------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v5, "mTaskController :"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowPolicy;->getTaskController()Ljava/util/HashMap;

    move-result-object v4

    .line 176
    .local v4, "taskControllers":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/os/IBinder;Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 177
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/am/MultiWindowPolicy$TaskController;>;>;"
    :goto_ce
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e7

    .line 178
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    .local v0, "entryvalue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    const-string v5, "   "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_ce

    .line 181
    .end local v0    # "entryvalue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    :cond_e7
    const-string v5, "----------------------------------------------------------------------"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    monitor-exit v6
    :try_end_ed
    .catchall {:try_start_ac .. :try_end_ed} :catchall_a9

    goto/16 :goto_32
.end method

.method public dumpMultiWindowSetting(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1044
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1045
    const-string v8, "MultiWindow setting"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "current"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1048
    iget-object v8, p0, mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .local v0, "i":I
    :goto_1c
    if-ltz v0, :cond_73

    .line 1049
    iget-object v8, p0, mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1050
    .local v7, "userId":I
    iget-object v8, p0, mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1051
    .local v4, "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1052
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1053
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "u"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " block requester : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_30

    .line 1055
    .end local v6    # "str":Ljava/lang/String;
    :cond_67
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_70

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1048
    :cond_70
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 1057
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "userId":I
    :cond_73
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1058
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "history"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1060
    iget-object v8, p0, mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    :goto_8a
    if-ltz v0, :cond_e9

    .line 1061
    iget-object v8, p0, mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1062
    .restart local v7    # "userId":I
    iget-object v8, p0, mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1063
    .local v5, "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1064
    .local v2, "index":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_9f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1065
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "u"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " history["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    move v2, v3

    .line 1067
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_9f

    .line 1068
    .end local v6    # "str":Ljava/lang/String;
    :cond_e3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1060
    add-int/lit8 v0, v0, -0x1

    goto :goto_8a

    .line 1070
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    .end local v5    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "userId":I
    :cond_e9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1071
    return-void
.end method

.method public exchangeTopTaskToZone(II)Z
    .registers 11
    .param p1, "zone1"    # I
    .param p2, "zone2"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v7, -0x1

    .line 400
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 401
    :try_start_5
    invoke-direct {p0, p1}, getTopTaskIdByZone(I)I

    move-result v0

    .line 402
    .local v0, "task1":I
    invoke-direct {p0, p2}, getTopTaskIdByZone(I)I

    move-result v1

    .line 404
    .local v1, "task2":I
    const-string v4, "MultiWindowFacade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exchangeTopTaskToZone zone1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " task1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " zone2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " task2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    if-eq v0, v7, :cond_58

    if-eq v1, v7, :cond_58

    .line 408
    iget-object v4, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/am/ActivityManagerService;->exchangeTaskToStack(IIZ)V

    .line 409
    monitor-exit v3

    .line 411
    :goto_57
    return v2

    :cond_58
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_57

    .line 412
    .end local v0    # "task1":I
    .end local v1    # "task2":I
    :catchall_5b
    move-exception v2

    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_5b

    throw v2
.end method

.method public exitByCloseBtn(I)V
    .registers 6
    .param p1, "taskId"    # I

    .prologue
    .line 472
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 473
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_16

    move-result-wide v0

    .line 475
    .local v0, "origId":J
    :try_start_7
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService;->exitByCloseBtn(I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 477
    :try_start_c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 479
    monitor-exit v3

    .line 480
    return-void

    .line 477
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 479
    .end local v0    # "origId":J
    :catchall_16
    move-exception v2

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v2
.end method

.method public finishAllTasks(Landroid/os/IBinder;I)V
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 942
    iget-object v8, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 943
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 945
    .local v2, "origId":J
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 946
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_34

    .line 947
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 948
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 949
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 950
    .local v6, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_19

    .line 951
    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityStack;->finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_19

    .line 957
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "origId":J
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v6    # "top":Lcom/android/server/am/ActivityRecord;
    :catchall_31
    move-exception v7

    monitor-exit v8
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v7

    .line 956
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "origId":J
    :cond_34
    :try_start_34
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 957
    monitor-exit v8
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_31

    .line 958
    return-void
.end method

.method public getArrangeState()I
    .registers 16

    .prologue
    .line 483
    iget-object v12, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    .line 484
    const/4 v7, 0x0

    .line 485
    .local v7, "result":I
    :try_start_4
    iget-object v11, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v13, 0x0

    iget-object v14, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->getStackOrder(ZLcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)Ljava/util/ArrayList;

    move-result-object v9

    .line 487
    .local v9, "stackIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v6, "recordOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 489
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    if-ge v4, v0, :cond_4c

    .line 490
    iget-object v11, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v13, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 492
    .local v3, "currStack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_49

    .line 493
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 494
    .local v2, "currRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_49

    iget-boolean v11, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v11, :cond_49

    .line 495
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v11

    if-nez v11, :cond_49

    .line 496
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    .end local v2    # "currRecord":Lcom/android/server/am/ActivityRecord;
    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 501
    .end local v3    # "currStack":Lcom/android/server/am/ActivityStack;
    :cond_4c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 502
    .local v8, "splitStackSize":I
    const/4 v11, 0x1

    if-le v8, v11, :cond_56

    .line 503
    packed-switch v8, :pswitch_data_88

    .line 525
    :cond_56
    :goto_56
    monitor-exit v12

    return v7

    .line 505
    :pswitch_58
    const/4 v7, 0x1

    .line 506
    goto :goto_56

    .line 508
    :pswitch_5a
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_56

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 509
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v10

    .line 510
    .local v10, "zone":I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_76

    const/4 v11, 0x2

    if-ne v10, v11, :cond_78

    .line 511
    :cond_76
    const/4 v7, 0x2

    .line 512
    goto :goto_56

    .line 514
    :cond_78
    const/4 v11, 0x4

    if-eq v10, v11, :cond_7f

    const/16 v11, 0x8

    if-ne v10, v11, :cond_5e

    .line 515
    :cond_7f
    const/4 v7, 0x4

    .line 516
    goto :goto_56

    .line 521
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v10    # "zone":I
    :pswitch_81
    const/16 v7, 0x8

    goto :goto_56

    .line 526
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v6    # "recordOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "splitStackSize":I
    .end local v9    # "stackIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_84
    move-exception v11

    monitor-exit v12
    :try_end_86
    .catchall {:try_start_4 .. :try_end_86} :catchall_84

    throw v11

    .line 503
    nop

    :pswitch_data_88
    .packed-switch 0x2
        :pswitch_58
        :pswitch_5a
        :pswitch_81
    .end packed-switch
.end method

.method public getAvailableMultiInstanceCnt()I
    .registers 3

    .prologue
    .line 617
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 618
    :try_start_3
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getAvailableMultiInstanceCnt()I

    move-result v0

    monitor-exit v1

    return v0

    .line 619
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getCenterBarPoint(I)Landroid/graphics/Point;
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 224
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_3
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 226
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getCurrentOrientation()I
    .registers 2

    .prologue
    .line 998
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getForcedAppOrientation()I

    move-result v0

    return v0
.end method

.method public getDragAndDropModeOfStack(Landroid/os/IBinder;)Z
    .registers 8
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 574
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 575
    .local v2, "origId":J
    const/4 v0, 0x0

    .line 576
    .local v0, "dragAndDropMode":Z
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 577
    :try_start_8
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 578
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1e

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_1e

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_1e

    .line 579
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-boolean v0, v4, Lcom/android/server/am/ActivityStack;->mDragAndDropMode:Z

    .line 581
    :cond_1e
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_23

    .line 582
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    return v0

    .line 581
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_23
    move-exception v4

    :try_start_24
    monitor-exit v5
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v4
.end method

.method public getEnabledFeaturesFlags()J
    .registers 3

    .prologue
    .line 1014
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->getEnabledFeaturesFlags(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpectedOrientation()I
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getExpectedOrientation()I

    move-result v0

    return v0
.end method

.method public getFocusedStackLayer()I
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getFocusedStackLayer()I

    move-result v0

    return v0
.end method

.method public getFocusedZone()I
    .registers 4

    .prologue
    .line 534
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 536
    .local v1, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_18

    .line 537
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 538
    .local v0, "activityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_18

    .line 539
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    .line 542
    .end local v0    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 442
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, getFrontActivityMultiWindowStyle(II)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method public getFrontActivityMultiWindowStyle(II)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 7
    .param p1, "flags"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 446
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 447
    :try_start_3
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :goto_c
    invoke-virtual {v3, v1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->topResumedActivityExceptFloatingLocked(ZI)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 451
    .local v0, "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_18

    .line 452
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    monitor-exit v2

    .line 454
    :goto_15
    return-object v1

    .line 447
    .end local v0    # "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_16
    const/4 v1, 0x0

    goto :goto_c

    .line 454
    .restart local v0    # "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_18
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_15

    .line 455
    .end local v0    # "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getGlobalSystemUiVisibility()I
    .registers 2

    .prologue
    .line 587
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getGlobalSystemUiVisibility()I

    move-result v0

    return v0
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 319
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 320
    :try_start_3
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 321
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_c

    .line 322
    const/4 v1, 0x0

    monitor-exit v2

    .line 323
    :goto_b
    return-object v1

    :cond_c
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    monitor-exit v2

    goto :goto_b

    .line 324
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getPreferenceThroughSystemProcess(Ljava/lang/String;)I
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1031
    const-string/jumbo v4, "do_not_show_help_popup_drag_and_drop"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 1032
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPreferenceThroughSystemProcess is not for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1034
    :cond_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1036
    .local v0, "origId":J
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "shared_preference_multi_window"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1037
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2, p1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1039
    .local v3, "value":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1040
    return v3
.end method

.method public getRecentTaskSize(II)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "maxCount"    # I

    .prologue
    .line 965
    const/4 v2, 0x0

    .line 966
    .local v2, "size":I
    iget-object v4, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 967
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 968
    .local v0, "origId":J
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getRecentTaskSizeLocked(II)I

    move-result v2

    .line 969
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 970
    monitor-exit v4

    .line 971
    return v2

    .line 970
    .end local v0    # "origId":J
    :catchall_13
    move-exception v3

    monitor-exit v4
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v3
.end method

.method public getRunningPenWindowCnt()I
    .registers 3

    .prologue
    .line 742
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 743
    :try_start_3
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getRunningPenWindowCnt()I

    move-result v0

    monitor-exit v1

    return v0

    .line 744
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getRunningScaleWindows()Ljava/util/List;
    .registers 9
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
    .line 975
    iget-object v6, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 976
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 978
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 979
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 980
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 981
    .local v4, "topRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_14

    .line 982
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 984
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 994
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :catchall_40
    move-exception v5

    monitor-exit v6
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v5

    .line 985
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_43
    :try_start_43
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 988
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 993
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_52
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_40

    return-object v1
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
    .line 464
    :try_start_0
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getTasks(II)Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 467
    :goto_6
    return-object v1

    .line 465
    :catch_7
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSplitMaxWeight()F
    .registers 2

    .prologue
    .line 738
    const v0, 0x3f4ccccd    # 0.8f

    return v0
.end method

.method public getSplitMinWeight()F
    .registers 2

    .prologue
    .line 734
    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 363
    const/4 v1, -0x1

    .line 364
    .local v1, "stackId":I
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 365
    :try_start_5
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 366
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_d

    .line 367
    monitor-exit v3

    .line 373
    :cond_c
    :goto_c
    return-object v2

    .line 368
    :cond_d
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 369
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_20

    .line 370
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    .line 371
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_c

    .line 369
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public getStackId(Landroid/os/IBinder;)I
    .registers 6
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 890
    const/4 v1, -0x1

    .line 891
    .local v1, "stackId":I
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 892
    :try_start_4
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 893
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_d

    .line 894
    const/4 v2, -0x1

    monitor-exit v3

    .line 897
    :goto_c
    return v2

    .line 895
    :cond_d
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 896
    monitor-exit v3

    move v2, v1

    .line 897
    goto :goto_c

    .line 896
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 382
    const/4 v1, -0x1

    .line 383
    .local v1, "stackId":I
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 384
    :try_start_5
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 385
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_d

    .line 386
    monitor-exit v3

    .line 392
    :cond_c
    :goto_c
    return-object v2

    .line 387
    :cond_d
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 388
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_20

    .line 389
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    .line 390
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_c

    .line 388
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    .registers 7
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 791
    const/4 v1, -0x1

    .line 792
    .local v1, "stackId":I
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 793
    :try_start_5
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 794
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_d

    .line 795
    monitor-exit v3

    .line 802
    :cond_c
    :goto_c
    return-object v2

    .line 797
    :cond_d
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 798
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_20

    .line 799
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    .line 800
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/WindowManagerService;->getStackPosition(ILandroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_c

    .line 798
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public getSystemDisplayInfo()Landroid/view/DisplayInfo;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1168
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1169
    .local v0, "di":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_11

    .line 1170
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1, v0}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 1173
    :cond_11
    return-object v1
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
    .line 869
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 870
    :try_start_3
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getTabs()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 871
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getZoneBounds(I)Landroid/graphics/Rect;
    .registers 6
    .param p1, "zone"    # I

    .prologue
    .line 416
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 417
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->getBounds(Landroid/graphics/Rect;I)V

    .line 418
    const-string v1, "MultiWindowFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getZoneBounds zone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-object v0
.end method

.method public initMultiWindowApplicationInfo()V
    .registers 3

    .prologue
    .line 779
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 780
    :try_start_3
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->initMultiWindowApplicationInfo()V

    .line 781
    monitor-exit v1

    .line 782
    return-void

    .line 781
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public isEnableMakePenWindow()Z
    .registers 3

    .prologue
    .line 767
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 768
    :try_start_3
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 769
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public isEnableMakePenWindow(I)Z
    .registers 4
    .param p1, "notIncludeTaskId"    # I

    .prologue
    .line 773
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 774
    :try_start_3
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 775
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public isSplitSupportedForTask(Landroid/os/IBinder;)Z
    .registers 9
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 748
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 749
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_39

    .line 750
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 751
    :try_start_a
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_3d

    .line 752
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 753
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-nez v5, :cond_38

    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 755
    :cond_38
    monitor-exit v4

    .line 763
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "i":I
    :cond_39
    :goto_39
    return v3

    .line 751
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "i":I
    :cond_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 760
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_3d
    monitor-exit v4

    .line 761
    const/4 v3, 0x1

    goto :goto_39

    .line 760
    .end local v1    # "i":I
    :catchall_40
    move-exception v3

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_a .. :try_end_42} :catchall_40

    throw v3
.end method

.method public minimizeAll()V
    .registers 4

    .prologue
    .line 785
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 786
    :try_start_3
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/MultiWindowPolicy;->minimizeAll(Ljava/lang/String;)V

    .line 787
    monitor-exit v1

    .line 788
    return-void

    .line 787
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public minimizeTask(ILandroid/graphics/Point;Z)Z
    .registers 8
    .param p1, "taskId"    # I
    .param p2, "iconLocation"    # Landroid/graphics/Point;
    .param p3, "stayResumed"    # Z

    .prologue
    .line 609
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 610
    .local v2, "origId":J
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->changeTaskToMinimized(ILandroid/graphics/Point;Z)Z

    move-result v0

    .line 612
    .local v0, "bSuccess":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 613
    return v0
.end method

.method public minimizeWindow(Landroid/os/IBinder;)V
    .registers 13
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 186
    iget-object v8, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 187
    :try_start_3
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 188
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_56

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_56

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_56

    .line 189
    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 191
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "taskNdx":I
    :goto_21
    if-ltz v5, :cond_56

    .line 192
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 193
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 195
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "activityNdx":I
    :goto_31
    if-ltz v1, :cond_4d

    .line 196
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 197
    .local v2, "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_4a

    iget-boolean v7, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v7, :cond_4a

    .line 198
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-virtual {v7, v2, v9, v10}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 195
    :cond_4a
    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    .line 202
    .end local v2    # "cr":Lcom/android/server/am/ActivityRecord;
    :cond_4d
    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v7, :cond_53

    .line 204
    monitor-exit v8

    .line 209
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "taskNdx":I
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :goto_52
    return-void

    .line 191
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "taskNdx":I
    .restart local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_53
    add-int/lit8 v5, v5, -0x1

    goto :goto_21

    .line 208
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "taskNdx":I
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_56
    monitor-exit v8

    goto :goto_52

    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_58
    move-exception v7

    monitor-exit v8
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw v7
.end method

.method public moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 19
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .param p4, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 662
    iget-object v13, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 663
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 664
    .local v8, "origId":J
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 665
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    if-nez v11, :cond_13

    .line 666
    monitor-exit v13
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_31

    .line 727
    :goto_12
    return-void

    .line 669
    :cond_13
    :try_start_13
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v11}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 670
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 671
    const-string v2, "MultiWindowFacade"

    const-string/jumbo v3, "moveOnlySpecificTaskToFront : Attempt to violate Lock Task Mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_134

    .line 723
    :try_start_2c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v13

    goto :goto_12

    .line 726
    .end local v8    # "origId":J
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_31
    move-exception v2

    monitor-exit v13
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_31

    throw v2

    .line 674
    .restart local v8    # "origId":J
    .restart local v11    # "task":Lcom/android/server/am/TaskRecord;
    :cond_34
    :try_start_34
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    iget-object v5, v11, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 675
    .local v10, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_4f

    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 676
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 678
    :cond_4f
    if-eqz p4, :cond_139

    .line 679
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 680
    .local v12, "topRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_12c

    .line 681
    and-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_63

    .line 682
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 684
    :cond_63
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_82

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_82

    .line 686
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow()Z
    :try_end_7a
    .catchall {:try_start_34 .. :try_end_7a} :catchall_134

    move-result v2

    if-nez v2, :cond_82

    .line 723
    :try_start_7d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v13
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_31

    goto :goto_12

    .line 690
    :cond_82
    :try_start_82
    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 691
    .local v4, "newStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 692
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 693
    const/16 v2, 0x800

    const/16 v3, 0x800

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 694
    const/high16 v2, 0x10000

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 695
    const/high16 v2, 0x10000

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 697
    :cond_b4
    const/high16 v2, 0x2000000

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 698
    const/high16 v2, 0x2000000

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 699
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->createMultiWindowFreezeSurface()V

    .line 701
    :cond_cb
    const/high16 v2, 0x10000000

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 702
    const/high16 v2, 0x10000000

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 704
    :cond_db
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_fd

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_fd

    .line 705
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->adjustStackBound(Landroid/graphics/Rect;)V

    .line 706
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 708
    :cond_fd
    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/android/server/am/TaskRecord;->bHidden:Z

    .line 709
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;)V

    .line 710
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_115

    .line 711
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 713
    :cond_115
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "FIXME"

    invoke-virtual {v2, v12, v3}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 714
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V
    :try_end_123
    .catchall {:try_start_82 .. :try_end_123} :catchall_134

    .line 723
    .end local v4    # "newStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v12    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :goto_123
    :try_start_123
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 725
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 726
    monitor-exit v13
    :try_end_12a
    .catchall {:try_start_123 .. :try_end_12a} :catchall_31

    goto/16 :goto_12

    .line 717
    .restart local v12    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_12c
    :try_start_12c
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {p0, p1, v0, v1}, startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_133
    .catchall {:try_start_12c .. :try_end_133} :catchall_134

    goto :goto_123

    .line 723
    .end local v10    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :catchall_134
    move-exception v2

    :try_start_135
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_139
    .catchall {:try_start_135 .. :try_end_139} :catchall_31

    .line 720
    .restart local v10    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_139
    :try_start_139
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v3, "FIXME"

    move/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v2, v11, v0, v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;Ljava/lang/String;)V
    :try_end_146
    .catchall {:try_start_139 .. :try_end_146} :catchall_134

    goto :goto_123
.end method

.method public needHideTrayBar()Z
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->needHideTrayBar()Z

    move-result v0

    return v0
.end method

.method public needMoveOnlySpecificTaskToFront(I)Z
    .registers 6
    .param p1, "taskId"    # I

    .prologue
    .line 651
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 652
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    move-result-wide v0

    .line 654
    .local v0, "origId":J
    :try_start_7
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->needMoveOnlySpecificTaskToFront(I)Z
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    move-result v2

    .line 656
    :try_start_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    return v2

    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 658
    .end local v0    # "origId":J
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public needToExposureTitleBarMenu()Z
    .registers 3

    .prologue
    .line 557
    sget-boolean v0, Lcom/android/server/am/MultiWindowPolicy;->sExposuerTitleBarMenu:Z

    .line 558
    .local v0, "result":Z
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/MultiWindowPolicy;->sExposuerTitleBarMenu:Z

    .line 559
    return v0
.end method

.method public notifyMultiWindowStyleChangedLocked(Landroid/content/ComponentName;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 10
    .param p1, "cmp"    # Landroid/content/ComponentName;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 116
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 117
    :try_start_3
    iget-object v4, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v4, :cond_2f

    .line 118
    iget-object v4, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 119
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_2a

    .line 120
    iget-object v4, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_27

    .line 122
    .local v3, "obs":Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
    :try_start_18
    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;->onMultiWindowStyleChanged(Landroid/content/ComponentName;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1e
    .catchall {:try_start_18 .. :try_end_1b} :catchall_27

    .line 119
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 123
    :catch_1e
    move-exception v1

    .line 124
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v4, "MultiWindowFacade"

    const-string v6, "Gamemode - notifyMultiWindowStyleChangedLocked() error"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 129
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "obs":Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
    :catchall_27
    move-exception v4

    monitor-exit v5
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_27

    throw v4

    .line 127
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_2a
    :try_start_2a
    iget-object v4, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 129
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_2f
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_27

    .line 130
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 1455
    const-string/jumbo v0, "multiwindow_facade"

    new-instance v1, Lcom/android/server/am/MultiWindowFacadeService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MultiWindowFacadeService$BinderService;-><init>(Lcom/android/server/am/MultiWindowFacadeService;Lcom/android/server/am/MultiWindowFacadeService$1;)V

    invoke-virtual {p0, v0, v1}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1456
    return-void
.end method

.method public registerMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V
    .registers 7
    .param p1, "observer"    # Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;

    .prologue
    .line 80
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.REAL_GET_TASKS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_47

    const/4 v0, 0x1

    .line 82
    .local v0, "allowed":Z
    :goto_13
    if-eqz v0, :cond_4c

    .line 83
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 84
    :try_start_18
    sget-boolean v1, SAFE_DEBUG:Z

    if-eqz v1, :cond_35

    .line 85
    const-string v1, "MultiWindowFacade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerMultiWindowStyleChangedCallback() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_35
    iget-object v1, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_40

    .line 88
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    .line 90
    :cond_40
    iget-object v1, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 91
    monitor-exit v2

    .line 97
    :cond_46
    :goto_46
    return-void

    .line 80
    .end local v0    # "allowed":Z
    :cond_47
    const/4 v0, 0x0

    goto :goto_13

    .line 91
    .restart local v0    # "allowed":Z
    :catchall_49
    move-exception v1

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_18 .. :try_end_4b} :catchall_49

    throw v1

    .line 93
    :cond_4c
    sget-boolean v1, SAFE_DEBUG:Z

    if-eqz v1, :cond_46

    .line 94
    const-string v1, "MultiWindowFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):UID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not have the permission REAL_GET_TASKS in registerMultiWindowStyleChangedCallback()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method public registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .registers 3
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 1002
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 1003
    return-void
.end method

.method public registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V
    .registers 4
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .param p2, "type"    # I

    .prologue
    .line 1006
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowPolicy;->registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V

    .line 1007
    return-void
.end method

.method public removeAllTasks(Landroid/os/IBinder;IZ)V
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "logging"    # Z

    .prologue
    .line 921
    iget-object v7, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 922
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 924
    .local v2, "origId":J
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 925
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_30

    .line 926
    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 927
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 928
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v6, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v8, p2}, Lcom/android/server/am/ActivityManagerService;->removeTask(II)Z

    goto :goto_19

    .line 933
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "origId":J
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_2d
    move-exception v6

    monitor-exit v7
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v6

    .line 932
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "origId":J
    :cond_30
    :try_start_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 933
    monitor-exit v7
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_2d

    .line 935
    if-eqz p3, :cond_3e

    .line 936
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "RMMI"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_3e
    return-void
.end method

.method public removeTab(I)Z
    .registers 6
    .param p1, "stackId"    # I

    .prologue
    .line 860
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 861
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 862
    .local v0, "origId":J
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/am/MultiWindowPolicy;->removeTab(I)V

    .line 863
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 864
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 865
    .end local v0    # "origId":J
    :catchall_14
    move-exception v2

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v2
.end method

.method public removeUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1136
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1137
    :try_start_3
    iget-object v0, p0, mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1138
    iget-object v0, p0, mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1139
    monitor-exit v1

    .line 1140
    return-void

    .line 1139
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public setAcitivityManager(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 133
    iput-object p1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 134
    return-void
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    .line 913
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 914
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 915
    .local v0, "origId":J
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/MultiWindowPolicy;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 916
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 917
    monitor-exit v3

    .line 918
    return-void

    .line 917
    .end local v0    # "origId":J
    :catchall_13
    move-exception v2

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v2
.end method

.method public setCenterBarPoint(ILandroid/graphics/Point;)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 213
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 214
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_18

    move-result-wide v0

    .line 216
    .local v0, "origId":J
    :try_start_7
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/MultiWindowPolicy;->setCenterBarPoint(ILandroid/graphics/Point;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    .line 218
    :try_start_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    monitor-exit v3

    .line 221
    return-void

    .line 218
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 220
    .end local v0    # "origId":J
    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .prologue
    .line 563
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 564
    .local v0, "origId":J
    iget-object v4, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 565
    :try_start_7
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 566
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1d

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_1d

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_1d

    .line 567
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iput-boolean p2, v3, Lcom/android/server/am/ActivityStack;->mDragAndDropMode:Z

    .line 569
    :cond_1d
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_22

    .line 570
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    return-void

    .line 569
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v4
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v3
.end method

.method public setFocusAppByZone(I)V
    .registers 11
    .param p1, "zone"    # I

    .prologue
    .line 623
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 624
    .local v2, "origId":J
    iget-object v6, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 625
    :try_start_7
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 626
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 627
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 628
    .local v4, "topRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_13

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_13

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-ne v5, p1, :cond_13

    .line 630
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v7, v7, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(IZ)V

    .line 635
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_46
    monitor-exit v6
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_4b

    .line 636
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 637
    return-void

    .line 635
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_4b
    move-exception v5

    :try_start_4c
    monitor-exit v6
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v5
.end method

.method public setFocusedStack(IZ)V
    .registers 8
    .param p1, "stackId"    # I
    .param p2, "tapOutSide"    # Z

    .prologue
    .line 875
    iget-object v4, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 876
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 877
    .local v0, "origId":J
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 878
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/am/MultiWindowPolicy;->setTabFrontStack(I)V

    .line 880
    :cond_16
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(IZ)V

    .line 881
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 882
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 883
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 885
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 886
    monitor-exit v4

    .line 887
    return-void

    .line 886
    .end local v0    # "origId":J
    :catchall_34
    move-exception v3

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v3
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 12
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v8, 0x2

    .line 280
    :try_start_1
    iget-object v6, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_66

    .line 281
    :try_start_4
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 282
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_61

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_61

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_61

    .line 284
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    .line 285
    .local v3, "prevType":I
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v8, :cond_2a

    .line 287
    monitor-exit v6

    .line 316
    .end local v3    # "prevType":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_29
    return-void

    .line 289
    .restart local v3    # "prevType":I
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2a
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-nez v5, :cond_46

    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, "isNotSplitZone":Z
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    const/16 v7, 0xf

    if-ne v5, v7, :cond_40

    .line 293
    :cond_3f
    const/4 v1, 0x1

    .line 295
    :cond_40
    if-nez v1, :cond_46

    .line 296
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 299
    .end local v1    # "isNotSplitZone":Z
    :cond_46
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v7, 0x1

    invoke-virtual {v5, p1, p2, v7}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 301
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    .line 303
    .local v2, "nextType":I
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_61

    if-ne v3, v8, :cond_61

    if-nez v2, :cond_61

    .line 306
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->mNeedToIdle:Z

    .line 309
    .end local v2    # "nextType":I
    .end local v3    # "prevType":I
    :cond_61
    monitor-exit v6

    goto :goto_29

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_63
    move-exception v5

    monitor-exit v6
    :try_end_65
    .catchall {:try_start_4 .. :try_end_65} :catchall_63

    :try_start_65
    throw v5
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_66} :catch_66

    .line 310
    :catch_66
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "MultiWindowFacade"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultiWindowStyle is failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .registers 15
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p3, "loggingReason"    # I

    .prologue
    .line 231
    invoke-virtual {p0, p1, p2}, setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 233
    const/4 v4, 0x0

    .line 234
    .local v4, "packageNameZoneA":Ljava/lang/String;
    const/4 v5, 0x0

    .line 235
    .local v5, "packageNameZoneB":Ljava/lang/String;
    const/4 v3, 0x0

    .line 237
    .local v3, "finalPackageName":Ljava/lang/String;
    packed-switch p3, :pswitch_data_88

    .line 276
    :cond_9
    :goto_9
    return-void

    .line 239
    :pswitch_a
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 240
    iget-object v9, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 241
    :try_start_13
    iget-object v8, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 242
    .local v0, "ass":Lcom/android/server/am/ActivityStackSupervisor;
    const/4 v8, 0x3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v10

    iget v10, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v8, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 243
    .local v6, "stackZoneA":Lcom/android/server/am/ActivityStack;
    const/16 v8, 0xc

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v10

    iget v10, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v8, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 245
    .local v7, "stackZoneB":Lcom/android/server/am/ActivityStack;
    if-eqz v6, :cond_3c

    .line 246
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_3c

    .line 247
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    iget-object v4, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 250
    :cond_3c
    if-eqz v7, :cond_4a

    .line 251
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_4a

    .line 252
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    iget-object v5, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 255
    :cond_4a
    monitor-exit v9
    :try_end_4b
    .catchall {:try_start_13 .. :try_end_4b} :catchall_85

    .line 257
    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    .line 258
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 260
    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/String;

    .line 261
    .local v2, "features":[Ljava/lang/String;
    const/4 v8, 0x2

    new-array v1, v8, [Ljava/lang/String;

    .line 263
    .local v1, "extras":[Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "POPW"

    aput-object v9, v2, v8

    .line 264
    const/4 v8, 0x0

    const-string v9, "CHANGE-SPLIT"

    aput-object v9, v1, v8

    .line 266
    const/4 v8, 0x1

    const-string v9, "PAIR"

    aput-object v9, v2, v8

    .line 267
    const/4 v8, 0x1

    aput-object v3, v1, v8

    .line 269
    iget-object v8, p0, mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v2, v1, v9}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertMultipleStatusLog(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[J)V

    goto :goto_9

    .line 255
    .end local v0    # "ass":Lcom/android/server/am/ActivityStackSupervisor;
    .end local v1    # "extras":[Ljava/lang/String;
    .end local v2    # "features":[Ljava/lang/String;
    .end local v6    # "stackZoneA":Lcom/android/server/am/ActivityStack;
    .end local v7    # "stackZoneB":Lcom/android/server/am/ActivityStack;
    :catchall_85
    move-exception v8

    :try_start_86
    monitor-exit v9
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v8

    .line 237
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .registers 3
    .param p1, "open"    # Z

    .prologue
    .line 553
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setMultiWindowTrayOpenState(Z)V

    .line 554
    return-void
.end method

.method public setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, -0x1

    .line 329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 331
    .local v2, "origId":J
    const/4 v4, -0x1

    .line 332
    .local v4, "stackId":I
    :try_start_6
    iget-object v6, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_73

    .line 333
    :try_start_9
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 334
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_14

    .line 335
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_70

    .line 358
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 360
    :goto_13
    return-void

    .line 337
    :cond_14
    :try_start_14
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_62

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 338
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v4

    .line 339
    if-eq v4, v8, :cond_6e

    if-eqz p2, :cond_6e

    iget-object v5, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 341
    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v5, :cond_4a

    .line 342
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 343
    .local v0, "ass":Lcom/android/server/am/ActivityStackSupervisor;
    const/4 v5, 0x1

    invoke-virtual {v0, v4, p2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;Z)V

    .line 345
    .end local v0    # "ass":Lcom/android/server/am/ActivityStackSupervisor;
    :cond_4a
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, p2}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 346
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v7, 0x800000

    invoke-virtual {v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 347
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5, p2, v1}, Lcom/android/server/am/MultiWindowPolicy;->setStackBoundTab(Landroid/graphics/Rect;Lcom/android/server/am/ActivityRecord;)V

    .line 353
    :cond_62
    :goto_62
    monitor-exit v6
    :try_end_63
    .catchall {:try_start_14 .. :try_end_63} :catchall_70

    .line 354
    if-eq v4, v8, :cond_6a

    .line 355
    :try_start_65
    iget-object v5, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v4, p2}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_73

    .line 358
    :cond_6a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_13

    .line 350
    :cond_6e
    const/4 v4, -0x1

    goto :goto_62

    .line 353
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_70
    move-exception v5

    :try_start_71
    monitor-exit v6
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    :try_start_72
    throw v5
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_73

    .line 358
    :catchall_73
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public setStackBoundByStackId(ILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "stackId"    # I
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 901
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 902
    :try_start_3
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 903
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 904
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 906
    :cond_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_20

    .line 907
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1f

    .line 908
    iget-object v1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    .line 910
    :cond_1f
    return-void

    .line 906
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 137
    iput-object p1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 138
    return-void
.end method

.method public startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 730
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)I

    .line 731
    return-void
.end method

.method public unregisterMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V
    .registers 7
    .param p1, "observer"    # Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;

    .prologue
    .line 100
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.REAL_GET_TASKS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_23

    const/4 v0, 0x1

    .line 102
    .local v0, "allowed":Z
    :goto_13
    if-eqz v0, :cond_28

    .line 103
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_18
    iget-object v1, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_21

    .line 105
    iget-object v1, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 107
    :cond_21
    monitor-exit v2

    .line 113
    :cond_22
    :goto_22
    return-void

    .line 100
    .end local v0    # "allowed":Z
    :cond_23
    const/4 v0, 0x0

    goto :goto_13

    .line 107
    .restart local v0    # "allowed":Z
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_25

    throw v1

    .line 109
    :cond_28
    sget-boolean v1, SAFE_DEBUG:Z

    if-eqz v1, :cond_22

    .line 110
    const-string v1, "MultiWindowFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):UID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not have the permission REAL_GET_TASKS in unregisterMultiWindowStyleChangedCallback()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .registers 3
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 1010
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 1011
    return-void
.end method

.method public updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    .registers 7
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 640
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 641
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    move-result-wide v0

    .line 643
    .local v0, "origId":J
    :try_start_7
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, p1}, Lcom/android/server/am/MultiWindowPolicy;->setIsolatedPoint(ILandroid/graphics/Point;)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_14

    .line 645
    :try_start_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 647
    monitor-exit v3

    .line 648
    return-void

    .line 645
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 647
    .end local v0    # "origId":J
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public updateMinimizeSize(Landroid/os/IBinder;[I)V
    .registers 7
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "size"    # [I

    .prologue
    .line 806
    const/4 v1, -0x1

    .line 807
    .local v1, "stackId":I
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 808
    :try_start_4
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 809
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_c

    .line 810
    monitor-exit v3

    .line 817
    :cond_b
    :goto_b
    return-void

    .line 812
    :cond_c
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 813
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1e

    .line 814
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    .line 815
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateMinimizeSize(ILandroid/os/IBinder;[I)V

    goto :goto_b

    .line 813
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 16
    .param p1, "requester"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 1074
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1077
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1078
    .local v4, "origId":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 1079
    .local v6, "userId":I
    iget-object v7, p0, mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1080
    .local v1, "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1081
    .local v2, "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_27

    .line 1082
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .restart local v1    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1085
    :cond_27
    if-nez v2, :cond_33

    .line 1086
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    .restart local v2    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1090
    :cond_33
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " reason : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v9, 0x64

    if-le v7, v9, :cond_63

    .line 1092
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1095
    :cond_63
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_92

    .line 1096
    if-eqz p3, :cond_80

    .line 1097
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1101
    :goto_7b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1102
    monitor-exit v8

    .line 1133
    :goto_7f
    return-void

    .line 1099
    :cond_80
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_7b

    .line 1132
    .end local v1    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "origId":J
    .end local v6    # "userId":I
    :catchall_8f
    move-exception v7

    monitor-exit v8
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_8f

    throw v7

    .line 1106
    .restart local v1    # "offRequester":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "offRequesterLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "origId":J
    .restart local v6    # "userId":I
    :cond_92
    if-eqz p3, :cond_ee

    .line 1107
    :try_start_94
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1108
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_c4

    .line 1110
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1111
    const-string v7, "MultiWindowFacade"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "turn on MW, Requester : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_94 .. :try_end_c4} :catchall_136

    .line 1127
    :cond_c4
    :goto_c4
    :try_start_c4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_161

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1128
    .local v3, "str":Ljava/lang/String;
    const-string v7, "MultiWindowFacade"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateMultiWindowSetting prev requester : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catchall {:try_start_c4 .. :try_end_ed} :catchall_8f

    goto :goto_c8

    .line 1114
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "str":Ljava/lang/String;
    :cond_ee
    :try_start_ee
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c4

    .line 1115
    const-string/jumbo v7, "mobile_keyboard"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_104

    .line 1117
    iget-object v7, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v7}, Lcom/android/server/am/MultiWindowPolicy;->chkDisableByMobileKeyboard()V

    .line 1120
    :cond_104
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1121
    iget-object v7, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v7}, Lcom/android/server/am/MultiWindowPolicy;->closePenWindow()V

    .line 1122
    const-string v7, "MultiWindowFacade"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "turn off MW, Requester : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_135
    .catchall {:try_start_ee .. :try_end_135} :catchall_136

    goto :goto_c4

    .line 1127
    :catchall_136
    move-exception v7

    :try_start_137
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_13b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_167

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1128
    .restart local v3    # "str":Ljava/lang/String;
    const-string v9, "MultiWindowFacade"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMultiWindowSetting prev requester : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13b

    .line 1130
    .end local v3    # "str":Ljava/lang/String;
    :cond_161
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1132
    monitor-exit v8

    goto/16 :goto_7f

    .line 1130
    :cond_167
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_16b
    .catchall {:try_start_137 .. :try_end_16b} :catchall_8f
.end method

.method public updatePreferenceThroughSystemProcess(Ljava/lang/String;I)V
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1018
    const-string/jumbo v4, "do_not_show_help_popup_drag_and_drop"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 1019
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updatePreferenceThroughSystemProcess is not for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1021
    :cond_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1022
    .local v2, "origId":J
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "shared_preference_multi_window"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1023
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1024
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1025
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1027
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1028
    return-void
.end method
