.class public Lcom/android/server/am/MultiWindowPolicy;
.super Ljava/lang/Object;
.source "MultiWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowPolicy$TaskController;,
        Lcom/android/server/am/MultiWindowPolicy$ZoneRects;,
        Lcom/android/server/am/MultiWindowPolicy$H;
    }
.end annotation


# static fields
.field private static final ACTION_MINIMIZE_ALL:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL"

.field private static final ACTION_TIMER_STARTED_IN_ALERT:Ljava/lang/String; = "com.sec.android.app.clockpackage.timer.TIMER_STARTED_IN_ALERT"

.field private static final ALARM_ALERT_FROM_ALARM:Ljava/lang/String; = "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

.field private static final DEBUG:Z = false

.field private static final GLANCEVIEW_LAUNCH_ACTION:Ljava/lang/String; = "com.android.settings.LaunchGlanceView"

.field public static LIMIT_NUM_OF_MULTI_INSTANCE_DUAL_VIEW:I = 0x0

.field public static LIMIT_NUM_OF_MULTI_INSTANCE_QUAD_VIEW:I = 0x0

.field static final SAFE_DEBUG:Z

.field public static final SPLIT_DIM_AMOUNT:F = 0.5f

.field private static final TAB_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiWindowPolicy"

.field private static final TASKCONTROLLER_DEBUG:Z

.field public static sExposuerTitleBarMenu:Z

.field public static sStatusBarHeight:I

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCenterBarPoints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultScale:F

.field private mDiffUserPenWindowCnt:I

.field mDisplayZoneRects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/MultiWindowPolicy$ZoneRects;",
            ">;"
        }
    .end annotation
.end field

.field mFeatureMultiwindowRecentUI:Z

.field mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field final mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

.field private mIsolatedPoint:Landroid/graphics/Point;

.field private mMaxScale:F

.field private mMinScale:F

.field private mMultiInstanceMaxCnt:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRegisteredTaskControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/MultiWindowPolicy$TaskController;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingContentObserver:Landroid/database/ContentObserver;

.field private mTabFrontStack:I

.field private mTabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowTab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 108
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_16

    move v0, v1

    :goto_9
    sput-boolean v0, SAFE_DEBUG:Z

    .line 116
    const/4 v0, 0x2

    sput v0, LIMIT_NUM_OF_MULTI_INSTANCE_DUAL_VIEW:I

    .line 117
    const/4 v0, 0x4

    sput v0, LIMIT_NUM_OF_MULTI_INSTANCE_QUAD_VIEW:I

    .line 132
    sput v1, sStatusBarHeight:I

    .line 133
    sput-boolean v2, sExposuerTitleBarMenu:Z

    return-void

    :cond_16
    move v0, v2

    .line 108
    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 126
    iput-object v1, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 128
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mCenterBarPoints:Landroid/util/SparseArray;

    .line 129
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, mIsolatedPoint:Landroid/graphics/Point;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, mFeatureMultiwindowRecentUI:Z

    .line 139
    iput v2, p0, mDefaultScale:F

    .line 140
    iput v2, p0, mMinScale:F

    .line 141
    iput v2, p0, mMaxScale:F

    .line 143
    new-instance v0, Lcom/android/server/am/MultiWindowPolicy$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowPolicy$H;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    iput-object v0, p0, mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    .line 144
    iput-object v1, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 145
    iput-object v1, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTabList:Ljava/util/ArrayList;

    .line 148
    const/4 v0, -0x1

    iput v0, p0, mTabFrontStack:I

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mRegisteredTaskControllers:Ljava/util/HashMap;

    .line 417
    new-instance v0, Lcom/android/server/am/MultiWindowPolicy$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MultiWindowPolicy$3;-><init>(Lcom/android/server/am/MultiWindowPolicy;Landroid/os/Handler;)V

    iput-object v0, p0, mSettingContentObserver:Landroid/database/ContentObserver;

    .line 1371
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mDisplayZoneRects:Landroid/util/SparseArray;

    .line 155
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 156
    iput-object p2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 157
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    iput-object v0, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 159
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 160
    sget v0, LIMIT_NUM_OF_MULTI_INSTANCE_QUAD_VIEW:I

    iput v0, p0, mMultiInstanceMaxCnt:I

    .line 165
    :goto_65
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 168
    iget v0, p0, mMultiInstanceMaxCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mMultiInstanceMaxCnt:I

    .line 170
    :cond_86
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, mDefaultScale:F

    .line 171
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, mMinScale:F

    .line 172
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, mMaxScale:F

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, sStatusBarHeight:I

    .line 174
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, mFeatureMultiwindowRecentUI:Z

    .line 175
    return-void

    .line 162
    :cond_cf
    sget v0, LIMIT_NUM_OF_MULTI_INSTANCE_DUAL_VIEW:I

    iput v0, p0, mMultiInstanceMaxCnt:I

    goto :goto_65
.end method

