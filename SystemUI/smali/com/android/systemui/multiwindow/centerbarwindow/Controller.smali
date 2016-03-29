.class public Lcom/android/systemui/multiwindow/centerbarwindow/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# instance fields
.field private final MAX_TASKS:I

.field private final WINDOW_PORTRAIT_MODE:S

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mArrangeState:I

.field private mContext:Landroid/content/Context;

.field private mDisplayOrientation:I

.field private mDockingArea:Landroid/graphics/Rect;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mIntent:Landroid/content/Intent;

.field private mIsMWTrayOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mService:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

.field private mSupportMultiInstance:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mZoneInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneRect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->WINDOW_PORTRAIT_MODE:S

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mLock:Ljava/lang/Object;

    .line 63
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mSupportMultiInstance:Z

    .line 64
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->MAX_TASKS:I

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    .line 76
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mDockingArea:Landroid/graphics/Rect;

    .line 79
    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mArrangeState:I

    .line 80
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 82
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mIsMWTrayOpen:Z

    .line 86
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mService:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mActivityManager:Landroid/app/ActivityManager;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mWindowManager:Landroid/view/WindowManager;

    .line 90
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mIWindowManager:Landroid/view/IWindowManager;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mDisplayOrientation:I

    .line 93
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMultiInstance(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mSupportMultiInstance:Z

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mDockingArea:Landroid/graphics/Rect;

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->updateWindowRects()Z

    .line 104
    return-void
.end method

.method private getRunningTaskCnt(ZZZ)I
    .locals 12
    .param p1, "resume"    # Z
    .param p2, "withScale"    # Z
    .param p3, "showHidden"    # Z

    .prologue
    const/16 v11, 0x64

    const/16 v10, 0x800

    .line 304
    const/4 v1, 0x0

    .line 305
    .local v1, "cnt":I
    const/4 v5, 0x0

    .line 307
    .local v5, "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz p1, :cond_3

    .line 308
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v9, 0x3

    invoke-virtual {v8, v11, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v5

    .line 313
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "selectedAffinity":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 315
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 316
    .local v4, "t":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 319
    iget-object v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v8}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "baseRunningAffinity":Ljava/lang/String;
    iget-object v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v8}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v7

    .line 321
    .local v7, "topRunningAffinity":Ljava/lang/String;
    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskAffinity:Ljava/lang/String;

    .line 322
    .local v6, "taskRecordAffinity":Ljava/lang/String;
    iget-object v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz p3, :cond_0

    .line 323
    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 324
    iget-object v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz p2, :cond_0

    .line 325
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 310
    .end local v0    # "baseRunningAffinity":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "selectedAffinity":Ljava/lang/String;
    .end local v4    # "t":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "taskRecordAffinity":Ljava/lang/String;
    .end local v7    # "topRunningAffinity":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v9, 0x2

    invoke-virtual {v8, v11, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 327
    .restart local v0    # "baseRunningAffinity":Ljava/lang/String;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "selectedAffinity":Ljava/lang/String;
    .restart local v4    # "t":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v6    # "taskRecordAffinity":Ljava/lang/String;
    .restart local v7    # "topRunningAffinity":Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_6

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 328
    iget-object v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz p2, :cond_0

    .line 329
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 331
    :cond_6
    if-eqz v6, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 332
    iget-object v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz p2, :cond_0

    .line 333
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 339
    .end local v0    # "baseRunningAffinity":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "t":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "taskRecordAffinity":Ljava/lang/String;
    .end local v7    # "topRunningAffinity":Ljava/lang/String;
    :cond_8
    return v1
.end method


# virtual methods
.method public getCurrentGuideRect(II)Landroid/graphics/Rect;
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    .line 190
    if-ltz p1, :cond_0

    if-gez p2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 193
    .local v1, "autoSelect":Z
    :goto_0
    const/4 v4, 0x0

    .line 194
    .local v4, "retRect":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 196
    .local v5, "retZone":I
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v8, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->updateWindowRects()Z

    .line 200
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v8, :cond_3

    if-nez v1, :cond_3

    .line 201
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 289
    :goto_1
    return-object v7

    .end local v1    # "autoSelect":Z
    .end local v4    # "retRect":Landroid/graphics/Rect;
    .end local v5    # "retZone":I
    :cond_2
    move v1, v7

    .line 190
    goto :goto_0

    .line 204
    .restart local v1    # "autoSelect":Z
    .restart local v4    # "retRect":Landroid/graphics/Rect;
    .restart local v5    # "retZone":I
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 205
    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v10, 0x1000

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v10, 0x200000

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 210
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    monitor-exit v8

    goto :goto_1

    .line 273
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 211
    :cond_5
    if-eqz v1, :cond_a

    .line 212
    :try_start_1
    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v9, :cond_7

    move v6, v7

    .line 213
    .local v6, "zone":I
    :goto_2
    if-eqz v6, :cond_6

    if-gez v6, :cond_8

    .line 217
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    monitor-exit v8

    goto :goto_1

    .line 212
    .end local v6    # "zone":I
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    goto :goto_2

    .line 219
    .restart local v6    # "zone":I
    :cond_8
    move v5, v6

    .line 220
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Rect;

    move-object v4, v0

    .line 273
    :cond_9
    :goto_3
    monitor-exit v8

    move-object v7, v4

    .line 289
    goto :goto_1

    .line 223
    .end local v6    # "zone":I
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v7, :cond_b

    .line 224
    monitor-exit v8

    move-object v7, v4

    goto/16 :goto_1

    .line 227
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v9, 0x1000

    invoke-virtual {v7, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 229
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    monitor-exit v8

    goto/16 :goto_1

    .line 232
    :cond_d
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    .line 233
    .restart local v6    # "zone":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_10

    .line 234
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 235
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 236
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 237
    if-nez v6, :cond_e

    .line 253
    monitor-exit v8

    move-object v7, v3

    goto/16 :goto_1

    .line 255
    :cond_e
    move-object v4, v3

    .line 233
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 261
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_10
    if-eqz v4, :cond_9

    iget v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mArrangeState:I

    if-ge v7, v11, :cond_9

    .line 262
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mDockingArea:Landroid/graphics/Rect;

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 263
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 264
    const/4 v5, 0x3

    .line 265
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Rect;

    move-object v4, v0

    goto/16 :goto_3

    .line 266
    :cond_11
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    const/16 v10, 0xc

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 267
    const/16 v5, 0xc

    .line 268
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    const/16 v10, 0xc

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Rect;

    move-object v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method

.method public getRectByZone(I)Landroid/graphics/Rect;
    .locals 4
    .param p1, "zone"    # I

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    monitor-exit v1

    return-object v0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 378
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 379
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    .line 386
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 382
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 383
    .local v0, "Info":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    .end local v0    # "Info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public getZoneByRect(Landroid/graphics/Rect;)I
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFullGuideLine(Landroid/content/Intent;I)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "taskId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 343
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v7, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 344
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v8, 0x200000

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v5

    .line 349
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mIntent:Landroid/content/Intent;

    .line 351
    const/4 v2, 0x0

    .line 352
    .local v2, "isRunning":Z
    invoke-direct {p0, v6, v5, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->getRunningTaskCnt(ZZZ)I

    move-result v0

    .line 353
    .local v0, "cnt":I
    if-lez v0, :cond_2

    .line 354
    const/4 v2, 0x1

    .line 357
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/16 v8, 0x64

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v3

    .line 358
    .local v3, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 359
    .local v4, "ti":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v7, p2, :cond_3

    iget-object v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    .end local v4    # "ti":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    move v5, v6

    .line 363
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mDisplayOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 108
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mDisplayOrientation:I

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->updateWindowRects()Z

    .line 112
    :cond_0
    return-void
.end method

.method public updateWindowRects()Z
    .locals 13

    .prologue
    const v10, 0x3f4ccccd    # 0.8f

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 115
    const/4 v3, 0x0

    .line 116
    .local v3, "isFixedBounds":Z
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 117
    .local v2, "fullScreen":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 119
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5, v12}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 120
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getArrangeState()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mArrangeState:I

    .line 123
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mService:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->initCenterBarIfNeed()V

    .line 124
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v0

    .line 125
    .local v0, "centerBarPoint":Landroid/graphics/Point;
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mService:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 126
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mService:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-virtual {v5, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->updateCenterBarPoint(Landroid/graphics/Point;)V

    .line 139
    :cond_0
    :goto_0
    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mDisplayOrientation:I

    if-ne v5, v12, :cond_6

    .line 140
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mDockingArea:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v7, 0xa

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 141
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mDockingArea:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v7, 0xa

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 142
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mDockingArea:Landroid/graphics/Rect;

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 143
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mDockingArea:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Point;->y:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 145
    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpg-float v5, v5, v9

    if-lez v5, :cond_1

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpl-float v5, v5, v10

    if-ltz v5, :cond_2

    .line 147
    :cond_1
    iget v5, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v0, Landroid/graphics/Point;->y:I

    .line 148
    const/4 v3, 0x1

    .line 163
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 164
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 165
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 167
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mDisplayOrientation:I

    if-ne v5, v12, :cond_8

    .line 169
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    iget v9, v0, Landroid/graphics/Point;->y:I

    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/Integer;

    const/16 v8, 0xc

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v4, v3

    .line 180
    .end local v3    # "isFixedBounds":Z
    .local v4, "isFixedBounds":I
    :goto_3
    return v4

    .line 127
    .end local v4    # "isFixedBounds":I
    .restart local v3    # "isFixedBounds":Z
    :cond_3
    if-nez v0, :cond_0

    .line 129
    const-string v5, "MultiWindowTrayController"

    const-string v6, "mMultiWindowFacade.getCenterBarPoint() is null. keep old rects. if this is coming first time to call, error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 131
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 132
    :cond_4
    new-instance v1, Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v5, 0x2

    iget v7, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v1, v5, v7}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .end local v0    # "centerBarPoint":Landroid/graphics/Point;
    .local v1, "centerBarPoint":Landroid/graphics/Point;
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    .end local v1    # "centerBarPoint":Landroid/graphics/Point;
    .restart local v0    # "centerBarPoint":Landroid/graphics/Point;
    goto/16 :goto_0

    .line 134
    :cond_5
    :try_start_3
    monitor-exit v6

    move v4, v3

    .restart local v4    # "isFixedBounds":I
    goto :goto_3

    .line 136
    .end local v4    # "isFixedBounds":I
    :catchall_0
    move-exception v5

    :goto_4
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 151
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mDockingArea:Landroid/graphics/Rect;

    iput v8, v5, Landroid/graphics/Rect;->left:I

    .line 152
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mDockingArea:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Point;->x:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 153
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mDockingArea:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v7, 0xa

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 154
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mDockingArea:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v7, 0xa

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 156
    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpg-float v5, v5, v9

    if-lez v5, :cond_7

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpl-float v5, v5, v10

    if-ltz v5, :cond_2

    .line 158
    :cond_7
    iget v5, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v0, Landroid/graphics/Point;->x:I

    .line 159
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 172
    :cond_8
    :try_start_4
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, v0, Landroid/graphics/Point;->x:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->mZoneRect:Ljava/util/ArrayList;

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Point;->x:I

    const/4 v9, 0x0

    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 179
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 136
    .end local v0    # "centerBarPoint":Landroid/graphics/Point;
    .restart local v1    # "centerBarPoint":Landroid/graphics/Point;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1    # "centerBarPoint":Landroid/graphics/Point;
    .restart local v0    # "centerBarPoint":Landroid/graphics/Point;
    goto :goto_4
.end method