.method private RecentTaskInfoToObject(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2364
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2365
    .local v2, "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "idx":I
    :goto_b
    if-ltz v0, :cond_19

    .line 2366
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2367
    .local v1, "r":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2365
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 2369
    .end local v1    # "r":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_19
    return-object v2
.end method

.method private TaskInfoToObject(Ljava/util/List;I)Ljava/util/List;
    .registers 9
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2373
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2374
    .local v3, "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "idx":I
    :goto_b
    if-ltz v0, :cond_47

    .line 2375
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;

    .line 2376
    .local v1, "t":Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    sget v4, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RECENT:I

    if-ne p2, v4, :cond_25

    .line 2377
    iget-object v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_25

    .line 2374
    :goto_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 2382
    :cond_25
    new-instance v2, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 2383
    .local v2, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->id:I

    iput v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 2384
    iget v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->id:I

    iput v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 2385
    iget-object v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 2386
    sget v4, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RECENT:I

    if-ne p2, v4, :cond_42

    .line 2387
    iget-object v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseActivity:Landroid/content/ComponentName;

    iput-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 2391
    :goto_3e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 2389
    :cond_42
    iget-object v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    goto :goto_3e

    .line 2393
    .end local v1    # "t":Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_47
    return-object v3
.end method

.method static synthetic access$000(Lcom/android/server/am/MultiWindowPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    .line 105
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MultiWindowPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    .line 105
    invoke-direct {p0}, isWhiteTheme()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/MultiWindowPolicy;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    .line 105
    iget v0, p0, mDiffUserPenWindowCnt:I

    return v0
.end method

.method static synthetic access$300()Landroid/widget/Toast;
    .registers 1

    .prologue
    .line 105
    sget-object v0, toastAlert:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$302(Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 1
    .param p0, "x0"    # Landroid/widget/Toast;

    .prologue
    .line 105
    sput-object p0, toastAlert:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/am/MultiWindowPolicy;)Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    .line 105
    iget-object v0, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/MultiWindowPolicy;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    .line 105
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/MultiWindowPolicy;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 105
    invoke-direct {p0, p1}, RecentTaskInfoToObject(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/MultiWindowPolicy;Ljava/util/List;Lcom/samsung/android/multiwindow/ITaskController;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, notifyTaskStarted(Ljava/util/List;Lcom/samsung/android/multiwindow/ITaskController;)V

    return-void
.end method

.method private adjustFloatingBounds(Lcom/android/server/am/ActivityRecord;)V
    .registers 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1838
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getPreferredOrientation()I

    move-result v4

    .line 1839
    .local v4, "preferredOr":I
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 1840
    .local v5, "requestBounds":Landroid/graphics/Rect;
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_9c

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFakeTarget(I)Z

    move-result v9

    if-nez v9, :cond_9c

    if-eqz v5, :cond_9c

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9c

    .line 1842
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1843
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1844
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_3b

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1845
    :cond_3b
    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    if-ge v9, v10, :cond_9d

    move v2, v7

    .line 1846
    .local v2, "isDisplayPortrait":Z
    :goto_42
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v9, v10, :cond_9f

    move v3, v7

    .line 1847
    .local v3, "isStackPortrait":Z
    :goto_4d
    if-eq v2, v3, :cond_9c

    .line 1848
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1849
    .local v6, "tmpBounds":Landroid/graphics/Rect;
    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, p0, mDefaultScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 1850
    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget v9, p0, mDefaultScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 1851
    sget-boolean v7, SAFE_DEBUG:Z

    if-eqz v7, :cond_9c

    const-string v7, "MultiWindowPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adjustFloating, r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requested="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", adjusted="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displaySize":Landroid/graphics/Point;
    .end local v2    # "isDisplayPortrait":Z
    .end local v3    # "isStackPortrait":Z
    .end local v6    # "tmpBounds":Landroid/graphics/Rect;
    :cond_9c
    return-void

    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "displaySize":Landroid/graphics/Point;
    :cond_9d
    move v2, v8

    .line 1845
    goto :goto_42

    .restart local v2    # "isDisplayPortrait":Z
    :cond_9f
    move v3, v8

    .line 1846
    goto :goto_4d
.end method

.method private getHeaderDrawableHeight()I
    .registers 4

    .prologue
    .line 2294
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080591

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2295
    .local v0, "drw":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_14

    .line 2296
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2298
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private initAndReDrawCenterBar(Lcom/android/server/am/ActivityRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 11
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "mwStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 793
    if-eqz p1, :cond_4d

    if-eqz p2, :cond_4d

    .line 794
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v5, "com.google.android.packageinstaller"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 795
    const/4 v2, 0x0

    .line 796
    .local v2, "fixedBounds":Z
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 797
    .local v3, "zoneBounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 798
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    invoke-virtual {p0, v3, v4}, getBounds(Landroid/graphics/Rect;I)V

    .line 799
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 800
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_48

    .line 801
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 802
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_4e

    .line 803
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-ge v4, v5, :cond_48

    .line 804
    const/4 v2, 0x1

    .line 812
    :cond_48
    :goto_48
    if-eqz v2, :cond_4d

    .line 813
    invoke-virtual {p0, v7, v6}, updateCenterBarPosition(IF)V

    .line 817
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displaySize":Landroid/graphics/Point;
    .end local v2    # "fixedBounds":Z
    .end local v3    # "zoneBounds":Landroid/graphics/Rect;
    :cond_4d
    return-void

    .line 807
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "displaySize":Landroid/graphics/Point;
    .restart local v2    # "fixedBounds":Z
    .restart local v3    # "zoneBounds":Landroid/graphics/Rect;
    :cond_4e
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-ge v4, v5, :cond_48

    .line 808
    const/4 v2, 0x1

    goto :goto_48
.end method

.method private isGamePackage(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 241
    const/4 v2, 0x0

    .line 244
    .local v2, "result":I
    :try_start_2
    iget-object v4, p0, mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v4, :cond_13

    .line 245
    const-string/jumbo v4, "gamemanager"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 246
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v4

    iput-object v4, p0, mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    .line 248
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_13
    iget-object v4, p0, mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v4, :cond_45

    .line 249
    iget-object v4, p0, mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v4, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I

    move-result v2

    .line 250
    const-string v4, "MultiWindowPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gamemode - return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  when calling  identifyForegroundApp("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_45} :catch_48

    .line 256
    :cond_45
    :goto_45
    if-ne v2, v3, :cond_51

    :goto_47
    return v3

    .line 252
    :catch_48
    move-exception v1

    .line 253
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "MultiWindowPolicy"

    const-string v5, "Gamemode - identifyForegroundApp error"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 256
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_51
    const/4 v3, 0x0

    goto :goto_47
.end method

.method private isSplitOnly(Landroid/content/pm/ActivityInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 820
    if-eqz p1, :cond_1a

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1a

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1a

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.sdk.multiwindowonly.enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 822
    const/4 v0, 0x1

    .line 824
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, "talkbackEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 366
    const-string v2, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1e
    const/4 v1, 0x1

    .line 372
    :cond_1f
    :goto_1f
    return v1

    .line 366
    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private isWhiteTheme()Z
    .registers 3

    .prologue
    .line 447
    const-string/jumbo v0, "ro.build.scafe.cream"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "white"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 448
    const/4 v0, 0x1

    .line 450
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private notifyTaskStarted(Ljava/util/List;Lcom/samsung/android/multiwindow/ITaskController;)V
    .registers 8
    .param p2, "controller"    # Lcom/samsung/android/multiwindow/ITaskController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/samsung/android/multiwindow/ITaskController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2428
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2463
    :cond_8
    :goto_8
    return-void

    .line 2431
    :cond_9
    iget-object v4, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2432
    :try_start_c
    iget-object v3, p0, mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2433
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 2434
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    .line 2435
    .local v2, "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    if-eqz v2, :cond_16

    iget-object v3, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    if-eqz v3, :cond_16

    if-eqz p2, :cond_2e

    iget-object v3, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_4b

    if-ne v3, p2, :cond_16

    .line 2438
    :cond_2e
    const/4 v3, 0x0

    :try_start_2f
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;

    if-eqz v3, :cond_45

    .line 2439
    iget v3, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->type:I

    invoke-direct {p0, p1, v3}, TaskInfoToObject(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 2447
    .local v1, "rtInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v3, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v3, v1}, Lcom/samsung/android/multiwindow/ITaskController;->onTaskStarted(Ljava/util/List;)V

    goto :goto_16

    .line 2458
    .end local v1    # "rtInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_43
    move-exception v3

    goto :goto_16

    .line 2456
    :cond_45
    iget-object v3, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v3, p1}, Lcom/samsung/android/multiwindow/ITaskController;->onTaskStarted(Ljava/util/List;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_4a} :catch_43
    .catchall {:try_start_2f .. :try_end_4a} :catchall_4b

    goto :goto_16

    .line 2462
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    .end local v2    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v3

    .restart local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    :cond_4e
    :try_start_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4b

    goto :goto_8
.end method

.method private updateIsolatedRects(IILandroid/graphics/Rect;)V
    .registers 15
    .param p1, "displayId"    # I
    .param p2, "zone"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x3

    const/4 v7, 0x0

    .line 1422
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1423
    .local v1, "fullscreen":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1424
    .local v0, "d":Landroid/view/Display;
    if-eqz v0, :cond_16

    .line 1425
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1427
    :cond_16
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 1428
    .local v3, "iDeviceWidth":I
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 1429
    .local v2, "iDeviceHeight":I
    iget-object v8, p0, mIsolatedPoint:Landroid/graphics/Point;

    iget v5, v8, Landroid/graphics/Point;->x:I

    .line 1430
    .local v5, "iWidthBoundary":I
    iget-object v8, p0, mIsolatedPoint:Landroid/graphics/Point;

    iget v4, v8, Landroid/graphics/Point;->y:I

    .line 1431
    .local v4, "iHeightBoundary":I
    if-le v3, v2, :cond_2d

    const/4 v6, 0x1

    .line 1433
    .local v6, "landscape":Z
    :goto_25
    if-eqz v6, :cond_39

    .line 1434
    if-ne p2, v9, :cond_2f

    .line 1435
    invoke-virtual {p3, v7, v7, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1450
    :goto_2c
    return-void

    .end local v6    # "landscape":Z
    :cond_2d
    move v6, v7

    .line 1431
    goto :goto_25

    .line 1436
    .restart local v6    # "landscape":Z
    :cond_2f
    if-ne p2, v10, :cond_35

    .line 1437
    invoke-virtual {p3, v5, v7, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2c

    .line 1439
    :cond_35
    invoke-virtual {p3, v7, v7, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2c

    .line 1442
    :cond_39
    if-ne p2, v9, :cond_3f

    .line 1443
    invoke-virtual {p3, v7, v7, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2c

    .line 1444
    :cond_3f
    if-ne p2, v10, :cond_45

    .line 1445
    invoke-virtual {p3, v7, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2c

    .line 1447
    :cond_45
    invoke-virtual {p3, v7, v7, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2c
.end method


# virtual methods
.method public RunningTaskInfoToObject(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2351
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2352
    .local v3, "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "idx":I
    :goto_b
    if-ltz v0, :cond_29

    .line 2353
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2354
    .local v1, "r":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v2, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 2355
    .local v2, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 2356
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 2357
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 2358
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2352
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 2360
    .end local v1    # "r":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_29
    return-object v3
.end method

.method public addTab(ILandroid/content/ComponentName;)V
    .registers 5
    .param p1, "stackId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 1984
    iget-object v0, p0, mTabList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowTab;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowTab;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1985
    return-void
.end method

.method public adjustStackBound(Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    .line 2270
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p0}, getHeaderDrawableHeight()I

    move-result v6

    add-int v0, v5, v6

    .line 2271
    .local v0, "boundaryX":I
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10502c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2272
    .local v1, "boundaryY":I
    invoke-direct {p0}, getHeaderDrawableHeight()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 2274
    .local v4, "headerWindowMargin":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 2275
    .local v3, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 2276
    .local v2, "display":Landroid/view/Display;
    if-eqz v2, :cond_32

    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2278
    :cond_32
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v0

    if-le v5, v6, :cond_51

    .line 2279
    iget v5, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v0

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2285
    :cond_41
    :goto_41
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v1

    if-le v5, v6, :cond_61

    .line 2286
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v1

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2291
    :cond_50
    :goto_50
    return-void

    .line 2281
    :cond_51
    iget v5, p1, Landroid/graphics/Rect;->right:I

    if-ge v5, v0, :cond_41

    .line 2282
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v0, v5

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_41

    .line 2288
    :cond_61
    iget v5, p1, Landroid/graphics/Rect;->top:I

    sget v6, sStatusBarHeight:I

    add-int/2addr v6, v4

    if-ge v5, v6, :cond_50

    .line 2289
    iget v5, p1, Landroid/graphics/Rect;->left:I

    sget v6, sStatusBarHeight:I

    add-int/2addr v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_50
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2085
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
    .registers 29
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "updateFocus"    # Z

    .prologue
    .line 2090
    sget-boolean v21, SAFE_DEBUG:Z

    if-eqz v21, :cond_5c

    .line 2091
    const-string v21, "MultiWindowPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "adjustStackFocus: r="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " multiWindowStyle="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    const-string v21, "MultiWindowPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "adjustStackFocus: sourceRecord="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " callers="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x4

    invoke-static/range {v23 .. v23}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2095
    .local v14, "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v21

    if-nez v21, :cond_74

    if-eqz p2, :cond_4f3

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v21

    if-eqz v21, :cond_4f3

    .line 2096
    :cond_74
    const/4 v13, -0x1

    .line 2098
    .local v13, "stackId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v21

    if-eqz v21, :cond_241

    .line 2099
    const/4 v10, 0x0

    .line 2100
    .local v10, "source":Landroid/content/Intent;
    const/4 v11, 0x0

    .line 2101
    .local v11, "sourceFilter":Landroid/content/Intent$FilterComparison;
    const/16 v16, 0x0

    .line 2102
    .local v16, "targetFilter":Landroid/content/Intent$FilterComparison;
    if-eqz p2, :cond_a0

    .line 2103
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "source":Landroid/content/Intent;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2104
    .restart local v10    # "source":Landroid/content/Intent;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2105
    new-instance v11, Landroid/content/Intent$FilterComparison;

    .end local v11    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    invoke-direct {v11, v10}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 2107
    .restart local v11    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    :cond_a0
    const/16 v20, 0x0

    .line 2108
    .local v20, "topTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 2109
    .local v6, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v6, :cond_b8

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v21

    if-eqz v21, :cond_b8

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v21

    if-eqz v21, :cond_b8

    .line 2110
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v20

    .line 2112
    :cond_b8
    const/4 v15, 0x0

    .line 2113
    .local v15, "target":Landroid/content/Intent;
    if-eqz v20, :cond_d6

    .line 2114
    new-instance v15, Landroid/content/Intent;

    .end local v15    # "target":Landroid/content/Intent;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2115
    .restart local v15    # "target":Landroid/content/Intent;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2116
    new-instance v16, Landroid/content/Intent$FilterComparison;

    .end local v16    # "targetFilter":Landroid/content/Intent$FilterComparison;
    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 2119
    .restart local v16    # "targetFilter":Landroid/content/Intent$FilterComparison;
    :cond_d6
    if-eqz p2, :cond_12d

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v21

    if-eqz v21, :cond_12d

    .line 2120
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    .line 2121
    const-string/jumbo v7, "keep-current"

    .line 2122
    .local v7, "reason":Ljava/lang/String;
    sget-boolean v21, SAFE_DEBUG:Z

    if-eqz v21, :cond_11d

    .line 2123
    const-string v21, "MultiWindowPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "adjustStackFocus: Keep current stack for cascade app (inherit) >> r="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " stackId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    :cond_11d
    :goto_11d
    if-eqz p4, :cond_128

    .line 2150
    invoke-virtual {v14, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2152
    :cond_128
    invoke-virtual {v14, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v17

    .line 2266
    .end local v6    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "reason":Ljava/lang/String;
    .end local v10    # "source":Landroid/content/Intent;
    .end local v11    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    .end local v13    # "stackId":I
    .end local v15    # "target":Landroid/content/Intent;
    .end local v16    # "targetFilter":Landroid/content/Intent$FilterComparison;
    .end local v20    # "topTask":Lcom/android/server/am/TaskRecord;
    :goto_12c
    return-object v17

    .line 2124
    .restart local v6    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .restart local v10    # "source":Landroid/content/Intent;
    .restart local v11    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    .restart local v13    # "stackId":I
    .restart local v15    # "target":Landroid/content/Intent;
    .restart local v16    # "targetFilter":Landroid/content/Intent$FilterComparison;
    .restart local v20    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_12d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    const/16 v22, 0x2000

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_1b2

    if-eqz p3, :cond_1b2

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1b2

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v21

    if-eqz v21, :cond_1b2

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v21

    if-eqz v21, :cond_1b2

    .line 2129
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    .line 2130
    const-string/jumbo v7, "existing-cascade"

    .line 2131
    .restart local v7    # "reason":Ljava/lang/String;
    sget-boolean v21, SAFE_DEBUG:Z

    if-eqz v21, :cond_11d

    const-string v21, "MultiWindowPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "adjustStackFocus: Use existing stack for cascade app (inherit) >> r="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " stackId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11d

    .line 2132
    .end local v7    # "reason":Ljava/lang/String;
    :cond_1b2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    const/16 v22, 0x2000

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_1eb

    if-eqz p2, :cond_1eb

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1eb

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->isDocument()Z

    move-result v21

    if-eqz v21, :cond_1eb

    if-eqz v11, :cond_1eb

    if-eqz v16, :cond_1eb

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1eb

    .line 2134
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    .line 2135
    const-string/jumbo v7, "keep-current"

    .restart local v7    # "reason":Ljava/lang/String;
    goto/16 :goto_11d

    .line 2138
    .end local v7    # "reason":Ljava/lang/String;
    :cond_1eb
    invoke-direct/range {p0 .. p1}, adjustFloatingBounds(Lcom/android/server/am/ActivityRecord;)V

    .line 2139
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(IILandroid/graphics/Rect;)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 2140
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v12, :cond_210

    .line 2141
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    .line 2144
    :cond_210
    const-string/jumbo v7, "create-cascade"

    .line 2145
    .restart local v7    # "reason":Ljava/lang/String;
    sget-boolean v21, SAFE_DEBUG:Z

    if-eqz v21, :cond_11d

    const-string v21, "MultiWindowPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "adjustStackFocus: New stack for cascade app >> r="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " stackId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11d

    .line 2155
    .end local v6    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "reason":Ljava/lang/String;
    .end local v10    # "source":Landroid/content/Intent;
    .end local v11    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "target":Landroid/content/Intent;
    .end local v16    # "targetFilter":Landroid/content/Intent$FilterComparison;
    .end local v20    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_241
    if-eqz p2, :cond_3ec

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3ec

    .line 2156
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    .line 2157
    .local v17, "taskStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v21

    if-eqz v21, :cond_273

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_273

    .line 2159
    if-eqz p4, :cond_273

    .line 2161
    const-string/jumbo v21, "keep-current"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2165
    :cond_273
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2bc

    .line 2167
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, getRelativeStackIdLocked(IILcom/android/server/am/ActivityRecord;)I

    move-result v9

    .line 2168
    .local v9, "relativeStackId":I
    invoke-virtual {v14, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 2169
    .local v8, "relativeStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v8, v1}, arrangeMultiWindowStyle(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_12c

    .line 2174
    .end local v8    # "relativeStack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "relativeStackId":I
    :cond_2bc
    const/4 v4, 0x1

    .line 2175
    .local v4, "bSameZone":Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v19

    .line 2181
    .local v19, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v19, :cond_308

    const-string v21, "com.sec.android.app.FlashBarService"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2dd

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getWindowMode()I

    move-result v21

    if-eqz v21, :cond_308

    .line 2182
    :cond_2dd
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v18

    .line 2183
    .local v18, "taskZone":I
    if-nez v18, :cond_2eb

    .line 2184
    const/16 v18, 0xf

    .line 2186
    :cond_2eb
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v21

    and-int v21, v21, v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3e9

    const/4 v4, 0x1

    .line 2191
    .end local v18    # "taskZone":I
    :cond_308
    :goto_308
    if-eqz v19, :cond_3ec

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v21

    if-nez v21, :cond_3ec

    if-eqz v4, :cond_3ec

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_35e

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    if-nez v21, :cond_3ec

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3ec

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3ec

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3ec

    :cond_35e
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_37a

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3ec

    .line 2196
    :cond_37a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    .line 2197
    const-string/jumbo v7, "reuse-exsiting-task"

    .line 2198
    .restart local v7    # "reason":Ljava/lang/String;
    sget-boolean v21, SAFE_DEBUG:Z

    if-eqz v21, :cond_3b3

    const-string v21, "MultiWindowPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "adjustStackFocus: Use existing stack for split app >> r="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " stackId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    :cond_3b3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v22, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2201
    if-eqz p4, :cond_3e3

    .line 2203
    invoke-virtual {v14, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2205
    :cond_3e3
    invoke-virtual {v14, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v17

    goto/16 :goto_12c

    .line 2186
    .end local v7    # "reason":Ljava/lang/String;
    .restart local v18    # "taskZone":I
    :cond_3e9
    const/4 v4, 0x0

    goto/16 :goto_308

    .line 2210
    .end local v4    # "bSameZone":Z
    .end local v17    # "taskStack":Lcom/android/server/am/ActivityStack;
    .end local v18    # "taskZone":I
    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_3ec
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 2211
    .local v5, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v5, :cond_400

    .line 2213
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 2214
    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    goto/16 :goto_12c

    .line 2217
    :cond_400
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v21

    if-eqz v21, :cond_40e

    if-eqz p2, :cond_430

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v21

    if-nez v21, :cond_430

    .line 2219
    :cond_40e
    if-eqz p4, :cond_424

    .line 2221
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v21

    const-string/jumbo v22, "use-home"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2223
    :cond_424
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v17

    goto/16 :goto_12c

    .line 2226
    :cond_430
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, getRelativeStackIdLocked(IILcom/android/server/am/ActivityRecord;)I

    move-result v9

    .line 2228
    .restart local v9    # "relativeStackId":I
    invoke-virtual {v14, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 2229
    .restart local v8    # "relativeStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v8, v1}, arrangeMultiWindowStyle(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2233
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 2235
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v12, :cond_47d

    .line 2237
    if-eqz p4, :cond_479

    .line 2239
    const-string/jumbo v21, "exsiting-zone"

    move-object/from16 v0, v21

    invoke-virtual {v14, v12, v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    :cond_479
    :goto_479
    move-object/from16 v17, v12

    .line 2255
    goto/16 :goto_12c

    .line 2244
    :cond_47d
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 2246
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    .line 2248
    sget-boolean v21, SAFE_DEBUG:Z

    if-eqz v21, :cond_4c9

    const-string v21, "MultiWindowPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "adjustStackFocus: New stack r="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " stackId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    :cond_4c9
    if-eqz p4, :cond_479

    .line 2252
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "create-zone"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v12, v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    goto :goto_479

    .line 2266
    .end local v5    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v8    # "relativeStack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "relativeStackId":I
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "stackId":I
    :cond_4f3
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeStack()Lcom/android/server/am/ActivityStack;

    move-result-object v17

    goto/16 :goto_12c
.end method

.method applyMetaDataMultiWindowOptions(Landroid/content/pm/ActivityInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 6
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "targetStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/high16 v2, 0x10000

    .line 270
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 271
    .local v0, "appMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 272
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 273
    const/4 v1, 0x1

    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 275
    :cond_18
    return-void
.end method

.method public applyMultiInstanceStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 11
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const v7, -0x8000001

    const/4 v3, 0x0

    .line 1626
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v4, :cond_7d

    .line 1627
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7e

    iget-object v4, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1631
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    :goto_17
    if-eqz v0, :cond_96

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_96

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_96

    iget-object v4, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eq v0, v4, :cond_45

    :cond_3b
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v5, 0x80000

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_96

    :cond_45
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-ne v4, v1, :cond_96

    .line 1636
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, p1, v4}, getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I

    move-result v4

    iget v5, p0, mMultiInstanceMaxCnt:I

    if-lt v4, v5, :cond_7d

    .line 1637
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_8b

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1639
    .local v2, "taskAffinity":Ljava/lang/String;
    :cond_5f
    :goto_5f
    if-eqz p2, :cond_6d

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v4, :cond_6d

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_94

    .line 1641
    .local v1, "newTask":Z
    :cond_6d
    :goto_6d
    if-eqz v1, :cond_7d

    .line 1642
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1643
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    .line 1651
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "newTask":Z
    .end local v2    # "taskAffinity":Ljava/lang/String;
    :cond_7d
    :goto_7d
    return-void

    .line 1627
    :cond_7e
    iget-object v4, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_17

    .line 1637
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_8b
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_5f

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    goto :goto_5f

    .restart local v2    # "taskAffinity":Ljava/lang/String;
    :cond_94
    move v1, v3

    .line 1639
    goto :goto_6d

    .line 1647
    .end local v2    # "taskAffinity":Ljava/lang/String;
    :cond_96
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1648
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    goto :goto_7d
.end method

.method public applyMultiWindowLaunchStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 24
    .param p1, "callerRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "calleeRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1459
    const/4 v10, 0x0

    .line 1460
    .local v10, "isMultiWindowLaunch":Z
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move/from16 v17, v0

    if-nez v17, :cond_65

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getFlags()I

    move-result v17

    const/high16 v18, 0x10000000

    and-int v17, v17, v18

    if-eqz v17, :cond_65

    const-string v17, "android"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v17

    if-nez v17, :cond_65

    move-object/from16 v0, p0

    iget-object v0, v0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v17

    if-nez v17, :cond_65

    .line 1465
    :cond_4b
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v17

    if-eqz v17, :cond_b7

    if-eqz p1, :cond_b7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v17

    if-nez v17, :cond_b7

    .line 1487
    :cond_65
    :goto_65
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityManagerService;->getUserManagerLocked()Lcom/android/server/pm/UserManagerService;

    move-result-object v17

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v16

    .line 1488
    .local v16, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v16, :cond_148

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v17

    if-eqz v17, :cond_148

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v17

    if-nez v17, :cond_148

    .line 1489
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1490
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1491
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/high16 v18, 0x1000000

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1499
    :cond_ac
    :goto_ac
    if-eqz p1, :cond_b6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    if-nez v17, :cond_18a

    .line 1623
    :cond_b6
    :goto_b6
    return-void

    .line 1470
    .end local v16    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_b7
    if-eqz p1, :cond_12e

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v17

    if-nez v17, :cond_12e

    .line 1472
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v17

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_115

    .line 1473
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getOptionFlags()I

    move-result v18

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1477
    :goto_f4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v17

    if-nez v17, :cond_65

    .line 1478
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto/16 :goto_65

    .line 1475
    :cond_115
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getFlags()I

    move-result v18

    const v19, -0x10000001

    and-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_f4

    .line 1482
    :cond_12e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1483
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_65

    .line 1492
    .restart local v16    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_148
    if-eqz v16, :cond_ac

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v17

    if-eqz v17, :cond_ac

    invoke-static {}, Landroid/os/PersonaManager;->isKnoxMultiwindowsSupported()Z

    move-result v17

    if-nez v17, :cond_ac

    .line 1493
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1494
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1495
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/high16 v18, 0x1000000

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1496
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/high16 v18, 0x200000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_ac

    .line 1504
    :cond_18a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_19a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1b4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .line 1505
    .local v11, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x1000

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_19a

    goto/16 :goto_b6

    .line 1510
    .end local v11    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1b4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, isPenWindowLaunchApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v17

    if-eqz v17, :cond_239

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_239

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v17

    if-nez v17, :cond_239

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v17

    if-eqz v17, :cond_239

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getFlags()I

    move-result v17

    const/high16 v18, 0x10000000

    and-int v17, v17, v18

    if-eqz v17, :cond_239

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getOptionFlags()I

    move-result v17

    const/high16 v18, 0x200000

    and-int v17, v17, v18

    if-nez v17, :cond_239

    .line 1517
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1518
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x800

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1520
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, getPenWindowLaunchScale(Landroid/content/pm/ActivityInfo;)F

    move-result v14

    .line 1521
    .local v14, "scale":F
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, setFloatingBounds(Lcom/android/server/am/ActivityRecord;F)V

    .line 1523
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1526
    .end local v14    # "scale":F
    :cond_239
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "multi_window_enabled"

    const/16 v19, 0x0

    const/16 v20, -0x2

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_4a0

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "open_multi_window_view"

    const/16 v19, 0x0

    const/16 v20, -0x2

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_4a0

    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityManagerService;->isInLockTaskMode()Z

    move-result v17

    if-nez v17, :cond_4a0

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isAvoidLaunchStyleApp(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_b6

    .line 1533
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4a0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4a0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4a0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4a0

    .line 1536
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4a0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isMultiWindowLaunchInSame(Landroid/content/Intent;)Z

    move-result v17

    if-nez v17, :cond_4a0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_4a0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_4a0

    .line 1539
    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_342

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_31f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "audio/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_342

    :cond_31f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    if-eqz v17, :cond_38a

    const-string/jumbo v17, "fb-messenger"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_38a

    :cond_342
    const-string v17, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_38a

    const-string v17, "com.android.gallery.action.SEARCH_VIEW"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_38a

    const-string v17, "android.intent.action.START_SLINK_PLAYBACK"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_38a

    const-string v17, "com.sec.android.app.music.intent.action.PLAY_VIA"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4a0

    .line 1546
    :cond_38a
    const/4 v4, 0x1

    .line 1547
    .local v4, "clearTask":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v17

    if-eqz v17, :cond_4c8

    .line 1549
    const/4 v13, 0x0

    .line 1550
    .local v13, "sameTask":Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_417

    .line 1551
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1552
    .local v7, "extra":Landroid/os/Bundle;
    if-eqz v7, :cond_417

    .line 1553
    const-string v17, "android.intent.extra.INTENT"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Intent;

    .line 1554
    .local v15, "selectedIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v5

    .line 1555
    .local v5, "currentUserId":I
    const/4 v3, 0x0

    .line 1556
    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v15, :cond_3e2

    invoke-virtual {v15}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3e2

    .line 1558
    :try_start_3c9
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v17

    invoke-virtual {v15}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v18

    const v19, 0x10400

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v15, v1, v2, v5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 1560
    .local v12, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v12, :cond_4c1

    iget-object v3, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_3e2
    .catch Landroid/os/RemoteException; {:try_start_3c9 .. :try_end_3e2} :catch_4c4

    .line 1565
    .end local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_3e2
    :goto_3e2
    if-eqz v3, :cond_417

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_417

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_417

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_417

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_417

    .line 1568
    const/4 v13, 0x1

    .line 1572
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "currentUserId":I
    .end local v7    # "extra":Landroid/os/Bundle;
    .end local v15    # "selectedIntent":Landroid/content/Intent;
    :cond_417
    if-nez v13, :cond_430

    .line 1573
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1574
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1575
    const/4 v10, 0x1

    .line 1591
    .end local v13    # "sameTask":Z
    :cond_430
    :goto_430
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v17

    if-eqz v17, :cond_4a0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4a0

    .line 1593
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const/high16 v18, 0x10000000

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1594
    if-eqz v4, :cond_47d

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_47d

    .line 1595
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const v18, 0x8000

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1600
    :cond_47d
    if-eqz v10, :cond_55a

    .line 1601
    const/16 v17, 0x0

    const v18, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, updateCenterBarPosition(IF)V

    .line 1602
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_4a0

    .line 1603
    const/16 v17, 0x0

    const/high16 v18, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, updateCenterBarPosition(IF)V

    .line 1620
    .end local v4    # "clearTask":Z
    :cond_4a0
    :goto_4a0
    if-eqz v10, :cond_b6

    if-eqz p1, :cond_b6

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wm/WindowManagerService;->setLastDrawnFocusedStackFrameIdToSkip(I)V

    goto/16 :goto_b6

    .line 1560
    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "clearTask":Z
    .restart local v5    # "currentUserId":I
    .restart local v7    # "extra":Landroid/os/Bundle;
    .restart local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v13    # "sameTask":Z
    .restart local v15    # "selectedIntent":Landroid/content/Intent;
    :cond_4c1
    const/4 v3, 0x0

    goto/16 :goto_3e2

    .line 1561
    .end local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_4c4
    move-exception v6

    .line 1562
    .local v6, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto/16 :goto_3e2

    .line 1578
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "currentUserId":I
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v7    # "extra":Landroid/os/Bundle;
    .end local v13    # "sameTask":Z
    .end local v15    # "selectedIntent":Landroid/content/Intent;
    :cond_4c8
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_53d

    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 1581
    .local v9, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_4ea
    if-eqz v9, :cond_430

    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_504

    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_430

    :cond_504
    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v17

    if-eqz v17, :cond_430

    .line 1584
    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_51f

    .line 1585
    const/4 v4, 0x0

    .line 1587
    :cond_51f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1588
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto/16 :goto_430

    .line 1578
    .end local v9    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_53d
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    goto :goto_4ea

    .line 1605
    :cond_55a
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, needToUpdateCenterBarPosition(I)Z

    move-result v17

    if-eqz v17, :cond_4a0

    .line 1606
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_59b

    .line 1607
    const/16 v17, 0x0

    const v18, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, updateCenterBarPosition(IF)V

    .line 1611
    :goto_586
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_4a0

    .line 1612
    const/16 v17, 0x0

    const/high16 v18, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, updateCenterBarPosition(IF)V

    goto/16 :goto_4a0

    .line 1609
    :cond_59b
    const/16 v17, 0x0

    const v18, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, updateCenterBarPosition(IF)V

    goto :goto_586
.end method

.method public applyMultiWindowStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 20
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "caller"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "sourceToken"    # Landroid/os/IBinder;

    .prologue
    .line 557
    const/4 v6, 0x0

    .line 559
    .local v6, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v3, 0x0

    .line 560
    .local v3, "callerRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    .line 561
    .local v2, "callerMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v5

    .line 563
    .local v5, "isFreeStyleFeatureEnabled":Z
    const-string v12, "android"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_31

    .line 564
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v12

    if-eqz v12, :cond_2c

    .line 565
    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v12

    invoke-direct {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 567
    .restart local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_2c
    if-eqz v6, :cond_31

    .line 568
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->resetSpecificTaskId()V

    .line 572
    :cond_31
    if-eqz p3, :cond_1cb

    .line 573
    move-object/from16 v3, p3

    .line 604
    :cond_35
    :goto_35
    if-eqz v3, :cond_296

    .line 605
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 608
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getWindowMode()I

    move-result v11

    .line 609
    .local v11, "windowMode":I
    if-eqz v11, :cond_5a

    if-nez v6, :cond_5a

    .line 610
    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 611
    .restart local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v6, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 612
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v9

    .line 613
    .local v9, "rect":Landroid/graphics/Rect;
    if-eqz v9, :cond_240

    .line 614
    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 620
    .end local v9    # "rect":Landroid/graphics/Rect;
    :cond_5a
    :goto_5a
    if-eqz v6, :cond_262

    .line 621
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v12

    if-eqz v12, :cond_95

    .line 622
    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_255

    .line 623
    iget-object v12, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 624
    .local v7, "previousStackResumedRecord":Lcom/android/server/am/ActivityRecord;
    iget-boolean v12, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v12, :cond_24f

    if-eqz v7, :cond_24f

    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v13, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_24f

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v12

    if-nez v12, :cond_24f

    iget-object v12, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_24f

    .line 632
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 658
    .end local v7    # "previousStackResumedRecord":Lcom/android/server/am/ActivityRecord;
    :cond_95
    :goto_95
    iget-object v12, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v14, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isAvoidInheritStack(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_d4

    .line 659
    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v12, :cond_d4

    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v12, v12, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v12, :cond_d4

    iget-object v12, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v13, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v13, v13, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    if-eqz v12, :cond_d4

    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v12, v12, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v12, v12, Lcom/android/server/am/ActivityStack;->mStackType:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_d4

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v12

    if-eqz v12, :cond_d4

    if-eqz v5, :cond_d4

    .line 663
    const/16 v12, 0x2000

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 695
    :cond_d4
    :goto_d4
    if-nez v6, :cond_db

    .line 696
    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 699
    .restart local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_db
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v12

    if-eqz v12, :cond_eb

    .line 700
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isInValidZone()Z

    move-result v12

    if-eqz v12, :cond_eb

    .line 701
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 705
    :cond_eb
    const/4 v10, 0x0

    .line 706
    .local v10, "supportScaleApp":Z
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v12}, isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v12

    if-eqz v12, :cond_312

    .line 707
    const/high16 v12, 0x1000000

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 734
    :cond_fc
    :goto_fc
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v12

    if-eqz v12, :cond_132

    if-eqz v5, :cond_132

    .line 735
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v12}, isNoTitleActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v12

    if-eqz v12, :cond_114

    .line 736
    const/high16 v12, 0x40000

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 739
    :cond_114
    iget-object v12, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isAvoidScaleOption(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3aa

    .line 740
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v12, :cond_132

    const/16 v12, 0x800

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_132

    .line 741
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 749
    :cond_132
    :goto_132
    if-eqz v10, :cond_13a

    .line 750
    const/high16 v12, 0x1000000

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 753
    :cond_13a
    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_143

    if-eqz v10, :cond_180

    .line 754
    :cond_143
    iget-object v12, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 756
    const/high16 v12, 0x200000

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_165

    .line 757
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 758
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 759
    const/high16 v12, 0x1000000

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 762
    :cond_165
    const/16 v12, 0x1000

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_180

    iget-object v12, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v12

    if-nez v12, :cond_180

    .line 765
    const/4 v12, 0x0

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getIsolatedCenterPoint()Landroid/graphics/Point;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, setIsolatedPoint(ILandroid/graphics/Point;)V

    .line 769
    :cond_180
    if-eqz v5, :cond_18c

    iget-object v12, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->isForceHideCascade()Z

    move-result v12

    if-eqz v12, :cond_196

    :cond_18c
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v12

    if-eqz v12, :cond_196

    .line 771
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 774
    :cond_196
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v12}, isSupportFullScreenMinimizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v12

    if-eqz v12, :cond_1a8

    if-eqz v5, :cond_1a8

    .line 775
    const/high16 v12, 0x20000

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 782
    :cond_1a8
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v12, :cond_1c5

    if-eqz p3, :cond_1c5

    .line 783
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActivityRecord;->getPreferredOrientation()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFakeTarget(I)Z

    move-result v12

    if-eqz v12, :cond_1c5

    .line 784
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActivityRecord;->getPreferredOrientation()I

    move-result v12

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(I)V

    .line 787
    :cond_1c5
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v6}, initAndReDrawCenterBar(Lcom/android/server/am/ActivityRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 789
    return-object v6

    .line 574
    .end local v10    # "supportScaleApp":Z
    .end local v11    # "windowMode":I
    :cond_1cb
    if-eqz p4, :cond_1d3

    .line 575
    invoke-static/range {p4 .. p4}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    goto/16 :goto_35

    .line 576
    :cond_1d3
    if-eqz p2, :cond_35

    .line 577
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_35

    .line 579
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1e7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1fa

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 580
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v12, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v8, v12, :cond_1e7

    .line 581
    move-object v3, v8

    .line 585
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1fa
    if-nez v3, :cond_210

    .line 586
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 589
    .restart local v3    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    :cond_210
    if-eqz v3, :cond_21c

    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_21c

    .line 591
    const/4 v3, 0x0

    .line 594
    :cond_21c
    const-string v12, "com.sec.android.app.FlashBarService"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22d

    .line 595
    const/4 v3, 0x0

    goto/16 :goto_35

    .line 596
    :cond_22d
    if-eqz v3, :cond_35

    const-string v12, "com.android.systemui.multiwindow.RecentsMultiWindowActivity"

    iget-object v13, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35

    .line 599
    const/4 v3, 0x0

    goto/16 :goto_35

    .line 615
    .end local v4    # "i$":Ljava/util/Iterator;
    .restart local v9    # "rect":Landroid/graphics/Rect;
    .restart local v11    # "windowMode":I
    :cond_240
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    if-eqz v12, :cond_5a

    .line 616
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_5a

    .line 634
    .end local v9    # "rect":Landroid/graphics/Rect;
    .restart local v7    # "previousStackResumedRecord":Lcom/android/server/am/ActivityRecord;
    :cond_24f
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    goto/16 :goto_95

    .line 636
    .end local v7    # "previousStackResumedRecord":Lcom/android/server/am/ActivityRecord;
    :cond_255
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v12

    if-nez v12, :cond_95

    .line 637
    const/16 v12, 0xc

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto/16 :goto_95

    .line 641
    :cond_262
    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 642
    .restart local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 643
    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 645
    sget-boolean v12, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v12, :cond_95

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v12, :cond_95

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v12

    if-eqz v12, :cond_95

    if-eqz v5, :cond_95

    .line 647
    iget-object v12, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowManagerService;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v1

    .line 648
    .local v1, "appRequestOrientation":I
    const/4 v12, -0x1

    if-eq v1, v12, :cond_95

    .line 649
    invoke-virtual {v6, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(I)V

    goto/16 :goto_95

    .line 667
    .end local v1    # "appRequestOrientation":I
    .end local v11    # "windowMode":I
    :cond_296
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getWindowMode()I

    move-result v11

    .line 668
    .restart local v11    # "windowMode":I
    if-eqz v11, :cond_2b7

    if-nez v6, :cond_2b7

    .line 669
    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 670
    .restart local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v6, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 671
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v9

    .line 672
    .restart local v9    # "rect":Landroid/graphics/Rect;
    if-eqz v9, :cond_2b7

    .line 673
    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 676
    .end local v9    # "rect":Landroid/graphics/Rect;
    :cond_2b7
    if-eqz v6, :cond_d4

    .line 677
    iget-object v12, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 678
    const/16 v12, 0x1000

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_2d4

    .line 679
    const/4 v12, 0x0

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getIsolatedCenterPoint()Landroid/graphics/Point;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, setIsolatedPoint(ILandroid/graphics/Point;)V

    .line 681
    :cond_2d4
    iget-object v12, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    iget-object v7, v12, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 682
    .restart local v7    # "previousStackResumedRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_d4

    const/16 v12, 0x1000

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_d4

    .line 683
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v12

    if-eqz v12, :cond_d4

    .line 684
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 685
    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_2ff

    const/high16 v12, 0x200000

    invoke-virtual {v2, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_305

    .line 686
    :cond_2ff
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    goto/16 :goto_d4

    .line 687
    :cond_305
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v12

    if-nez v12, :cond_d4

    .line 688
    const/16 v12, 0xc

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto/16 :goto_d4

    .line 708
    .end local v7    # "previousStackResumedRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "supportScaleApp":Z
    :cond_312
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v12}, isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v12

    if-eqz v12, :cond_330

    .line 709
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v12}, isSplitOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v12

    if-nez v12, :cond_32e

    const/4 v10, 0x1

    .line 710
    :goto_327
    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_fc

    .line 709
    :cond_32e
    const/4 v10, 0x0

    goto :goto_327

    .line 711
    :cond_330
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v12}, isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_351

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v12

    if-eqz v12, :cond_351

    const/16 v12, 0x800

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_351

    if-eqz v5, :cond_351

    .line 714
    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_fc

    .line 715
    :cond_351
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v12}, isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v12

    if-eqz v12, :cond_36a

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v12

    if-eqz v12, :cond_36a

    if-eqz v5, :cond_36a

    .line 717
    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_fc

    .line 718
    :cond_36a
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v12, :cond_3a4

    iget-object v12, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->shouldNotBeLaunchedInMultiWindowStyle(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3a4

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v12}, isPenWindowOnlyApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v12

    if-nez v12, :cond_3a4

    .line 721
    if-eqz v2, :cond_fc

    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_fc

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v12

    if-nez v12, :cond_fc

    .line 728
    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_fc

    .line 731
    :cond_3a4
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    goto/16 :goto_fc

    .line 744
    :cond_3aa
    const/16 v12, 0x800

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 745
    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_132
.end method

.method public applyRecentTaskMultiWindowStyle(Lcom/android/server/am/TaskRecord;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 14
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/16 v11, 0x1000

    const/high16 v10, 0x1000000

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 515
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v7, :cond_47

    .line 516
    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 517
    .local v4, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v7, 0x8000000

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 518
    invoke-virtual {v4, v10, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 520
    :cond_23
    invoke-virtual {v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 521
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 523
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    :try_start_2d
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/16 v7, 0x80

    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-interface {v3, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 524
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0, v0}, isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 525
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_46} :catch_e2

    .line 552
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    .end local v4    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_46
    :goto_46
    return-object v4

    .line 532
    :cond_47
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    iget-object v1, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 533
    .local v1, "baseStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 534
    .local v2, "newStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_d9

    .line 535
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 536
    .local v5, "topStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v6}, isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-eqz v6, :cond_dc

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v6}, isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-eqz v6, :cond_dc

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v6}, isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-nez v6, :cond_dc

    invoke-virtual {v5, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_dc

    move v6, v7

    :goto_91
    invoke-virtual {v2, v9, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 540
    invoke-virtual {v1, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_de

    invoke-virtual {v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_de

    const/high16 v6, 0x8000000

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_de

    move v6, v7

    :goto_a9
    invoke-virtual {v2, v10, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 544
    const/high16 v9, 0x200000

    const/high16 v6, 0x200000

    invoke-virtual {v1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_be

    const/high16 v6, 0x200000

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_e0

    :cond_be
    move v6, v7

    :goto_bf
    invoke-virtual {v2, v9, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 547
    invoke-virtual {v1, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_ce

    invoke-virtual {v5, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_cf

    :cond_ce
    move v8, v7

    :cond_cf
    invoke-virtual {v2, v11, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 550
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(I)V

    .end local v5    # "topStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_d9
    move-object v4, v2

    .line 552
    goto/16 :goto_46

    .restart local v5    # "topStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_dc
    move v6, v8

    .line 536
    goto :goto_91

    :cond_de
    move v6, v8

    .line 540
    goto :goto_a9

    :cond_e0
    move v6, v8

    .line 544
    goto :goto_bf

    .line 527
    .end local v1    # "baseStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v2    # "newStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v5    # "topStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v3    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v4    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :catch_e2
    move-exception v6

    goto/16 :goto_46
.end method

.method public arrangeMultiWindowStyle(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 15
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "requestStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/high16 v8, 0x4000000

    const/4 v11, 0x1

    .line 849
    if-nez p1, :cond_6

    .line 901
    :cond_5
    :goto_5
    return-void

    .line 853
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 854
    const/high16 v7, 0x2000000

    invoke-virtual {p2, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 855
    iget-object v7, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->createMultiWindowFreezeSurface(I)V

    goto :goto_5

    .line 860
    :cond_20
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    .line 861
    .local v4, "requestZone":I
    const/16 v7, 0xf

    if-eq v4, v7, :cond_5

    if-eqz v4, :cond_5

    .line 865
    invoke-virtual {p0, v4}, findBaseZone(I)I

    move-result v1

    .line 866
    .local v1, "baseZone":I
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 867
    .local v6, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_5

    .line 868
    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v2, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 869
    .local v2, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v2, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 870
    xor-int/lit8 v7, v4, -0x1

    and-int/2addr v7, v1

    invoke-virtual {v2, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 873
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 874
    invoke-virtual {p2, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_c5

    .line 875
    iget-object v7, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->createMultiWindowFreezeSurface(I)V

    .line 884
    :cond_5c
    :goto_5c
    iget-object v7, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v8, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v7, v2, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 885
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v5, :cond_7e

    .line 886
    iget-object v7, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v8

    iget v9, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 888
    :cond_7e
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    xor-int/lit8 v8, v4, -0x1

    and-int/2addr v8, v1

    if-eq v7, v8, :cond_5

    .line 889
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v8, 0x1000

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 890
    iget-object v7, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v8, v5, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v7, v4, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 891
    .local v3, "orgin":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_a8

    .line 892
    iget v7, v5, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget v8, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget v9, v5, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p0, v7, v8, v9, v11}, resize2Split(IIIZ)V

    .line 895
    .end local v3    # "orgin":Lcom/android/server/am/ActivityStack;
    :cond_a8
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v7, v2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 896
    invoke-virtual {v5, v6, v11, v11}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 897
    const-string v7, "FIXME"

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 898
    iget-object v7, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v9, v5, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v11, v10}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    goto/16 :goto_5

    .line 876
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_c5
    invoke-virtual {v2, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 878
    .local v0, "appTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    iget-object v7, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v8, 0x8

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v9

    invoke-virtual {v7, v0, v8, v9}, Lcom/android/server/wm/WindowManagerService;->prepareMultiWindowTransition(Ljava/util/ArrayList;II)V

    goto/16 :goto_5c
.end method

.method public arrangeMultiWindowStyleOnResumeTopActivities(Lcom/android/server/am/ActivityStack;)V
    .registers 32
    .param p1, "resumeTopStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 924
    if-nez p1, :cond_3

    .line 1103
    :cond_2
    :goto_2
    return-void

    .line 928
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryIsolatedLocked()Ljava/util/ArrayList;

    move-result-object v21

    .line 929
    .local v21, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 930
    .local v16, "skipTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v12, 0x0

    .line 931
    .local v12, "obscuredZone":I
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 932
    .local v13, "recordZoneTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v8, v24, -0x1

    .local v8, "i":I
    :goto_18
    if-ltz v8, :cond_34

    .line 933
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/TaskRecord;

    .line 934
    .local v19, "task":Lcom/android/server/am/TaskRecord;
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->getVisibleObscuredZone(Z)I

    move-result v20

    .line 935
    .local v20, "taskObscuredZone":I
    const/16 v24, 0xf

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_81

    .line 970
    .end local v19    # "task":Lcom/android/server/am/TaskRecord;
    .end local v20    # "taskObscuredZone":I
    :cond_34
    :goto_34
    const/16 v24, 0xf

    move/from16 v0, v24

    if-eq v12, v0, :cond_2

    .line 974
    const/4 v14, 0x0

    .line 975
    .local v14, "shouldPaused":Z
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 978
    .local v7, "frontZoneSize":I
    if-lez v7, :cond_506

    .line 979
    const/4 v11, 0x0

    .line 980
    .local v11, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-lez v7, :cond_212

    .line 981
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v7, v0, :cond_24a

    .line 982
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 983
    .local v23, "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_58
    :goto_58
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_211

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/TaskRecord;

    .line 984
    .local v22, "tr":Lcom/android/server/am/TaskRecord;
    new-instance v11, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 985
    .restart local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v24, 0x10000000

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v24

    if-eqz v24, :cond_132

    .line 986
    const-string v24, "MultiWindowPolicy"

    const-string v25, "Keep current MultiWindowStyle by option"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 938
    .end local v7    # "frontZoneSize":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v14    # "shouldPaused":Z
    .end local v22    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v23    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v19    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v20    # "taskObscuredZone":I
    :cond_81
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v24

    if-eqz v24, :cond_90

    .line 932
    :cond_8d
    :goto_8d
    add-int/lit8 v8, v8, -0x1

    goto :goto_18

    .line 941
    :cond_90
    if-nez v20, :cond_b0

    .line 942
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v24

    if-gtz v24, :cond_8d

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v24

    if-eqz v24, :cond_8d

    .line 943
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_8d

    .line 947
    :cond_b0
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v24

    if-eqz v24, :cond_8d

    .line 950
    and-int v24, v12, v20

    if-nez v24, :cond_111

    .line 951
    or-int v12, v12, v20

    .line 952
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 953
    .restart local v23    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    move/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 955
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v24

    if-eqz v24, :cond_8d

    .line 956
    const/4 v10, 0x0

    .line 957
    .local v10, "isRealOverHome":Z
    if-lez v8, :cond_10f

    add-int/lit8 v24, v8, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10f

    add-int/lit8 v24, v8, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v24

    if-eqz v24, :cond_10f

    const/4 v10, 0x1

    .line 958
    :goto_10b
    if-eqz v10, :cond_8d

    goto/16 :goto_34

    .line 957
    :cond_10f
    const/4 v10, 0x0

    goto :goto_10b

    .line 960
    .end local v10    # "isRealOverHome":Z
    .end local v23    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_111
    or-int v24, v12, v20

    const/16 v25, 0xf

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_34

    .line 963
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 964
    .restart local v23    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    if-eqz v23, :cond_8d

    .line 965
    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_8d

    .line 989
    .end local v19    # "task":Lcom/android/server/am/TaskRecord;
    .end local v20    # "taskObscuredZone":I
    .restart local v7    # "frontZoneSize":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v14    # "shouldPaused":Z
    .restart local v22    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_132
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 990
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v24

    if-nez v24, :cond_58

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v17

    .line 992
    .local v17, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v17, :cond_197

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v25

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v26, v0

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v27

    invoke-virtual/range {v24 .. v27}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;

    move-result-object v17

    .line 996
    :cond_197
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 997
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    const/16 v26, 0x1

    const/16 v27, 0x1

    invoke-virtual/range {v24 .. v27}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 999
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_58

    .line 1004
    const-string v24, "FIXME"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    .line 1006
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    const-string v26, "FIXME"

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    goto/16 :goto_58

    .line 1011
    .end local v17    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v22    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_211
    const/4 v14, 0x1

    .line 1093
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v23    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_212
    :goto_212
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_506

    .line 1094
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_21c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4db

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/TaskRecord;

    .line 1095
    .local v15, "skipTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v24, v0

    iget v0, v15, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v25, v0

    iget-object v0, v15, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    goto :goto_21c

    .line 1013
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "skipTask":Lcom/android/server/am/TaskRecord;
    :cond_24a
    const/4 v6, 0x0

    .line 1014
    .local v6, "arrangeZone":I
    packed-switch v7, :pswitch_data_520

    goto :goto_212

    .line 1016
    :pswitch_24f
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_31d

    .line 1017
    const/4 v6, 0x3

    .line 1021
    :goto_266
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 1022
    .restart local v23    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_274
    :goto_274
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_321

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/TaskRecord;

    .line 1023
    .restart local v22    # "tr":Lcom/android/server/am/TaskRecord;
    new-instance v11, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1024
    .restart local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v11, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v18

    .line 1026
    .local v18, "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1027
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    const/16 v26, 0x1

    const/16 v27, 0x1

    invoke-virtual/range {v24 .. v27}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1029
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_274

    .line 1034
    const-string v24, "FIXME"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 1036
    :try_start_2ee
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v27, v0

    const/16 v28, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    .line 1037
    monitor-exit v25

    goto/16 :goto_274

    :catchall_31a
    move-exception v24

    monitor-exit v25
    :try_end_31c
    .catchall {:try_start_2ee .. :try_end_31c} :catchall_31a

    throw v24

    .line 1019
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v18    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v22    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v23    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_31d
    const/16 v6, 0xc

    goto/16 :goto_266

    .line 1041
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v23    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_321
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    check-cast v23, Ljava/util/ArrayList;

    .line 1042
    .restart local v23    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_32f
    :goto_32f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_212

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/TaskRecord;

    .line 1043
    .restart local v22    # "tr":Lcom/android/server/am/TaskRecord;
    new-instance v11, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1044
    .restart local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    xor-int/lit8 v24, v6, -0x1

    and-int/lit8 v24, v24, 0xf

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v18

    .line 1046
    .restart local v18    # "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1047
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    const/16 v26, 0x1

    const/16 v27, 0x1

    invoke-virtual/range {v24 .. v27}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1049
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_32f

    .line 1054
    const-string v24, "FIXME"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 1056
    :try_start_3af
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v27, v0

    const/16 v28, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    .line 1057
    monitor-exit v25

    goto/16 :goto_32f

    :catchall_3db
    move-exception v24

    monitor-exit v25
    :try_end_3dd
    .catchall {:try_start_3af .. :try_end_3dd} :catchall_3db

    throw v24

    .line 1063
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v18    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v22    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v23    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :pswitch_3de
    xor-int/lit8 v24, v12, -0x1

    and-int/lit8 v24, v24, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, findBaseZone(I)I

    move-result v6

    .line 1064
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    .local v5, "allZoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Collection;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1066
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Collection;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1067
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Collection;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1068
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_420
    :goto_420
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_212

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/TaskRecord;

    .line 1069
    .restart local v22    # "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v24

    and-int v24, v24, v6

    if-eqz v24, :cond_420

    .line 1070
    new-instance v11, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1071
    .restart local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    xor-int/lit8 v24, v6, -0x1

    and-int/lit8 v24, v24, 0xf

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v18

    .line 1073
    .restart local v18    # "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1074
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    const/16 v26, 0x1

    const/16 v27, 0x1

    invoke-virtual/range {v24 .. v27}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1076
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_420

    .line 1081
    const-string v24, "FIXME"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 1083
    :try_start_4ac
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v27, v0

    const/16 v28, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    .line 1084
    monitor-exit v25

    goto/16 :goto_420

    :catchall_4d8
    move-exception v24

    monitor-exit v25
    :try_end_4da
    .catchall {:try_start_4ac .. :try_end_4da} :catchall_4d8

    throw v24

    .line 1097
    .end local v5    # "allZoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v6    # "arrangeZone":I
    .end local v18    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v22    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_4db
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/TaskRecord;

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v24

    const-string v26, "FIXME"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 1100
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_506
    if-eqz v14, :cond_2

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    invoke-virtual/range {v24 .. v27}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    goto/16 :goto_2

    .line 1014
    nop

    :pswitch_data_520
    .packed-switch 0x2
        :pswitch_24f
        :pswitch_3de
    .end packed-switch
.end method

.method public calculateMinimizePosition(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .registers 11
    .param p1, "displayId"    # I
    .param p2, "zone"    # I
    .param p3, "displaySize"    # Landroid/graphics/Point;

    .prologue
    .line 1928
    const/4 v3, 0x0

    .local v3, "x":I
    const/4 v4, 0x0

    .line 1929
    .local v4, "y":I
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10502aa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1930
    .local v1, "minimizeSize":I
    const/4 v0, 0x0

    .line 1935
    .local v0, "cocktailBarSize":I
    const/4 v2, 0x0

    .line 1939
    .local v2, "orient":I
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 1942
    const/4 v5, 0x1

    if-ne v2, v5, :cond_36

    .line 1944
    iget v5, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v1

    sub-int v3, v5, v0

    .line 1945
    sparse-switch p2, :sswitch_data_4c

    .line 1953
    invoke-virtual {p0, p1}, getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v5

    iget v4, v5, Landroid/graphics/Point;->y:I

    .line 1970
    :goto_28
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v5

    .line 1947
    :sswitch_2e
    sget v4, sStatusBarHeight:I

    .line 1948
    goto :goto_28

    .line 1950
    :sswitch_31
    iget v5, p3, Landroid/graphics/Point;->y:I

    sub-int v4, v5, v1

    .line 1951
    goto :goto_28

    .line 1957
    :cond_36
    sget v5, sStatusBarHeight:I

    add-int v4, v0, v5

    .line 1958
    sparse-switch p2, :sswitch_data_56

    .line 1966
    invoke-virtual {p0, p1}, getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v5

    iget v3, v5, Landroid/graphics/Point;->x:I

    goto :goto_28

    .line 1960
    :sswitch_44
    const/4 v3, 0x0

    .line 1961
    goto :goto_28

    .line 1963
    :sswitch_46
    iget v5, p3, Landroid/graphics/Point;->x:I

    sub-int v3, v5, v1

    .line 1964
    goto :goto_28

    .line 1945
    nop

    :sswitch_data_4c
    .sparse-switch
        0x3 -> :sswitch_2e
        0xc -> :sswitch_31
    .end sparse-switch

    .line 1958
    :sswitch_data_56
    .sparse-switch
        0x3 -> :sswitch_44
        0xc -> :sswitch_46
    .end sparse-switch
.end method

.method chkDisableByMobileKeyboard()V
    .registers 5

    .prologue
    .line 2496
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningCascadeApp:Z

    if-nez v1, :cond_10

    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningSplitApp:Z

    if-eqz v1, :cond_23

    .line 2498
    :cond_10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2499
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/am/MultiWindowPolicy$4;

    invoke-direct {v1, p0}, Lcom/android/server/am/MultiWindowPolicy$4;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2509
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_23
    return-void
.end method

.method public closePenWindow()V
    .registers 11

    .prologue
    .line 431
    const-string v6, "MultiWindowPolicy"

    const-string v7, "closePenWindow"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v6, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v0

    .line 433
    .local v0, "currentUserId":I
    iget-object v7, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 434
    :try_start_10
    iget-object v6, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 435
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 436
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 437
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_36
    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 438
    .local v5, "tr":Lcom/android/server/am/TaskRecord;
    iget v6, v5, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v6, v0, :cond_36

    .line 439
    iget-object v6, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/ActivityManagerService;->removeTask(II)Z

    goto :goto_36

    .line 443
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v5    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_4f
    move-exception v6

    monitor-exit v7
    :try_end_51
    .catchall {:try_start_10 .. :try_end_51} :catchall_4f

    throw v6

    :cond_52
    :try_start_52
    monitor-exit v7
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_4f

    .line 444
    return-void
.end method

.method findBaseZone(I)I
    .registers 3
    .param p1, "requestZone"    # I

    .prologue
    .line 828
    const/16 v0, 0xf

    .line 829
    .local v0, "baseZone":I
    packed-switch p1, :pswitch_data_e

    .line 845
    :goto_5
    :pswitch_5
    return v0

    .line 832
    :pswitch_6
    const/16 v0, 0xf

    .line 833
    goto :goto_5

    .line 837
    :pswitch_9
    const/4 v0, 0x3

    .line 838
    goto :goto_5

    .line 842
    :pswitch_b
    const/16 v0, 0xc

    goto :goto_5

    .line 829
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public findNextFocusableStackTab(I)I
    .registers 10
    .param p1, "curStackId"    # I

    .prologue
    .line 2062
    const/4 v2, -0x1

    .line 2063
    .local v2, "nextStackId":I
    const/4 v4, -0x1

    .line 2064
    .local v4, "stackId":I
    const/4 v3, -0x1

    .line 2065
    .local v3, "prevStackId":I
    iget-object v6, p0, mTabList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/MultiWindowTab;

    .line 2066
    .local v5, "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    move v3, v4

    .line 2067
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v4

    .line 2068
    if-ne v4, p1, :cond_9

    .line 2069
    iget-object v6, p0, mTabList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2070
    .local v1, "idx":I
    iget-object v6, p0, mTabList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3d

    .line 2071
    iget-object v6, p0, mTabList:Ljava/util/ArrayList;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/multiwindow/MultiWindowTab;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v2

    .line 2075
    :goto_3a
    iput v2, p0, mTabFrontStack:I

    .line 2079
    .end local v1    # "idx":I
    .end local v5    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    :cond_3c
    return v2

    .line 2073
    .restart local v1    # "idx":I
    .restart local v5    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    :cond_3d
    move v2, v3

    goto :goto_3a
.end method

.method public getAvailableMultiInstanceCnt()I
    .registers 2

    .prologue
    .line 1738
    iget v0, p0, mMultiInstanceMaxCnt:I

    return v0
.end method

.method getBounds(Landroid/graphics/Rect;I)V
    .registers 4
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "zone"    # I

    .prologue
    .line 1240
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, getBounds(Landroid/graphics/Rect;II)V

    .line 1241
    return-void
.end method

.method getBounds(Landroid/graphics/Rect;II)V
    .registers 8
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "zone"    # I
    .param p3, "displayId"    # I

    .prologue
    .line 1244
    iget-object v1, p0, mDisplayZoneRects:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;

    .line 1245
    .local v0, "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    if-nez v0, :cond_34

    .line 1246
    const-string v1, "MultiWindowPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requested display #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not initilized yet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    invoke-virtual {p0, p3}, updateZoneRects(I)V

    .line 1248
    iget-object v1, p0, mDisplayZoneRects:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    check-cast v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;

    .line 1251
    .restart local v0    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    :cond_34
    packed-switch p2, :pswitch_data_62

    .line 1271
    :pswitch_37
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->FULL:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1274
    :goto_3c
    return-void

    .line 1253
    :pswitch_3d
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->A:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3c

    .line 1256
    :pswitch_43
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->B:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3c

    .line 1259
    :pswitch_49
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->C:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3c

    .line 1262
    :pswitch_4f
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->D:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3c

    .line 1265
    :pswitch_55
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->E:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3c

    .line 1268
    :pswitch_5b
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->F:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3c

    .line 1251
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_49
        :pswitch_4f
        :pswitch_3d
        :pswitch_55
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_5b
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_43
    .end packed-switch
.end method

.method public getCenterBarPoint(I)Landroid/graphics/Point;
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 1346
    iget-object v0, p0, mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    return-object v0
.end method

.method public getDefaultScale()F
    .registers 2

    .prologue
    .line 1897
    iget v0, p0, mDefaultScale:F

    return v0
.end method

.method public getEnableMultiInstance(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z
    .registers 11
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 1696
    const/4 v1, 0x0

    .line 1699
    .local v1, "bMultiInstance":Z
    if-nez p1, :cond_7

    .line 1700
    const/4 v5, 0x0

    .line 1734
    :goto_6
    return v5

    .line 1703
    :cond_7
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_28

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1704
    .local v0, "applicationMetaData":Landroid/os/Bundle;
    :goto_f
    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1706
    .local v2, "launchMode":I
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v3

    .line 1707
    .local v3, "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1708
    if-eq v2, v6, :cond_2a

    if-eq v2, v7, :cond_2a

    .line 1709
    const/4 v1, 0x1

    :cond_26
    :goto_26
    move v5, v1

    .line 1734
    goto :goto_6

    .line 1703
    .end local v0    # "applicationMetaData":Landroid/os/Bundle;
    .end local v2    # "launchMode":I
    .end local v3    # "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_28
    const/4 v0, 0x0

    goto :goto_f

    .line 1710
    .restart local v0    # "applicationMetaData":Landroid/os/Bundle;
    .restart local v2    # "launchMode":I
    .restart local v3    # "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_2a
    if-ne v2, v6, :cond_49

    .line 1711
    if-eqz v0, :cond_26

    .line 1712
    const-string v5, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1713
    .local v4, "multiInstanceLaunchMode":Ljava/lang/String;
    if-eqz v4, :cond_26

    .line 1714
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1715
    const-string/jumbo v5, "singleTask"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1716
    const/4 v1, 0x1

    goto :goto_26

    .line 1721
    .end local v4    # "multiInstanceLaunchMode":Ljava/lang/String;
    :cond_49
    if-ne v2, v7, :cond_26

    .line 1722
    if-eqz v0, :cond_26

    .line 1723
    const-string v5, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1724
    .restart local v4    # "multiInstanceLaunchMode":Ljava/lang/String;
    if-eqz v4, :cond_26

    .line 1725
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1726
    const-string/jumbo v5, "singleInstance"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1727
    const/4 v1, 0x1

    goto :goto_26
.end method

.method public getPenWindowLaunchScale(Landroid/content/pm/ActivityInfo;)F
    .registers 6
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1901
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_15

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1902
    .local v1, "metaData":Landroid/os/Bundle;
    :goto_a
    if-eqz v1, :cond_18

    .line 1903
    const-string v2, "com.sec.android.multiwindow.DEFAULT_SCALE"

    iget v3, p0, mDefaultScale:F

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 1906
    :goto_14
    return v0

    .line 1901
    .end local v1    # "metaData":Landroid/os/Bundle;
    :cond_15
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_a

    .line 1906
    .restart local v1    # "metaData":Landroid/os/Bundle;
    :cond_18
    iget v0, p0, mDefaultScale:F

    goto :goto_14
.end method

.method public getRelativeStackIdLocked(IILcom/android/server/am/ActivityRecord;)I
    .registers 14
    .param p1, "requestZone"    # I
    .param p2, "displayId"    # I
    .param p3, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/16 v9, 0x1000

    const/16 v8, 0xf

    .line 1123
    const/4 v3, 0x0

    .line 1124
    .local v3, "relativeZone":I
    invoke-virtual {p0, p1}, findBaseZone(I)I

    move-result v3

    .line 1125
    if-ne v3, v8, :cond_c

    .line 1126
    const/4 v3, 0x0

    .line 1129
    :cond_c
    iget-object v6, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1130
    .local v0, "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    .line 1131
    .local v2, "obscuredZone":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_1b
    if-ltz v1, :cond_30

    .line 1132
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1133
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1131
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 1136
    :cond_2e
    if-ne v2, v8, :cond_32

    .line 1174
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_30
    const/4 v6, 0x0

    :goto_31
    return v6

    .line 1140
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_32
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1142
    .local v5, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-nez v5, :cond_48

    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v6, :cond_48

    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v7, p3, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1144
    move-object v5, p3

    .line 1147
    :cond_48
    if-eqz v5, :cond_9f

    .line 1148
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    or-int/2addr v2, v6

    .line 1157
    :cond_51
    :goto_51
    if-eqz v5, :cond_30

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_76

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v6, :cond_30

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_76

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v6

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    if-eq v6, v7, :cond_30

    .line 1163
    :cond_76
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_92

    iget v6, v5, Lcom/android/server/am/ActivityRecord;->isolatedBaseCouple:I

    sget v7, Lcom/android/server/am/ActivityRecord;->ISOLATED_BASE:I

    if-eq v6, v7, :cond_92

    iget v6, p3, Lcom/android/server/am/ActivityRecord;->isolatedBaseCouple:I

    sget v7, Lcom/android/server/am/ActivityRecord;->ISOLATED_BASE:I

    if-eq v6, v7, :cond_92

    iget-object v6, p3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1170
    :cond_92
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    if-ne v6, v3, :cond_2b

    .line 1171
    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_31

    .line 1152
    :cond_9f
    iget-object v6, p3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    if-ne v6, v7, :cond_51

    .line 1153
    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    or-int/2addr v2, v6

    goto :goto_51
.end method

.method public getRunningPenWindowCnt()I
    .registers 2

    .prologue
    .line 1857
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, getRunningPenWindowCnt(I)I

    move-result v0

    return v0
.end method

.method public getRunningPenWindowCnt(I)I
    .registers 14
    .param p1, "notIncludeTaskId"    # I

    .prologue
    const/4 v10, 0x0

    .line 1861
    const/4 v1, 0x0

    .line 1862
    .local v1, "cnt":I
    iput v10, p0, mDiffUserPenWindowCnt:I

    .line 1863
    iget-object v9, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v4

    .line 1865
    .local v4, "currentUserId":I
    iget-object v9, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 1866
    .local v5, "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, -0x1

    .line 1867
    .local v2, "curHomeTaskNdx":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_2b

    .line 1868
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 1869
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v9

    if-eqz v9, :cond_66

    iget v9, v8, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v9, v4, :cond_66

    .line 1870
    move v2, v6

    .line 1875
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2b
    iget-object v9, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1876
    .local v0, "activityStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 1877
    .local v3, "currStack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_37

    .line 1878
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 1879
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v9

    if-eqz v9, :cond_37

    if-eqz v8, :cond_37

    iget-boolean v9, v8, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v9, :cond_37

    .line 1880
    iget v9, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v9, p1, :cond_37

    .line 1883
    iget v9, v8, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v9, v4, :cond_69

    .line 1884
    iget v9, p0, mDiffUserPenWindowCnt:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, mDiffUserPenWindowCnt:I

    .line 1889
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 1867
    .end local v0    # "activityStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v3    # "currStack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_66
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 1885
    .restart local v0    # "activityStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v3    # "currStack":Lcom/android/server/am/ActivityStack;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_69
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ge v9, v2, :cond_63

    .line 1886
    sget-boolean v9, SAFE_DEBUG:Z

    if-eqz v9, :cond_37

    const-string v9, "MultiWindowPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not Conunt task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", taskNdx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " < homeTaskNdx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 1893
    .end local v3    # "currStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_a4
    return v1
.end method

.method public getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I
    .registers 20
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 1654
    const/4 v2, 0x0

    .line 1655
    .local v2, "cls":Landroid/content/ComponentName;
    if-eqz p1, :cond_9d

    .line 1656
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 1657
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v15, :cond_2c

    .line 1658
    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "cls":Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_2c
    :goto_2c
    const/4 v7, 0x0

    .line 1665
    .local v7, "nInstance":I
    const/4 v3, 0x0

    .line 1666
    .local v3, "cp":Lcom/android/server/am/TaskRecord;
    if-eqz p1, :cond_af

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1668
    .local v14, "userId":I
    :goto_34
    move-object/from16 v0, p0

    iget-object v15, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v10

    .line 1669
    .local v10, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStack;

    .line 1670
    .local v9, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v12

    .line 1671
    .local v12, "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_56
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 1672
    .local v11, "tR":Lcom/android/server/am/TaskRecord;
    iget-object v1, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1673
    .local v1, "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_68
    :goto_68
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_56

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 1674
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v15, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v15, :cond_68

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v15, v3, :cond_68

    iget v15, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v15, v14, :cond_68

    .line 1675
    iget-object v3, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1676
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v15, :cond_c3

    .line 1677
    if-eqz p1, :cond_ba

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v15, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1678
    .local v13, "taskAffinity":Ljava/lang/String;
    :goto_90
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_68

    .line 1679
    add-int/lit8 v7, v7, 0x1

    goto :goto_68

    .line 1660
    .end local v1    # "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "cp":Lcom/android/server/am/TaskRecord;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "nInstance":I
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v11    # "tR":Lcom/android/server/am/TaskRecord;
    .end local v12    # "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v13    # "taskAffinity":Ljava/lang/String;
    .end local v14    # "userId":I
    :cond_9d
    if-eqz p2, :cond_2c

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_2c

    .line 1661
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto/16 :goto_2c

    .line 1666
    .restart local v3    # "cp":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "nInstance":I
    :cond_af
    if-eqz p2, :cond_b7

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/am/TaskRecord;->userId:I

    goto/16 :goto_34

    :cond_b7
    const/4 v14, -0x2

    goto/16 :goto_34

    .line 1677
    .restart local v1    # "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v11    # "tR":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v14    # "userId":I
    :cond_ba
    if-eqz p2, :cond_c1

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    goto :goto_90

    :cond_c1
    const/4 v13, 0x0

    goto :goto_90

    .line 1681
    :cond_c3
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_da

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_da

    .line 1683
    add-int/lit8 v7, v7, 0x1

    goto :goto_68

    .line 1684
    :cond_da
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v15, :cond_68

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_68

    .line 1686
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_68

    .line 1692
    .end local v1    # "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v11    # "tR":Lcom/android/server/am/TaskRecord;
    .end local v12    # "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_f2
    return v7
.end method

.method public getTabFrontStack()I
    .registers 2

    .prologue
    .line 1979
    iget v0, p0, mTabFrontStack:I

    return v0
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
    .line 2028
    iget-object v1, p0, mTabList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowTab;

    goto :goto_6

    .line 2031
    :cond_13
    iget-object v1, p0, mTabList:Ljava/util/ArrayList;

    return-object v1
.end method

.method public getTaskController()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/MultiWindowPolicy$TaskController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2397
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 2398
    :try_start_3
    iget-object v0, p0, mRegisteredTaskControllers:Ljava/util/HashMap;

    monitor-exit v1

    return-object v0

    .line 2399
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public initCenterBarPosition(I)Landroid/graphics/Point;
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 1178
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1179
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1180
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_2d

    .line 1181
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1182
    iget v2, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 1183
    iget v2, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 1184
    invoke-virtual {p0, p1, v1}, setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 1185
    iget-object v2, p0, mIsolatedPoint:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 1186
    iget-object v2, p0, mIsolatedPoint:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 1188
    :cond_2d
    return-object v1
.end method

.method public initMWSetting(Ljava/lang/String;)V
    .registers 12
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 378
    const-string v7, "MultiWindowPolicy"

    const-string v8, "Check MultiWindowSetting!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b8

    .line 380
    const-string v7, "MultiWindowPolicy"

    const-string v8, "MultiWindowSetting! - SimplificationUI"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "multi_window_enabled"

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_b9

    move v2, v5

    .line 383
    .local v2, "isMultiWindow":Z
    :goto_29
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "easy_mode_switch"

    invoke-static {v7, v8, v5, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_bc

    move v0, v5

    .line 385
    .local v0, "isEasyMode":Z
    :goto_39
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    .line 386
    .local v4, "isUPS":Z
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "mobile_keyboard"

    invoke-static {v7, v8, v6, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_bf

    move v1, v5

    .line 388
    .local v1, "isMobileKeyboardEnabled":Z
    :goto_4f
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 390
    .local v3, "isTalkbackEnabled":Z
    const-string v7, "MultiWindowPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MultiWindowSetting! - SimplificationUI mw : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " easymode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mobile-keyboard : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    if-nez v0, :cond_89

    if-nez v4, :cond_89

    if-nez v1, :cond_89

    if-eqz v3, :cond_c1

    .line 393
    :cond_89
    if-eqz v0, :cond_95

    .line 394
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v5

    const-string/jumbo v7, "easymode"

    invoke-virtual {v5, v7, p1, v6}, Lcom/android/server/am/MultiWindowFacadeService;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 396
    :cond_95
    if-eqz v4, :cond_a0

    .line 397
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v5

    const-string v7, "com.sec.android.emergencymode.service"

    invoke-virtual {v5, v7, p1, v6}, Lcom/android/server/am/MultiWindowFacadeService;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 399
    :cond_a0
    if-eqz v1, :cond_ac

    .line 400
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v5

    const-string/jumbo v7, "mobile_keyboard"

    invoke-virtual {v5, v7, p1, v6}, Lcom/android/server/am/MultiWindowFacadeService;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 402
    :cond_ac
    if-eqz v3, :cond_b8

    .line 403
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v5

    const-string/jumbo v7, "talkback"

    invoke-virtual {v5, v7, p1, v6}, Lcom/android/server/am/MultiWindowFacadeService;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 411
    .end local v0    # "isEasyMode":Z
    .end local v1    # "isMobileKeyboardEnabled":Z
    .end local v2    # "isMultiWindow":Z
    .end local v3    # "isTalkbackEnabled":Z
    .end local v4    # "isUPS":Z
    :cond_b8
    :goto_b8
    return-void

    :cond_b9
    move v2, v6

    .line 381
    goto/16 :goto_29

    .restart local v2    # "isMultiWindow":Z
    :cond_bc
    move v0, v6

    .line 383
    goto/16 :goto_39

    .restart local v0    # "isEasyMode":Z
    .restart local v4    # "isUPS":Z
    :cond_bf
    move v1, v6

    .line 386
    goto :goto_4f

    .line 405
    .restart local v1    # "isMobileKeyboardEnabled":Z
    .restart local v3    # "isTalkbackEnabled":Z
    :cond_c1
    if-nez v2, :cond_b8

    .line 406
    const-string v6, "MultiWindowPolicy"

    const-string v7, "Turn on MultiWindowSetting!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "multi_window_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_b8
.end method

.method public initMultiWindowApplicationInfo()V
    .registers 2

    .prologue
    .line 1924
    iget-object v0, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->initConfig()V

    .line 1925
    return-void
.end method

.method public isAvoidScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 224
    if-nez p1, :cond_4

    .line 225
    const/4 v0, 0x0

    .line 227
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isAvoidScaleOption(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public isEnableMakePenWindow()Z
    .registers 2

    .prologue
    .line 1911
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, isEnableMakePenWindow(I)Z

    move-result v0

    return v0
.end method

.method public isEnableMakePenWindow(I)Z
    .registers 6
    .param p1, "notIncludeTaskId"    # I

    .prologue
    .line 1915
    iget-object v1, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getMaxPenWindow(Landroid/content/Context;)I

    move-result v0

    .line 1916
    .local v0, "maxPenWindow":I
    if-ltz v0, :cond_10

    invoke-virtual {p0, p1}, getRunningPenWindowCnt(I)I

    move-result v1

    if-le v0, v1, :cond_12

    .line 1917
    :cond_10
    const/4 v1, 0x1

    .line 1920
    :goto_11
    return v1

    .line 1919
    :cond_12
    iget-object v1, p0, mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    iget-object v2, p0, mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowPolicy$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowPolicy$H;->sendMessage(Landroid/os/Message;)Z

    .line 1920
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 186
    iget-object v0, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isNoTitleActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 231
    iget-object v0, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isNoTitleActivityList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPenWindowLaunchApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 220
    iget-object v0, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isPopupLaunchApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z
    .registers 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 178
    iget-object v0, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isPenWindowOnlyApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 182
    iget-object v0, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isPenWindowOnlyApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public isSupportFullScreenMinimizable(Landroid/content/pm/ActivityInfo;)Z
    .registers 6
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "result":Z
    iget-object v1, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportFullScreenMinimizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 201
    const/4 v0, 0x1

    .line 216
    :cond_a
    :goto_a
    return v0

    .line 202
    :cond_b
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, isGamePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 203
    iget-object v1, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 208
    sget-boolean v1, SAFE_DEBUG:Z

    if-eqz v1, :cond_3f

    .line 209
    const-string v1, "MultiWindowPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gamemode - In isSupportFullScreenMinimizable() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will be made as FullScreenMinimizable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_3f
    const/4 v0, 0x1

    goto :goto_a

    .line 213
    :cond_41
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 194
    iget-object v0, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 190
    iget-object v0, p0, mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isTphoneRelaxMode()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2549
    const-string/jumbo v2, "tphone"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_ConfigOperatorCallService"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "skt_phone20_relax_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_25

    .line 2553
    :goto_24
    return v0

    :cond_25
    move v0, v1

    goto :goto_24
.end method

.method public minimizeAll(Ljava/lang/String;)V
    .registers 9
    .param p1, "skipPackage"    # Ljava/lang/String;

    .prologue
    .line 904
    const-string v3, "MultiWindowPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "minimizeAll : skipPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v4, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 906
    :try_start_1c
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 907
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 908
    const-string v3, "MultiWindowPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "minimizeAll : stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 910
    .local v2, "topRecord":Lcom/android/server/am/ActivityRecord;
    const-string v3, "MultiWindowPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "minimizeAll : topRecord="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    if-eqz v2, :cond_28

    .line 912
    if-eqz p1, :cond_87

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 915
    :cond_87
    const/4 v3, 0x4

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_28

    .line 920
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :catchall_8d
    move-exception v3

    monitor-exit v4
    :try_end_8f
    .catchall {:try_start_1c .. :try_end_8f} :catchall_8d

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_90
    :try_start_90
    monitor-exit v4
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8d

    .line 921
    return-void
.end method

.method public needToUpdateCenterBarPosition(I)Z
    .registers 12
    .param p1, "displayId"    # I

    .prologue
    const v9, 0x3f4ccccd    # 0.8f

    const v8, 0x3e4ccccd    # 0.2f

    .line 1193
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 1194
    .local v6, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v5

    .line 1195
    .local v5, "display":Landroid/view/Display;
    if-eqz v5, :cond_18

    .line 1196
    invoke-virtual {v5, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1199
    :cond_18
    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 1200
    .local v3, "MIN_FIXED_WIDTH":I
    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    float-to-int v1, v7

    .line 1202
    .local v1, "MAX_FIXED_WIDTH":I
    iget v7, v6, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v2, v7

    .line 1203
    .local v2, "MIN_FIXED_HEIGHT":I
    iget v7, v6, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    float-to-int v0, v7

    .line 1205
    .local v0, "MAX_FIXED_HEIGHT":I
    invoke-virtual {p0, p1}, getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v4

    .line 1207
    .local v4, "centerBarPoint":Landroid/graphics/Point;
    iget v7, v4, Landroid/graphics/Point;->x:I

    if-le v7, v3, :cond_40

    iget v7, v4, Landroid/graphics/Point;->x:I

    if-ge v7, v1, :cond_40

    iget v7, v4, Landroid/graphics/Point;->y:I

    if-le v7, v2, :cond_40

    iget v7, v4, Landroid/graphics/Point;->y:I

    if-lt v7, v0, :cond_42

    .line 1211
    :cond_40
    const/4 v7, 0x1

    .line 1214
    :goto_41
    return v7

    :cond_42
    const/4 v7, 0x0

    goto :goto_41
.end method

.method public notifyMultiWindowStyleChangedLocked(Landroid/content/ComponentName;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 4
    .param p1, "cmp"    # Landroid/content/ComponentName;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 261
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->notifyMultiWindowStyleChangedLocked(Landroid/content/ComponentName;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 263
    return-void
.end method

.method public notifyTaskRemoved(I)V
    .registers 7
    .param p1, "taskId"    # I

    .prologue
    .line 2480
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2481
    :try_start_3
    iget-object v2, p0, mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2482
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2483
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_39

    .line 2485
    .local v1, "key":Landroid/os/IBinder;
    :try_start_19
    iget-object v2, p0, mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    iget v2, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->type:I

    sget v4, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RECENT:I

    if-ne v2, v4, :cond_d

    .line 2487
    iget-object v2, p0, mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v2, p1}, Lcom/samsung/android/multiwindow/ITaskController;->onTaskRemoved(I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_34} :catch_35
    .catchall {:try_start_19 .. :try_end_34} :catchall_39

    goto :goto_d

    .line 2489
    :catch_35
    move-exception v2

    goto :goto_d

    .line 2492
    .end local v1    # "key":Landroid/os/IBinder;
    :cond_37
    :try_start_37
    monitor-exit v3

    .line 2493
    return-void

    .line 2492
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public notifyTaskStarted(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2403
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2404
    :try_start_3
    iget-object v2, p0, mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2405
    monitor-exit v3

    .line 2425
    :cond_c
    :goto_c
    return-void

    .line 2407
    :cond_d
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_5e

    .line 2409
    if-eqz p1, :cond_c

    .line 2413
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2414
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;-><init>()V

    .line 2415
    .local v0, "taskInfo":Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v2, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->id:I

    .line 2416
    new-instance v3, Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_61

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    :goto_2c
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v3, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 2417
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_66

    .line 2418
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 2422
    :goto_4e
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2423
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2424
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, notifyTaskStarted(Ljava/util/List;Lcom/samsung/android/multiwindow/ITaskController;)V

    goto :goto_c

    .line 2407
    .end local v0    # "taskInfo":Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    .end local v1    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catchall_5e
    move-exception v2

    :try_start_5f
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v2

    .line 2416
    .restart local v0    # "taskInfo":Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    .restart local v1    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_61
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_2c

    .line 2420
    :cond_66
    iget-object v2, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_4e
.end method

.method public notifyTaskStopped(I)V
    .registers 6
    .param p1, "taskId"    # I

    .prologue
    .line 2466
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2467
    :try_start_3
    iget-object v2, p0, mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2468
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2469
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2b

    .line 2472
    .local v1, "key":Landroid/os/IBinder;
    :try_start_19
    iget-object v2, p0, mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v2, p1}, Lcom/samsung/android/multiwindow/ITaskController;->onTaskStopped(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_26} :catch_27
    .catchall {:try_start_19 .. :try_end_26} :catchall_2b

    goto :goto_d

    .line 2473
    :catch_27
    move-exception v2

    goto :goto_d

    .line 2476
    .end local v1    # "key":Landroid/os/IBinder;
    :cond_29
    :try_start_29
    monitor-exit v3

    .line 2477
    return-void

    .line 2476
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :catchall_2b
    move-exception v2

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .registers 7
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 2302
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2303
    :try_start_3
    iget-object v2, p0, mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 2304
    new-instance v1, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/MultiWindowPolicy$TaskController;-><init>(Lcom/android/server/am/MultiWindowPolicy;Lcom/samsung/android/multiwindow/ITaskController;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_39

    .line 2306
    .local v1, "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :try_start_14
    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1c} :catch_3c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_39

    .line 2310
    :goto_1c
    :try_start_1c
    iget-object v2, p0, mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    .end local v1    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :cond_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_39

    .line 2313
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2314
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2315
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2316
    sget v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RUNNING:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2317
    iget-object v2, p0, mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MultiWindowPolicy$H;->sendMessage(Landroid/os/Message;)Z

    .line 2318
    return-void

    .line 2312
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2

    .line 2307
    .restart local v1    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :catch_3c
    move-exception v2

    goto :goto_1c
.end method

.method public registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V
    .registers 8
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .param p2, "type"    # I

    .prologue
    .line 2321
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2322
    :try_start_3
    iget-object v2, p0, mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 2323
    new-instance v1, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/MultiWindowPolicy$TaskController;-><init>(Lcom/android/server/am/MultiWindowPolicy;Lcom/samsung/android/multiwindow/ITaskController;I)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_37

    .line 2325
    .local v1, "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :try_start_14
    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1c} :catch_3a
    .catchall {:try_start_14 .. :try_end_1c} :catchall_37

    .line 2329
    :goto_1c
    :try_start_1c
    iget-object v2, p0, mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2331
    .end local v1    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :cond_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_37

    .line 2332
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2333
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2334
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2335
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2336
    iget-object v2, p0, mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MultiWindowPolicy$H;->sendMessage(Landroid/os/Message;)Z

    .line 2337
    return-void

    .line 2331
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2

    .line 2326
    .restart local v1    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :catch_3a
    move-exception v2

    goto :goto_1c
.end method

.method public removeTab(I)V
    .registers 11
    .param p1, "stackId"    # I

    .prologue
    const/high16 v8, 0x800000

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 1989
    if-ne p1, v7, :cond_7

    .line 2025
    :cond_6
    return-void

    .line 1993
    :cond_7
    iget v5, p0, mTabFrontStack:I

    if-ne v5, p1, :cond_7f

    .line 1994
    invoke-virtual {p0, p1}, findNextFocusableStackTab(I)I

    .line 2003
    :goto_e
    iget-object v5, p0, mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowTab;

    .line 2004
    .local v3, "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v5

    if-ne v5, p1, :cond_14

    .line 2005
    iget-object v5, p0, mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2009
    .end local v3    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    :cond_2b
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_37
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2010
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 2011
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 2012
    .local v4, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_37

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 2015
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2016
    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v5, p0, mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v6, :cond_79

    .line 2017
    iget-object v5, p0, mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2018
    invoke-virtual {p0, v7}, setTabFrontStack(I)V

    .line 2019
    const/4 v5, 0x0

    invoke-virtual {v1, v8, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2020
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5, v2, v1}, setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2022
    :cond_79
    const/16 v5, 0x8

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_37

    .line 1997
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_7f
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, p1, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(IZ)V

    .line 1998
    invoke-virtual {p0, p1}, setTabFrontStack(I)V

    .line 1999
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2000
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_e
.end method

.method public removeUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 414
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->removeUser(I)V

    .line 415
    return-void
.end method

.method public resize2Split(IIIZ)V
    .registers 10
    .param p1, "stackAId"    # I
    .param p2, "stackBId"    # I
    .param p3, "displayId"    # I
    .param p4, "isIsolated"    # Z

    .prologue
    const/16 v4, 0xc

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1296
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1298
    .local v0, "zoneBounds":Landroid/graphics/Rect;
    if-eqz p4, :cond_28

    .line 1299
    invoke-direct {p0, v2, v1, v0}, updateIsolatedRects(IILandroid/graphics/Rect;)V

    .line 1303
    :goto_f
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, v0, v3}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;Z)V

    .line 1305
    if-eqz p4, :cond_2c

    .line 1306
    invoke-direct {p0, v2, v4, v0}, updateIsolatedRects(IILandroid/graphics/Rect;)V

    .line 1307
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, mIsolatedPoint:Landroid/graphics/Point;

    invoke-virtual {v1, p3, v2}, Lcom/android/server/wm/WindowManagerService;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 1313
    :goto_22
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;Z)V

    .line 1314
    return-void

    .line 1301
    :cond_28
    invoke-virtual {p0, v0, v1}, getBounds(Landroid/graphics/Rect;I)V

    goto :goto_f

    .line 1310
    :cond_2c
    invoke-virtual {p0, v0, v4}, getBounds(Landroid/graphics/Rect;I)V

    .line 1311
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    invoke-virtual {v2, p3, v1}, Lcom/android/server/wm/WindowManagerService;->setCenterBarPoint(ILandroid/graphics/Point;)V

    goto :goto_22
.end method

.method public resize2Split(IZ)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "isIsolated"    # Z

    .prologue
    .line 1285
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 1286
    .local v0, "ass":Lcom/android/server/am/ActivityStackSupervisor;
    const/4 v3, 0x3

    invoke-virtual {v0, v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1287
    .local v1, "stackA":Lcom/android/server/am/ActivityStack;
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1289
    .local v2, "stackB":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_13

    if-nez v2, :cond_14

    .line 1293
    :cond_13
    :goto_13
    return-void

    .line 1292
    :cond_14
    iget v3, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget v4, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v3, v4, p1, p2}, resize2Split(IIIZ)V

    goto :goto_13
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    .line 2042
    return-void
.end method

.method public setCenterBarPoint(ILandroid/graphics/Point;)V
    .registers 11
    .param p1, "displayId"    # I
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1317
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1318
    .local v4, "zoneBounds":Landroid/graphics/Rect;
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v1

    .line 1320
    .local v1, "isIsolated":Z
    if-eqz v1, :cond_4a

    .line 1321
    iget-object v5, p0, mIsolatedPoint:Landroid/graphics/Point;

    iget v6, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Point;->set(II)V

    .line 1326
    :goto_18
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 1328
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1329
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_2d
    if-ltz v0, :cond_75

    .line 1330
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1331
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v5

    if-eq v5, p1, :cond_53

    .line 1329
    :cond_47
    :goto_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 1323
    .end local v0    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4a
    iget-object v5, p0, mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1324
    invoke-virtual {p0, p1}, updateZoneRects(I)V

    goto :goto_18

    .line 1334
    .restart local v0    # "i":I
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_53
    if-eqz v1, :cond_6d

    .line 1335
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v5

    invoke-direct {p0, p1, v5, v4}, updateIsolatedRects(IILandroid/graphics/Rect;)V

    .line 1339
    :goto_5c
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 1340
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;Z)V

    goto :goto_47

    .line 1337
    :cond_6d
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v5

    invoke-virtual {p0, v4, v5, p1}, getBounds(Landroid/graphics/Rect;II)V

    goto :goto_5c

    .line 1343
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_75
    return-void
.end method

.method public setFloatingBounds(Lcom/android/server/am/ActivityRecord;F)V
    .registers 27
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "scale"    # F

    .prologue
    .line 1742
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    .line 1744
    .local v17, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v21

    if-nez v21, :cond_d

    .line 1832
    :cond_c
    :goto_c
    return-void

    .line 1747
    :cond_d
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    if-eqz v21, :cond_1d

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1751
    :cond_1d
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    move/from16 v21, v0

    if-nez v21, :cond_59

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    if-eqz v21, :cond_59

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_59

    .line 1753
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1f4

    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1756
    .local v3, "ar":Lcom/android/server/am/ActivityRecord;
    :goto_57
    if-nez v3, :cond_c

    .line 1761
    .end local v3    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_59
    const/4 v7, 0x0

    .line 1762
    .local v7, "defWidth":I
    const/4 v5, 0x0

    .line 1764
    .local v5, "defHeight":I
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 1765
    .local v11, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v10

    .line 1766
    .local v10, "display":Landroid/view/Display;
    if-eqz v10, :cond_71

    invoke-virtual {v10, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1768
    :cond_71
    const/16 v21, 0x800

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v21

    if-nez v21, :cond_dd

    .line 1769
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1770
    .local v14, "info":Landroid/content/pm/ActivityInfo;
    iget-object v0, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    if-eqz v21, :cond_212

    iget-object v0, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    .line 1772
    .local v16, "metaData":Landroid/os/Bundle;
    :goto_97
    :try_start_97
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    iget-object v0, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v18

    .line 1773
    .local v18, "res":Landroid/content/res/Resources;
    if-eqz v16, :cond_dd

    .line 1774
    const-string v21, "com.sec.android.multiwindow.DEFAULT_SIZE_W"

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1775
    .local v6, "defSizeId":I
    if-eqz v6, :cond_c4

    .line 1776
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v7, v0

    .line 1778
    :cond_c4
    const-string v21, "com.sec.android.multiwindow.DEFAULT_SIZE_H"

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1779
    if-eqz v6, :cond_dd

    .line 1780
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_d9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_97 .. :try_end_d9} :catch_218
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_97 .. :try_end_d9} :catch_21e

    move-result v21

    move/from16 v0, v21

    float-to-int v5, v0

    .line 1790
    .end local v6    # "defSizeId":I
    .end local v14    # "info":Landroid/content/pm/ActivityInfo;
    .end local v16    # "metaData":Landroid/os/Bundle;
    .end local v18    # "res":Landroid/content/res/Resources;
    :cond_dd
    :goto_dd
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10502b3

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v8, v0

    .line 1791
    .local v8, "defWindowGapOfLeft":I
    move v9, v8

    .line 1792
    .local v9, "defWindowGapOfTop":I
    move v15, v8

    .line 1793
    .local v15, "leftWindowGap":I
    move/from16 v20, v9

    .line 1795
    .local v20, "topWindowGap":I
    if-eqz v7, :cond_f9

    if-nez v5, :cond_131

    .line 1797
    :cond_f9
    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mDefaultScale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, mDefaultScale:F

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v7, v0

    .line 1798
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mDefaultScale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, mDefaultScale:F

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v5, v0

    .line 1801
    :cond_131
    const/16 v21, 0x0

    cmpl-float v21, p2, v21

    if-eqz v21, :cond_163

    .line 1802
    move-object/from16 v0, p0

    iget v0, v0, mMinScale:F

    move/from16 v21, v0

    cmpg-float v21, p2, v21

    if-gez v21, :cond_224

    .line 1803
    move-object/from16 v0, p0

    iget v0, v0, mMinScale:F

    move/from16 p2, v0

    .line 1807
    :cond_147
    :goto_147
    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    float-to-int v7, v0

    .line 1808
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    float-to-int v5, v0

    .line 1812
    :cond_163
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v13

    .line 1813
    .local v13, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v13, :cond_236

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v21

    if-eqz v21, :cond_236

    .line 1814
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 1815
    .local v19, "topFreeStyleRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(ILandroid/graphics/Rect;)V

    .line 1816
    if-eqz v19, :cond_1ab

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_1ab

    .line 1817
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v15, v15, v21

    .line 1818
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v20, v20, v21

    .line 1826
    .end local v19    # "topFreeStyleRect":Landroid/graphics/Rect;
    :cond_1ab
    :goto_1ab
    new-instance v4, Landroid/graphics/Rect;

    add-int v21, v15, v7

    add-int v22, v20, v5

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v4, v15, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1828
    .local v4, "bound":Landroid/graphics/Rect;
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_1e2

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_1e2

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    if-ltz v21, :cond_1e2

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    if-gez v21, :cond_1ed

    .line 1829
    :cond_1e2
    add-int v21, v8, v7

    add-int v22, v9, v5

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v8, v9, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1831
    :cond_1ed
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_c

    .line 1753
    .end local v4    # "bound":Landroid/graphics/Rect;
    .end local v5    # "defHeight":I
    .end local v7    # "defWidth":I
    .end local v8    # "defWindowGapOfLeft":I
    .end local v9    # "defWindowGapOfTop":I
    .end local v10    # "display":Landroid/view/Display;
    .end local v11    # "displaySize":Landroid/graphics/Point;
    .end local v13    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "leftWindowGap":I
    .end local v20    # "topWindowGap":I
    :cond_1f4
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    goto/16 :goto_57

    .line 1770
    .restart local v5    # "defHeight":I
    .restart local v7    # "defWidth":I
    .restart local v10    # "display":Landroid/view/Display;
    .restart local v11    # "displaySize":Landroid/graphics/Point;
    .restart local v14    # "info":Landroid/content/pm/ActivityInfo;
    :cond_212
    iget-object v0, v14, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    goto/16 :goto_97

    .line 1783
    .restart local v16    # "metaData":Landroid/os/Bundle;
    :catch_218
    move-exception v12

    .line 1784
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_dd

    .line 1785
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_21e
    move-exception v12

    .line 1786
    .local v12, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v12}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_dd

    .line 1804
    .end local v12    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v14    # "info":Landroid/content/pm/ActivityInfo;
    .end local v16    # "metaData":Landroid/os/Bundle;
    .restart local v8    # "defWindowGapOfLeft":I
    .restart local v9    # "defWindowGapOfTop":I
    .restart local v15    # "leftWindowGap":I
    .restart local v20    # "topWindowGap":I
    :cond_224
    move-object/from16 v0, p0

    iget v0, v0, mMaxScale:F

    move/from16 v21, v0

    cmpl-float v21, p2, v21

    if-lez v21, :cond_147

    .line 1805
    move-object/from16 v0, p0

    iget v0, v0, mMaxScale:F

    move/from16 p2, v0

    goto/16 :goto_147

    .line 1822
    .restart local v13    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :cond_236
    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    sub-int v21, v21, v7

    div-int/lit8 v15, v21, 0x2

    .line 1823
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    sub-int v21, v21, v5

    div-int/lit8 v20, v21, 0x2

    goto/16 :goto_1ab
.end method

.method public setIsolatedPoint(ILandroid/graphics/Point;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1277
    iput-object p2, p0, mIsolatedPoint:Landroid/graphics/Point;

    .line 1278
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 1279
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1280
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, resize2Split(IZ)V

    .line 1282
    :cond_17
    return-void
.end method

.method public setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 9
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v5, 0x1

    .line 1106
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1120
    :cond_9
    return-void

    .line 1109
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1110
    .local v0, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "taskNdx":I
    :goto_14
    if-ltz v1, :cond_9

    .line 1111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1112
    .local v2, "taskRecord":Lcom/android/server/am/TaskRecord;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1113
    .local v3, "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_31

    .line 1114
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 1115
    invoke-virtual {p1, v2, p2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1116
    invoke-virtual {p1, v3, v5, v5}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1110
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_14
.end method

.method public setStackBoundTab(Landroid/graphics/Rect;Lcom/android/server/am/ActivityRecord;)V
    .registers 11
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2045
    const/16 v1, 0x32

    .line 2046
    .local v1, "offset":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2047
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, mTabList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/multiwindow/MultiWindowTab;

    .line 2048
    .local v4, "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    iget-object v6, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2049
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2050
    .local v5, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_d

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v7, 0x800000

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 2055
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2056
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 2057
    iget-object v6, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    goto :goto_d

    .line 2059
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    .end local v5    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_4e
    return-void
.end method

.method public setTabFrontStack(I)V
    .registers 3
    .param p1, "stackId"    # I

    .prologue
    .line 1974
    iput p1, p0, mTabFrontStack:I

    .line 1975
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setTabFrontStack(I)V

    .line 1976
    return-void
.end method

.method public systemReady()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, -0x1

    const/high16 v12, 0x447a0000    # 1000.0f

    const/4 v11, 0x0

    .line 278
    iget v9, p0, mDefaultScale:F

    cmpl-float v9, v9, v11

    if-nez v9, :cond_1c

    .line 279
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e010c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v12

    iput v9, p0, mDefaultScale:F

    .line 281
    :cond_1c
    iget v9, p0, mMinScale:F

    cmpl-float v9, v9, v11

    if-nez v9, :cond_33

    .line 282
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e010b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v12

    iput v9, p0, mMinScale:F

    .line 284
    :cond_33
    iget v9, p0, mMaxScale:F

    cmpl-float v9, v9, v11

    if-nez v9, :cond_4a

    .line 285
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e010d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v12

    iput v9, p0, mMaxScale:F

    .line 287
    :cond_4a
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string/jumbo v10, "display"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 288
    .local v4, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    .line 289
    .local v3, "displays":[Landroid/view/Display;
    array-length v9, v3

    add-int/lit8 v2, v9, -0x1

    .local v2, "displayNdx":I
    :goto_5c
    if-ltz v2, :cond_6a

    .line 290
    aget-object v9, v3, v2

    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 291
    .local v1, "displayId":I
    invoke-virtual {p0, v1}, initCenterBarPosition(I)Landroid/graphics/Point;

    .line 289
    add-int/lit8 v2, v2, -0x1

    goto :goto_5c

    .line 294
    .end local v1    # "displayId":I
    :cond_6a
    iget-object v9, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v9, :cond_89

    .line 295
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 297
    .local v7, "phone":Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_89

    .line 299
    :try_start_7b
    new-instance v9, Lcom/android/server/am/MultiWindowPolicy$1;

    invoke-direct {v9, p0}, Lcom/android/server/am/MultiWindowPolicy$1;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    iput-object v9, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 316
    iget-object v9, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v10, 0x20

    invoke-virtual {v7, v9, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_89
    .catch Ljava/lang/SecurityException; {:try_start_7b .. :try_end_89} :catch_107

    .line 322
    .end local v7    # "phone":Landroid/telephony/TelephonyManager;
    :cond_89
    :goto_89
    iget-object v9, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v9, :cond_cc

    .line 323
    new-instance v5, Landroid/content/IntentFilter;

    const-string v9, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

    invoke-direct {v5, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 324
    .local v5, "filter":Landroid/content/IntentFilter;
    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.sec.android.app.clockpackage.timer.TIMER_STARTED_IN_ALERT"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 325
    .local v8, "timerFilter":Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v9, "com.android.settings.LaunchGlanceView"

    invoke-direct {v0, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, "blackScreenFilter":Landroid/content/IntentFilter;
    new-instance v6, Landroid/content/IntentFilter;

    const-string v9, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    invoke-direct {v6, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 328
    .local v6, "minimizeAllFiter":Landroid/content/IntentFilter;
    new-instance v9, Lcom/android/server/am/MultiWindowPolicy$2;

    invoke-direct {v9, p0}, Lcom/android/server/am/MultiWindowPolicy$2;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    iput-object v9, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 342
    iget-object v9, p0, mContext:Landroid/content/Context;

    iget-object v10, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    iget-object v9, p0, mContext:Landroid/content/Context;

    iget-object v10, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 344
    iget-object v9, p0, mContext:Landroid/content/Context;

    iget-object v10, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 345
    iget-object v9, p0, mContext:Landroid/content/Context;

    iget-object v10, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 347
    .end local v0    # "blackScreenFilter":Landroid/content/IntentFilter;
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "minimizeAllFiter":Landroid/content/IntentFilter;
    .end local v8    # "timerFilter":Landroid/content/IntentFilter;
    :cond_cc
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "kids_home_mode"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, mSettingContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v10, v14, v11, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 348
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "car_mode_on"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, mSettingContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v10, v14, v11, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 349
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "multi_window_enabled"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, mSettingContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v10, v14, v11, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 351
    const-string v9, "boot"

    invoke-virtual {p0, v9}, initMWSetting(Ljava/lang/String;)V

    .line 352
    return-void

    .line 317
    .restart local v7    # "phone":Landroid/telephony/TelephonyManager;
    :catch_107
    move-exception v9

    goto :goto_89
.end method

.method public unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .registers 6
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 2340
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2341
    :try_start_3
    iget-object v1, p0, mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    .line 2342
    .local v0, "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    if-eqz v0, :cond_24

    .line 2344
    iget-object v1, p0, mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2345
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2347
    :cond_24
    monitor-exit v2

    .line 2348
    return-void

    .line 2347
    .end local v0    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public updateCenterBarPosition(IF)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "weight"    # F

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1218
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1219
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1220
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_14

    .line 1221
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1224
    :cond_14
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_3d

    .line 1225
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 1226
    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 1232
    :goto_28
    invoke-virtual {p0, p1, v1}, setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 1234
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1235
    .local v2, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v3, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1236
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1237
    return-void

    .line 1228
    .end local v2    # "refreshCenterbarIntent":Landroid/content/Intent;
    :cond_3d
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 1229
    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    goto :goto_28
.end method

.method public updateConfigurationLockedLa(I)V
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 1351
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1352
    iget-object v0, p0, mIsolatedPoint:Landroid/graphics/Point;

    .line 1353
    .local v0, "oldPoint":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1, v1}, setIsolatedPoint(ILandroid/graphics/Point;)V

    .line 1354
    iget-object v1, p0, mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "oldPoint":Landroid/graphics/Point;
    check-cast v0, Landroid/graphics/Point;

    .line 1355
    .restart local v0    # "oldPoint":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1356
    invoke-virtual {p0, p1}, updateZoneRects(I)V

    .line 1365
    :goto_2a
    return-void

    .line 1358
    .end local v0    # "oldPoint":Landroid/graphics/Point;
    :cond_2b
    iget-object v1, p0, mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 1359
    .restart local v0    # "oldPoint":Landroid/graphics/Point;
    if-eqz v0, :cond_42

    .line 1360
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1, v1}, setCenterBarPoint(ILandroid/graphics/Point;)V

    goto :goto_2a

    .line 1362
    :cond_42
    const-string v1, "MultiWindowPolicy"

    const-string/jumbo v2, "updateConfigurationLockedLa : oldPoint is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method updateZoneRects(I)V
    .registers 13
    .param p1, "displayId"    # I

    .prologue
    const/4 v9, 0x0

    .line 1375
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1376
    .local v2, "fullscreen":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 1377
    .local v1, "d":Landroid/view/Display;
    if-eqz v1, :cond_13

    .line 1378
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1381
    :cond_13
    iget-object v10, p0, mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 1384
    .local v0, "centerBarPoint":Landroid/graphics/Point;
    if-nez v0, :cond_21

    .line 1385
    invoke-virtual {p0, p1}, initCenterBarPosition(I)Landroid/graphics/Point;

    move-result-object v0

    .line 1388
    :cond_21
    iget v4, v2, Landroid/graphics/Point;->x:I

    .line 1389
    .local v4, "iDeviceWidth":I
    iget v3, v2, Landroid/graphics/Point;->y:I

    .line 1390
    .local v3, "iDeviceHeight":I
    iget v6, v0, Landroid/graphics/Point;->x:I

    .line 1391
    .local v6, "iWidthBoundary":I
    iget v5, v0, Landroid/graphics/Point;->y:I

    .line 1392
    .local v5, "iHeightBoundary":I
    if-le v4, v3, :cond_90

    const/4 v7, 0x1

    .line 1395
    .local v7, "landscape":Z
    :goto_2c
    iget-object v10, p0, mDisplayZoneRects:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;

    .line 1396
    .local v8, "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    if-nez v8, :cond_41

    .line 1397
    new-instance v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;

    .end local v8    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    const/4 v10, 0x0

    invoke-direct {v8, p0, v10}, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;-><init>(Lcom/android/server/am/MultiWindowPolicy;Lcom/android/server/am/MultiWindowPolicy$1;)V

    .line 1398
    .restart local v8    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    iget-object v10, p0, mDisplayZoneRects:Landroid/util/SparseArray;

    invoke-virtual {v10, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1401
    :cond_41
    if-eqz v7, :cond_92

    .line 1402
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9, v9, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->C:Landroid/graphics/Rect;

    .line 1403
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9, v5, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->D:Landroid/graphics/Rect;

    .line 1404
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v6, v9, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->E:Landroid/graphics/Rect;

    .line 1405
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v6, v5, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->F:Landroid/graphics/Rect;

    .line 1412
    :goto_5f
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->C:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->A:Landroid/graphics/Rect;

    .line 1413
    iget-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->A:Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->D:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1414
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->E:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->B:Landroid/graphics/Rect;

    .line 1415
    iget-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->B:Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->F:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1416
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->A:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->FULL:Landroid/graphics/Rect;

    .line 1417
    iget-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->FULL:Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->B:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1419
    return-void

    .end local v7    # "landscape":Z
    .end local v8    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    :cond_90
    move v7, v9

    .line 1392
    goto :goto_2c

    .line 1407
    .restart local v7    # "landscape":Z
    .restart local v8    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    :cond_92
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9, v9, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->C:Landroid/graphics/Rect;

    .line 1408
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9, v5, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->E:Landroid/graphics/Rect;

    .line 1409
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v6, v9, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->D:Landroid/graphics/Rect;

    .line 1410
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v6, v5, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->F:Landroid/graphics/Rect;

    goto :goto_5f
.end method
