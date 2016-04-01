.class public final Lcom/android/server/am/ActivityStackSupervisor;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;,
        Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;,
        Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;,
        Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field private static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field private static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field private static final ANDROID_INTERNAL_PKGNAME:Ljava/lang/String; = "com.android.internal.app"

.field private static final BBC_METADATA:Ljava/lang/String; = "com.samsung.android.knoxenabled"

.field static final CONTAINER_CALLBACK_TASK_LIST_EMPTY:I = 0x6f

.field static final CONTAINER_CALLBACK_VISIBILITY:I = 0x6c

.field public static final CUSTOM_STARTING_WINDOW:Z = true

.field static final DEBUG_MULTIWINDOW:Z = false

.field public static final DUAL_SCREEN_ZONE_FULL:I = 0x3

.field public static final DUAL_SCREEN_ZONE_MAIN:I = 0x1

.field public static final DUAL_SCREEN_ZONE_SUB:I = 0x2

.field public static final DUAL_SCREEN_ZONE_UNKNOWN:I = 0x0

.field public static final EXPANDED_HOME_STACK_ID:I = 0x2

.field public static final EXPANDED_HOME_STACK_TYPE:I = 0x6

.field static final FIXED_SCREEN_MODE_CHANGED_MSG:I = 0x12c

.field public static final FLOATING_APP_STACK_TYPE:I = 0x3

.field private static final FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile"

.field static final HANDLE_DISPLAY_ADDED:I = 0x69

.field static final HANDLE_DISPLAY_CHANGED:I = 0x6a

.field static final HANDLE_DISPLAY_REMOVED:I = 0x6b

.field public static final HOME_STACK_ID:I = 0x0

.field public static final HOME_STACK_TYPE:I = 0x1

.field static final IDLE_NOW_MSG:I = 0x65

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x64

.field static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0x70

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final LOCK_TASK_END_MSG:I = 0x6e

.field static final LOCK_TASK_START_MSG:I = 0x6d

.field private static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field public static final NORMAL_APP_STACK_TYPE:I = 0x2

.field static final RELEASE_FIXED_SCREEN_MODE_DIALG_MSG:I = 0x12d

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x66

.field static final SAFE_DEBUG:Z

.field public static final SAMSUNG_HOME_STACK_ID:I = 0x1

.field public static final SAMSUNG_HOME_STACK_TYPE:I = 0x4

.field static final SHOW_LOCK_TASK_ESCAPE_MESSAGE_MSG:I = 0x71

.field static final SHOW_TOAST_NOT_SUPPORT_CURRENT_SCREEN_MSG:I = 0xc9

.field static final SHOW_TOAST_UNABLE_PENWINDOW_MSG:I = 0xc8

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x67

.field public static final SUPPORT_EXPANDED_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONTAINERS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_IDLE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_VISIBLE_BEHIND:Ljava/lang/String; = "ActivityManager"

.field static final VALIDATE_WAKE_LOCK_CALLER:Z = false

.field private static final VIRTUAL_DISPLAY_BASE_NAME:Ljava/lang/String; = "ActivityViewVirtualDisplay"

.field private static isLaunchKnoxApps:Z

.field private static final sEmptyGlobalTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final PENDING_RESUME_TOP_ACTIVITIES_TIMEOUT_DURATION:I

.field inResumeTopActivity:Z

.field public lBoostCpuParamVal:[I

.field public lBoostPackParamVal:[I

.field public lBoostTimeOut:I

.field public lDisPackTimeOut:I

.field private mActivityContainers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;",
            ">;"
        }
    .end annotation
.end field

.field mChangedFocusedStackWhileSleeping:Z

.field mChangedFrontStackWhileSleeping:[Z

.field private mCurTaskId:I

.field private mCurrentUser:I

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mExpandedHomeStack:Lcom/android/server/am/ActivityStack;

.field mExpandedHomeTask:Lcom/android/server/am/TaskRecord;

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mFixedTask:Lcom/android/server/am/TaskRecord;

.field private mFocusedStack:Lcom/android/server/am/ActivityStack;

.field private mFrontStacks:[Lcom/android/server/am/ActivityStack;

.field mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mHasMultiWindowStack:Z

.field mHasRunningCascadeApp:Z

.field mHasRunningSplitApp:Z

.field private mHomeStack:Lcom/android/server/am/ActivityStack;

.field private mHomeStacks:[Lcom/android/server/am/ActivityStack;

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field public mIsPerfBoostEnabled:Z

.field private mIsResumedBothCoupled:Z

.field public mIsperfDisablepackingEnable:Z

.field private mLastFocusedStack:Lcom/android/server/am/ActivityStack;

.field private mLastFocusedStacks:[Lcom/android/server/am/ActivityStack;

.field private mLastStackId:I

.field mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field private mLeanbackOnlyDevice:Z

.field private mLockTaskModeState:I

.field mLockTaskModeTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

.field mNeedToMovePrevSamsungHomeTasks:Z

.field private mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

.field private mNonFloatingFocusedStacks:[Lcom/android/server/am/ActivityStack;

.field mPendingActivitiesToMove:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            "Lcom/samsung/android/dualscreen/DualScreen;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

.field public mPerfBoost:Landroid/util/BoostFramework;

.field public mPerfPack:Landroid/util/BoostFramework;

.field public mPerf_iop:Landroid/util/BoostFramework;

.field private mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field private final mRecentTasks:Lcom/android/server/am/RecentTasks;

.field final mRunningTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSamsungHomeStack:Lcom/android/server/am/ActivityStack;

.field mSamsungHomeTask:Lcom/android/server/am/TaskRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field private mSpecificFloatingStack:Lcom/android/server/am/ActivityStack;

.field final mStartingBackgroundUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpDisplayTaskHistoryList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToken:Landroid/os/IBinder;

.field mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

.field mUnfixDialogShow:Z

.field mUniversalTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field mUserLeaving:Z

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 297
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_9

    move v0, v1

    :cond_9
    sput-boolean v0, SAFE_DEBUG:Z

    .line 370
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 373
    sget-object v0, ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v2, "android.intent.action.CALL"

    const-string v3, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sput-boolean v1, isLaunchKnoxApps:Z

    .line 9458
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$3;

    invoke-direct {v0}, Lcom/android/server/am/ActivityStackSupervisor$3;-><init>()V

    sput-object v0, sEmptyGlobalTaskHistory:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/RecentTasks;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object v1, p0, mPerf_iop:Landroid/util/BoostFramework;

    .line 334
    iput-object v1, p0, mPerfBoost:Landroid/util/BoostFramework;

    .line 335
    iput-object v1, p0, mPerfPack:Landroid/util/BoostFramework;

    .line 336
    iput-boolean v2, p0, mIsPerfBoostEnabled:Z

    .line 337
    iput-boolean v2, p0, mIsperfDisablepackingEnable:Z

    .line 338
    iput v2, p0, lBoostTimeOut:I

    .line 339
    iput v2, p0, lDisPackTimeOut:I

    .line 397
    iput-object v1, p0, mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 401
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, mToken:Landroid/os/IBinder;

    .line 420
    iput v2, p0, mLastStackId:I

    .line 424
    iput v2, p0, mCurTaskId:I

    .line 446
    iput-boolean v2, p0, mChangedFocusedStackWhileSleeping:Z

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mUniversalTaskHistory:Ljava/util/ArrayList;

    .line 457
    new-array v0, v3, [Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, mHomeStacks:[Lcom/android/server/am/ActivityStack;

    .line 458
    new-array v0, v3, [Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, mFrontStacks:[Lcom/android/server/am/ActivityStack;

    .line 459
    new-array v0, v3, [Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, mLastFocusedStacks:[Lcom/android/server/am/ActivityStack;

    .line 460
    new-array v0, v3, [Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, mNonFloatingFocusedStacks:[Lcom/android/server/am/ActivityStack;

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mPendingActivitiesToMove:Ljava/util/HashMap;

    .line 462
    iput-object v1, p0, mSamsungHomeTask:Lcom/android/server/am/TaskRecord;

    .line 463
    iput-object v1, p0, mExpandedHomeTask:Lcom/android/server/am/TaskRecord;

    .line 464
    iput-boolean v2, p0, mNeedToMovePrevSamsungHomeTasks:Z

    .line 467
    new-array v0, v3, [Z

    iput-object v0, p0, mChangedFrontStackWhileSleeping:[Z

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWaitingActivityVisible:Ljava/util/ArrayList;

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mStoppingActivities:Ljava/util/ArrayList;

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mFinishingActivities:Ljava/util/ArrayList;

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mStartingUsers:Ljava/util/ArrayList;

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mStartingBackgroundUsers:Ljava/util/ArrayList;

    .line 499
    iput-boolean v2, p0, mUserLeaving:Z

    .line 502
    iput-boolean v2, p0, mSleepTimeout:Z

    .line 524
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, mUserStackInFront:Landroid/util/SparseIntArray;

    .line 532
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mActivityContainers:Landroid/util/SparseArray;

    .line 535
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mActivityDisplays:Landroid/util/SparseArray;

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPendingActivityLaunches:Ljava/util/ArrayList;

    .line 1796
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor$1;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, mRunningTaskComparator:Ljava/util/Comparator;

    .line 6294
    const/16 v0, 0x7d0

    iput v0, p0, PENDING_RESUME_TOP_ACTIVITIES_TIMEOUT_DURATION:I

    .line 6295
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor$2;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

    .line 8877
    iput-boolean v2, p0, mIsResumedBothCoupled:Z

    .line 8916
    iput-boolean v2, p0, mHasMultiWindowStack:Z

    .line 8917
    iput-boolean v2, p0, mHasRunningCascadeApp:Z

    .line 8918
    iput-boolean v2, p0, mHasRunningSplitApp:Z

    .line 9511
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mTmpDisplayTaskHistoryList:Landroid/util/SparseArray;

    .line 578
    iput-object p1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    .line 579
    iput-object p2, p0, mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 580
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 582
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mIsPerfBoostEnabled:Z

    .line 584
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mIsperfDisablepackingEnable:Z

    .line 587
    iget-boolean v0, p0, mIsPerfBoostEnabled:Z

    if-eqz v0, :cond_127

    .line 588
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, lBoostTimeOut:I

    .line 590
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, lBoostCpuParamVal:[I

    .line 594
    :cond_127
    iget-boolean v0, p0, mIsperfDisablepackingEnable:Z

    if-eqz v0, :cond_14d

    .line 595
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, lDisPackTimeOut:I

    .line 597
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, lBoostPackParamVal:[I

    .line 600
    :cond_14d
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .prologue
    .line 276
    invoke-direct {p0, p1}, handleDisplayAdded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .prologue
    .line 276
    invoke-direct {p0, p1}, handleDisplayChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 276
    iget-object v0, p0, mActivityDisplays:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .prologue
    .line 276
    invoke-direct {p0, p1}, handleDisplayRemoved(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 276
    iget-object v0, p0, mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/am/LockTaskNotify;

    .prologue
    .line 276
    iput-object p1, p0, mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityStackSupervisor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 276
    iget v0, p0, mLockTaskModeState:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/am/ActivityStackSupervisor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .prologue
    .line 276
    iput p1, p0, mLockTaskModeState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 276
    invoke-direct {p0}, getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 276
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 276
    invoke-direct {p0}, getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/ActivityStackSupervisor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 276
    iget v0, p0, mCurrentUser:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/RecentTasks;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 276
    iget-object v0, p0, mRecentTasks:Lcom/android/server/am/RecentTasks;

    return-object v0
.end method

.method private changeTypeOfTaskToCascadeLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Point;ZZ)Z
    .registers 33
    .param p1, "topActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "targetPoint"    # Landroid/graphics/Point;
    .param p3, "bMinimize"    # Z
    .param p4, "stayResumed"    # Z

    .prologue
    .line 9133
    const/4 v10, 0x0

    .line 9134
    .local v10, "fromChangeTaskToMinimized":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v24

    if-nez v24, :cond_10

    if-eqz p3, :cond_10

    .line 9135
    const/4 v10, 0x1

    .line 9138
    :cond_10
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 9139
    .local v8, "displaySize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/MultiWindowPolicy;->getDefaultScale()F

    move-result v5

    .line 9140
    .local v5, "defaultPenWindowScale":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 9141
    .local v7, "displayId":I
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v6

    .line 9142
    .local v6, "display":Landroid/view/Display;
    if-eqz v6, :cond_44

    invoke-virtual {v6, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 9143
    :cond_44
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v5

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 9144
    .local v23, "windowDefWidth":I
    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v5

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 9146
    .local v22, "windowDefHeight":I
    sget-boolean v24, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v24, :cond_f2

    .line 9147
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getPreferredOrientation()I

    move-result v17

    .line 9148
    .local v17, "preferredOrientation":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFakeTarget(I)Z

    move-result v24

    if-eqz v24, :cond_f2

    .line 9149
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v24

    move-object/from16 v0, v24

    iget v11, v0, Landroid/content/res/Configuration;->orientation:I

    .line 9150
    .local v11, "globalOr":I
    move/from16 v0, v17

    invoke-static {v0, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToConfigurationOrientation(II)I

    move-result v9

    .line 9151
    .local v9, "expectedOr":I
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v11, v0, :cond_a6

    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v9, v0, :cond_b2

    :cond_a6
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v11, v0, :cond_f2

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v9, v0, :cond_f2

    .line 9153
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x10e010e

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x447a0000    # 1000.0f

    div-float v19, v24, v25

    .line 9154
    .local v19, "selectivePenWindowScale":F
    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v19

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 9155
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v19

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 9160
    .end local v9    # "expectedOr":I
    .end local v11    # "globalOr":I
    .end local v17    # "preferredOrientation":I
    .end local v19    # "selectivePenWindowScale":F
    :cond_f2
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 9161
    .local v18, "rect":Landroid/graphics/Rect;
    if-eqz p2, :cond_2de

    .line 9162
    if-eqz p3, :cond_2b2

    .line 9163
    if-eqz v10, :cond_269

    .line 9164
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x10502a9

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 9165
    .local v13, "minimizedWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x10502aa

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 9166
    .local v12, "minimizedHeight":I
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v13, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 9167
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    div-int/lit8 v25, v13, 0x2

    sub-int v24, v24, v25

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 9189
    .end local v12    # "minimizedHeight":I
    .end local v13    # "minimizedWidth":I
    :goto_151
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 9190
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    const/16 v25, 0x800

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 9191
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 9192
    if-eqz p3, :cond_185

    .line 9193
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 9196
    :cond_185
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1cb

    .line 9197
    if-eqz v10, :cond_360

    .line 9198
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 9199
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 9213
    :cond_1cb
    :goto_1cb
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v14

    .line 9216
    .local v14, "newFloatingStack":Lcom/android/server/am/ActivityStack;
    if-nez p4, :cond_1fe

    .line 9218
    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, pauseBackStacks(ZZZ)Z

    .line 9220
    :cond_1fe
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    if-eq v14, v0, :cond_243

    .line 9221
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x64

    const/16 v26, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v27

    invoke-virtual/range {v24 .. v27}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    .line 9222
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v25

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, moveTaskToStackLocked(IIZ)V

    .line 9223
    if-nez p3, :cond_243

    .line 9224
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 9228
    :cond_243
    if-eqz p3, :cond_3d0

    .line 9229
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowManagerService;->findNextFocusableFloatingStackIdFromTop()I

    move-result v15

    .line 9230
    .local v15, "nextStackId":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-le v15, v0, :cond_3bb

    .line 9231
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 9239
    .end local v15    # "nextStackId":I
    :goto_266
    const/16 v24, 0x1

    return v24

    .line 9169
    .end local v14    # "newFloatingStack":Lcom/android/server/am/ActivityStack;
    :cond_269
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v7, v1, v8}, Lcom/android/server/am/MultiWindowPolicy;->calculateMinimizePosition(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v16

    .line 9171
    .local v16, "point":Landroid/graphics/Point;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    add-int v26, v26, v23

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    add-int v27, v27, v22

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_151

    .line 9174
    .end local v16    # "point":Landroid/graphics/Point;
    :cond_2b2
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 9175
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    div-int/lit8 v25, v23, 0x2

    sub-int v24, v24, v25

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_151

    .line 9178
    :cond_2de
    if-eqz v10, :cond_336

    .line 9179
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x10502a9

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 9180
    .restart local v13    # "minimizedWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x10502aa

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 9181
    .restart local v12    # "minimizedHeight":I
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v13, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 9182
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    div-int/lit8 v25, v13, 0x2

    sub-int v24, v24, v25

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_151

    .line 9184
    .end local v12    # "minimizedHeight":I
    .end local v13    # "minimizedWidth":I
    :cond_336
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1050017

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 9185
    .local v20, "statusBarHeight":I
    const/16 v24, 0x0

    add-int v25, v20, v22

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v23

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_151

    .line 9201
    .end local v20    # "statusBarHeight":I
    :cond_360
    if-eqz p3, :cond_383

    .line 9202
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 9203
    .local v21, "tmp":Landroid/graphics/Bitmap;
    if-eqz v21, :cond_383

    .line 9204
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 9208
    .end local v21    # "tmp":Landroid/graphics/Bitmap;
    :cond_383
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 9209
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_1cb

    .line 9233
    .restart local v14    # "newFloatingStack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "nextStackId":I
    :cond_3bb
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto/16 :goto_266

    .line 9236
    .end local v15    # "nextStackId":I
    :cond_3d0
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    iget v0, v14, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto/16 :goto_266
.end method

.method private changeTypeOfTaskToNormalLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 14
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 9030
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_9f

    .line 9031
    iget-object v7, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v8, v8, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 9032
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v7, v7, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p0, v10, v7}, getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 9033
    .local v2, "normalStack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_22

    .line 9034
    invoke-virtual {p0}, getNextStackId()I

    move-result v7

    invoke-virtual {p0, v7, v10, v10}, createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 9038
    :cond_22
    const-string/jumbo v7, "type-change"

    invoke-virtual {p0, v2, v7}, updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 9039
    invoke-virtual {p0, v2, v9}, moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 9041
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 9042
    .local v6, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_83

    .line 9043
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 9044
    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v1, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 9045
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, p1, v1}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 9046
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v6, v9, v9}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 9048
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v7, v7, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 9049
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "i":I
    :goto_53
    if-lez v0, :cond_83

    .line 9050
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 9051
    .local v4, "target":Lcom/android/server/am/ActivityStack;
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_80

    iget-object v7, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_80

    iget-object v7, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v7

    if-eqz v7, :cond_80

    .line 9053
    iget-object v7, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 9054
    .local v5, "tmp":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_80

    .line 9055
    iget-object v7, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7, v5, v11}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 9049
    .end local v5    # "tmp":Landroid/graphics/Bitmap;
    :cond_80
    add-int/lit8 v0, v0, -0x1

    goto :goto_53

    .line 9060
    .end local v0    # "i":I
    .end local v1    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "target":Lcom/android/server/am/ActivityStack;
    :cond_83
    iget-object v7, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v7, v8, :cond_9c

    .line 9062
    invoke-virtual {p0, v9, v9, v9}, pauseBackStacks(ZZZ)Z

    .line 9063
    iget-object v7, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 9064
    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v8, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v8

    invoke-virtual {p0, v7, v8, v9}, moveTaskToStackLocked(IIZ)V

    .line 9066
    :cond_9c
    invoke-virtual {p0, v11, v10}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 9068
    .end local v2    # "normalStack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_9f
    return-void
.end method

.method private checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z
    .registers 17
    .param p1, "sr"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 10099
    const-string v8, ""

    .line 10100
    .local v8, "simNum":Ljava/lang/String;
    const-string v5, ""

    .line 10101
    .local v5, "imsi":Ljava/lang/String;
    const/4 v9, 0x0

    .line 10103
    .local v9, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 10104
    .restart local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v9, :cond_16

    .line 10105
    const/4 v0, 0x0

    .line 10166
    :cond_15
    :goto_15
    return v0

    .line 10107
    :cond_16
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v11

    if-eqz v11, :cond_199

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_199

    .line 10108
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v11

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 10109
    .local v3, "currentDataActiveSim":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v11

    if-eqz v11, :cond_35

    .line 10110
    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    .line 10115
    .end local v3    # "currentDataActiveSim":I
    :cond_35
    :goto_35
    if-eqz v5, :cond_44

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_44

    .line 10116
    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 10119
    :cond_44
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 10120
    .local v2, "connMgr":Landroid/net/ConnectivityManager;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 10121
    .local v10, "wifiNetwork":Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .line 10123
    .local v0, "checkFlag":Z
    const/4 v7, 0x0

    .line 10124
    .local v7, "packages":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 10125
    .local v1, "classes":[Ljava/lang/String;
    const-string v11, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19f

    const-string v11, "46001"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19f

    const-string v11, "45407"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19f

    const-string v11, "46009"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19f

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v11, v12, :cond_19f

    .line 10127
    const/16 v11, 0xc

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "packages":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "com.neusoft.td.android.wo116114"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string v12, "com.android.wo3g"

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "com.infinit.wostore.ui"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    const-string v12, "com.sinovatech.unicom.ui"

    aput-object v12, v7, v11

    const/4 v11, 0x4

    const-string v12, "com.neusoft.td.android.wo116114"

    aput-object v12, v7, v11

    const/4 v11, 0x5

    const-string v12, "com.asiainfo.android"

    aput-object v12, v7, v11

    const/4 v11, 0x6

    const-string v12, "com.asiainfo.android"

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, "com.samsung.wo3g"

    aput-object v12, v7, v11

    const/16 v11, 0x8

    const-string v12, "com.samsung.mobilebusinesshall"

    aput-object v12, v7, v11

    const/16 v11, 0x9

    const-string v12, "com.neusoft.td.android.wo116114"

    aput-object v12, v7, v11

    const/16 v11, 0xa

    const-string v12, "cn.com.wo"

    aput-object v12, v7, v11

    const/16 v11, 0xb

    const-string v12, "com.infinit.wostore.ui"

    aput-object v12, v7, v11

    .line 10129
    .restart local v7    # "packages":[Ljava/lang/String;
    const/16 v11, 0xc

    new-array v1, v11, [Ljava/lang/String;

    .end local v1    # "classes":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "com.neusoft.td.android.wo116114.ui.main.MainActivity"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const-string v12, "com.android.wo3g.wo3g"

    aput-object v12, v1, v11

    const/4 v11, 0x2

    const-string v12, "com.infinit.wostore.ui.ZBeginActivity"

    aput-object v12, v1, v11

    const/4 v11, 0x3

    const-string v12, "com.sinovatech.unicom.ui.WelcomeClient"

    aput-object v12, v1, v11

    const/4 v11, 0x4

    const-string v12, "com.neusoft.td.android.wo116114.activity.WelcomeActivity"

    aput-object v12, v1, v11

    const/4 v11, 0x5

    const-string v12, "com.asiainfo.android.MainActivity"

    aput-object v12, v1, v11

    const/4 v11, 0x6

    const-string v12, "com.asiainfo.mail.ui.LoginAcivity"

    aput-object v12, v1, v11

    const/4 v11, 0x7

    const-string v12, "com.samsung.wo3g.wo3g"

    aput-object v12, v1, v11

    const/16 v11, 0x8

    const-string v12, "com.samsung.mobilebusinesshall.MobileBusinessHall"

    aput-object v12, v1, v11

    const/16 v11, 0x9

    const-string v12, "com.neusoft.td.android.wo116114.activity.StartActivity"

    aput-object v12, v1, v11

    const/16 v11, 0xa

    const-string v12, "cn.com.wo.ui.TipActivity"

    aput-object v12, v1, v11

    const/16 v11, 0xb

    const-string v12, "com.infinit.wostore.ui.BeginActivity"

    aput-object v12, v1, v11

    .line 10138
    .restart local v1    # "classes":[Ljava/lang/String;
    :cond_112
    :goto_112
    if-eqz v7, :cond_15

    .line 10139
    const-string v11, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_201

    .line 10140
    if-eqz p1, :cond_15

    .line 10142
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 10143
    .local v6, "in":Landroid/content/Intent;
    if-eqz v6, :cond_158

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_158

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_158

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_158

    .line 10144
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15

    .line 10147
    :cond_158
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_15

    .line 10148
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_173
    array-length v11, v1

    if-ge v4, v11, :cond_15

    .line 10149
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v7, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1fd

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v1, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1fd

    .line 10150
    const/4 v0, 0x1

    .line 10151
    goto/16 :goto_15

    .line 10113
    .end local v0    # "checkFlag":Z
    .end local v1    # "classes":[Ljava/lang/String;
    .end local v2    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v4    # "i":I
    .end local v6    # "in":Landroid/content/Intent;
    .end local v7    # "packages":[Ljava/lang/String;
    .end local v10    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_199
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_35

    .line 10132
    .restart local v0    # "checkFlag":Z
    .restart local v1    # "classes":[Ljava/lang/String;
    .restart local v2    # "connMgr":Landroid/net/ConnectivityManager;
    .restart local v7    # "packages":[Ljava/lang/String;
    .restart local v10    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_19f
    const-string v11, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_112

    const-string v11, "46000"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_112

    const-string v11, "46002"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_112

    const-string v11, "46007"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_112

    .line 10134
    const/16 v11, 0x9

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "packages":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "com.aspire.mm"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string v12, "com.autonavi.cmccmap"

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "com.cmcc.mobilevideo"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    const-string v12, "cmccwm.mobilemusic"

    aput-object v12, v7, v11

    const/4 v11, 0x4

    const-string v12, "com.chinamobile.cmccwifi"

    aput-object v12, v7, v11

    const/4 v11, 0x5

    const-string v12, "cn.emagsoftware.gamehall"

    aput-object v12, v7, v11

    const/4 v11, 0x6

    const-string v12, "com.hisunflytone.android"

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, "com.huawei.pisa.activity"

    aput-object v12, v7, v11

    const/16 v11, 0x8

    const-string v12, "com.sec.android.app.customerservice"

    aput-object v12, v7, v11

    .restart local v7    # "packages":[Ljava/lang/String;
    goto/16 :goto_112

    .line 10148
    .restart local v4    # "i":I
    .restart local v6    # "in":Landroid/content/Intent;
    :cond_1fd
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_173

    .line 10155
    .end local v4    # "i":I
    .end local v6    # "in":Landroid/content/Intent;
    :cond_201
    const-string v11, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 10156
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_15

    .line 10157
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_224
    array-length v11, v7

    if-ge v4, v11, :cond_15

    .line 10158
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v7, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23a

    .line 10159
    const/4 v0, 0x1

    .line 10160
    goto/16 :goto_15

    .line 10157
    :cond_23a
    add-int/lit8 v4, v4, 0x1

    goto :goto_224
.end method

.method private checkFinishBootingLocked()Z
    .registers 5

    .prologue
    .line 4696
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 4697
    .local v0, "booting":Z
    const/4 v1, 0x0

    .line 4698
    .local v1, "enableScreen":Z
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 4699
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_16

    .line 4700
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 4701
    const/4 v1, 0x1

    .line 4703
    :cond_16
    if-nez v0, :cond_1a

    if-eqz v1, :cond_1f

    .line 4704
    :cond_1a
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->postFinishBooting(ZZ)V

    .line 4706
    :cond_1f
    return v0
.end method

.method private checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILandroid/os/Bundle;Landroid/content/ComponentName;Ljava/lang/String;)I
    .registers 39
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callingUid"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "cmp"    # Landroid/content/ComponentName;
    .param p6, "className"    # Ljava/lang/String;

    .prologue
    .line 8563
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v24

    .line 8564
    .local v24, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8567
    if-eqz p2, :cond_167

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 8569
    .local v8, "userId":I
    :goto_22
    if-eqz p5, :cond_2b6

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b6

    .line 8570
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 8571
    .local v14, "cmpPackageName":Ljava/lang/String;
    const-string v2, "com.android.settings"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1aa

    .line 8573
    :try_start_36
    const-string/jumbo v2, "restriction_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v28

    .line 8574
    .local v28, "rp":Landroid/app/enterprise/IRestrictionPolicy;
    if-eqz v28, :cond_a9

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v8}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v2

    if-nez v2, :cond_a9

    .line 8575
    const/16 v18, 0x0

    .line 8576
    .local v18, "isActivityAllowed":Z
    const-string v2, ":android:show_fragment"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8577
    .local v9, "activity":Ljava/lang/String;
    if-nez v9, :cond_5c

    .line 8578
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 8580
    :cond_5c
    sget-object v12, Landroid/app/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_63
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_75

    aget-object v16, v12, v17

    .line 8581
    .local v16, "exception":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16a

    .line 8582
    const/16 v18, 0x1

    .line 8586
    .end local v16    # "exception":Ljava/lang/String;
    :cond_75
    if-eqz v18, :cond_16e

    .line 8587
    const/high16 v2, 0x800000

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8588
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "ActivityStackSupervisor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Start activity "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v31, " succeeded"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_a9} :catch_1a4

    .line 8634
    .end local v9    # "activity":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "isActivityAllowed":Z
    .end local v22    # "len$":I
    .end local v28    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :cond_a9
    :goto_a9
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b6

    .line 8636
    :try_start_af
    const-string/jumbo v2, "password_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;

    move-result-object v27

    .line 8637
    .local v27, "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    const-string/jumbo v2, "security_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ISecurityPolicy;

    move-result-object v29

    .line 8638
    .local v29, "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    if-eqz v27, :cond_d7

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Landroid/app/enterprise/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v2

    if-lez v2, :cond_d7

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, isPersona(I)Z

    move-result v2

    if-eqz v2, :cond_e1

    :cond_d7
    if-eqz v29, :cond_285

    move-object/from16 v0, v29

    invoke-interface {v0, v8}, Landroid/app/enterprise/ISecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result v2

    if-eqz v2, :cond_285

    .line 8640
    :cond_e1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v23

    .line 8641
    .local v23, "list":Ljava/util/List;
    if-eqz v23, :cond_285

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_285

    .line 8642
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v30

    .line 8643
    .local v30, "topActivity":Ljava/lang/String;
    const/16 v18, 0x0

    .line 8644
    .restart local v18    # "isActivityAllowed":Z
    const/16 v20, 0x0

    .line 8645
    .local v20, "isTopActivityException":Z
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 8646
    .restart local v9    # "activity":Ljava/lang/String;
    sget-object v12, Landroid/app/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    .restart local v12    # "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v17, 0x0

    .restart local v17    # "i$":I
    :goto_111
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_133

    aget-object v16, v12, v17

    .line 8647
    .restart local v16    # "exception":Ljava/lang/String;
    if-eqz v30, :cond_127

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_127

    .line 8648
    const/16 v20, 0x1

    .line 8650
    :cond_127
    if-eqz v9, :cond_27d

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27d

    .line 8651
    const/16 v18, 0x1

    .line 8655
    .end local v16    # "exception":Ljava/lang/String;
    :cond_133
    if-eqz v20, :cond_285

    if-nez v18, :cond_285

    .line 8656
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8657
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "ActivityStackSupervisor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Start activity "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v31, " failed. Blocked due to password change enforcement."

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_165} :catch_281

    .line 8659
    const/4 v2, 0x0

    .line 8735
    .end local v9    # "activity":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v14    # "cmpPackageName":Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "isActivityAllowed":Z
    .end local v20    # "isTopActivityException":Z
    .end local v22    # "len$":I
    .end local v23    # "list":Ljava/util/List;
    .end local v27    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .end local v29    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .end local v30    # "topActivity":Ljava/lang/String;
    :goto_166
    return v2

    .line 8567
    .end local v8    # "userId":I
    :cond_167
    const/4 v8, 0x0

    goto/16 :goto_22

    .line 8580
    .restart local v8    # "userId":I
    .restart local v9    # "activity":Ljava/lang/String;
    .restart local v12    # "arr$":[Ljava/lang/String;
    .restart local v14    # "cmpPackageName":Ljava/lang/String;
    .restart local v16    # "exception":Ljava/lang/String;
    .restart local v17    # "i$":I
    .restart local v18    # "isActivityAllowed":Z
    .restart local v22    # "len$":I
    .restart local v28    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :cond_16a
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_63

    .line 8591
    .end local v16    # "exception":Ljava/lang/String;
    :cond_16e
    const/4 v2, 0x1

    :try_start_16f
    move-object/from16 v0, v28

    invoke-interface {v0, v2, v8}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    .line 8592
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8593
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "ActivityStackSupervisor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Start activity "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v31, " failed. Blocked due to settings changes not allowed."

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_1a2} :catch_1a4

    .line 8595
    const/4 v2, 0x0

    goto :goto_166

    .line 8598
    .end local v9    # "activity":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "isActivityAllowed":Z
    .end local v22    # "len$":I
    .end local v28    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :catch_1a4
    move-exception v15

    .line 8599
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a9

    .line 8601
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_1aa
    sget-object v2, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ba

    sget-object v2, Landroid/app/enterprise/kioskmode/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20b

    .line 8604
    :cond_1ba
    :try_start_1ba
    const-string/jumbo v2, "kioskmode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v21

    .line 8606
    .local v21, "km":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v21, :cond_a9

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v8}, Landroid/app/enterprise/kioskmode/IKioskMode;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v2

    if-nez v2, :cond_a9

    .line 8607
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8608
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "ActivityStackSupervisor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Start activity "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v31, " failed. Task manager is not allowed."

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1fe
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1fe} :catch_201

    .line 8610
    const/4 v2, 0x0

    goto/16 :goto_166

    .line 8612
    .end local v21    # "km":Landroid/app/enterprise/kioskmode/IKioskMode;
    :catch_201
    move-exception v15

    .line 8613
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Is edm running?"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 8615
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_20b
    const-string v2, "com.vlingo.midas"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21b

    const-string v2, "com.samsung.voiceserviceplatform"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 8617
    :cond_21b
    :try_start_21b
    const-string/jumbo v2, "restriction_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v28

    .line 8618
    .restart local v28    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    if-eqz v28, :cond_a9

    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v8}, Landroid/app/enterprise/IRestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result v2

    if-eqz v2, :cond_23a

    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v8}, Landroid/app/enterprise/IRestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v2

    if-nez v2, :cond_a9

    .line 8619
    :cond_23a
    const-string v2, ":android:show_fragment"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8620
    .restart local v9    # "activity":Ljava/lang/String;
    if-nez v9, :cond_248

    .line 8621
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 8623
    :cond_248
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8624
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "ActivityStackSupervisor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Start activity "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v31, " failed. Blocked due to S Voice not allowed."

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_274
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_274} :catch_277

    .line 8627
    const/4 v2, 0x0

    goto/16 :goto_166

    .line 8629
    .end local v9    # "activity":Ljava/lang/String;
    .end local v28    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :catch_277
    move-exception v15

    .line 8630
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a9

    .line 8646
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v9    # "activity":Ljava/lang/String;
    .restart local v12    # "arr$":[Ljava/lang/String;
    .restart local v16    # "exception":Ljava/lang/String;
    .restart local v17    # "i$":I
    .restart local v18    # "isActivityAllowed":Z
    .restart local v20    # "isTopActivityException":Z
    .restart local v22    # "len$":I
    .restart local v23    # "list":Ljava/util/List;
    .restart local v27    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .restart local v29    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .restart local v30    # "topActivity":Ljava/lang/String;
    :cond_27d
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_111

    .line 8663
    .end local v9    # "activity":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v16    # "exception":Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "isActivityAllowed":Z
    .end local v20    # "isTopActivityException":Z
    .end local v22    # "len$":I
    .end local v23    # "list":Ljava/util/List;
    .end local v27    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .end local v29    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .end local v30    # "topActivity":Ljava/lang/String;
    :catch_281
    move-exception v15

    .line 8664
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 8669
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_285
    :try_start_285
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v14, v3, v8}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v19

    .line 8672
    .local v19, "isAllowed":Z
    if-nez v19, :cond_2b6

    .line 8673
    const-string v2, "ActivityStack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8674
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2af
    .catch Ljava/lang/Exception; {:try_start_285 .. :try_end_2af} :catch_2b2

    .line 8675
    const/4 v2, 0x0

    goto/16 :goto_166

    .line 8677
    .end local v19    # "isAllowed":Z
    :catch_2b2
    move-exception v15

    .line 8678
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 8685
    .end local v14    # "cmpPackageName":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_2b6
    if-eqz p4, :cond_2ce

    const-string/jumbo v2, "edm:nonSystemUid"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2ce

    const-string/jumbo v2, "edm:startedByAdmin"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a3

    .line 8688
    :cond_2ce
    if-eqz p2, :cond_398

    .line 8690
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 8691
    .local v25, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v8, v1}, findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 8695
    .local v11, "ar":Lcom/android/server/am/ActivityRecord;
    if-nez v11, :cond_398

    .line 8702
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 8703
    .local v26, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v13

    .line 8705
    .local v13, "callingPkgName":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_306

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->isWidgetUsingPkg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_398

    .line 8707
    :cond_306
    :try_start_306
    const-string v2, "application_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v10

    .line 8710
    .local v10, "appPolicy":Landroid/app/enterprise/IApplicationPolicy;
    if-eqz v10, :cond_36d

    move-object/from16 v0, v25

    invoke-interface {v10, v0, v8}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_36d

    .line 8711
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " which is at prevent start black list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8713
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8714
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "ActivityStackSupervisor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Start activity "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v31, " failed"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 8716
    const/4 v2, 0x0

    goto/16 :goto_166

    .line 8719
    :cond_36d
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "ActivityStackSupervisor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Start activity "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v31, " succeeded"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_398
    .catch Ljava/lang/Exception; {:try_start_306 .. :try_end_398} :catch_39e

    .line 8733
    .end local v10    # "appPolicy":Landroid/app/enterprise/IApplicationPolicy;
    .end local v11    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "callingPkgName":Ljava/lang/String;
    .end local v25    # "pkgName":Ljava/lang/String;
    .end local v26    # "pm":Landroid/content/pm/PackageManager;
    :cond_398
    :goto_398
    invoke-static/range {v24 .. v24}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8735
    const/4 v2, -0x1

    goto/16 :goto_166

    .line 8721
    .restart local v11    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v13    # "callingPkgName":Ljava/lang/String;
    .restart local v25    # "pkgName":Ljava/lang/String;
    .restart local v26    # "pm":Landroid/content/pm/PackageManager;
    :catch_39e
    move-exception v15

    .line 8722
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_398

    .line 8730
    .end local v11    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "callingPkgName":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v25    # "pkgName":Ljava/lang/String;
    .end local v26    # "pm":Landroid/content/pm/PackageManager;
    :cond_3a3
    const/16 p4, 0x0

    goto :goto_398
.end method

.method public static convertDisplayIdToScreenZone(I)I
    .registers 3
    .param p0, "displayId"    # I

    .prologue
    .line 9657
    const/4 v0, 0x0

    .line 9658
    .local v0, "obscuredZone":I
    if-nez p0, :cond_5

    .line 9659
    const/4 v0, 0x1

    .line 9665
    :cond_4
    :goto_4
    return v0

    .line 9660
    :cond_5
    const/4 v1, 0x1

    if-ne p0, v1, :cond_a

    .line 9661
    const/4 v0, 0x2

    goto :goto_4

    .line 9662
    :cond_a
    const/4 v1, 0x2

    if-ne p0, v1, :cond_4

    .line 9663
    const/4 v0, 0x3

    goto :goto_4
.end method

.method public static convertScreenZoneToDisplayId(I)I
    .registers 3
    .param p0, "screenZone"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 9669
    if-ne p0, v0, :cond_6

    .line 9670
    const/4 v0, 0x0

    .line 9676
    :cond_5
    :goto_5
    return v0

    .line 9671
    :cond_6
    if-eq p0, v1, :cond_5

    .line 9673
    const/4 v0, 0x3

    if-ne p0, v0, :cond_d

    move v0, v1

    .line 9674
    goto :goto_5

    .line 9676
    :cond_d
    const/4 v0, -0x1

    goto :goto_5
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .registers 26
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "complete"    # Z
    .param p6, "brief"    # Z
    .param p7, "client"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;
    .param p9, "needNL"    # Z
    .param p10, "header1"    # Ljava/lang/String;
    .param p11, "header2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 7130
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v7, 0x0

    .line 7131
    .local v7, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v6, 0x0

    .line 7132
    .local v6, "innerPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .line 7133
    .local v2, "args":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 7134
    .local v8, "printed":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .local v5, "i":I
    :goto_a
    if-ltz v5, :cond_161

    .line 7135
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 7136
    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p8, :cond_23

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_23

    .line 7134
    :cond_20
    :goto_20
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 7139
    :cond_23
    if-nez v6, :cond_3d

    .line 7140
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "      "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7141
    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/String;

    .line 7143
    :cond_3d
    const/4 v8, 0x1

    .line 7144
    if-nez p6, :cond_ea

    if-nez p5, :cond_48

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v11

    if-nez v11, :cond_ea

    :cond_48
    const/4 v4, 0x1

    .line 7145
    .local v4, "full":Z
    :goto_49
    if-eqz p9, :cond_52

    .line 7146
    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7147
    const/16 p9, 0x0

    .line 7149
    :cond_52
    if-eqz p10, :cond_5b

    .line 7150
    move-object/from16 v0, p10

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7151
    const/16 p10, 0x0

    .line 7153
    :cond_5b
    if-eqz p11, :cond_64

    .line 7154
    move-object/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7155
    const/16 p11, 0x0

    .line 7157
    :cond_64
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v7, v11, :cond_93

    .line 7158
    iget-object v7, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 7159
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7160
    if-eqz v4, :cond_ed

    const-string v11, "* "

    :goto_73
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7161
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7162
    if-eqz v4, :cond_f0

    .line 7163
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, p1, v11}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7172
    :cond_93
    :goto_93
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_10a

    const-string v11, "  * "

    :goto_9c
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7173
    const-string v11, " #"

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7174
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7175
    if-eqz v4, :cond_10d

    .line 7176
    invoke-virtual {v9, p1, v6}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7184
    :cond_b9
    :goto_b9
    if-eqz p7, :cond_20

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_20

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v11, :cond_20

    .line 7187
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 7189
    :try_start_c8
    new-instance v10, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v10}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cd} :catch_12d
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_cd} :catch_149

    .line 7191
    .local v10, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_cd
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v11, v12, v13, v6, v2}, Landroid/app/IApplicationThread;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 7195
    const-wide/16 v12, 0x7d0

    invoke-virtual {v10, p0, v12, v13}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_e3
    .catchall {:try_start_cd .. :try_end_e3} :catchall_128

    .line 7197
    :try_start_e3
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_12d
    .catch Landroid/os/RemoteException; {:try_start_e3 .. :try_end_e6} :catch_149

    .line 7204
    .end local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_e6
    const/16 p9, 0x1

    goto/16 :goto_20

    .line 7144
    .end local v4    # "full":Z
    :cond_ea
    const/4 v4, 0x0

    goto/16 :goto_49

    .line 7160
    .restart local v4    # "full":Z
    :cond_ed
    const-string v11, "  "

    goto :goto_73

    .line 7164
    :cond_f0
    if-eqz p5, :cond_93

    .line 7166
    iget-object v11, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v11, :cond_93

    .line 7167
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  "

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7168
    iget-object v11, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_93

    .line 7172
    :cond_10a
    const-string v11, "    "

    goto :goto_9c

    .line 7177
    :cond_10d
    if-eqz p5, :cond_b9

    .line 7179
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7180
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_b9

    .line 7181
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_b9

    .line 7197
    .restart local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_128
    move-exception v11

    :try_start_129
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v11
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12d} :catch_12d
    .catch Landroid/os/RemoteException; {:try_start_129 .. :try_end_12d} :catch_149

    .line 7199
    .end local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_12d
    move-exception v3

    .line 7200
    .local v3, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Failure while dumping the activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e6

    .line 7201
    .end local v3    # "e":Ljava/io/IOException;
    :catch_149
    move-exception v3

    .line 7202
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Got a RemoteException while dumping the activity"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e6

    .line 7207
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "full":Z
    .end local v9    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_161
    return v8
.end method

.method private getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 13
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 3192
    if-nez p1, :cond_5

    .line 3229
    :cond_4
    :goto_4
    return v4

    .line 3196
    :cond_5
    sget-object v5, ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3197
    .local v3, "permission":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 3203
    :try_start_f
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x1000

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_1c} :catch_2f

    move-result-object v2

    .line 3210
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3214
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v7, :cond_49

    .line 3216
    const/4 v4, 0x1

    goto :goto_4

    .line 3205
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_2f
    move-exception v0

    .line 3206
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3219
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_49
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 3220
    .local v1, "opCode":I
    if-eq v1, v7, :cond_4

    .line 3224
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v5, v1, p4, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 3226
    const/4 v4, 0x2

    goto :goto_4
.end method

.method private getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I
    .registers 15
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "ignoreTargetSecurity"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 3165
    if-nez p5, :cond_18

    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-ne v0, v8, :cond_18

    .line 3168
    const/4 v0, 0x1

    .line 3187
    :goto_17
    return v0

    .line 3171
    :cond_18
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v0, :cond_1e

    move v0, v7

    .line 3172
    goto :goto_17

    .line 3175
    :cond_1e
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v6

    .line 3176
    .local v6, "opCode":I
    if-ne v6, v8, :cond_28

    move v0, v7

    .line 3177
    goto :goto_17

    .line 3180
    :cond_28
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v0, v6, p4, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_36

    .line 3182
    if-nez p5, :cond_36

    .line 3183
    const/4 v0, 0x2

    goto :goto_17

    :cond_36
    move v0, v7

    .line 3187
    goto :goto_17
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .registers 4

    .prologue
    .line 629
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 630
    :try_start_3
    iget-object v0, p0, mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_20

    .line 631
    const-string/jumbo v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 633
    iget-object v0, p0, mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_20

    .line 634
    const-string v0, "ActivityManager"

    const-string/jumbo v2, "warning: no DEVICE_POLICY_SERVICE"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_20
    iget-object v0, p0, mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    monitor-exit v1

    return-object v0

    .line 638
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .registers 12
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 7325
    new-instance v1, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 7326
    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v7, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v9, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(ILandroid/graphics/Rect;)V

    .line 7327
    const/4 v7, 0x0

    iput v7, v1, Landroid/app/ActivityManager$StackInfo;->displayId:I

    .line 7328
    iget v7, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iput v7, v1, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 7330
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 7331
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7332
    .local v2, "numTasks":I
    new-array v4, v2, [I

    .line 7333
    .local v4, "taskIds":[I
    new-array v5, v2, [Ljava/lang/String;

    .line 7334
    .local v5, "taskNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    if-ge v0, v2, :cond_59

    .line 7335
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 7336
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v7, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    aput v7, v4, v0

    .line 7337
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_3d

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    :goto_38
    aput-object v7, v5, v0

    .line 7334
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 7337
    :cond_3d
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_48

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    goto :goto_38

    :cond_48
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_55

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_38

    :cond_55
    const-string/jumbo v7, "unknown"

    goto :goto_38

    .line 7342
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_59
    iput-object v4, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    .line 7343
    iput-object v5, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    .line 7344
    return-object v1
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 4

    .prologue
    .line 616
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 617
    :try_start_3
    iget-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_20

    .line 618
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 620
    iget-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_20

    .line 621
    const-string v0, "StatusBarManager"

    const-string/jumbo v2, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_20
    iget-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 625
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private getTopActivityByZone(I)Lcom/android/server/am/ActivityRecord;
    .registers 13
    .param p1, "zone"    # I

    .prologue
    .line 8988
    iget-object v9, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 8989
    if-nez p1, :cond_17

    .line 8990
    :try_start_5
    invoke-virtual {p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 8991
    .local v1, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-nez v8, :cond_5d

    .line 8992
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    monitor-exit v9

    .line 9013
    .end local v1    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :goto_16
    return-object v7

    .line 8995
    :cond_17
    iget-object v8, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 8996
    .local v2, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_1e
    if-ge v0, v2, :cond_5d

    .line 8997
    iget-object v8, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 8998
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8999
    .local v3, "size":I
    add-int/lit8 v5, v3, -0x1

    .local v5, "stackNdx":I
    :goto_30
    if-ltz v5, :cond_5a

    .line 9000
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 9001
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 8999
    :cond_3e
    add-int/lit8 v5, v5, -0x1

    goto :goto_30

    .line 9004
    :cond_41
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 9005
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_3e

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v10, :cond_3e

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    if-ne v8, p1, :cond_3e

    .line 9008
    monitor-exit v9

    goto :goto_16

    .line 9014
    .end local v0    # "displayNdx":I
    .end local v2    # "numDisplays":I
    .end local v3    # "size":I
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_57
    move-exception v8

    monitor-exit v9
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_57

    throw v8

    .line 8996
    .restart local v0    # "displayNdx":I
    .restart local v2    # "numDisplays":I
    .restart local v3    # "size":I
    .restart local v5    # "stackNdx":I
    .restart local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 9013
    .end local v0    # "displayNdx":I
    .end local v2    # "numDisplays":I
    .end local v3    # "size":I
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5d
    const/4 v7, 0x0

    :try_start_5e
    monitor-exit v9
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_57

    goto :goto_16
.end method

.method private handleDisplayAdded(I)V
    .registers 8
    .param p1, "displayId"    # I

    .prologue
    .line 7272
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 7273
    :try_start_3
    iget-object v2, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_37

    const/4 v1, 0x1

    .line 7274
    .local v1, "newDisplay":Z
    :goto_c
    if-eqz v1, :cond_45

    .line 7275
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 7276
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_39

    .line 7277
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gone before initialization complete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7278
    monitor-exit v3

    .line 7291
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_36
    :goto_36
    return-void

    .line 7273
    .end local v1    # "newDisplay":Z
    :cond_37
    const/4 v1, 0x0

    goto :goto_c

    .line 7280
    .restart local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .restart local v1    # "newDisplay":Z
    :cond_39
    iget-object v2, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7283
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/am/MultiWindowPolicy;->initCenterBarPosition(I)Landroid/graphics/Point;

    .line 7287
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_4e

    .line 7288
    if-eqz v1, :cond_36

    .line 7289
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayAdded(I)V

    goto :goto_36

    .line 7287
    .end local v1    # "newDisplay":Z
    :catchall_4e
    move-exception v2

    :try_start_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v2
.end method

.method private handleDisplayChanged(I)V
    .registers 5
    .param p1, "displayId"    # I

    .prologue
    .line 7315
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 7316
    :try_start_3
    iget-object v1, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 7317
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_d

    .line 7320
    :cond_d
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_14

    .line 7321
    iget-object v1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayChanged(I)V

    .line 7322
    return-void

    .line 7320
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private handleDisplayRemoved(I)V
    .registers 7
    .param p1, "displayId"    # I

    .prologue
    .line 7294
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 7295
    :try_start_3
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 7296
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_2a

    .line 7297
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 7298
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_15
    if-ltz v1, :cond_25

    .line 7299
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachLocked()V

    .line 7298
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 7301
    :cond_25
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7310
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2a
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_31

    .line 7311
    iget-object v3, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    .line 7312
    return-void

    .line 7310
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_31
    move-exception v3

    :try_start_32
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v3
.end method

.method private isKnoxmode()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 10174
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10175
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 10176
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 10178
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 10179
    .local v0, "HomeReceiver":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_2e

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.internal.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 10180
    const/4 v3, 0x1

    .line 10182
    :cond_2e
    return v3
.end method

.method private isLeanbackOnlyDevice()Z
    .registers 4

    .prologue
    .line 8546
    const/4 v0, 0x0

    .line 8548
    .local v0, "onLeanbackOnly":Z
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback_only"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    .line 8554
    :goto_b
    return v0

    .line 8550
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method private isPersona(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 8739
    const/4 v1, 0x0

    .line 8740
    .local v1, "ret":Z
    if-eqz p1, :cond_17

    .line 8741
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 8742
    .local v0, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 8743
    const/4 v1, 0x1

    .line 8746
    .end local v0    # "pm":Landroid/os/PersonaManager;
    :cond_17
    return v1
.end method

.method private isProfiledUserLocked(II)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "taskUserId"    # I

    .prologue
    const/4 v3, 0x0

    .line 10244
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getUserManagerLocked()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 10246
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 10247
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, p2, :cond_f

    .line 10248
    const/4 v3, 0x1

    .line 10252
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_20
    return v3
.end method

.method private lockTaskModeToString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 6940
    iget v0, p0, mLockTaskModeState:I

    packed-switch v0, :pswitch_data_26

    .line 6947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLockTaskModeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0

    .line 6942
    :pswitch_1c
    const-string v0, "LOCKED"

    goto :goto_1b

    .line 6944
    :pswitch_1f
    const-string v0, "PINNED"

    goto :goto_1b

    .line 6946
    :pswitch_22
    const-string v0, "NONE"

    goto :goto_1b

    .line 6940
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method private needsCascadeForceHidden()Z
    .registers 3

    .prologue
    .line 9390
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_1a

    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mKeyguardGoingAway:Z

    if-nez v0, :cond_1a

    .line 9391
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 9392
    const/4 v0, 0x1

    .line 9395
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 7031
    if-eqz p1, :cond_19

    .line 7032
    if-eqz p2, :cond_c

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7033
    :cond_c
    if-eqz p3, :cond_11

    .line 7034
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 7036
    :cond_11
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7037
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7038
    const/4 v0, 0x1

    .line 7041
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;)Z
    .registers 27
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 5443
    const/16 v22, 0x0

    .line 5445
    .local v22, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-boolean v2, v0, mLeanbackOnlyDevice:Z

    if-eqz v2, :cond_28

    .line 5447
    move-object/from16 v0, p0

    iget-object v0, v0, mHomeStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v22, v0

    .line 5479
    :cond_e
    :goto_e
    if-nez v22, :cond_24

    .line 5488
    invoke-virtual/range {p0 .. p0}, getNextStackId()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    move-result-object v22

    .line 5491
    const/4 v2, 0x1

    const-string/jumbo v3, "restoreRecentTask"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, moveHomeStack(ZLjava/lang/String;)V

    .line 5496
    :cond_24
    if-nez v22, :cond_86

    .line 5500
    const/4 v2, 0x0

    .line 5519
    :goto_27
    return v2

    .line 5452
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v2, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 5462
    .local v20, "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    .line 5463
    .local v21, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v21, :cond_68

    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_68

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result v2

    if-eqz v2, :cond_68

    .line 5464
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VIRTUALSCREEN] task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not in home display"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5465
    const/4 v2, 0x0

    goto :goto_27

    .line 5470
    :cond_68
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    .local v23, "stackNdx":I
    :goto_6e
    if-ltz v23, :cond_e

    .line 5471
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ActivityStack;

    .line 5472
    .local v24, "tmpStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 5473
    move-object/from16 v22, v24

    .line 5474
    goto :goto_e

    .line 5470
    :cond_83
    add-int/lit8 v23, v23, -0x1

    goto :goto_6e

    .line 5503
    .end local v20    # "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v21    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v23    # "stackNdx":I
    .end local v24    # "tmpStack":Lcom/android/server/am/ActivityStack;
    :cond_86
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZZ)V

    .line 5506
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 5507
    .local v18, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    .local v19, "activityNdx":I
    :goto_9c
    if-ltz v19, :cond_fd

    .line 5508
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ActivityRecord;

    .line 5510
    .restart local v21    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, v21

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_f9

    const/4 v9, 0x1

    :goto_ca
    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v12, :cond_fb

    const/4 v12, 0x1

    :goto_db
    move-object/from16 v0, v21

    iget-boolean v13, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v21

    iget-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->skipRotationAnimation:Z

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    move/from16 v16, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->policyExpandedDisplayOrientation:I

    move/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLcom/samsung/android/multiwindow/MultiWindowStyle;ZZI)V

    .line 5507
    add-int/lit8 v19, v19, -0x1

    goto :goto_9c

    .line 5510
    :cond_f9
    const/4 v9, 0x0

    goto :goto_ca

    :cond_fb
    const/4 v12, 0x0

    goto :goto_db

    .line 5519
    .end local v21    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_fd
    const/4 v2, 0x1

    goto/16 :goto_27
.end method


# virtual methods
.method acquireAppLaunchPerfLock()V
    .registers 1

    .prologue
    .line 5776
    return-void
.end method

.method acquireLaunchWakelock()V
    .registers 5

    .prologue
    const/16 v1, 0x68

    .line 4684
    iget-object v0, p0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4685
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 4687
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4689
    :cond_16
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .registers 24
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromTimeout"    # Z
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 4714
    const/16 v19, 0x0

    .line 4715
    .local v19, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v14, 0x0

    .line 4716
    .local v14, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v18, 0x0

    .line 4717
    .local v18, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    const/4 v10, 0x0

    .line 4718
    .local v10, "NS":I
    const/4 v2, 0x0

    .line 4719
    .local v2, "NF":I
    const/4 v12, 0x0

    .line 4720
    .local v12, "booting":Z
    const/4 v11, 0x0

    .line 4722
    .local v11, "activityRemoved":Z
    const/4 v13, -0x1

    .line 4725
    .local v13, "displayId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 4726
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_44

    .line 4729
    move-object/from16 v0, p0

    iget-object v3, v0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4737
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 4738
    if-eqz p2, :cond_29

    .line 4739
    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object/from16 v3, p0

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v9}, reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 4747
    :cond_29
    if-eqz p3, :cond_2f

    .line 4748
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 4753
    :cond_2f
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 4756
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_40

    if-eqz p2, :cond_d4

    .line 4757
    :cond_40
    invoke-direct/range {p0 .. p0}, checkFinishBootingLocked()Z

    move-result v12

    .line 4769
    :cond_44
    :goto_44
    invoke-virtual/range {p0 .. p0}, allResumedActivitiesIdle()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 4770
    if-eqz v5, :cond_53

    .line 4771
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 4774
    :cond_53
    move-object/from16 v0, p0

    iget-object v3, v0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 4775
    move-object/from16 v0, p0

    iget-object v3, v0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 4780
    move-object/from16 v0, p0

    iget-object v3, v0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4782
    :cond_6d
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 4786
    :cond_74
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, processStoppingActivitiesLocked(ZI)Ljava/util/ArrayList;

    move-result-object v19

    .line 4787
    if-eqz v19, :cond_119

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4793
    :goto_81
    move-object/from16 v0, p0

    iget-object v0, v0, mFinishingActivities:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 4796
    .local v16, "mFinishingActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_97

    .line 4797
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4798
    .restart local v14    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 4801
    :cond_97
    move-object/from16 v0, p0

    iget-object v3, v0, mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b3

    .line 4802
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mStartingUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4803
    .restart local v18    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4808
    :cond_b3
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_b4
    if-ge v15, v10, :cond_122

    .line 4809
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 4810
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    .line 4811
    .local v17, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v17, :cond_d1

    .line 4812
    iget-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_11c

    .line 4813
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 4808
    :cond_d1
    :goto_d1
    add-int/lit8 v15, v15, 0x1

    goto :goto_b4

    .line 4758
    .end local v15    # "i":I
    .end local v16    # "mFinishingActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v17    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_d4
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-eqz v3, :cond_44

    .line 4759
    move-object/from16 v0, p0

    iget-object v3, v0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_110

    move-object/from16 v0, p0

    iget-object v3, v0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_110

    .line 4761
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@Boot: FocusedStack is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v6, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 4764
    :cond_110
    const-string v3, "ActivityManager"

    const-string v4, "!@Boot: mFocusedStack is not mHomeStack "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 4787
    :cond_119
    const/4 v10, 0x0

    goto/16 :goto_81

    .line 4815
    .restart local v15    # "i":I
    .restart local v16    # "mFinishingActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v17    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_11c
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_d1

    .line 4822
    .end local v17    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_122
    const/4 v15, 0x0

    :goto_123
    if-ge v15, v2, :cond_141

    .line 4823
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 4824
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    .line 4825
    .restart local v17    # "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v17, :cond_13e

    .line 4826
    const/4 v3, 0x1

    const-string/jumbo v4, "finish-idle"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v3

    or-int/2addr v11, v3

    .line 4822
    :cond_13e
    add-int/lit8 v15, v15, 0x1

    goto :goto_123

    .line 4830
    .end local v17    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_141
    if-nez v12, :cond_193

    .line 4832
    if-eqz v18, :cond_15e

    .line 4833
    const/4 v15, 0x0

    :goto_146
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_15e

    .line 4834
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->finishUserSwitch(Lcom/android/server/am/UserState;)V

    .line 4833
    add-int/lit8 v15, v15, 0x1

    goto :goto_146

    .line 4838
    :cond_15e
    move-object/from16 v0, p0

    iget-object v3, v0, mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_193

    .line 4839
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mStartingBackgroundUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4840
    .restart local v18    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4841
    const/4 v15, 0x0

    :goto_17b
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_193

    .line 4842
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 4841
    add-int/lit8 v15, v15, 0x1

    goto :goto_17b

    .line 4847
    :cond_193
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 4851
    if-eqz v11, :cond_19f

    .line 4852
    invoke-virtual/range {p0 .. p0}, resumeTopActivitiesLocked()Z

    .line 4865
    :cond_19f
    return-object v5
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 6361
    iget-object v0, p0, mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6362
    invoke-virtual {p0}, checkReadyForSleepLocked()V

    .line 6363
    return-void
.end method

.method allPausedActivitiesComplete()Z
    .registers 2

    .prologue
    .line 1480
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, allPausedActivitiesComplete(I)Z

    move-result v0

    return v0
.end method

.method allPausedActivitiesComplete(I)Z
    .registers 11
    .param p1, "displayId"    # I

    .prologue
    .line 1485
    const/4 v2, 0x1

    .line 1486
    .local v2, "pausing":Z
    iget-object v7, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "displayNdx":I
    :goto_9
    if-ltz v0, :cond_48

    .line 1494
    iget-object v7, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1495
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "stackNdx":I
    :goto_1b
    if-ltz v5, :cond_4c

    .line 1496
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 1499
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v7, v4, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1500
    .local v3, "record":Lcom/android/server/am/ActivityRecord;
    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_29

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_29

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_29

    .line 1508
    const/4 v2, 0x0

    .line 1527
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pausing":Z
    .end local v3    # "record":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_48
    return v2

    .line 1495
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "pausing":Z
    .restart local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "stackNdx":I
    .restart local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_49
    add-int/lit8 v5, v5, -0x1

    goto :goto_1b

    .line 1486
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method allResumedActivitiesComplete()Z
    .registers 2

    .prologue
    .line 1354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, allResumedActivitiesComplete(Z)Z

    move-result v0

    return v0
.end method

.method allResumedActivitiesComplete(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 1363
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, allResumedActivitiesComplete(ZI)Z

    move-result v0

    return v0
.end method

.method allResumedActivitiesComplete(Z)Z
    .registers 3
    .param p1, "resumedActivityMustBeNotNull"    # Z

    .prologue
    .line 1359
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, allResumedActivitiesComplete(ZI)Z

    move-result v0

    return v0
.end method

.method allResumedActivitiesComplete(ZI)Z
    .registers 10
    .param p1, "resumedActivityMustBeNotNull"    # Z
    .param p2, "displayId"    # I

    .prologue
    .line 1368
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_4d

    .line 1369
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1380
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1a
    if-ltz v3, :cond_4a

    .line 1381
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1382
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 1385
    if-eqz p1, :cond_44

    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_44

    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_44

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1388
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    :goto_3a
    if-eqz v1, :cond_47

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_47

    .line 1389
    const/4 v5, 0x0

    .line 1411
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_43
    return v5

    .line 1385
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_44
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_3a

    .line 1380
    :cond_47
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 1368
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1405
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4d
    iget-object v5, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v5, p0, mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1411
    const/4 v5, 0x1

    goto :goto_43
.end method

.method allResumedActivitiesIdle()Z
    .registers 7

    .prologue
    .line 1334
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_3e

    .line 1335
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1336
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1a
    if-ltz v3, :cond_3b

    .line 1337
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1338
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v5

    if-nez v5, :cond_31

    .line 1336
    :cond_2e
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 1341
    :cond_31
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1342
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_39

    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v5, :cond_2e

    .line 1345
    :cond_39
    const/4 v5, 0x0

    .line 1349
    .end local v1    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_3a
    return v5

    .line 1334
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1349
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3e
    const/4 v5, 0x1

    goto :goto_3a
.end method

.method allResumedActivitiesVisible()Z
    .registers 2

    .prologue
    .line 1416
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, allResumedActivitiesVisible(I)Z

    move-result v0

    return v0
.end method

.method allResumedActivitiesVisible(I)Z
    .registers 9
    .param p1, "displayId"    # I

    .prologue
    .line 1421
    const/4 v1, 0x0

    .line 1422
    .local v1, "foundResumed":Z
    iget-object v6, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "displayNdx":I
    :goto_9
    if-ltz v0, :cond_3c

    .line 1430
    iget-object v6, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1431
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "stackNdx":I
    :goto_1b
    if-ltz v4, :cond_39

    .line 1432
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 1433
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1434
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_36

    .line 1435
    iget-boolean v6, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v6, :cond_33

    iget-object v6, p0, mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 1436
    :cond_33
    const/4 v6, 0x0

    .line 1442
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_34
    return v6

    .line 1438
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "stackNdx":I
    .restart local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_35
    const/4 v1, 0x1

    .line 1431
    :cond_36
    add-int/lit8 v4, v4, -0x1

    goto :goto_1b

    .line 1422
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3c
    move v6, v1

    .line 1442
    goto :goto_34
.end method

.method anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 1190
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, anyTaskForIdLocked(IZ)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForIdLocked(IZ)Lcom/android/server/am/TaskRecord;
    .registers 11
    .param p1, "id"    # I
    .param p2, "restoreFromRecents"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1200
    iget-object v6, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1201
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_8
    if-ge v0, v1, :cond_2f

    .line 1202
    iget-object v6, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1203
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "stackNdx":I
    :goto_1a
    if-ltz v3, :cond_2c

    .line 1204
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1205
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 1206
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_29

    .line 1230
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_28
    :goto_28
    return-object v5

    .line 1203
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_29
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 1201
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1214
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2f
    iget-object v6, p0, mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v6, p1}, Lcom/android/server/am/RecentTasks;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 1215
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    if-nez v5, :cond_39

    move-object v5, v7

    .line 1217
    goto :goto_28

    .line 1220
    :cond_39
    if-eqz p2, :cond_28

    .line 1224
    invoke-direct {p0, v5}, restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v6

    if-nez v6, :cond_28

    move-object v5, v7

    .line 1227
    goto :goto_28
.end method

.method arrangeTaskToReturnTo(I)V
    .registers 15
    .param p1, "displayId"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 6192
    invoke-virtual {p0, p1}, getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 6193
    .local v0, "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    if-eqz v0, :cond_cd

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_cd

    .line 6194
    const/4 v1, -0x1

    .line 6195
    .local v1, "homeTaskNdx":I
    const/4 v7, -0x1

    .line 6196
    .local v7, "recentTaskNdx":I
    const/4 v3, 0x0

    .line 6197
    .local v3, "lastTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_52

    .line 6198
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 6199
    .local v8, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v9, :cond_36

    iget v9, v8, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v9}, isCurrentProfileLocked(I)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 6200
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v9

    if-eqz v9, :cond_39

    .line 6201
    if-gez v1, :cond_35

    .line 6202
    move v1, v2

    .line 6217
    :cond_35
    :goto_35
    move-object v3, v8

    .line 6197
    :cond_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 6211
    :cond_39
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->isRecentTask()Z

    move-result v9

    if-eqz v9, :cond_44

    .line 6212
    move v7, v2

    .line 6213
    invoke-virtual {v8, v12}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_35

    .line 6214
    :cond_44
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v9

    if-nez v9, :cond_4e

    if-ge v2, v1, :cond_35

    .line 6215
    :cond_4e
    invoke-virtual {v8, v12}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_35

    .line 6220
    .end local v8    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v1, v9, :cond_99

    if-le v1, v11, :cond_99

    .line 6221
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 6222
    .local v4, "overHomeTask":Lcom/android/server/am/TaskRecord;
    iget-object v9, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v9

    if-nez v9, :cond_99

    .line 6223
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-nez v9, :cond_96

    iget-object v9, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v9

    if-eqz v9, :cond_96

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    if-ge v1, v9, :cond_96

    .line 6225
    add-int/lit8 v9, v1, 0x2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 6226
    .local v5, "overOverHomeTask":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_96

    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v9

    if-eqz v9, :cond_96

    .line 6227
    move-object v4, v5

    .line 6243
    .end local v5    # "overOverHomeTask":Lcom/android/server/am/TaskRecord;
    :cond_96
    invoke-virtual {v4, v10}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 6247
    .end local v4    # "overHomeTask":Lcom/android/server/am/TaskRecord;
    :cond_99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v7, v9, :cond_bc

    if-le v7, v11, :cond_bc

    .line 6248
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 6249
    .local v6, "overRecentTask":Lcom/android/server/am/TaskRecord;
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v9

    if-nez v9, :cond_bc

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v9

    if-nez v9, :cond_bc

    .line 6266
    invoke-virtual {v6, v10}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 6270
    .end local v6    # "overRecentTask":Lcom/android/server/am/TaskRecord;
    :cond_bc
    if-gez v1, :cond_cd

    if-gez v7, :cond_cd

    .line 6271
    if-eqz v3, :cond_cd

    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isMultiWindowStack()Z

    move-result v9

    if-nez v9, :cond_cd

    .line 6280
    invoke-virtual {v3, v10}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 6290
    .end local v1    # "homeTaskNdx":I
    .end local v2    # "i":I
    .end local v3    # "lastTask":Lcom/android/server/am/TaskRecord;
    .end local v7    # "recentTaskNdx":I
    :cond_cd
    return-void
.end method

.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1288
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1289
    .local v4, "processName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1290
    .local v0, "didSomething":Z
    iget-object v8, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "displayNdx":I
    :goto_c
    if-ltz v1, :cond_82

    .line 1291
    iget-object v8, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1292
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "stackNdx":I
    :goto_1e
    if-ltz v6, :cond_7f

    .line 1293
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 1294
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v5}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 1292
    :cond_2c
    :goto_2c
    add-int/lit8 v6, v6, -0x1

    goto :goto_1e

    .line 1297
    :cond_2f
    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1298
    .local v3, "hr":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_2c

    .line 1299
    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v8, :cond_2c

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v8, v9, :cond_2c

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 1302
    const/4 v8, 0x1

    const/4 v9, 0x1

    :try_start_4d
    invoke-virtual {p0, v3, p1, v8, v9}, realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 1303
    const/4 v0, 0x1

    goto :goto_2c

    .line 1308
    :cond_55
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_5a} :catch_5b

    goto :goto_2c

    .line 1311
    :catch_5b
    move-exception v2

    .line 1312
    .local v2, "e":Landroid/os/RemoteException;
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in new application when starting activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1314
    throw v2

    .line 1290
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "hr":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_7f
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1330
    .end local v6    # "stackNdx":I
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_82
    return v0
.end method

.method public changeTaskToMinimized(ILandroid/graphics/Point;Z)Z
    .registers 14
    .param p1, "taskId"    # I
    .param p2, "iconCoordinates"    # Landroid/graphics/Point;
    .param p3, "stayResumed"    # Z

    .prologue
    const/4 v8, 0x1

    .line 9101
    const/4 v1, 0x0

    .line 9102
    .local v1, "result":Z
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 9103
    :try_start_5
    invoke-virtual {p0, p1}, anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 9104
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_5d

    .line 9105
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 9106
    .local v4, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_5d

    .line 9107
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v7, 0x20000

    invoke-virtual {v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 9108
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v3

    .line 9110
    .local v3, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "nonFloatingTopTaskIndex":I
    :goto_2a
    if-ltz v0, :cond_3d

    .line 9111
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 9110
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    .line 9117
    :cond_3d
    const/4 v5, 0x1

    invoke-direct {p0, v4, p2, v5, p3}, changeTypeOfTaskToCascadeLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Point;ZZ)Z

    move-result v1

    .line 9118
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, p1, :cond_5d

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v5

    if-ne v5, v8, :cond_5d

    .line 9119
    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v8, "changeTaskToMinimized"

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v9

    invoke-virtual {p0, v5, v7, v8, v9}, resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;I)Z

    .line 9128
    .end local v0    # "nonFloatingTopTaskIndex":I
    .end local v3    # "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_5d
    :goto_5d
    monitor-exit v6

    .line 9129
    return v1

    .line 9122
    .restart local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_5f
    sget-boolean v5, SAFE_DEBUG:Z

    if-eqz v5, :cond_5d

    .line 9123
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Gamemode: It cannot be converted into the minimized icon. The top Activity does not have the option OPTION_FULLSCREEN_MINIMIZABLE.("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 9128
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_82
    move-exception v5

    monitor-exit v6
    :try_end_84
    .catchall {:try_start_5 .. :try_end_84} :catchall_82

    throw v5
.end method

.method public changeTypeOfTaskToCascade(Landroid/graphics/Point;IZ)Z
    .registers 16
    .param p1, "touchPoint"    # Landroid/graphics/Point;
    .param p2, "zone"    # I
    .param p3, "bMinimize"    # Z

    .prologue
    const/4 v6, 0x0

    .line 9071
    const/4 v4, 0x0

    .line 9072
    .local v4, "result":Z
    iget-object v7, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 9073
    :try_start_5
    invoke-direct {p0, p2}, getTopActivityByZone(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 9074
    .local v5, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_53

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v9, 0x8000000

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_53

    .line 9076
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v3

    .line 9077
    .local v3, "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 9078
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_51

    .line 9079
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_46

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 9080
    .local v1, "metaData":Landroid/os/Bundle;
    :goto_25
    invoke-virtual {v3, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-nez v8, :cond_49

    if-eqz v1, :cond_35

    const-string v8, "com.samsung.android.sdk.multiwindow.penwindow.enable"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_49

    .line 9082
    :cond_35
    iget-object v8, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v9, 0xc8

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 9083
    .local v2, "msg":Landroid/os/Message;
    iget-object v8, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v2, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9084
    monitor-exit v7

    .line 9097
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .end local v1    # "metaData":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :goto_45
    return v6

    .line 9079
    .restart local v0    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_46
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_25

    .line 9086
    .restart local v1    # "metaData":Landroid/os/Bundle;
    :cond_49
    const/4 v6, 0x0

    invoke-direct {p0, v5, p1, p3, v6}, changeTypeOfTaskToCascadeLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Point;ZZ)Z

    move-result v4

    .line 9096
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .end local v1    # "metaData":Landroid/os/Bundle;
    .end local v3    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_4e
    :goto_4e
    monitor-exit v7

    move v6, v4

    .line 9097
    goto :goto_45

    .line 9088
    .restart local v0    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_51
    const/4 v4, 0x0

    goto :goto_4e

    .line 9091
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .end local v3    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_53
    if-eqz v5, :cond_4e

    .line 9092
    iget-object v6, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v8, 0xc9

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 9093
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v6, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v8, 0xc9

    invoke-virtual {v6, v2, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4e

    .line 9096
    .end local v2    # "msg":Landroid/os/Message;
    .end local v5    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_65
    move-exception v6

    monitor-exit v7
    :try_end_67
    .catchall {:try_start_5 .. :try_end_67} :catchall_65

    throw v6
.end method

.method public changeTypeOfTaskToNormal(I)V
    .registers 6
    .param p1, "zone"    # I

    .prologue
    .line 9018
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 9019
    :try_start_3
    invoke-direct {p0, p1}, getTopActivityByZone(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 9020
    .local v1, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_10

    .line 9021
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 9022
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_10

    .line 9023
    invoke-direct {p0, v0}, changeTypeOfTaskToNormalLocked(Lcom/android/server/am/TaskRecord;)V

    .line 9026
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_10
    monitor-exit v3

    .line 9027
    return-void

    .line 9026
    .end local v1    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_12
    move-exception v2

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v2
.end method

.method checkFullScreenOnlyExist(Ljava/util/ArrayList;Lcom/android/server/am/ActivityStack;)Z
    .registers 15
    .param p2, "curStack"    # Lcom/android/server/am/ActivityStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/ActivityStack;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v10, 0x0

    .line 758
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 759
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    if-ge v4, v0, :cond_6f

    .line 760
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    iget-object v5, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 761
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v5, :cond_18

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 759
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 763
    :cond_1b
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 764
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "taskNdx":I
    :goto_25
    if-ltz v7, :cond_18

    .line 765
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 766
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget v9, v6, Lcom/android/server/am/TaskRecord;->userId:I

    iget v11, p0, mCurrentUser:I

    if-ne v9, v11, :cond_6c

    .line 767
    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 768
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "activityNdx":I
    :goto_3b
    if-ltz v2, :cond_6c

    .line 769
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 770
    .local v3, "activityRecord":Lcom/android/server/am/ActivityRecord;
    iget-boolean v9, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_4f

    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v9

    if-eqz v9, :cond_52

    .line 768
    :cond_4f
    add-int/lit8 v2, v2, -0x1

    goto :goto_3b

    .line 773
    :cond_52
    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v9

    if-eqz v9, :cond_6a

    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v11, 0x200000

    invoke-virtual {v9, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 775
    iget-boolean v9, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v9, :cond_4f

    .line 776
    const/4 v9, 0x1

    .line 785
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    .end local v3    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "taskNdx":I
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :goto_69
    return v9

    .restart local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v2    # "activityNdx":I
    .restart local v3    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "taskNdx":I
    .restart local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_6a
    move v9, v10

    .line 779
    goto :goto_69

    .line 764
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    .end local v3    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_6c
    add-int/lit8 v7, v7, -0x1

    goto :goto_25

    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "taskNdx":I
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_6f
    move v9, v10

    .line 785
    goto :goto_69
.end method

.method checkReadyForSleepLocked()V
    .registers 7

    .prologue
    .line 6366
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v4

    if-nez v4, :cond_9

    .line 6421
    :cond_8
    :goto_8
    return-void

    .line 6371
    :cond_9
    iget-boolean v4, p0, mSleepTimeout:Z

    if-nez v4, :cond_52

    .line 6372
    const/4 v1, 0x0

    .line 6373
    .local v1, "dontSleep":Z
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_16
    if-ltz v0, :cond_3b

    .line 6374
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6375
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_28
    if-ltz v2, :cond_38

    .line 6376
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v4

    or-int/2addr v1, v4

    .line 6375
    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    .line 6373
    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 6380
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3b
    iget-object v4, p0, mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_47

    .line 6384
    invoke-virtual {p0}, scheduleIdleLocked()V

    .line 6385
    const/4 v1, 0x1

    .line 6388
    :cond_47
    iget-object v4, p0, mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_50

    .line 6392
    const/4 v1, 0x1

    .line 6395
    :cond_50
    if-nez v1, :cond_8

    .line 6402
    .end local v0    # "displayNdx":I
    .end local v1    # "dontSleep":Z
    :cond_52
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 6406
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0    # "displayNdx":I
    :goto_5f
    if-ltz v0, :cond_82

    .line 6407
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6408
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "stackNdx":I
    :goto_71
    if-ltz v2, :cond_7f

    .line 6409
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 6408
    add-int/lit8 v2, v2, -0x1

    goto :goto_71

    .line 6406
    :cond_7f
    add-int/lit8 v0, v0, -0x1

    goto :goto_5f

    .line 6413
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_82
    invoke-virtual {p0}, removeSleepTimeouts()V

    .line 6415
    iget-object v4, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_92

    .line 6416
    iget-object v4, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6418
    :cond_92
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v4, :cond_8

    .line 6419
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_8
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .registers 8
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .prologue
    .line 6716
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_2c

    .line 6717
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6718
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 6719
    .local v4, "topStackNdx":I
    move v2, v4

    .local v2, "stackNdx":I
    :goto_1b
    if-ltz v2, :cond_29

    .line 6720
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 6721
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 6719
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 6716
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 6724
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "topStackNdx":I
    :cond_2c
    return-void
.end method

.method closeSystemDialogsLocked()V
    .registers 5

    .prologue
    .line 4880
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 4881
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4882
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_1a
    if-ltz v1, :cond_28

    .line 4883
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->closeSystemDialogsLocked()V

    .line 4882
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 4880
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4886
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2b
    return-void
.end method

.method comeOutOfSleepForDisplayLocked(I)V
    .registers 7
    .param p1, "displayId"    # I

    .prologue
    const/4 v4, 0x0

    .line 9760
    iget-object v3, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 9761
    iget-object v3, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 9764
    :cond_e
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 9765
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_1e
    if-ltz v1, :cond_35

    .line 9766
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 9767
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    .line 9768
    invoke-virtual {p0, v0}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 9769
    invoke-virtual {p0, v0, v4, v4}, resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 9765
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 9772
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_35
    iget-object v3, p0, mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 9773
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .registers 2

    .prologue
    .line 6306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, comeOutOfSleepIfNeededLocked(Z)V

    .line 6307
    return-void
.end method

.method comeOutOfSleepIfNeededLocked(Z)V
    .registers 12
    .param p1, "causeKeyguardWaitingForActivityDrawn"    # Z

    .prologue
    .line 6311
    invoke-virtual {p0}, removeSleepTimeouts()V

    .line 6312
    iget-object v5, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 6313
    iget-object v5, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6316
    :cond_10
    const/4 v0, -0x1

    .line 6324
    .local v0, "MultipleScreenState":I
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "displayNdx":I
    :goto_19
    if-ltz v1, :cond_5c

    .line 6335
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6336
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_2b
    if-ltz v3, :cond_59

    .line 6337
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 6338
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    .line 6339
    invoke-virtual {p0, v2}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 6341
    if-nez p1, :cond_44

    .line 6347
    invoke-virtual {p0}, resumeTopActivitiesLocked()Z

    .line 6336
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, -0x1

    goto :goto_2b

    .line 6350
    :cond_44
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, p0, mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6351
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, p0, mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_41

    .line 6324
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_59
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 6357
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5c
    iget-object v5, p0, mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 6358
    return-void
.end method

.method computeStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z

    .prologue
    .line 3234
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3238
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "updateFocus"    # Z

    .prologue
    .line 3244
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3247
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isVRActivity()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3248
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/am/VRApplicationPolicy;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3254
    :goto_10
    return-object v1

    :cond_11
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v1, p1, v0, p3, p4}, Lcom/android/server/am/MultiWindowPolicy;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    goto :goto_10
.end method

.method createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;
    .registers 4
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 5370
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;
    .registers 9
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "zone"    # I

    .prologue
    .line 5374
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 5375
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v1, :cond_c

    .line 5376
    const/4 v3, 0x0

    .line 5415
    :goto_b
    return-object v3

    .line 5398
    :cond_c
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-nez p1, :cond_36

    const/4 v3, 0x1

    :goto_11
    invoke-direct {v0, p0, p1, v3, p3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;III)V

    .line 5402
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v3, p0, mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5403
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    .line 5406
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v3, :cond_38

    .line 5407
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5408
    .local v2, "outRect":Landroid/graphics/Rect;
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v3, v2, p3, p2}, Lcom/android/server/am/MultiWindowPolicy;->getBounds(Landroid/graphics/Rect;II)V

    .line 5409
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;)V

    .line 5415
    .end local v2    # "outRect":Landroid/graphics/Rect;
    :goto_33
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    goto :goto_b

    .line 5398
    .end local v0    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_36
    const/4 v3, 0x2

    goto :goto_11

    .line 5411
    .restart local v0    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_38
    const-string v3, "ActivityManager"

    const-string/jumbo v4, "createStackOnDisplay: System is not ready yet!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method createStackOnDisplay(IILandroid/graphics/Rect;)Lcom/android/server/am/ActivityStack;
    .registers 9
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 5356
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 5357
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v1, :cond_c

    .line 5358
    const/4 v3, 0x0

    .line 5365
    :goto_b
    return-object v3

    .line 5360
    :cond_c
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;III)V

    .line 5361
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v3, p0, mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5362
    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Landroid/graphics/Rect;)V

    .line 5363
    iget-object v3, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 5364
    .local v2, "stackBounds":Landroid/graphics/Rect;
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;)V

    .line 5365
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    goto :goto_b
.end method

.method createVirtualActivityContainer(Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .registers 6
    .param p1, "parentActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "callback"    # Landroid/app/IActivityContainerCallback;

    .prologue
    .line 5235
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)V

    .line 5237
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v1, p0, mActivityContainers:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5240
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5241
    return-object v0
.end method

.method createVirtualScreen(II)I
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1679
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1680
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 1681
    .local v7, "wm":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1682
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    iget v4, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;IIIZ)V

    .line 1683
    .local v0, "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    iget v1, v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_30

    .line 1684
    iget-object v1, p0, mActivityDisplays:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1687
    :cond_30
    iget v1, v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    return v1
.end method

.method deleteActivityContainer(Landroid/app/IActivityContainer;)V
    .registers 5
    .param p1, "container"    # Landroid/app/IActivityContainer;

    .prologue
    .line 5255
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 5256
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_11

    .line 5259
    iget v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    .line 5260
    .local v1, "stackId":I
    iget-object v2, p0, mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 5261
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->removeStack(I)V

    .line 5263
    .end local v1    # "stackId":I
    :cond_11
    return-void
.end method

.method final doPendingActivityLaunchesLocked(Z)V
    .registers 14
    .param p1, "doResume"    # Z

    .prologue
    const/4 v11, 0x0

    .line 4655
    :goto_1
    iget-object v0, p0, mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 4656
    iget-object v0, p0, mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 4659
    .local v10, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :try_start_11
    iget-object v1, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    if-eqz p1, :cond_45

    iget-object v0, p0, mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 v6, 0x1

    :goto_24
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2a} :catch_2b

    goto :goto_1

    .line 4661
    :catch_2b
    move-exception v9

    .line 4662
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during pending activity launch pal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v9    # "e":Ljava/lang/Exception;
    :cond_45
    move v6, v11

    .line 4659
    goto :goto_24

    .line 4665
    .end local v10    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_47
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 6952
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mFocusedStack="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6953
    const-string v6, " mLastFocusedStack="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6965
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mSleepTimeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mSleepTimeout:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6966
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCurTaskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mCurTaskId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6967
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mUserStackInFront="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6968
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mActivityContainers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6969
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mLockTaskModeState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, lockTaskModeToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6970
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v6, Lcom/android/server/am/ActivityManagerService;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 6971
    .local v3, "packages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_ec

    .line 6972
    const-string v6, " mLockTaskPackages (userId:packages)="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6973
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c4
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_ec

    .line 6974
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 6975
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6973
    add-int/lit8 v1, v1, 0x1

    goto :goto_c4

    .line 6978
    .end local v1    # "i":I
    :cond_ec
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mLockTaskModeTasks"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6979
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCurrentUser="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mCurrentUser:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6982
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v6, "GlobalTaskHistory"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6983
    iget-object v6, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .restart local v1    # "i":I
    :goto_130
    if-ltz v1, :cond_21a

    .line 6984
    iget-object v6, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 6985
    .local v0, "d":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ActivityDisplay #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6986
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v7, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v7, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6988
    iget v6, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v6}, getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 6989
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "j":I
    :goto_190
    if-ltz v2, :cond_216

    .line 6990
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 6991
    .local v5, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TASK id #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6992
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6993
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t(Stack #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v7, v7, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v6

    if-eqz v6, :cond_213

    const-string/jumbo v6, "f)"

    :goto_1ec
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6994
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6989
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_190

    .line 6993
    :cond_213
    const-string v6, ")"

    goto :goto_1ec

    .line 6983
    .end local v5    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_216
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_130

    .line 6998
    .end local v0    # "d":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v2    # "j":I
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_21a
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->dumpMultiWindowSetting(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7023
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .registers 37
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    .prologue
    .line 7046
    const/16 v26, 0x0

    .line 7047
    .local v26, "printed":Z
    const/4 v9, 0x0

    .line 7048
    .local v9, "needSep":Z
    const/16 v23, 0x0

    .local v23, "displayNdx":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_115

    .line 7049
    move-object/from16 v0, p0

    iget-object v4, v0, mActivityDisplays:Landroid/util/SparseArray;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 7050
    .local v22, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    const-string v4, "Display #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 7051
    const-string v4, " (activities from top to bottom):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7052
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    .line 7053
    .local v30, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v29, v4, -0x1

    .local v29, "stackNdx":I
    :goto_40
    if-ltz v29, :cond_111

    .line 7054
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 7055
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v28, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7056
    .local v28, "stackHeader":Ljava/lang/StringBuilder;
    const-string v4, "  Stack #"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7057
    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7058
    const-string v4, ":"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7065
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 7067
    iget-object v12, v3, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v13, "    "

    const-string v14, "Run"

    const/4 v15, 0x0

    if-nez p3, :cond_d6

    const/16 v16, 0x1

    :goto_89
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "    Running activities (most recent first):"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 7071
    move/from16 v9, v26

    .line 7072
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mPausingActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v25

    .line 7074
    .local v25, "pr":Z
    if-eqz v25, :cond_b0

    .line 7075
    const/16 v26, 0x1

    .line 7076
    const/4 v9, 0x0

    .line 7081
    :cond_b0
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_b6
    :goto_b6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d9

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/am/ActivityRecord;

    .line 7082
    .local v27, "r":Lcom/android/server/am/ActivityRecord;
    move/from16 v9, v26

    .line 7083
    const-string v4, "    mPausingActivities: "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2, v9, v4}, printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v25

    .line 7084
    if-eqz v25, :cond_b6

    .line 7085
    const/16 v26, 0x1

    .line 7086
    const/4 v9, 0x0

    goto :goto_b6

    .line 7067
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "pr":Z
    .end local v27    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_d6
    const/16 v16, 0x0

    goto :goto_89

    .line 7092
    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v25    # "pr":Z
    :cond_d9
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mResumedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v25

    .line 7094
    if-eqz v25, :cond_ea

    .line 7095
    const/16 v26, 0x1

    .line 7096
    const/4 v9, 0x0

    .line 7098
    :cond_ea
    if-eqz p3, :cond_10b

    .line 7099
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mLastPausedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v25

    .line 7101
    if-eqz v25, :cond_fd

    .line 7102
    const/16 v26, 0x1

    .line 7103
    const/4 v9, 0x1

    .line 7105
    :cond_fd
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mLastNoHistoryActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 7108
    :cond_10b
    move/from16 v9, v26

    .line 7053
    add-int/lit8 v29, v29, -0x1

    goto/16 :goto_40

    .line 7048
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "pr":Z
    .end local v28    # "stackHeader":Ljava/lang/StringBuilder;
    :cond_111
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_5

    .line 7112
    .end local v22    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v29    # "stackNdx":I
    .end local v30    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_115
    move-object/from16 v0, p0

    iget-object v12, v0, mFinishingActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Fin"

    const/4 v15, 0x0

    if-nez p3, :cond_1bb

    const/16 v16, 0x1

    :goto_122
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting to finish:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 7114
    move-object/from16 v0, p0

    iget-object v12, v0, mStoppingActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Stop"

    const/4 v15, 0x0

    if-nez p3, :cond_1bf

    const/16 v16, 0x1

    :goto_143
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting to stop:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 7116
    move-object/from16 v0, p0

    iget-object v12, v0, mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Wait"

    const/4 v15, 0x0

    if-nez p3, :cond_1c2

    const/16 v16, 0x1

    :goto_164
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting for another to become visible:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 7119
    move-object/from16 v0, p0

    iget-object v12, v0, mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Sleep"

    const/4 v15, 0x0

    if-nez p3, :cond_1c5

    const/16 v16, 0x1

    :goto_185
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting to sleep:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 7121
    move-object/from16 v0, p0

    iget-object v12, v0, mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Sleep"

    const/4 v15, 0x0

    if-nez p3, :cond_1c8

    const/16 v16, 0x1

    :goto_1a6
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting to sleep:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 7124
    return v26

    .line 7112
    :cond_1bb
    const/16 v16, 0x0

    goto/16 :goto_122

    .line 7114
    :cond_1bf
    const/16 v16, 0x0

    goto :goto_143

    .line 7116
    :cond_1c2
    const/16 v16, 0x0

    goto :goto_164

    .line 7119
    :cond_1c5
    const/16 v16, 0x0

    goto :goto_185

    .line 7121
    :cond_1c8
    const/16 v16, 0x0

    goto :goto_1a6
.end method

.method endFixedScreenModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 9632
    iget-object v0, p0, mFixedTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_13

    iget-object v0, p0, mFixedTask:Lcom/android/server/am/TaskRecord;

    if-ne v0, p1, :cond_13

    .line 9633
    const-string v0, "ActivityManager"

    const-string v1, "Fixed task dismissed due to endFixedScreenModeIfTaskEnding"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 9634
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setFixedTask(Lcom/android/server/am/TaskRecord;)V

    .line 9636
    :cond_13
    return-void
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .registers 31
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 6613
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityDisplays:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    move-result v26

    add-int/lit8 v9, v26, -0x1

    .local v9, "displayNdx":I
    :goto_c
    if-ltz v9, :cond_185

    .line 6614
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityDisplays:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-object/from16 v0, v26

    iget v8, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    .line 6615
    .local v8, "displayId":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v22

    .line 6617
    .local v22, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, updateLastShownWhenLocked(I)V

    .line 6619
    const/16 v17, 0x0

    .line 6620
    .local v17, "obscuredZone":I
    const/16 v16, 0x0

    .line 6621
    .local v16, "multiWindowZone":I
    const/4 v7, 0x0

    .line 6622
    .local v7, "bFromSplit":Z
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 6623
    .local v5, "N":I
    const/4 v10, 0x0

    .line 6624
    .local v10, "homeTask":Lcom/android/server/am/TaskRecord;
    const/16 v18, 0x0

    .line 6627
    .local v18, "overHomeTask":Lcom/android/server/am/TaskRecord;
    const/4 v13, 0x0

    .line 6629
    .local v13, "invisibleVirtualScreen":Z
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/android/server/am/VirtualScreenManagerService;->isVirtualScreen(I)Z

    move-result v26

    if-eqz v26, :cond_95

    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/android/server/am/VirtualScreenManagerService;->isVisibleVirtualScreen(I)Z

    move-result v26

    if-nez v26, :cond_95

    const/4 v13, 0x1

    .line 6633
    :goto_51
    add-int/lit8 v11, v5, -0x1

    .local v11, "i":I
    :goto_53
    if-ltz v11, :cond_134

    .line 6634
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/TaskRecord;

    .line 6635
    .local v24, "tr":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v19, v0

    .line 6636
    .local v19, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v19, :cond_97

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v26

    if-eqz v26, :cond_97

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v26

    if-eqz v26, :cond_97

    const/4 v15, 0x1

    .line 6637
    .local v15, "isMovingTaskFromCascadeToSplitStack":Z
    :goto_76
    if-eqz v19, :cond_92

    if-nez v15, :cond_92

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v26

    if-eqz v26, :cond_99

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->bHidden:Z

    move/from16 v26, v0

    if-nez v26, :cond_99

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v26

    if-eqz v26, :cond_99

    .line 6633
    :cond_92
    :goto_92
    add-int/lit8 v11, v11, -0x1

    goto :goto_53

    .line 6629
    .end local v11    # "i":I
    .end local v15    # "isMovingTaskFromCascadeToSplitStack":Z
    .end local v19    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_95
    const/4 v13, 0x0

    goto :goto_51

    .line 6636
    .restart local v11    # "i":I
    .restart local v19    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v24    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_97
    const/4 v15, 0x0

    goto :goto_76

    .line 6643
    .restart local v15    # "isMovingTaskFromCascadeToSplitStack":Z
    :cond_99
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/TaskRecord;

    .line 6644
    .local v20, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    .line 6648
    .local v23, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/TaskRecord;->isFullscreenVisible()Z

    move-result v14

    .line 6649
    .local v14, "isFullscreen":Z
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->getVisibleObscuredZone(Z)I

    move-result v21

    .line 6650
    .local v21, "taskObscuredZone":I
    const/16 v25, 0x0

    .line 6652
    .local v25, "visible":Z
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v26

    if-eqz v26, :cond_e0

    .line 6653
    move-object/from16 v10, v24

    .line 6659
    :cond_bd
    :goto_bd
    if-eqz v13, :cond_eb

    .line 6660
    const/16 v25, 0x0

    .line 6679
    :cond_c1
    :goto_c1
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v20

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Z)V

    .line 6681
    if-eqz v14, :cond_d2

    .line 6682
    or-int v17, v17, v21

    .line 6684
    :cond_d2
    const/16 v26, 0xf

    move/from16 v0, v21

    move/from16 v1, v26

    if-eq v0, v1, :cond_dd

    if-eqz v21, :cond_dd

    .line 6686
    const/4 v7, 0x1

    .line 6688
    :cond_dd
    or-int v16, v16, v21

    goto :goto_92

    .line 6654
    :cond_e0
    if-nez v18, :cond_bd

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v26

    if-eqz v26, :cond_bd

    .line 6655
    move-object/from16 v18, v24

    goto :goto_bd

    .line 6663
    :cond_eb
    if-nez v10, :cond_102

    if-eqz v18, :cond_102

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_102

    and-int v26, v17, v21

    move/from16 v0, v26

    move/from16 v1, v21

    if-ne v0, v1, :cond_102

    .line 6665
    const/16 v25, 0x0

    .line 6666
    const/16 v21, 0x0

    goto :goto_c1

    .line 6667
    :cond_102
    if-eqz v7, :cond_119

    const/16 v26, 0xf

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_119

    const/16 v26, 0xf

    move/from16 v0, v21

    move/from16 v1, v26

    if-eq v0, v1, :cond_116

    if-nez v21, :cond_119

    .line 6670
    :cond_116
    const/16 v25, 0x0

    goto :goto_c1

    .line 6671
    :cond_119
    const/16 v26, 0xf

    move/from16 v0, v17

    move/from16 v1, v26

    if-eq v0, v1, :cond_c1

    .line 6672
    if-nez v21, :cond_126

    .line 6673
    const/16 v25, 0x1

    goto :goto_c1

    .line 6675
    :cond_126
    and-int v26, v17, v21

    move/from16 v0, v26

    move/from16 v1, v21

    if-eq v0, v1, :cond_131

    const/16 v25, 0x1

    :goto_130
    goto :goto_c1

    :cond_131
    const/16 v25, 0x0

    goto :goto_130

    .line 6691
    .end local v14    # "isFullscreen":Z
    .end local v15    # "isMovingTaskFromCascadeToSplitStack":Z
    .end local v19    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    .end local v21    # "taskObscuredZone":I
    .end local v23    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v24    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v25    # "visible":Z
    :cond_134
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityDisplays:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_14c
    :goto_14c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_181

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/ActivityStack;

    .line 6692
    .restart local v19    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v26

    if-eqz v26, :cond_14c

    .line 6693
    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 6694
    .local v6, "ar":Lcom/android/server/am/ActivityRecord;
    if-nez v6, :cond_17c

    const/16 v20, 0x0

    .line 6695
    .restart local v20    # "task":Lcom/android/server/am/TaskRecord;
    :goto_170
    if-eqz v20, :cond_14c

    .line 6696
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    goto :goto_14c

    .line 6694
    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    :cond_17c
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v20, v0

    goto :goto_170

    .line 6613
    .end local v6    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_181
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_c

    .line 6713
    .end local v5    # "N":I
    .end local v7    # "bFromSplit":Z
    .end local v8    # "displayId":I
    .end local v10    # "homeTask":Lcom/android/server/am/TaskRecord;
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "invisibleVirtualScreen":Z
    .end local v16    # "multiWindowZone":I
    .end local v17    # "obscuredZone":I
    .end local v18    # "overHomeTask":Lcom/android/server/am/TaskRecord;
    .end local v22    # "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_185
    return-void
.end method

.method ensureActivitiesVisibleLockedForUniversialTaskHistory(Lcom/android/server/am/ActivityRecord;I)V
    .registers 27
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 9681
    move-object/from16 v0, p0

    iget-object v0, v0, mUniversalTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 9682
    .local v20, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/16 v16, 0x0

    .line 9683
    .local v16, "obscuredScreenZone":I
    move-object/from16 v0, p0

    iget-object v3, v0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    new-array v0, v3, [I

    move-object/from16 v17, v0

    .line 9684
    .local v17, "obscuredZones":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_15
    move-object/from16 v0, v17

    array-length v3, v0

    if-ge v13, v3, :cond_20

    .line 9685
    const/4 v3, 0x0

    aput v3, v17, v13

    .line 9684
    add-int/lit8 v13, v13, 0x1

    goto :goto_15

    .line 9688
    :cond_20
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 9690
    .local v8, "N":I
    add-int/lit8 v13, v8, -0x1

    :goto_26
    if-ltz v13, :cond_c7

    .line 9691
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 9692
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 9693
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v11

    .line 9695
    .local v11, "displayId":I
    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-boolean v3, v5, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v3, :cond_4f

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 9690
    :cond_4c
    :goto_4c
    add-int/lit8 v13, v13, -0x1

    goto :goto_26

    .line 9705
    :cond_4f
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getScreenZone()I

    move-result v21

    .line 9706
    .local v21, "taskScreenZone":I
    move/from16 v7, v16

    .line 9707
    .local v7, "lastObscuredScreenZone":I
    const/4 v6, 0x0

    .line 9709
    .local v6, "visible":Z
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/server/am/TaskRecord;->getDisplayObscuredZones(Z)Landroid/util/SparseArray;

    move-result-object v18

    .line 9712
    .local v18, "taskDisplayObscuredZones":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    and-int v3, v21, v16

    move/from16 v0, v21

    if-ne v3, v0, :cond_6a

    .line 9713
    const/4 v6, 0x0

    :cond_62
    move-object/from16 v3, p1

    move/from16 v4, p2

    .line 9742
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;ZI)V

    goto :goto_4c

    .line 9715
    :cond_6a
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 9716
    .local v9, "NZ":I
    const/16 v23, 0x0

    .local v23, "zoneNdx":I
    :goto_70
    move/from16 v0, v23

    if-ge v0, v9, :cond_62

    .line 9717
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v22

    .line 9719
    .local v22, "zoneDisplayId":I
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 9720
    .local v19, "taskObscuredZone":I
    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->isFullscreenVisible(I)Z

    move-result v15

    .line 9722
    .local v15, "isFullscreen":Z
    if-nez v19, :cond_b9

    .line 9723
    if-nez v6, :cond_a0

    .line 9724
    aget v3, v17, v22

    const/16 v4, 0xf

    if-eq v3, v4, :cond_b7

    const/4 v6, 0x1

    .line 9732
    :cond_a0
    :goto_a0
    if-eqz v15, :cond_a8

    .line 9733
    aget v3, v17, v22

    or-int v3, v3, v19

    aput v3, v17, v22

    .line 9736
    :cond_a8
    aget v3, v17, v22

    const/16 v4, 0xf

    if-ne v3, v4, :cond_b4

    .line 9737
    invoke-static/range {v22 .. v22}, convertDisplayIdToScreenZone(I)I

    move-result v3

    or-int v16, v16, v3

    .line 9716
    :cond_b4
    add-int/lit8 v23, v23, 0x1

    goto :goto_70

    .line 9724
    :cond_b7
    const/4 v6, 0x0

    goto :goto_a0

    .line 9727
    :cond_b9
    if-nez v6, :cond_a0

    .line 9728
    aget v3, v17, v22

    and-int v3, v3, v19

    move/from16 v0, v19

    if-eq v3, v0, :cond_c5

    const/4 v6, 0x1

    :goto_c4
    goto :goto_a0

    :cond_c5
    const/4 v6, 0x0

    goto :goto_c4

    .line 9746
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v6    # "visible":Z
    .end local v7    # "lastObscuredScreenZone":I
    .end local v9    # "NZ":I
    .end local v11    # "displayId":I
    .end local v15    # "isFullscreen":Z
    .end local v18    # "taskDisplayObscuredZones":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    .end local v19    # "taskObscuredZone":I
    .end local v21    # "taskScreenZone":I
    .end local v22    # "zoneDisplayId":I
    .end local v23    # "zoneNdx":I
    :cond_c7
    move-object/from16 v0, p0

    iget-object v3, v0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v12, v3, -0x1

    .local v12, "displayNdx":I
    :goto_d1
    if-ltz v12, :cond_116

    .line 9747
    move-object/from16 v0, p0

    iget-object v3, v0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_e3
    :goto_e3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_113

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 9748
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_e3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 9749
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 9750
    .local v10, "ar":Lcom/android/server/am/ActivityRecord;
    if-nez v10, :cond_110

    const/4 v5, 0x0

    .line 9751
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    :goto_106
    if-eqz v5, :cond_e3

    .line 9752
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    goto :goto_e3

    .line 9750
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_110
    iget-object v5, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    goto :goto_106

    .line 9746
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_113
    add-int/lit8 v12, v12, -0x1

    goto :goto_d1

    .line 9757
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_116
    return-void
.end method

.method exchangeTaskToStack(IIZ)V
    .registers 25
    .param p1, "task1Id"    # I
    .param p2, "task2Id"    # I
    .param p3, "toTop"    # Z

    .prologue
    .line 5781
    invoke-virtual/range {p0 .. p1}, anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v13

    .line 5782
    .local v13, "task1":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v14

    .line 5783
    .local v14, "task2":Lcom/android/server/am/TaskRecord;
    if-eqz v13, :cond_10

    if-nez v14, :cond_11

    .line 5879
    :cond_10
    return-void

    .line 5787
    :cond_11
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 5788
    .local v5, "ar1":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 5789
    .local v6, "ar2":Lcom/android/server/am/ActivityRecord;
    iget-object v11, v13, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 5790
    .local v11, "stack1":Lcom/android/server/am/ActivityStack;
    iget-object v12, v14, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 5791
    .local v12, "stack2":Lcom/android/server/am/ActivityStack;
    if-eqz v5, :cond_10

    if-eqz v6, :cond_10

    if-eqz v11, :cond_10

    if-eqz v12, :cond_10

    .line 5795
    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v16

    .line 5796
    .local v16, "zone1":I
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v17

    .line 5799
    .local v17, "zone2":I
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_45

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_55

    :cond_45
    const/16 v18, 0xc

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_81

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_81

    .line 5801
    :cond_55
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5802
    .local v15, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5803
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5804
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareMultiWindowTransition(Ljava/util/ArrayList;II)V

    .line 5817
    .end local v15    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_81
    const-string/jumbo v18, "exchangeTaskToStack from2"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v12, v14, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZZ)V

    .line 5818
    const-string/jumbo v18, "exchangeTaskToStack from1"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v11, v13, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZZ)V

    .line 5821
    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v12, v13, v0, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 5822
    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v11, v14, v0, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 5824
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, p2

    move/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZZ)V

    .line 5825
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZZ)V

    .line 5828
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_118

    .line 5829
    invoke-virtual/range {p0 .. p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 5830
    .local v7, "currentFocusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v7, :cond_118

    if-eq v7, v11, :cond_118

    if-eq v7, v12, :cond_118

    .line 5831
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 5832
    .local v8, "currentTask":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_118

    .line 5833
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowFocusChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 5839
    .end local v7    # "currentFocusedStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "currentTask":Lcom/android/server/am/TaskRecord;
    :cond_118
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 5840
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 5841
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v13, v0}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5842
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v14, v0}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5843
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v11, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 5844
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 5847
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_19d

    .line 5848
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowFocusChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 5851
    :cond_19d
    if-eqz p3, :cond_20b

    .line 5852
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5853
    iput-object v6, v11, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5854
    iput-object v5, v12, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5855
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 5861
    :goto_1c8
    invoke-virtual {v11, v13, v12}, Lcom/android/server/am/ActivityStack;->updatePausingActivitiesAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    .line 5862
    invoke-virtual {v12, v14, v11}, Lcom/android/server/am/ActivityStack;->updatePausingActivitiesAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    .line 5865
    iget-object v0, v11, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v9, v18, -0x1

    .local v9, "index":I
    :goto_1d8
    if-ltz v9, :cond_20f

    .line 5866
    iget-object v0, v11, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .line 5867
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_208

    .line 5868
    iget-object v0, v11, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5869
    iget-object v0, v12, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5865
    :cond_208
    add-int/lit8 v9, v9, -0x1

    goto :goto_1d8

    .line 5857
    .end local v9    # "index":I
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_20b
    invoke-virtual/range {p0 .. p0}, resumeTopActivitiesLocked()Z

    goto :goto_1c8

    .line 5872
    .restart local v9    # "index":I
    :cond_20f
    iget-object v0, v12, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v9, v18, -0x1

    :goto_219
    if-ltz v9, :cond_10

    .line 5873
    iget-object v0, v12, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .line 5874
    .restart local v10    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_249

    .line 5875
    iget-object v0, v12, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5876
    iget-object v0, v11, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5872
    :cond_249
    add-int/lit8 v9, v9, -0x1

    goto :goto_219
.end method

.method executeAllTransition()V
    .registers 5

    .prologue
    .line 10034
    const/4 v0, 0x0

    .line 10035
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_10

    .line 10036
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition(IZ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 10035
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10038
    :cond_10
    if-eqz v0, :cond_17

    .line 10039
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performLayoutForAppTransition()V

    .line 10041
    :cond_17
    return-void
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 6104
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "displayNdx":I
    :goto_8
    if-ltz v1, :cond_2f

    .line 6105
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6106
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1a
    if-ltz v2, :cond_2c

    .line 6107
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 6108
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_29

    .line 6113
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_28
    return-object v0

    .line 6106
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "stackNdx":I
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 6104
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 6113
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2f
    const/4 v0, 0x0

    goto :goto_28
.end method

.method findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6118
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "displayNdx":I
    :goto_8
    if-ltz v1, :cond_2f

    .line 6119
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6120
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1a
    if-ltz v2, :cond_2c

    .line 6121
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ActivityStack;->findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 6122
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_29

    .line 6127
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_28
    return-object v0

    .line 6120
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "stackNdx":I
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 6118
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 6127
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2f
    const/4 v0, 0x0

    goto :goto_28
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 14
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x2

    .line 5931
    const/4 v4, 0x0

    .line 5981
    .local v4, "multiInstanceAr":Lcom/android/server/am/ActivityRecord;
    iget-object v8, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "displayNdx":I
    :goto_b
    if-ltz v2, :cond_117

    .line 5982
    iget-object v8, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 5983
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "stackNdx":I
    :goto_1d
    if-ltz v6, :cond_113

    .line 5984
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 5985
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v8

    if-nez v8, :cond_34

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-nez v8, :cond_34

    .line 5983
    :cond_31
    :goto_31
    add-int/lit8 v6, v6, -0x1

    goto :goto_1d

    .line 5996
    :cond_34
    iget-object v8, v5, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    move-result v8

    if-eqz v8, :cond_31

    .line 6001
    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 6002
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_31

    .line 6012
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_4b

    .line 6014
    invoke-virtual {p0}, acquireAppLaunchPerfLock()V

    .line 6025
    :cond_4b
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 6027
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v8, :cond_66

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getSpecificTaskId()I

    move-result v8

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v8, v9, :cond_66

    .line 6100
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "stackNdx":I
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_65
    :goto_65
    return-object v0

    .line 6030
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "stackNdx":I
    .restart local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_66
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x8000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_85

    .line 6031
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v8, :cond_83

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    if-eqz v8, :cond_83

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v8, v9, :cond_65

    .line 6036
    :cond_83
    move-object v4, v0

    goto :goto_31

    .line 6039
    :cond_85
    if-nez v4, :cond_89

    .line 6040
    move-object v4, v0

    goto :goto_31

    .line 6042
    :cond_89
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 6043
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_a5

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    if-ne v8, v10, :cond_31

    .line 6048
    :cond_a5
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_b6

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    if-eq v8, v10, :cond_b6

    .line 6050
    move-object v4, v0

    .line 6051
    goto/16 :goto_31

    .line 6054
    :cond_b6
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v8, v9, :cond_cd

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_cd

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    if-ne v8, v10, :cond_cd

    .line 6057
    move-object v4, v0

    .line 6058
    goto/16 :goto_31

    .line 6061
    :cond_cd
    iget-object v8, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v9}, Lcom/android/server/am/RecentTasks;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 6062
    .local v3, "miIndex":I
    iget-object v8, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v9}, Lcom/android/server/am/RecentTasks;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 6063
    .local v1, "arIndex":I
    if-eq v3, v11, :cond_f6

    if-eq v1, v11, :cond_f6

    if-ge v1, v3, :cond_f6

    .line 6064
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_f3

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_31

    .line 6066
    :cond_f3
    move-object v4, v0

    goto/16 :goto_31

    .line 6068
    :cond_f6
    iget-object v8, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_31

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v8}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_31

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_31

    .line 6070
    move-object v4, v0

    goto/16 :goto_31

    .line 5981
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "arIndex":I
    .end local v3    # "miIndex":I
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_113
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_b

    .line 6083
    .end local v6    # "stackNdx":I
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_117
    if-eqz v4, :cond_11c

    move-object v0, v4

    .line 6084
    goto/16 :goto_65

    .line 6089
    :cond_11c
    invoke-virtual {p0}, acquireAppLaunchPerfLock()V

    .line 6100
    const/4 v0, 0x0

    goto/16 :goto_65
.end method

.method findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 5065
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_48

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 5067
    .local v7, "top_activity":Lcom/android/server/am/ActivityRecord;
    :goto_c
    if-eqz v7, :cond_17

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_17

    .line 5068
    invoke-virtual {p0}, acquireAppLaunchPerfLock()V

    .line 5071
    :cond_17
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1d

    .line 5072
    iput-boolean v2, p0, mUserLeaving:Z

    .line 5074
    :cond_1d
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_24

    .line 5082
    invoke-virtual {p1, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 5085
    :cond_24
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_4a

    .line 5086
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "findTaskToMoveToFrontLocked: can\'t move task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to front. Stack is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5105
    :goto_47
    return-void

    .end local v7    # "top_activity":Lcom/android/server/am/ActivityRecord;
    :cond_48
    move-object v7, v4

    .line 5065
    goto :goto_c

    .line 5092
    .restart local v7    # "top_activity":Lcom/android/server/am/ActivityRecord;
    :cond_4a
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_5b

    :goto_53
    move-object v1, p1

    move-object v3, p3

    move v5, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;ILjava/lang/String;)V

    goto :goto_47

    :cond_5b
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_53
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .registers 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    .prologue
    .line 4897
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 4898
    .local v6, "didSomething":Z
    iget-object v1, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    .local v7, "displayNdx":I
    :goto_9
    if-ltz v7, :cond_41

    .line 4899
    iget-object v1, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v10, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4900
    .local v10, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 4901
    .local v8, "numStacks":I
    const/4 v9, 0x0

    .local v9, "stackNdx":I
    :goto_1a
    if-ge v9, v8, :cond_3e

    .line 4902
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    .line 4903
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 4905
    const/4 v6, 0x1

    .line 4906
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v8, :cond_3b

    .line 4908
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 4909
    add-int/lit8 v9, v9, -0x1

    .line 4901
    :cond_3b
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    .line 4898
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3e
    add-int/lit8 v7, v7, -0x1

    goto :goto_9

    .line 4914
    .end local v8    # "numStacks":I
    .end local v9    # "stackNdx":I
    .end local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_41
    return v6
.end method

.method finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 5041
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_2a

    .line 5042
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 5043
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5044
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_19
    if-ge v3, v1, :cond_27

    .line 5045
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 5046
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 5044
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 5041
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5049
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2a
    return-void
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 8
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .prologue
    .line 5052
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_2a

    .line 5053
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 5054
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5055
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_19
    if-ge v3, v1, :cond_27

    .line 5056
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 5057
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 5055
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 5052
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5060
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2a
    return-void
.end method

.method forceResumeTopActivitiesLocked(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4959
    iget-object v1, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 4962
    .local v1, "targetStack":Lcom/android/server/am/ActivityStack;
    const/4 v0, 0x0

    .line 4964
    .local v0, "result":Z
    invoke-virtual {p0, v1}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4965
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->forceResumeTopActivityLocked(Ljava/lang/String;)Z

    move-result v0

    .line 4967
    :cond_d
    return v0
.end method

.method getAllStackInfosLocked()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7357
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_6
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_33

    .line 7358
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 7359
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "ndx":I
    :goto_1e
    if-ltz v2, :cond_30

    .line 7360
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-direct {p0, v4}, getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7359
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 7357
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 7363
    .end local v2    # "ndx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_33
    return-object v1
.end method

.method public getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .registers 2

    .prologue
    .line 9314
    iget-object v0, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7026
    iget-object v0, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getFixedTask()Lcom/android/server/am/TaskRecord;
    .registers 2

    .prologue
    .line 9639
    iget-object v0, p0, mFixedTask:Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method getFocusedStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .prologue
    .line 703
    iget-object v0, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getFocusedStack(I)Lcom/android/server/am/ActivityStack;
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 711
    iget-object v0, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method public getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9515
    iget-object v1, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 9516
    .local v0, "d":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v0, :cond_d

    .line 9517
    sget-object v1, sEmptyGlobalTaskHistory:Ljava/util/ArrayList;

    .line 9539
    :goto_c
    return-object v1

    :cond_d
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    goto :goto_c
.end method

.method getHomeActivity()Lcom/android/server/am/ActivityRecord;
    .registers 3

    .prologue
    .line 5181
    iget v0, p0, mCurrentUser:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, getHomeActivityForUser(II)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivity(I)Lcom/android/server/am/ActivityRecord;
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 5185
    iget v0, p0, mCurrentUser:I

    invoke-virtual {p0, v0, p1}, getHomeActivityForUser(II)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(II)Lcom/android/server/am/ActivityRecord;
    .registers 11
    .param p1, "userId"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 5189
    iget-object v2, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 5196
    .local v2, "mHomeStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 5197
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "taskNdx":I
    :goto_c
    if-ltz v5, :cond_46

    .line 5198
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 5199
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v7

    if-eqz v7, :cond_43

    .line 5200
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5201
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "activityNdx":I
    :goto_22
    if-ltz v1, :cond_43

    .line 5202
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5203
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v7

    if-eqz v7, :cond_40

    const/4 v7, -0x1

    if-eq p1, v7, :cond_3f

    iget v7, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v7, p1, :cond_3f

    iget v7, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {p0, p1, v7}, isProfiledUserLocked(II)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 5210
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3f
    :goto_3f
    return-object v3

    .line 5201
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_40
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 5197
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_43
    add-int/lit8 v5, v5, -0x1

    goto :goto_c

    .line 5210
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_46
    const/4 v3, 0x0

    goto :goto_3f
.end method

.method getHomeActivityToken()Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 5172
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, getHomeActivity(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5173
    .local v0, "homeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_a

    .line 5174
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 5176
    :goto_9
    return-object v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method getHomeStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .prologue
    .line 9543
    iget-object v0, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getHomeStack(I)Lcom/android/server/am/ActivityStack;
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 9563
    iget-object v0, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getHomeTask()Lcom/android/server/am/TaskRecord;
    .registers 5

    .prologue
    .line 5221
    iget-object v3, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 5223
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "taskNdx":I
    :goto_c
    if-ltz v1, :cond_1e

    .line 5224
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 5225
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 5229
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :goto_1a
    return-object v0

    .line 5223
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 5229
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method getLastStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .prologue
    .line 716
    iget-object v0, p0, mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getLastStack(I)Lcom/android/server/am/ActivityStack;
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 724
    iget-object v0, p0, mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getLockTaskModeState()I
    .registers 2

    .prologue
    .line 7555
    iget v0, p0, mLockTaskModeState:I

    return v0
.end method

.method getLockedTaskLocked()Lcom/android/server/am/TaskRecord;
    .registers 3

    .prologue
    .line 7367
    iget-object v1, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 7368
    .local v0, "top":I
    if-ltz v0, :cond_13

    .line 7369
    iget-object v1, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 7371
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method getNextStackId()I
    .registers 2

    .prologue
    .line 5431
    :cond_0
    iget v0, p0, mLastStackId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mLastStackId:I

    if-gtz v0, :cond_b

    .line 5432
    const/4 v0, 0x1

    iput v0, p0, mLastStackId:I

    .line 5435
    :cond_b
    iget v0, p0, mLastStackId:I

    invoke-virtual {p0, v0}, getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5439
    iget v0, p0, mLastStackId:I

    return v0
.end method

.method getNextTaskId()I
    .registers 3

    .prologue
    .line 1255
    :cond_0
    iget v0, p0, mCurTaskId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mCurTaskId:I

    .line 1256
    iget v0, p0, mCurTaskId:I

    if-gtz v0, :cond_d

    .line 1257
    const/4 v0, 0x1

    iput v0, p0, mCurTaskId:I

    .line 1259
    :cond_d
    iget v0, p0, mCurTaskId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, anyTaskForIdLocked(IZ)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1260
    iget v0, p0, mCurTaskId:I

    return v0
.end method

.method getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .prologue
    .line 8863
    iget-object v0, p0, mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_7

    .line 8864
    iget-object v0, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 8866
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_6
.end method

.method getNonFloatingFocusedStack(I)Lcom/android/server/am/ActivityStack;
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 8871
    iget-object v0, p0, mNonFloatingFocusedStacks:[Lcom/android/server/am/ActivityStack;

    aget-object v0, v0, p1

    if-nez v0, :cond_b

    .line 8872
    iget-object v0, p0, mHomeStacks:[Lcom/android/server/am/ActivityStack;

    aget-object v0, v0, p1

    .line 8874
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, mNonFloatingFocusedStacks:[Lcom/android/server/am/ActivityStack;

    aget-object v0, v0, p1

    goto :goto_a
.end method

.method getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;
    .registers 3

    .prologue
    .line 3373
    iget-object v1, p0, mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-nez v1, :cond_13

    .line 3374
    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3375
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    iput-object v1, p0, mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 3377
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_13
    iget-object v1, p0, mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    return-object v1
.end method

.method getScreenZone(Lcom/android/server/am/ActivityStack;)I
    .registers 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 9653
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v0

    invoke-static {v0}, convertDisplayIdToScreenZone(I)I

    move-result v0

    return v0
.end method

.method public getSpecificFloatingStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .prologue
    .line 5923
    iget-object v0, p0, mSpecificFloatingStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getStack(I)Lcom/android/server/am/ActivityStack;
    .registers 4
    .param p1, "stackId"    # I

    .prologue
    .line 5108
    iget-object v1, p0, mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 5109
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_d

    .line 5110
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    .line 5112
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method getStack(II)Lcom/android/server/am/ActivityStack;
    .registers 8
    .param p1, "zone"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 5121
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 5122
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_36

    .line 5123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_36

    .line 5124
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 5125
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 5123
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 5128
    :cond_24
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v3

    if-ne v3, p1, :cond_21

    .line 5132
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isVRStack()Z

    move-result v3

    if-nez v3, :cond_21

    .line 5141
    .end local v1    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_35
    return-object v2

    :cond_36
    const/4 v2, 0x0

    goto :goto_35
.end method

.method getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;
    .registers 4
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "displayId"    # I

    .prologue
    .line 5117
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v0

    invoke-virtual {p0, v0, p2}, getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method public getStackCount(I)I
    .registers 8
    .param p1, "stackType"    # I

    .prologue
    .line 9445
    const/4 v0, 0x0

    .line 9446
    .local v0, "count":I
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 9447
    .local v2, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_8
    if-ge v1, v2, :cond_2e

    .line 9448
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 9449
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1a
    if-ltz v3, :cond_2b

    .line 9450
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    iget v5, v5, Lcom/android/server/am/ActivityStack;->mStackType:I

    if-ne v5, p1, :cond_28

    .line 9451
    add-int/lit8 v0, v0, 0x1

    .line 9449
    :cond_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 9447
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 9455
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2e
    return v0
.end method

.method getStackInfoLocked(I)Landroid/app/ActivityManager$StackInfo;
    .registers 4
    .param p1, "stackId"    # I

    .prologue
    .line 7348
    invoke-virtual {p0, p1}, getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 7349
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_b

    .line 7350
    invoke-direct {p0, v0}, getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 7352
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method getStackOrder(ZLcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "allStack"    # Z
    .param p2, "display"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9319
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, getStackOrder(ZLcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getStackOrder(ZLcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Z)Ljava/util/ArrayList;
    .registers 13
    .param p1, "allStack"    # Z
    .param p2, "display"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .param p3, "includeFinishing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 9329
    if-nez p2, :cond_5

    move-object v3, v7

    .line 9383
    :cond_4
    :goto_4
    return-object v3

    .line 9333
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9341
    .local v3, "resultStackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v8, p2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v8}, getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 9347
    .local v6, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    .line 9349
    .local v2, "mask":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_4

    .line 9350
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 9351
    .local v5, "taskInfo":Lcom/android/server/am/TaskRecord;
    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 9353
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v4, :cond_26

    .line 9349
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 9357
    :cond_26
    invoke-virtual {v5, v7}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 9358
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-nez p3, :cond_2e

    .line 9359
    if-eqz v0, :cond_23

    .line 9364
    :cond_2e
    if-nez p1, :cond_45

    .line 9365
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v8

    if-nez v8, :cond_45

    .line 9366
    if-eqz v0, :cond_23

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v8, v8, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v8, :cond_23

    .line 9367
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    or-int/2addr v2, v8

    .line 9373
    :cond_45
    iget v8, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5a

    .line 9374
    iget v8, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9376
    :cond_5a
    if-nez p1, :cond_23

    .line 9377
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v8

    if-eqz v8, :cond_23

    const/16 v8, 0xf

    if-eq v2, v8, :cond_4

    if-nez v2, :cond_23

    goto :goto_4
.end method

.method getStacks()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5165
    .local v0, "allStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    iget-object v2, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "displayNdx":I
    :goto_d
    if-ltz v1, :cond_1f

    .line 5166
    iget-object v2, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5165
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 5168
    :cond_1f
    return-object v0
.end method

.method getStacks(I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1695
    iget-object v1, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 1696
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_d

    .line 1697
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1699
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method getStacks(Lcom/samsung/android/dualscreen/DualScreen;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/DualScreen;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9567
    if-eqz p1, :cond_11

    .line 9568
    invoke-virtual {p1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    .line 9569
    .local v1, "displayId":I
    iget-object v2, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 9570
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 9572
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    :goto_10
    return-object v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method getTasksLocked(ILjava/util/List;IZI)V
    .registers 13
    .param p1, "maxNum"    # I
    .param p3, "callingUid"    # I
    .param p4, "allowed"    # Z
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 1705
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, getTasksLocked(ILjava/util/List;IZII)V

    .line 1706
    return-void
.end method

.method getTasksLocked(ILjava/util/List;IZII)V
    .registers 29
    .param p1, "maxNum"    # I
    .param p3, "callingUid"    # I
    .param p4, "allowed"    # Z
    .param p5, "flags"    # I
    .param p6, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZII)V"
        }
    .end annotation

    .prologue
    .line 1712
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1725
    .local v13, "runningTaskLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityDisplays:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1726
    .local v5, "numDisplays":I
    const/4 v4, 0x0

    .local v4, "displayNdx":I
    :goto_10
    if-ge v4, v5, :cond_75

    .line 1729
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, mActivityDisplays:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    move/from16 v20, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/VirtualScreenManagerService;->isVirtualScreen(I)Z

    move-result v20

    if-eqz v20, :cond_37

    .line 1726
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1734
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityDisplays:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 1735
    .local v18, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v16, v20, -0x1

    .local v16, "stackNdx":I
    :goto_51
    if-ltz v16, :cond_34

    .line 1736
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityStack;

    .line 1737
    .local v15, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1738
    .local v17, "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1739
    move-object/from16 v0, v17

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Ljava/util/List;IZI)V

    .line 1735
    add-int/lit8 v16, v16, -0x1

    goto :goto_51

    .line 1746
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v16    # "stackNdx":I
    .end local v17    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v18    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_75
    :goto_75
    if-lez p1, :cond_140

    .line 1747
    const-wide/high16 v10, -0x8000000000000000L

    .line 1748
    .local v10, "mostRecentActiveTime":J
    const/4 v14, 0x0

    .line 1750
    .local v14, "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v19, 0x0

    .line 1752
    .local v19, "taskIsInitState":Z
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1753
    .local v12, "numTaskLists":I
    const/16 v16, 0x0

    .restart local v16    # "stackNdx":I
    :goto_82
    move/from16 v0, v16

    if-ge v0, v12, :cond_ec

    .line 1754
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1755
    .restart local v17    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_13a

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v20, v0

    if-eqz v20, :cond_101

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v20

    if-nez v20, :cond_101

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_101

    .line 1761
    move-object/from16 v14, v17

    .line 1782
    .end local v17    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_ec
    :goto_ec
    if-eqz v14, :cond_13e

    .line 1783
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1784
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_75

    .line 1765
    .restart local v17    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_101
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v20

    iget-wide v8, v0, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 1766
    .local v8, "lastActiveTime":J
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v20

    iget-wide v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveElapsedTime:J

    .line 1770
    .local v6, "lastActiveElapsedTime":J
    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-nez v20, :cond_133

    .line 1771
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1772
    const/16 v19, 0x1

    .line 1773
    goto :goto_ec

    .line 1776
    :cond_133
    cmp-long v20, v6, v10

    if-lez v20, :cond_13a

    .line 1777
    move-wide v10, v6

    .line 1778
    move-object/from16 v14, v17

    .line 1753
    .end local v6    # "lastActiveElapsedTime":J
    .end local v8    # "lastActiveTime":J
    :cond_13a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_82

    .line 1788
    .end local v17    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_13e
    if-nez v19, :cond_75

    .line 1793
    .end local v10    # "mostRecentActiveTime":J
    .end local v12    # "numTaskLists":I
    .end local v14    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v16    # "stackNdx":I
    .end local v19    # "taskIsInitState":Z
    :cond_140
    move-object/from16 v0, p0

    iget-object v0, v0, mRunningTaskComparator:Ljava/util/Comparator;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1794
    return-void
.end method

.method getVRStack(I)Lcom/android/server/am/ActivityStack;
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 5147
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 5148
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_2b

    .line 5149
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2b

    .line 5150
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 5151
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 5149
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 5154
    :cond_24
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isVRStack()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 5159
    .end local v1    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_2a
    return-object v2

    :cond_2b
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method goingToSleepForDisplayLocked(I)V
    .registers 7
    .param p1, "displayId"    # I

    .prologue
    .line 9776
    iget-object v3, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_23

    .line 9777
    iget-object v3, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9778
    iget-object v3, p0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 9779
    iget-object v3, p0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 9780
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 9784
    :cond_23
    const/4 v0, 0x0

    .line 9786
    .local v0, "dontSleep":Z
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 9787
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_34
    if-ltz v1, :cond_44

    .line 9788
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v3

    or-int/2addr v0, v3

    .line 9787
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    .line 9791
    :cond_44
    iget-object v3, p0, mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_50

    .line 9795
    invoke-virtual {p0}, scheduleIdleLocked()V

    .line 9796
    const/4 v0, 0x1

    .line 9799
    :cond_50
    iget-object v3, p0, mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_59

    .line 9803
    const/4 v0, 0x1

    .line 9806
    :cond_59
    if-eqz v0, :cond_5c

    .line 9822
    :cond_5b
    :goto_5b
    return-void

    .line 9812
    :cond_5c
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 9816
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_67
    if-ltz v1, :cond_75

    .line 9817
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 9816
    add-int/lit8 v1, v1, -0x1

    goto :goto_67

    .line 9819
    :cond_75
    iget-object v3, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 9820
    iget-object v3, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_5b
.end method

.method goingToSleepLocked()V
    .registers 3

    .prologue
    .line 6133
    invoke-virtual {p0}, scheduleSleepTimeout()V

    .line 6134
    iget-object v0, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_26

    .line 6135
    iget-object v0, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6136
    iget-object v0, p0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 6140
    iget-object v0, p0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6141
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 6144
    :cond_26
    invoke-virtual {p0}, checkReadyForSleepLocked()V

    .line 6145
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 6470
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 6471
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6472
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 6473
    .local v1, "stackNdx":I
    :goto_1a
    if-ltz v1, :cond_28

    .line 6474
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 6475
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 6470
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 6478
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2b
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 4869
    const/4 v1, 0x0

    .line 4870
    .local v1, "hasVisibleActivities":Z
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_9
    if-ltz v0, :cond_2e

    .line 4871
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4872
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1b
    if-ltz v2, :cond_2b

    .line 4873
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 4872
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 4870
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 4876
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2e
    return v1
.end method

.method handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    .line 6536
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 6537
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 6538
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setLastThumbnail(Landroid/graphics/Bitmap;)Z

    .line 6539
    iget-object v1, p0, mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v1, v0}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    .line 6540
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    .line 6541
    iget-object v1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    .line 6542
    return-void
.end method

.method handleMinimizeAllPenWindow()V
    .registers 16

    .prologue
    .line 10045
    iget-object v13, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 10046
    :try_start_3
    iget-object v12, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .local v5, "displayNdx":I
    :goto_b
    if-ltz v5, :cond_ac

    .line 10047
    iget-object v12, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v10, v12, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 10050
    .local v10, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    iget-object v12, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 10051
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v12

    iget v14, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v12, v14}, Lcom/android/server/am/VirtualScreenManagerService;->isVirtualScreen(I)Z

    move-result v12

    if-eqz v12, :cond_2e

    .line 10046
    :cond_2b
    add-int/lit8 v5, v5, -0x1

    goto :goto_b

    .line 10056
    :cond_2e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v9, v12, -0x1

    .local v9, "stackNdx":I
    :goto_34
    if-ltz v9, :cond_2b

    .line 10057
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    .line 10058
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 10059
    .local v11, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v12

    if-eqz v12, :cond_a9

    .line 10060
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 10063
    .local v2, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .local v6, "i":I
    :goto_51
    if-ltz v6, :cond_a9

    .line 10064
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 10065
    .local v4, "curTask":Lcom/android/server/am/TaskRecord;
    iget v12, v4, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v14, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v14, v14, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    if-eq v12, v14, :cond_72

    .line 10066
    iget v12, v4, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v12}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v12

    if-nez v12, :cond_6c

    .line 10063
    :cond_69
    add-int/lit8 v6, v6, -0x1

    goto :goto_51

    .line 10070
    :cond_6c
    iget-object v12, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v12, v12, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    if-nez v12, :cond_69

    .line 10075
    :cond_72
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 10076
    if-eqz v11, :cond_69

    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v12, :cond_69

    .line 10077
    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v12, v12, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10078
    .local v0, "N":I
    add-int/lit8 v7, v0, -0x1

    .local v7, "j":I
    :goto_86
    if-ltz v7, :cond_69

    .line 10079
    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v12, v12, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 10080
    .local v3, "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v12, :cond_a6

    iget-boolean v12, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v12, :cond_a6

    iget-boolean v12, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v12, :cond_a6

    .line 10081
    const/4 v12, 0x1

    iput-boolean v12, v3, Lcom/android/server/am/ActivityRecord;->minimizePenWindowRequested:Z

    .line 10082
    const/4 v12, 0x4

    const/4 v14, 0x1

    invoke-virtual {v8, v3, v12, v14}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 10078
    :cond_a6
    add-int/lit8 v7, v7, -0x1

    goto :goto_86

    .line 10056
    .end local v0    # "N":I
    .end local v2    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v3    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "curTask":Lcom/android/server/am/TaskRecord;
    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_a9
    add-int/lit8 v9, v9, -0x1

    goto :goto_34

    .line 10092
    .end local v1    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "stackNdx":I
    .end local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v11    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_ac
    iget-object v12, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v14, 0x0

    iput-boolean v14, v12, Lcom/android/server/am/ActivityManagerService;->mMinimizeAllPenWindowRequested:Z

    .line 10093
    monitor-exit v13

    .line 10094
    return-void

    .line 10093
    .end local v5    # "displayNdx":I
    :catchall_b3
    move-exception v12

    monitor-exit v13
    :try_end_b5
    .catchall {:try_start_3 .. :try_end_b5} :catchall_b3

    throw v12
.end method

.method public hideMultiWindowsLocked(I)V
    .registers 35
    .param p1, "targetUserId"    # I

    .prologue
    .line 10186
    move-object/from16 v0, p0

    iget-object v2, v0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v25, v2, -0x1

    .local v25, "displayNdx":I
    :goto_a
    if-ltz v25, :cond_107

    .line 10187
    move-object/from16 v0, p0

    iget-object v2, v0, mActivityDisplays:Landroid/util/SparseArray;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    .line 10188
    .local v31, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v30, v2, -0x1

    .local v30, "stackNdx":I
    :goto_22
    if-ltz v30, :cond_103

    .line 10189
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/am/ActivityStack;

    .line 10190
    .local v29, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 10191
    .local v4, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.knox.foldercontainer"

    const-string v5, "com.sec.knox.foldercontainer.MultiwindowLockActivity"

    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 10192
    const-string/jumbo v2, "userid"

    move/from16 v0, p1

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10194
    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v32

    .line 10195
    .local v32, "top":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v28

    .line 10198
    .local v28, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v27, 0x0

    .line 10199
    .local v27, "ri":Landroid/content/pm/ResolveInfo;
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_63
    if-eqz v28, :cond_8b

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_8b

    .line 10200
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_99

    .line 10202
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "ri":Landroid/content/pm/ResolveInfo;
    check-cast v27, Landroid/content/pm/ResolveInfo;

    .line 10207
    .restart local v27    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_8b
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v24

    .line 10208
    .local v24, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_9c

    .line 10188
    :cond_96
    :goto_96
    add-int/lit8 v30, v30, -0x1

    goto :goto_22

    .line 10199
    .end local v24    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_99
    add-int/lit8 v26, v26, 0x1

    goto :goto_63

    .line 10211
    .restart local v24    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_9c
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/TaskRecord;

    .line 10212
    .local v23, "curTask":Lcom/android/server/am/TaskRecord;
    if-eqz v32, :cond_96

    if-eqz v27, :cond_96

    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_96

    .line 10213
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v2

    if-nez v2, :cond_cf

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_96

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v2

    if-eqz v2, :cond_96

    .line 10214
    :cond_cf
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 10215
    const-string/jumbo v2, "pkgName"

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10216
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v23}, startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    goto :goto_96

    .line 10186
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v23    # "curTask":Lcom/android/server/am/TaskRecord;
    .end local v24    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v26    # "i":I
    .end local v27    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v28    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v29    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v32    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_103
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_a

    .line 10223
    .end local v30    # "stackNdx":I
    .end local v31    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_107
    return-void
.end method

.method initPowerManagement()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 607
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 608
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 609
    const-string v1, "*launch*"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 610
    iget-object v1, p0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 611
    return-void
.end method

.method initUnfixDialog()V
    .registers 4

    .prologue
    .line 7794
    const/4 v1, 0x0

    iput-boolean v1, p0, mUnfixDialogShow:Z

    .line 7795
    new-instance v1, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;)V

    iput-object v1, p0, mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    .line 7796
    iget-object v1, p0, mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->create()V

    .line 7797
    iget-object v1, p0, mUnfixDialog:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    .line 7798
    .local v0, "wm":Landroid/view/WindowManagerImpl;
    iget-object v1, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->setDisplay(Landroid/view/Display;)V

    .line 7799
    return-void
.end method

.method isCurrentProfileLocked(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 6850
    iget v2, p0, mCurrentUser:I

    if-ne p1, v2, :cond_6

    .line 6854
    :cond_5
    :goto_5
    return v1

    .line 6851
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 6852
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_5

    .line 6851
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 6854
    :cond_19
    const/4 v1, 0x0

    goto :goto_5
.end method

.method isFrontStack(Lcom/android/server/am/ActivityStack;)Z
    .registers 20
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 794
    if-nez p1, :cond_4

    .line 795
    const/4 v5, 0x0

    .line 959
    :goto_3
    return v5

    .line 800
    :cond_4
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/am/VirtualScreenManagerService;->isFrontVirtualScreen(Lcom/android/server/am/ActivityStack;)Z

    move-result v14

    if-nez v14, :cond_12

    .line 801
    const/4 v5, 0x0

    goto :goto_3

    .line 806
    :cond_12
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v14

    if-nez v14, :cond_1e

    .line 807
    const/4 v5, 0x0

    goto :goto_3

    .line 808
    :cond_1e
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    .line 809
    .local v13, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v13, :cond_5d

    iget-object v14, v13, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v15, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v14, v15, :cond_5d

    iget-object v14, v13, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v14

    if-nez v14, :cond_5b

    iget-object v14, v13, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v14

    if-nez v14, :cond_5b

    iget-object v14, v13, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v15, 0x800000

    invoke-virtual {v14, v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v14

    if-eqz v14, :cond_5d

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v15}, Lcom/android/server/am/MultiWindowPolicy;->getTabFrontStack()I

    move-result v15

    if-eq v14, v15, :cond_5d

    .line 814
    :cond_5b
    const/4 v5, 0x0

    goto :goto_3

    .line 817
    :cond_5d
    move-object/from16 v0, p0

    iget-object v15, v0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 818
    :try_start_62
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v14, :cond_70

    .line 819
    const/4 v5, 0x0

    monitor-exit v15

    goto :goto_3

    .line 960
    :catchall_6d
    move-exception v14

    monitor-exit v15
    :try_end_6f
    .catchall {:try_start_62 .. :try_end_6f} :catchall_6d

    throw v14

    .line 824
    :cond_70
    :try_start_70
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v14

    if-eqz v14, :cond_7f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->isAllHidden()Z

    move-result v14

    if-eqz v14, :cond_7f

    .line 825
    const/4 v5, 0x0

    monitor-exit v15

    goto :goto_3

    .line 830
    :cond_7f
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 832
    .local v12, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v8, 0x0

    .line 833
    .local v8, "obscuredZone":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 854
    .local v3, "N":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 855
    .local v2, "M":I
    add-int/lit8 v6, v2, -0x1

    .local v6, "i":I
    :goto_94
    if-ltz v6, :cond_ad

    .line 856
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    .line 857
    .local v10, "task":Lcom/android/server/am/TaskRecord;
    iget v14, v10, Lcom/android/server/am/TaskRecord;->userId:I

    move-object/from16 v0, p0

    iget v0, v0, mCurrentUser:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v14, v0, :cond_aa

    .line 858
    add-int/lit8 v2, v2, -0x1

    .line 855
    :cond_aa
    add-int/lit8 v6, v6, -0x1

    goto :goto_94

    .line 862
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_ad
    if-eqz v3, :cond_b1

    if-nez v2, :cond_bb

    :cond_b1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v14

    if-eqz v14, :cond_bb

    .line 863
    const/4 v5, 0x1

    monitor-exit v15

    goto/16 :goto_3

    .line 866
    :cond_bb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v14

    if-eqz v14, :cond_e4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v14

    if-nez v14, :cond_e4

    .line 867
    const/4 v5, 0x1

    .line 868
    .local v5, "homeIsFront":Z
    const/4 v6, 0x0

    :goto_c9
    if-ge v6, v3, :cond_dc

    .line 869
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/TaskRecord;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    if-eqz v14, :cond_e1

    .line 870
    const/4 v5, 0x0

    .line 874
    :cond_dc
    if-eqz v5, :cond_e4

    .line 875
    monitor-exit v15

    goto/16 :goto_3

    .line 868
    :cond_e1
    add-int/lit8 v6, v6, 0x1

    goto :goto_c9

    .line 882
    .end local v5    # "homeIsFront":Z
    :cond_e4
    if-eqz v13, :cond_fd

    iget-boolean v14, v13, Lcom/android/server/am/ActivityRecord;->launchedBehindVRApp:Z

    if-eqz v14, :cond_fd

    .line 883
    move-object/from16 v0, p0

    iget-object v14, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    invoke-virtual {v14}, Lcom/android/server/am/VRApplicationPolicy;->isHMTconnected()Z

    move-result v14

    if-eqz v14, :cond_fa

    .line 884
    const/4 v5, 0x1

    monitor-exit v15

    goto/16 :goto_3

    .line 886
    :cond_fa
    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/android/server/am/ActivityRecord;->launchedBehindVRApp:Z

    .line 892
    :cond_fd
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v14

    if-eqz v14, :cond_117

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v14

    if-nez v14, :cond_117

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1}, checkFullScreenOnlyExist(Ljava/util/ArrayList;Lcom/android/server/am/ActivityStack;)Z

    move-result v14

    if-eqz v14, :cond_117

    .line 894
    const/4 v5, 0x0

    monitor-exit v15

    goto/16 :goto_3

    .line 897
    :cond_117
    const/4 v7, 0x0

    .line 898
    .local v7, "obscuredScreenZone":I
    const/4 v14, 0x3

    new-array v9, v14, [I

    fill-array-data v9, :array_186

    .line 899
    .local v9, "obscuredZones":[I
    add-int/lit8 v6, v3, -0x1

    :goto_120
    if-ltz v6, :cond_181

    .line 900
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    .line 901
    .restart local v10    # "task":Lcom/android/server/am/TaskRecord;
    iget-object v4, v10, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 902
    .local v4, "currStack":Lcom/android/server/am/ActivityStack;
    if-nez v4, :cond_14e

    .line 903
    const-string v14, "ActivityManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "isFrontStack: stack is not exist. id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_14b
    add-int/lit8 v6, v6, -0x1

    goto :goto_120

    .line 943
    :cond_14e
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Lcom/android/server/am/TaskRecord;->getVisibleObscuredZone(Z)I

    move-result v11

    .line 944
    .local v11, "taskObscuredZone":I
    move-object/from16 v0, p1

    if-ne v4, v0, :cond_178

    .line 945
    const/16 v14, 0xf

    if-ne v11, v14, :cond_165

    .line 946
    and-int/lit8 v14, v8, 0xf

    if-nez v14, :cond_163

    const/4 v5, 0x1

    :goto_160
    monitor-exit v15

    goto/16 :goto_3

    :cond_163
    const/4 v5, 0x0

    goto :goto_160

    .line 947
    :cond_165
    if-nez v11, :cond_16e

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    if-eqz v14, :cond_14b

    .line 951
    :cond_16e
    const/16 v14, 0xf

    if-eq v8, v14, :cond_176

    const/4 v5, 0x1

    :goto_173
    monitor-exit v15

    goto/16 :goto_3

    :cond_176
    const/4 v5, 0x0

    goto :goto_173

    .line 954
    :cond_178
    or-int/2addr v8, v11

    .line 955
    const/16 v14, 0xf

    if-ne v8, v14, :cond_14b

    .line 956
    const/4 v5, 0x0

    monitor-exit v15

    goto/16 :goto_3

    .line 959
    .end local v4    # "currStack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    .end local v11    # "taskObscuredZone":I
    :cond_181
    const/4 v5, 0x0

    monitor-exit v15
    :try_end_183
    .catchall {:try_start_70 .. :try_end_183} :catchall_6d

    goto/16 :goto_3

    .line 898
    nop

    :array_186
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1234
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1235
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_7
    if-ge v0, v1, :cond_2e

    .line 1236
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1237
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_2b

    .line 1238
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1239
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_28

    .line 1244
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_27
    return-object v2

    .line 1237
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1235
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1244
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2e
    const/4 v2, 0x0

    goto :goto_27
.end method

.method isInFixedScreenMode()Z
    .registers 2

    .prologue
    .line 9643
    iget-object v0, p0, mFixedTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isIsolated(I)Z
    .registers 9
    .param p1, "displayId"    # I

    .prologue
    const/16 v6, 0x1000

    const/4 v4, 0x1

    .line 730
    const/4 v2, 0x0

    .line 731
    .local v2, "bPopup":Z
    const/4 v1, 0x0

    .line 732
    .local v1, "bHasVisible":Z
    invoke-virtual {p0}, getStacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 733
    .local v0, "as":Lcom/android/server/am/ActivityStack;
    iget v5, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne v5, p1, :cond_5e

    invoke-virtual {p0, v0}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 734
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_42

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 754
    .end local v0    # "as":Lcom/android/server/am/ActivityStack;
    :cond_41
    :goto_41
    return v4

    .line 739
    .restart local v0    # "as":Lcom/android/server/am/ActivityStack;
    :cond_42
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v5, :cond_d

    .line 741
    const/4 v2, 0x1

    goto :goto_d

    .line 743
    :cond_5e
    iget v5, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne v5, p1, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 748
    const/4 v1, 0x1

    goto :goto_d

    .line 751
    .end local v0    # "as":Lcom/android/server/am/ActivityStack;
    :cond_8a
    if-eqz v1, :cond_8e

    if-nez v2, :cond_41

    .line 754
    :cond_8e
    const/4 v4, 0x0

    goto :goto_41
.end method

.method public isKnoxMultiWindowExistLocked(I)Z
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 10226
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_53

    .line 10227
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 10228
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "stackNdx":I
    :goto_1a
    if-ltz v2, :cond_50

    .line 10229
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 10230
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 10231
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_4d

    iget v5, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 10232
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-nez v5, :cond_4b

    invoke-virtual {p0, v1}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v5

    const/16 v6, 0xf

    if-eq v5, v6, :cond_4d

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v5

    if-eqz v5, :cond_4d

    .line 10233
    :cond_4b
    const/4 v5, 0x1

    .line 10238
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :goto_4c
    return v5

    .line 10228
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stackNdx":I
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 10226
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 10238
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_53
    const/4 v5, 0x0

    goto :goto_4c
.end method

.method isLastLockedTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v0, 0x1

    .line 7379
    iget-object v1, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_12

    iget-object v1, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 7482
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v0

    return v0
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z
    .registers 8
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "isNewClearTask"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7486
    invoke-virtual {p0}, getLockedTaskLocked()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-ne v3, p1, :cond_c

    if-nez p2, :cond_c

    move v1, v2

    .line 7507
    :cond_b
    :goto_b
    return v1

    .line 7494
    :cond_c
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 7495
    .local v0, "lockTaskAuth":I
    packed-switch v0, :pswitch_data_42

    .line 7506
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLockTaskModeViolation: invalid lockTaskAuth value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 7497
    :pswitch_2b
    iget-object v3, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_b

    :pswitch_35
    move v1, v2

    .line 7501
    goto :goto_b

    .line 7504
    :pswitch_37
    iget-object v3, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_b

    .line 7495
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_37
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method isLockedTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 7375
    iget-object v0, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isValidCoupled(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .registers 10
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "parent"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 3384
    if-eqz p1, :cond_5

    if-nez p2, :cond_29

    .line 3385
    :cond_5
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isValidCoupled() failed! / Reason = ActivityRecord is null / ar = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / parent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    :goto_28
    return v3

    .line 3391
    :cond_29
    const/high16 v0, 0x10000000

    .line 3392
    .local v0, "forbidden":I
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_5c

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v0

    if-eqz v4, :cond_5c

    .line 3393
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isValidCoupled() failed! / Reason = It has FLAG_ACTIVITY_NEW_TASK / ar = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / parent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 3399
    :cond_5c
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    invoke-virtual {v4}, Lcom/android/server/am/DualScreenAttrs;->getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    .line 3400
    .local v1, "sourceScreen":Lcom/samsung/android/dualscreen/DualScreen;
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    invoke-virtual {v4}, Lcom/android/server/am/DualScreenAttrs;->getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v2

    .line 3402
    .local v2, "targetScreen":Lcom/samsung/android/dualscreen/DualScreen;
    if-ne v1, v2, :cond_a4

    .line 3403
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isValidCoupled() failed! / Reason = Screen Error! sourceScreen == targetScreen! / ar = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "targetScreen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / parent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "sourceScreen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 3410
    :cond_a4
    const/4 v3, 0x1

    goto :goto_28
.end method

.method moveHomeStack(ZLjava/lang/String;)V
    .registers 5
    .param p1, "toFront"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 973
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, moveHomeStack(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;I)V

    .line 974
    return-void
.end method

.method moveHomeStack(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;I)V
    .registers 14
    .param p1, "toFront"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "lastFocusedStack"    # Lcom/android/server/am/ActivityStack;
    .param p4, "displayId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 988
    iget-object v0, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 990
    .local v0, "homeStack":Lcom/android/server/am/ActivityStack;
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 992
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 993
    .local v3, "topNdx":I
    if-gtz v3, :cond_f

    .line 1038
    :cond_e
    :goto_e
    return-void

    .line 1008
    :cond_f
    invoke-virtual {p0, v0, p1}, moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 1028
    const/16 v6, 0x755c

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, mCurrentUser:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    if-eqz p1, :cond_22

    move v4, v5

    :cond_22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    const/4 v5, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    const/4 v5, 0x3

    iget-object v4, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v4, :cond_65

    const/4 v4, -0x1

    :goto_3f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    const/4 v4, 0x4

    aput-object p2, v7, v4

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1032
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v4, :cond_57

    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v4, :cond_e

    .line 1033
    :cond_57
    invoke-virtual {p0}, topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1034
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_e

    iget-boolean v4, v1, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-eqz v4, :cond_e

    .line 1035
    invoke-direct {p0}, checkFinishBootingLocked()Z

    goto :goto_e

    .line 1028
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_65
    iget-object v4, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v4

    goto :goto_3f
.end method

.method moveHomeStackTaskToTop(ILjava/lang/String;)Z
    .registers 4
    .param p1, "homeStackTaskType"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1077
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, moveHomeStackTaskToTop(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method moveHomeStackTaskToTop(ILjava/lang/String;I)Z
    .registers 5
    .param p1, "homeStackTaskType"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .prologue
    .line 1081
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, moveHomeStackTaskToTop(ILjava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method moveHomeStackTaskToTop(ILjava/lang/String;IZ)Z
    .registers 6
    .param p1, "homeStackTaskType"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "preArrangeHomeTask"    # Z

    .prologue
    .line 1085
    const/4 v0, 0x0

    .line 1093
    .local v0, "result":Z
    invoke-virtual {p0, p1, p2, p3, p4}, moveHomeStackTaskToTopInner(ILjava/lang/String;IZ)Z

    move-result v0

    .line 1095
    return v0
.end method

.method moveHomeStackTaskToTopInner(ILjava/lang/String;IZ)Z
    .registers 8
    .param p1, "homeStackTaskType"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "preArrangeHomeTask"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1100
    const/4 v2, 0x2

    if-ne p1, v2, :cond_a

    .line 1101
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 1133
    :cond_9
    :goto_9
    return v1

    .line 1124
    :cond_a
    iget-object v2, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop(I)V

    .line 1128
    invoke-virtual {p0, p3}, getHomeActivity(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1129
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_9

    .line 1132
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 1133
    const/4 v1, 0x1

    goto :goto_9
.end method

.method movePrevSamsungHomeTasksLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 15
    .param p1, "excludeTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v12, 0x0

    .line 9934
    if-eqz p1, :cond_16

    .line 9935
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 9936
    .local v8, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v8, :cond_16

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->isSamsungHomeActivity()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v10

    if-nez v10, :cond_16

    .line 9965
    .end local v8    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_15
    return-void

    .line 9942
    :cond_16
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 9943
    .local v7, "tasksWillBeMoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 9944
    .local v3, "samsungHomeStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 9945
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 9946
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isSamsungHomeTask()Z

    move-result v10

    if-eqz v10, :cond_28

    if-eq v5, p1, :cond_28

    .line 9947
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 9950
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_40
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    .line 9951
    .local v9, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 9952
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    iput v12, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_56

    .line 9954
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_65
    iput v12, v9, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 9955
    iput-boolean v12, v9, Lcom/android/server/am/TaskRecord;->fixed:Z

    .line 9957
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 9958
    .restart local v8    # "topActivity":Lcom/android/server/am/ActivityRecord;
    if-nez v8, :cond_77

    .line 9959
    const-string v10, "ActivityManager"

    const-string v11, "Cannot move a task to target stack because topActivity is null"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 9962
    :cond_77
    const/4 v10, 0x0

    invoke-virtual {p0, v8, v12, v10, v12}, computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 9963
    .local v4, "targetStack":Lcom/android/server/am/ActivityStack;
    iget v10, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v11

    invoke-virtual {p0, v10, v11, v12, v12}, moveTaskToStackLocked(IIZZ)V

    goto :goto_44
.end method

.method moveStack(Lcom/android/server/am/ActivityStack;Z)V
    .registers 8
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toFront"    # Z

    .prologue
    .line 1042
    iget-object v1, p1, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1043
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1044
    .local v2, "topNdx":I
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1045
    if-eqz p2, :cond_37

    move v3, v2

    :goto_e
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1046
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 1061
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    iget-object v3, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v3, :cond_36

    .line 1062
    iget-object v3, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v3, p0, mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1068
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "movestack to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 1071
    :cond_36
    return-void

    .line 1045
    .end local v0    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :cond_37
    const/4 v3, 0x0

    goto :goto_e
.end method

.method moveTaskToScreenLocked(Lcom/android/server/am/TaskRecord;IZZZ)V
    .registers 14
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toDisplayId"    # I
    .param p3, "toTop"    # Z
    .param p4, "doResumeTop"    # Z
    .param p5, "doAnimation"    # Z

    .prologue
    const/4 v6, 0x0

    .line 9825
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-virtual/range {v0 .. v7}, moveTaskToScreenLocked(Lcom/android/server/am/TaskRecord;IZZZZZ)V

    .line 9826
    return-void
.end method

.method moveTaskToScreenLocked(Lcom/android/server/am/TaskRecord;IZZZZZ)V
    .registers 8
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toDisplayId"    # I
    .param p3, "toTop"    # Z
    .param p4, "doResumeTop"    # Z
    .param p5, "doAnimation"    # Z
    .param p6, "forceDoAnimation"    # Z
    .param p7, "byArrangeFullViewPolicy"    # Z

    .prologue
    .line 9830
    return-void
.end method

.method moveTaskToStackLocked(IIZ)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .prologue
    .line 5524
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, moveTaskToStackLocked(IIZZ)V

    .line 5525
    return-void
.end method

.method moveTaskToStackLocked(IIZZ)V
    .registers 11
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z
    .param p4, "doResumeTop"    # Z

    .prologue
    .line 5530
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, moveTaskToStackLocked(IIZZZ)V

    .line 5531
    return-void
.end method

.method moveTaskToStackLocked(IIZZZ)V
    .registers 33
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z
    .param p4, "doResumeTop"    # Z
    .param p5, "swap"    # Z

    .prologue
    .line 5535
    invoke-virtual/range {p0 .. p1}, anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 5633
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    if-nez v4, :cond_22

    .line 5634
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "moveTaskToStack: no task for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5767
    :cond_21
    :goto_21
    return-void

    .line 5637
    :cond_22
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v18

    .line 5638
    .local v18, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v18, :cond_48

    .line 5639
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "moveTaskToStack: no stack for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 5642
    :cond_48
    move-object/from16 v0, p0

    iget-object v5, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getScreenZone()I

    move-result v6

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v6}, Lcom/android/server/wm/WindowManagerService;->moveTaskToStack(IIZI)V

    .line 5645
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 5646
    .local v11, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_67

    iget-boolean v5, v11, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v5, :cond_67

    .line 5648
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/TaskRecord;->bHidden:Z

    .line 5655
    :cond_67
    if-eqz p3, :cond_8b

    .line 5656
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    .line 5657
    .local v23, "taskTop":Lcom/android/server/am/ActivityRecord;
    if-eqz v23, :cond_21f

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ActivityRecord;->isVRActivity()Z

    move-result v5

    if-eqz v5, :cond_21f

    .line 5658
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityStack;->isVRStack()Z

    move-result v5

    if-eqz v5, :cond_1fc

    .line 5659
    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v6}, Lcom/android/server/am/VRApplicationPolicy;->readyToStartVRActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 5675
    .end local v23    # "taskTop":Lcom/android/server/am/ActivityRecord;
    :cond_8b
    :goto_8b
    const/16 v25, 0x0

    .line 5676
    .local v25, "wasInFloatingStack":Z
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_97

    .line 5677
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v25

    .line 5679
    :cond_97
    const/4 v14, 0x0

    .line 5680
    .local v14, "isTopActivityNormal":Z
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v24

    .line 5681
    .local v24, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v24, :cond_aa

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 5682
    const/4 v14, 0x1

    .line 5685
    :cond_aa
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v26

    .line 5686
    .local v26, "willBeInFloatingStack":Z
    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 5687
    .local v3, "prevStack":Lcom/android/server/am/ActivityStack;
    const/4 v8, 0x0

    .line 5688
    .local v8, "updateFocus":Z
    const/16 v16, 0x0

    .line 5690
    .local v16, "prevDisplayId":I
    if-eqz v3, :cond_c2

    .line 5691
    iget v5, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eq v5, v6, :cond_23a

    const/4 v8, 0x1

    .line 5692
    :goto_be
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v16

    .line 5695
    :cond_c2
    const/4 v15, 0x0

    .line 5696
    .local v15, "needToMoveHomeStackTaskToTop":Z
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v22

    .line 5698
    .local v22, "taskToReturnTo":I
    const/4 v5, 0x1

    move/from16 v0, v22

    if-ne v0, v5, :cond_e7

    if-eqz v11, :cond_e7

    iget-object v5, v11, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_e7

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isMultiWindowStack()Z

    move-result v5

    if-nez v5, :cond_e7

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_e7

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-ne v4, v5, :cond_e7

    .line 5702
    const/4 v15, 0x1

    .line 5704
    :cond_e7
    const-string/jumbo v5, "moveTaskToStack"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZZZZ)V

    .line 5712
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1, v5}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 5717
    if-eqz v15, :cond_106

    .line 5718
    const-string/jumbo v5, "moveTaskToStack"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v16

    invoke-virtual {v0, v1, v5, v2}, moveHomeStackTaskToTop(ILjava/lang/String;I)Z

    .line 5720
    :cond_106
    move-object/from16 v0, p0

    iget-object v5, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v6}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZZ)V

    .line 5721
    if-nez p5, :cond_11d

    .line 5722
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/am/ActivityStack;->postProcessAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V

    .line 5724
    :cond_11d
    const/4 v13, 0x0

    .line 5725
    .local v13, "isNeedEnsureVisibleCall":Z
    if-eqz p3, :cond_176

    .line 5726
    if-nez v25, :cond_124

    if-eqz v26, :cond_16d

    .line 5727
    :cond_124
    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    const/4 v7, 0x1

    const-string/jumbo v9, "moveTaskToStack"

    invoke-virtual {v5, v6, v7, v9}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    .line 5728
    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v5, :cond_16a

    if-eqz v24, :cond_16a

    .line 5729
    sget-boolean v5, SAFE_DEBUG:Z

    if-eqz v5, :cond_15b

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ensureConfig while moveTaskToStack , r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5730
    :cond_15b
    move-object/from16 v0, p0

    iget-object v5, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getExpectedOrientation()I

    .line 5731
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 5733
    :cond_16a
    if-nez v14, :cond_16d

    .line 5734
    const/4 v13, 0x1

    .line 5737
    :cond_16d
    move-object/from16 v0, p0

    iget-object v5, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 5739
    :cond_176
    if-eqz p4, :cond_21

    .line 5740
    invoke-virtual/range {p0 .. p0}, resumeTopActivitiesLocked()Z

    .line 5741
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ActivityRecord;

    .line 5742
    .local v17, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v13, :cond_1a7

    if-eqz v17, :cond_1a7

    move-object/from16 v0, v17

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_1a7

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_1a7

    .line 5744
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 5746
    :cond_1a7
    if-eqz v26, :cond_21

    .line 5747
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5748
    .local v10, "appTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, mActivityDisplays:Landroid/util/SparseArray;

    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 5749
    .local v19, "targetDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    .line 5750
    .local v21, "targetStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_1c6
    :goto_1c6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ActivityStack;

    .line 5751
    .local v20, "targetStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-nez v5, :cond_1c6

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_1c6

    .line 5752
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1c6

    .line 5753
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c6

    .line 5663
    .end local v3    # "prevStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "updateFocus":Z
    .end local v10    # "appTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "isNeedEnsureVisibleCall":Z
    .end local v14    # "isTopActivityNormal":Z
    .end local v15    # "needToMoveHomeStackTaskToTop":Z
    .end local v16    # "prevDisplayId":I
    .end local v17    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "targetDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v20    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v21    # "targetStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v22    # "taskToReturnTo":I
    .end local v24    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v25    # "wasInFloatingStack":Z
    .end local v26    # "willBeInFloatingStack":Z
    .restart local v23    # "taskTop":Lcom/android/server/am/ActivityRecord;
    :cond_1fc
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "moveTaskToStack : can not move VR task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to non VR stack"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 5666
    :cond_21f
    if-eqz v23, :cond_8b

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v5

    if-eqz v5, :cond_8b

    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    invoke-virtual {v5}, Lcom/android/server/am/VRApplicationPolicy;->inVRMode()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 5668
    const/4 v5, 0x1

    move-object/from16 v0, v23

    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->launchedBehindVRApp:Z

    goto/16 :goto_8b

    .line 5691
    .end local v23    # "taskTop":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "prevStack":Lcom/android/server/am/ActivityStack;
    .restart local v8    # "updateFocus":Z
    .restart local v14    # "isTopActivityNormal":Z
    .restart local v16    # "prevDisplayId":I
    .restart local v24    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "wasInFloatingStack":Z
    .restart local v26    # "willBeInFloatingStack":Z
    :cond_23a
    const/4 v8, 0x0

    goto/16 :goto_be

    .line 5757
    .restart local v10    # "appTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "isNeedEnsureVisibleCall":Z
    .restart local v15    # "needToMoveHomeStackTaskToTop":Z
    .restart local v17    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v19    # "targetDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .restart local v21    # "targetStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v22    # "taskToReturnTo":I
    :cond_23d
    move-object/from16 v0, p0

    iget-object v5, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Lcom/android/server/wm/WindowManagerService;->addMultiWindowTransitionTargetIfNeeded(Ljava/util/ArrayList;I)V

    goto/16 :goto_21
.end method

.method public multiWindowSettingChangeLocked(Z)V
    .registers 15
    .param p1, "value"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 9250
    if-nez p1, :cond_f8

    .line 9251
    iget-object v9, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "displayNdx":I
    :goto_c
    if-ltz v2, :cond_f5

    .line 9252
    iget-object v9, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 9253
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget v9, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v11, v9}, getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 9254
    .local v3, "normalStack":Lcom/android/server/am/ActivityStack;
    const/4 v4, -0x1

    .line 9255
    .local v4, "normalStackId":I
    if-nez v3, :cond_56

    .line 9256
    invoke-virtual {p0}, getNextStackId()I

    move-result v9

    iget v10, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v9, v10, v11}, createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 9257
    if-eqz v3, :cond_2d

    .line 9258
    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 9263
    :cond_2d
    :goto_2d
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 9264
    .local v8, "topResumedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    new-instance v7, Ljava/util/ArrayList;

    iget v9, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v9}, getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9265
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .local v6, "taskNdx":I
    :goto_43
    if-ltz v6, :cond_ac

    .line 9266
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 9268
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget v9, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v9}, isCurrentProfileLocked(I)Z

    move-result v9

    if-nez v9, :cond_59

    .line 9265
    :cond_53
    :goto_53
    add-int/lit8 v6, v6, -0x1

    goto :goto_43

    .line 9261
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v6    # "taskNdx":I
    .end local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v8    # "topResumedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_56
    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_2d

    .line 9271
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "taskNdx":I
    .restart local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v8    # "topResumedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_59
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 9272
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_53

    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v9

    if-nez v9, :cond_53

    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isVRStack()Z

    move-result v9

    if-nez v9, :cond_53

    .line 9276
    if-eqz v1, :cond_7b

    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_7b

    .line 9277
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 9280
    :cond_7b
    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 9281
    iget v9, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v10, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v10, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v9, v10, v11, v11}, moveTaskToStackLocked(IIZZ)V

    goto :goto_53

    .line 9284
    :cond_8d
    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    if-eqz v9, :cond_a6

    .line 9285
    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 9286
    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v10, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9, v5, v10}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 9287
    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9, v1, v12, v12}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 9289
    :cond_a6
    iget v9, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v9, v4, v11, v11}, moveTaskToStackLocked(IIZZ)V

    goto :goto_53

    .line 9291
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_ac
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    :goto_b2
    if-ltz v6, :cond_f1

    .line 9292
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 9293
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 9294
    .restart local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v9

    if-eqz v9, :cond_d2

    .line 9295
    iget v9, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v10, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v10, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v9, v10, v12, v12}, moveTaskToStackLocked(IIZZ)V

    .line 9291
    :goto_cf
    add-int/lit8 v6, v6, -0x1

    goto :goto_b2

    .line 9297
    :cond_d2
    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    if-eqz v9, :cond_eb

    .line 9298
    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 9299
    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v10, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9, v5, v10}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 9300
    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9, v1, v12, v12}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 9302
    :cond_eb
    iget v9, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v9, v4, v12, v12}, moveTaskToStackLocked(IIZZ)V

    goto :goto_cf

    .line 9251
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_f1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_c

    .line 9306
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v3    # "normalStack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "normalStackId":I
    .end local v6    # "taskNdx":I
    .end local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v8    # "topResumedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_f5
    invoke-virtual {p0}, resumeTopActivitiesLocked()Z

    .line 9308
    .end local v2    # "displayNdx":I
    :cond_f8
    return-void
.end method

.method public needMoveOnlySpecificTaskToFront(I)Z
    .registers 16
    .param p1, "taskId"    # I

    .prologue
    .line 5882
    invoke-virtual {p0, p1}, anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v9

    .line 5883
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "needMoveOnlySpecificTaskToFront : task = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5884
    if-nez v9, :cond_21

    .line 5885
    const/4 v11, 0x0

    .line 5919
    :goto_20
    return v11

    .line 5888
    :cond_21
    invoke-virtual {p0}, getStacks()Ljava/util/ArrayList;

    move-result-object v5

    .line 5889
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5890
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_2b
    if-ltz v1, :cond_f0

    .line 5891
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    .line 5892
    .local v8, "targetStack":Lcom/android/server/am/ActivityStack;
    if-eqz v8, :cond_ec

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v11

    if-eqz v11, :cond_ec

    invoke-virtual {p0, v8}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v11

    if-eqz v11, :cond_ec

    .line 5893
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 5894
    .local v10, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_ec

    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v11, :cond_ec

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v11, :cond_ec

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v12, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ec

    .line 5896
    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v11, :cond_98

    .line 5897
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/MultiWindowPolicy;->getEnableMultiInstance(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z

    move-result v2

    .line 5898
    .local v2, "isSupportMultiInstance":Z
    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ec

    if-nez v2, :cond_ec

    .line 5899
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "needMoveOnlySpecificTaskToFront : Try to move task to mSpecificFloatingStack = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, mSpecificFloatingStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5900
    iput-object v8, p0, mSpecificFloatingStack:Lcom/android/server/am/ActivityStack;

    .line 5901
    const/4 v11, 0x1

    goto :goto_20

    .line 5903
    .end local v2    # "isSupportMultiInstance":Z
    :cond_98
    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v11, :cond_ec

    .line 5904
    new-instance v3, Landroid/content/Intent;

    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 5905
    .local v3, "source":Landroid/content/Intent;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5906
    new-instance v4, Landroid/content/Intent$FilterComparison;

    invoke-direct {v4, v3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 5907
    .local v4, "sourceFilter":Landroid/content/Intent$FilterComparison;
    new-instance v6, Landroid/content/Intent;

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 5908
    .local v6, "target":Landroid/content/Intent;
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5909
    new-instance v7, Landroid/content/Intent$FilterComparison;

    invoke-direct {v7, v6}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 5910
    .local v7, "targetFilter":Landroid/content/Intent$FilterComparison;
    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->isDocument()Z

    move-result v11

    if-eqz v11, :cond_ec

    invoke-virtual {v4, v7}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ec

    .line 5911
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "needMoveOnlySpecificTaskToFront : Try to move task to mSpecificFloatingStack = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, mSpecificFloatingStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5912
    iput-object v8, p0, mSpecificFloatingStack:Lcom/android/server/am/ActivityStack;

    .line 5913
    const/4 v11, 0x1

    goto/16 :goto_20

    .line 5890
    .end local v3    # "source":Landroid/content/Intent;
    .end local v4    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    .end local v6    # "target":Landroid/content/Intent;
    .end local v7    # "targetFilter":Landroid/content/Intent$FilterComparison;
    .end local v10    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_ec
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2b

    .line 5919
    .end local v8    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_f0
    const/4 v11, 0x0

    goto/16 :goto_20
.end method

.method notifyActivityDrawnForKeyguard()V
    .registers 3

    .prologue
    .line 695
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->notifyActivityDrawnForKeyguard()V

    .line 697
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mTargetDismiss:Landroid/content/Intent;

    .line 698
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mIsKeyguardWaitingForActivityDrawnRequested:Z

    .line 700
    return-void
.end method

.method final notifyCoupledTaskStatusChangedLocked()V
    .registers 14

    .prologue
    .line 8880
    const/4 v0, 0x0

    .line 8882
    .local v0, "IsResumedBothCoupled":Z
    iget-object v10, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 8883
    .local v5, "numDisplays":I
    const/4 v3, 0x0

    .local v3, "displayNdx":I
    :goto_8
    if-ge v3, v5, :cond_6c

    .line 8884
    iget-object v10, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 8885
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_69

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStack;

    .line 8886
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v8, 0x0

    .line 8887
    .local v8, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v9, 0x0

    .line 8888
    .local v9, "topOfOpposite":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    .line 8889
    .local v1, "Opposite":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0, v6}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_18

    .line 8890
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v10, :cond_18

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v10, :cond_18

    iget-object v10, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v10, :cond_18

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v10, v10, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v11, v11, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v10, v11, :cond_18

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_18

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v11, :cond_18

    .line 8895
    iget-object v10, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 8896
    const/4 v0, 0x1

    .line 8883
    .end local v1    # "Opposite":Lcom/android/server/am/TaskRecord;
    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "topOfOpposite":Lcom/android/server/am/ActivityRecord;
    :cond_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 8903
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_6c
    iget-boolean v10, p0, mIsResumedBothCoupled:Z

    if-eq v0, v10, :cond_89

    .line 8904
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.sec.android.action.NOTIFY_COUPLEDTASK_RESUMED_STATUS"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8906
    .local v2, "coupledTaskStatusIntent":Landroid/content/Intent;
    const-string v10, "com.sec.android.extra.COUPLED_RESUMED_STATUS"

    invoke-virtual {v2, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8908
    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const-string v12, "com.samsung.android.dualscreen.permission.USE_INTERNAL_APIS"

    invoke-virtual {v10, v2, v11, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 8910
    iput-boolean v0, p0, mIsResumedBothCoupled:Z

    .line 8912
    .end local v2    # "coupledTaskStatusIntent":Landroid/content/Intent;
    :cond_89
    return-void
.end method

.method final notifyGlobalMultiWindowStatusChangedLocked()V
    .registers 13

    .prologue
    .line 8921
    const/4 v1, 0x0

    .line 8922
    .local v1, "hasMultiWindowStack":Z
    const/4 v2, 0x0

    .line 8923
    .local v2, "hasRunningCascadeApp":Z
    const/4 v3, 0x0

    .line 8925
    .local v3, "hasRunningSplitApp":Z
    iget-object v10, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 8926
    .local v6, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_a
    if-ge v0, v6, :cond_55

    .line 8927
    iget-object v10, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v8, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 8928
    .local v8, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    .line 8929
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v9, 0x0

    .line 8930
    .local v9, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v7}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_1a

    .line 8931
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    if-eqz v10, :cond_1a

    .line 8932
    const/4 v1, 0x1

    .line 8933
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_47

    .line 8934
    const/4 v2, 0x1

    goto :goto_1a

    .line 8935
    :cond_47
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1a

    .line 8936
    const/4 v3, 0x1

    goto :goto_1a

    .line 8926
    .end local v7    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 8943
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_55
    iget-boolean v10, p0, mHasMultiWindowStack:Z

    if-ne v1, v10, :cond_61

    iget-boolean v10, p0, mHasRunningCascadeApp:Z

    if-ne v2, v10, :cond_61

    iget-boolean v10, p0, mHasRunningSplitApp:Z

    if-eq v3, v10, :cond_93

    .line 8945
    :cond_61
    const-string/jumbo v11, "sys.multiwindow.running"

    if-eqz v1, :cond_94

    const-string v10, "1"

    :goto_68
    invoke-static {v11, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8947
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8948
    .local v5, "multiWindowModeIntent":Landroid/content/Intent;
    const-string v10, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8949
    const-string v10, "com.sec.android.extra.MULTIWINDOW_FREESTYLE"

    invoke-virtual {v5, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8950
    const-string v10, "com.sec.android.extra.MULTIWINDOW_SPLIT"

    invoke-virtual {v5, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8951
    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 8953
    iput-boolean v1, p0, mHasMultiWindowStack:Z

    .line 8954
    iput-boolean v2, p0, mHasRunningCascadeApp:Z

    .line 8955
    iput-boolean v3, p0, mHasRunningSplitApp:Z

    .line 8957
    iget-object v10, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowManagerService;->setIsCascadeRunning(Z)V

    .line 8959
    .end local v5    # "multiWindowModeIntent":Landroid/content/Intent;
    :cond_93
    return-void

    .line 8945
    :cond_94
    const-string v10, "0"

    goto :goto_68
.end method

.method public notifyMinimizeMultiWindow(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 9243
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 9244
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_d

    .line 9245
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStack;->onNotifyMinimizeMultiWindow(Lcom/android/server/am/ActivityRecord;)V

    .line 9247
    :cond_d
    return-void
.end method

.method public notifyResizeStack()V
    .registers 16

    .prologue
    .line 8962
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 8963
    :try_start_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8964
    .local v7, "taskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 8965
    .local v4, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_f
    if-ge v0, v4, :cond_65

    .line 8966
    iget-object v10, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 8967
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 8968
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 8969
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 8970
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_39
    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 8971
    .local v8, "taskRecord":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-eqz v10, :cond_39

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v12, :cond_39

    .line 8972
    iget v10, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 8984
    .end local v0    # "displayNdx":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "numDisplays":I
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v7    # "taskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "taskRecord":Lcom/android/server/am/TaskRecord;
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_5f
    move-exception v10

    monitor-exit v11
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw v10

    .line 8965
    .restart local v0    # "displayNdx":I
    .restart local v4    # "numDisplays":I
    .restart local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v7    # "taskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 8978
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_66
    :try_start_66
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_8a

    .line 8979
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 8980
    .restart local v8    # "taskRecord":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_87

    .line 8981
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-virtual {v10, v12, v13, v14}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 8978
    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 8984
    .end local v8    # "taskRecord":Lcom/android/server/am/TaskRecord;
    :cond_8a
    monitor-exit v11
    :try_end_8b
    .catchall {:try_start_66 .. :try_end_8b} :catchall_5f

    .line 8985
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 7255
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7256
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 7267
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7268
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 7261
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7262
    return-void
.end method

.method onLockTaskPackagesUpdatedLocked()V
    .registers 15

    .prologue
    .line 7512
    const/4 v0, 0x0

    .line 7513
    .local v0, "didSomething":Z
    iget-object v11, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v9, v11, -0x1

    .local v9, "taskNdx":I
    :goto_9
    if-ltz v9, :cond_3e

    .line 7514
    iget-object v11, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 7515
    .local v3, "lockedTask":Lcom/android/server/am/TaskRecord;
    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1d

    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3a

    :cond_1d
    const/4 v10, 0x1

    .line 7518
    .local v10, "wasWhitelisted":Z
    :goto_1e
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    .line 7519
    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_2b

    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3c

    :cond_2b
    const/4 v2, 0x1

    .line 7522
    .local v2, "isWhitelisted":Z
    :goto_2c
    if-eqz v10, :cond_37

    if-nez v2, :cond_37

    .line 7526
    invoke-virtual {p0, v3}, removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 7527
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 7528
    const/4 v0, 0x1

    .line 7513
    :cond_37
    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 7515
    .end local v2    # "isWhitelisted":Z
    .end local v10    # "wasWhitelisted":Z
    :cond_3a
    const/4 v10, 0x0

    goto :goto_1e

    .line 7519
    .restart local v10    # "wasWhitelisted":Z
    :cond_3c
    const/4 v2, 0x0

    goto :goto_2c

    .line 7531
    .end local v3    # "lockedTask":Lcom/android/server/am/TaskRecord;
    .end local v10    # "wasWhitelisted":Z
    :cond_3e
    iget-object v11, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .local v1, "displayNdx":I
    :goto_46
    if-ltz v1, :cond_69

    .line 7532
    iget-object v11, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 7533
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .local v6, "stackNdx":I
    :goto_58
    if-ltz v6, :cond_66

    .line 7534
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 7535
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->onLockTaskPackagesUpdatedLocked()V

    .line 7533
    add-int/lit8 v6, v6, -0x1

    goto :goto_58

    .line 7531
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_66
    add-int/lit8 v1, v1, -0x1

    goto :goto_46

    .line 7538
    .end local v6    # "stackNdx":I
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_69
    invoke-virtual {p0}, topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 7539
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_8f

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 7540
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    :goto_71
    iget-object v11, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_89

    if-eqz v8, :cond_89

    iget v11, v8, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_89

    .line 7545
    const/4 v11, 0x1

    const-string/jumbo v12, "package updated"

    const/4 v13, 0x0

    invoke-virtual {p0, v8, v11, v12, v13}, setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    .line 7547
    const/4 v0, 0x1

    .line 7549
    :cond_89
    if-eqz v0, :cond_8e

    .line 7550
    invoke-virtual {p0}, resumeTopActivitiesLocked()Z

    .line 7552
    :cond_8e
    return-void

    .line 7539
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_8f
    const/4 v8, 0x0

    goto :goto_71
.end method

.method pauseBackStacks(ZZZ)Z
    .registers 5
    .param p1, "userLeaving"    # Z
    .param p2, "resuming"    # Z
    .param p3, "dontWait"    # Z

    .prologue
    .line 1452
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, pauseBackStacks(ZZZZ)Z

    move-result v0

    return v0
.end method

.method pauseBackStacks(ZZZZ)Z
    .registers 11
    .param p1, "userLeaving"    # Z
    .param p2, "resuming"    # Z
    .param p3, "dontWait"    # Z
    .param p4, "needToIdle"    # Z

    .prologue
    .line 1457
    const/4 v1, 0x0

    .line 1458
    .local v1, "someActivityPaused":Z
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_9
    if-ltz v0, :cond_39

    .line 1459
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1460
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1b
    if-ltz v3, :cond_36

    .line 1461
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1462
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-nez v5, :cond_33

    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_33

    .line 1470
    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5, p2, p3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    move-result v5

    or-int/2addr v1, v5

    .line 1460
    :cond_33
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 1458
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1475
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_39
    return v1
.end method

.method pauseChildStacks(Lcom/android/server/am/ActivityRecord;ZZZZ)V
    .registers 11
    .param p1, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "userLeaving"    # Z
    .param p3, "uiSleeping"    # Z
    .param p4, "resuming"    # Z
    .param p5, "dontWait"    # Z

    .prologue
    .line 1533
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_35

    .line 1534
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 1535
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1a
    if-ltz v2, :cond_32

    .line 1536
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 1537
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_2f

    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_2f

    .line 1539
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 1535
    :cond_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 1533
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1543
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_35
    return-void
.end method

.method processFinishingActivitiesLocked(ZI)Ljava/util/ArrayList;
    .registers 8
    .param p1, "remove"    # Z
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9595
    iget-object v4, p0, mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9597
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9599
    .local v2, "finishs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v0, :cond_3d

    .line 9600
    iget-object v4, p0, mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 9601
    .local v1, "f":Lcom/android/server/am/ActivityRecord;
    const/4 v4, -0x1

    if-le p2, v4, :cond_29

    .line 9602
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    invoke-virtual {v4, p2}, Lcom/android/server/am/DualScreenAttrs;->addFinishFlag(I)V

    .line 9603
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    invoke-virtual {v4}, Lcom/android/server/am/DualScreenAttrs;->okToFinish()Z

    move-result v4

    if-nez v4, :cond_29

    .line 9599
    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 9607
    :cond_29
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    invoke-virtual {v4}, Lcom/android/server/am/DualScreenAttrs;->clearFinishFlag()V

    .line 9608
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9609
    if-eqz p1, :cond_26

    .line 9610
    iget-object v4, p0, mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9611
    add-int/lit8 v0, v0, -0x1

    .line 9612
    add-int/lit8 v3, v3, -0x1

    goto :goto_26

    .line 9615
    .end local v1    # "f":Lcom/android/server/am/ActivityRecord;
    :cond_3d
    return-object v2
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .registers 3
    .param p1, "remove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6859
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, processStoppingActivitiesLocked(ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method final processStoppingActivitiesLocked(ZI)Ljava/util/ArrayList;
    .registers 12
    .param p1, "remove"    # Z
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6864
    const/4 v3, 0x0

    .line 6866
    .local v3, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p0}, allResumedActivitiesVisible()Z

    move-result v1

    .line 6867
    .local v1, "nowVisible":Z
    iget-object v5, p0, mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "activityNdx":I
    :goto_d
    if-ltz v0, :cond_54

    .line 6868
    iget-object v5, p0, mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 6869
    .local v2, "s":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 6883
    .local v4, "waitingVisible":Z
    if-eqz v4, :cond_36

    if-eqz v1, :cond_36

    .line 6884
    iget-object v5, p0, mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6885
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_36

    .line 6892
    iget-object v5, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    .line 6895
    :cond_36
    if-eqz v4, :cond_40

    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v5

    if-eqz v5, :cond_51

    :cond_40
    if-eqz p1, :cond_51

    .line 6897
    if-nez v3, :cond_49

    .line 6898
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6900
    .restart local v3    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_49
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6901
    iget-object v5, p0, mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6867
    :cond_51
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 6905
    .end local v2    # "s":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "waitingVisible":Z
    :cond_54
    return-object v3
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .registers 39
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2314
    if-eqz p3, :cond_4f

    .line 2315
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 2316
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    .line 2320
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isVRActivity()Z

    move-result v4

    if-nez v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    invoke-virtual {v4}, Lcom/android/server/am/VRApplicationPolicy;->inVRMode()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 2321
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchedBehindVRApp:Z

    .line 2328
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateSubWindowState(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 2332
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    .line 2335
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 2344
    :cond_4f
    if-eqz p4, :cond_76

    .line 2368
    move-object/from16 v0, p0

    iget-object v5, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_1cf

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_65
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v24

    .line 2371
    .local v24, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 2375
    .end local v24    # "config":Landroid/content/res/Configuration;
    :cond_76
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2376
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 2377
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 2378
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 2383
    const-string v4, "com.sec.android.app.camera/.Camera"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f1

    const-string v4, "com.sec.android.app.ocr/.OCR"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f1

    const-string v4, "com.cyworld.camera/com.cyworld.cymera.CameraMain"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12a

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 2390
    :cond_f1
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "realStartActivityLocked aggressive kill try "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    const-string/jumbo v4, "persist.sys.kill_support"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2395
    .local v27, "mSupportAggrKill":I
    if-lez v27, :cond_12a

    .line 2396
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string v6, "camera-start"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->killProcessesForMemoryLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 2400
    .end local v27    # "mSupportAggrKill":I
    :cond_12a
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v26

    .line 2401
    .local v26, "idx":I
    if-gez v26, :cond_13f

    .line 2402
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2404
    :cond_13f
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2405
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 2407
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v33, v0

    .line 2408
    .local v33, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v33

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_165

    move-object/from16 v0, v33

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_171

    .line 2410
    :cond_165
    const/4 v4, 0x1

    const-string/jumbo v5, "mLockTaskAuth==LAUNCHABLE"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v4, v5, v6}, setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    .line 2413
    :cond_171
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v32, v0

    .line 2415
    .local v32, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_177
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v4, :cond_1d2

    .line 2416
    new-instance v4, Landroid/os/RemoteException;

    invoke-direct {v4}, Landroid/os/RemoteException;-><init>()V

    throw v4
    :try_end_183
    .catch Landroid/os/RemoteException; {:try_start_177 .. :try_end_183} :catch_183

    .line 2536
    :catch_183
    move-exception v25

    .line 2537
    .local v25, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v4, :cond_49a

    .line 2540
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second failure launching "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", giving up"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2543
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2544
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "2nd-crash"

    const/4 v15, 0x0

    move-object/from16 v10, v32

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2546
    const/4 v4, 0x0

    .line 2597
    .end local v25    # "e":Landroid/os/RemoteException;
    :goto_1ce
    return v4

    .line 2368
    .end local v26    # "idx":I
    .end local v32    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v33    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1cf
    const/4 v4, 0x0

    goto/16 :goto_65

    .line 2418
    .restart local v26    # "idx":I
    .restart local v32    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v33    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1d2
    const/16 v17, 0x0

    .line 2419
    .local v17, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/16 v18, 0x0

    .line 2420
    .local v18, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p3, :cond_1eb

    .line 2421
    :try_start_1d8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 2422
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 2424
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/TaskRecord;->bHidden:Z

    .line 2430
    :cond_1eb
    if-eqz p3, :cond_22c

    .line 2431
    const/16 v4, 0x7536

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, v33

    iget v7, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2435
    :cond_22c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v4

    if-eqz v4, :cond_47a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v4

    if-eqz v4, :cond_47a

    .line 2437
    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 2444
    :cond_24b
    :goto_24b
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 2445
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2446
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 2447
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2448
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 2449
    const/16 v21, 0x0

    .line 2450
    .local v21, "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v4, :cond_2e6

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e6

    .line 2451
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2af

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v4, v0, :cond_2e6

    .line 2452
    :cond_2af
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 2453
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 2454
    .local v30, "profileFile":Ljava/lang/String;
    if-eqz v30, :cond_2e6

    .line 2455
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v29, v0
    :try_end_2c9
    .catch Landroid/os/RemoteException; {:try_start_1d8 .. :try_end_2c9} :catch_183

    .line 2456
    .local v29, "profileFd":Landroid/os/ParcelFileDescriptor;
    if-eqz v29, :cond_2cf

    .line 2458
    :try_start_2cb
    invoke-virtual/range {v29 .. v29}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_2ce
    .catch Ljava/io/IOException; {:try_start_2cb .. :try_end_2ce} :catch_48c
    .catch Landroid/os/RemoteException; {:try_start_2cb .. :try_end_2ce} :catch_183

    move-result-object v29

    .line 2470
    :cond_2cf
    :goto_2cf
    :try_start_2cf
    new-instance v21, Landroid/app/ProfilerInfo;

    .end local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mSamplingInterval:I

    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZ)V

    .line 2476
    .end local v29    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v30    # "profileFile":Ljava/lang/String;
    .restart local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_2e6
    if-eqz p3, :cond_2f2

    .line 2477
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 2478
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2480
    :cond_2f2
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 2489
    new-instance v9, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v9, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2491
    .local v9, "tmpConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v4, :cond_334

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->isScaledPid(I)Z

    move-result v4

    if-eqz v4, :cond_334

    .line 2492
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDssHelper:Landroid/os/DssHelper;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/DssHelper;->getScalingFactorAdss(Ljava/lang/String;)F

    move-result v31

    .line 2493
    .local v31, "resolutionFactorf":F
    iget v4, v9, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v4, v4

    mul-float v4, v4, v31

    float-to-int v4, v4

    iput v4, v9, Landroid/content/res/Configuration;->densityDpi:I

    .line 2498
    .end local v31    # "resolutionFactorf":F
    :cond_334
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(I)V

    .line 2507
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    new-instance v10, Landroid/content/res/Configuration;

    move-object/from16 v0, v32

    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v10, v11}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    move-object/from16 v16, v0

    if-nez p3, :cond_496

    const/16 v19, 0x1

    :goto_381
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward(I)Z

    move-result v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v23

    invoke-interface/range {v4 .. v23}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 2516
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_421

    .line 2521
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v4, :cond_421

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_421

    .line 2522
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_3fc

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v4, v0, :cond_3fc

    .line 2524
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting new heavy weight process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when already running "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    :cond_3fc
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 2529
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 2531
    .local v28, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2532
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_421
    .catch Landroid/os/RemoteException; {:try_start_2cf .. :try_end_421} :catch_183

    .line 2555
    .end local v28    # "msg":Landroid/os/Message;
    :cond_421
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 2556
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_450

    .line 2557
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " being launched, but already in LRU list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    :cond_450
    if-eqz p3, :cond_4a4

    .line 2564
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2589
    :goto_459
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_46a

    .line 2590
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 2595
    :cond_46a
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2597
    const/4 v4, 0x1

    goto/16 :goto_1ce

    .line 2440
    .end local v9    # "tmpConfig":Landroid/content/res/Configuration;
    .end local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_47a
    :try_start_47a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v4

    if-eqz v4, :cond_24b

    .line 2441
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mRecentsProcess:Lcom/android/server/am/ProcessRecord;
    :try_end_48a
    .catch Landroid/os/RemoteException; {:try_start_47a .. :try_end_48a} :catch_183

    goto/16 :goto_24b

    .line 2459
    .restart local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v29    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .restart local v30    # "profileFile":Ljava/lang/String;
    :catch_48c
    move-exception v25

    .line 2460
    .local v25, "e":Ljava/io/IOException;
    if-eqz v29, :cond_2cf

    .line 2462
    :try_start_48f
    invoke-virtual/range {v29 .. v29}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_492
    .catch Ljava/io/IOException; {:try_start_48f .. :try_end_492} :catch_4b0
    .catch Landroid/os/RemoteException; {:try_start_48f .. :try_end_492} :catch_183

    .line 2465
    :goto_492
    const/16 v29, 0x0

    goto/16 :goto_2cf

    .line 2507
    .end local v25    # "e":Ljava/io/IOException;
    .end local v29    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v30    # "profileFile":Ljava/lang/String;
    .restart local v9    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_496
    const/16 v19, 0x0

    goto/16 :goto_381

    .line 2551
    .end local v9    # "tmpConfig":Landroid/content/res/Configuration;
    .end local v17    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v18    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v25, "e":Landroid/os/RemoteException;
    :cond_49a
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2552
    throw v25

    .line 2581
    .end local v25    # "e":Landroid/os/RemoteException;
    .restart local v9    # "tmpConfig":Landroid/content/res/Configuration;
    .restart local v17    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v18    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .restart local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_4a4
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2582
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_459

    .line 2463
    .end local v9    # "tmpConfig":Landroid/content/res/Configuration;
    .local v25, "e":Ljava/io/IOException;
    .restart local v29    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .restart local v30    # "profileFile":Ljava/lang/String;
    :catch_4b0
    move-exception v4

    goto :goto_492
.end method

.method releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 6739
    const/4 v1, 0x0

    .line 6741
    .local v1, "firstTask":Lcom/android/server/am/TaskRecord;
    const/4 v8, 0x0

    .line 6743
    .local v8, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_68

    .line 6744
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 6748
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_23

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_23

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_24

    .line 6791
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_23
    return-void

    .line 6754
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_24
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v9, :cond_48

    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v9, :cond_48

    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v9, :cond_48

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_48

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_48

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_48

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_4b

    .line 6743
    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6759
    :cond_4b
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_48

    .line 6762
    if-nez v1, :cond_54

    .line 6763
    iget-object v1, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    goto :goto_48

    .line 6764
    :cond_54
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v1, v9, :cond_48

    .line 6765
    if-nez v8, :cond_62

    .line 6766
    new-instance v8, Landroid/util/ArraySet;

    .end local v8    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 6767
    .restart local v8    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 6769
    :cond_62
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 6773
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_68
    if-eqz v8, :cond_23

    .line 6779
    iget-object v9, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 6780
    .local v3, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_71
    if-ge v0, v3, :cond_23

    .line 6781
    iget-object v9, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6783
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    const/4 v6, 0x0

    .local v6, "stackNdx":I
    :goto_7e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_93

    .line 6784
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 6786
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5, p1, v8, p2}, Lcom/android/server/am/ActivityStack;->releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_23

    .line 6783
    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    .line 6780
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_93
    add-int/lit8 v0, v0, 0x1

    goto :goto_71
.end method

.method removeAllStacks(I)V
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 9592
    return-void
.end method

.method removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "parentActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 5245
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    .line 5246
    .local v0, "childStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "containerNdx":I
    :goto_8
    if-ltz v2, :cond_16

    .line 5247
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 5250
    .local v1, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->release()V

    .line 5246
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 5252
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_16
    return-void
.end method

.method removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 7383
    iget-object v1, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 7396
    :cond_8
    :goto_8
    return-void

    .line 7387
    :cond_9
    iget-object v1, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7391
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7392
    .local v0, "lockTaskMsg":Landroid/os/Message;
    iget v1, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 7393
    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7394
    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8
.end method

.method removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    .registers 5
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 4668
    iget-object v2, p0, mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "palNdx":I
    :goto_8
    if-ltz v1, :cond_1e

    .line 4669
    iget-object v2, p0, mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 4670
    .local v0, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_1b

    .line 4671
    iget-object v2, p0, mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4668
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 4674
    .end local v0    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1e
    return-void
.end method

.method removeSleepTimeouts()V
    .registers 3

    .prologue
    .line 7243
    const/4 v0, 0x0

    iput-boolean v0, p0, mSleepTimeout:Z

    .line 7244
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 7245
    return-void
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 7233
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7234
    return-void
.end method

.method removeUserLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 4889
    iget-object v0, p0, mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4890
    return-void
.end method

.method removeVirtualScreen(I)V
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 1691
    invoke-virtual {p0, p1}, onDisplayRemoved(I)V

    .line 1692
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .registers 14
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "thisTime"    # J
    .param p5, "totalTime"    # J

    .prologue
    .line 1575
    const/4 v0, 0x0

    .line 1576
    .local v0, "changed":Z
    iget-object v3, p0, mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_32

    .line 1577
    iget-object v3, p0, mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    .line 1578
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_2f

    .line 1579
    const/4 v0, 0x1

    .line 1580
    iput-boolean p1, v2, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 1581
    if-eqz p2, :cond_2b

    .line 1582
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 1584
    :cond_2b
    iput-wide p3, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 1585
    iput-wide p5, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 1576
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1588
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_32
    if-eqz v0, :cond_39

    .line 1589
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1591
    :cond_39
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1546
    invoke-virtual {p0, p1}, sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1548
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->isTargetDismissIntent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1549
    invoke-virtual {p0}, notifyActivityDrawnForKeyguard()V

    .line 1552
    :cond_e
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6424
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 6425
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v0}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6426
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 6429
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStarted(Lcom/android/server/am/ActivityRecord;)V

    .line 6441
    :cond_18
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v3, :cond_33

    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v3, :cond_33

    .line 6442
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->handlePackageResumedFG(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V

    .line 6446
    :cond_33
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {p0, v3}, allResumedActivitiesComplete(I)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 6448
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {p0, v3}, allResumedActivitiesVisible(I)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 6449
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mMinimizeAllPenWindowRequested:Z

    if-eqz v3, :cond_56

    .line 6450
    invoke-virtual {p0}, handleMinimizeAllPenWindow()V

    .line 6454
    :cond_56
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 6462
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition(I)V

    .line 6466
    :goto_63
    return v1

    :cond_64
    move v1, v2

    goto :goto_63
.end method

.method requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6481
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 6482
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_b

    move v4, v5

    .line 6531
    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_a
    return v4

    .line 6487
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_b
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v0

    .line 6491
    .local v0, "isVisible":Z
    invoke-virtual {p0}, topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 6492
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_19

    if-eq v3, p1, :cond_19

    if-ne p2, v0, :cond_22

    .line 6494
    :cond_19
    if-eqz p2, :cond_20

    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1b
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    move v4, v6

    .line 6495
    goto :goto_a

    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_20
    move-object p1, v4

    .line 6494
    goto :goto_1b

    .line 6499
    :cond_22
    if-eqz p2, :cond_2a

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v7, :cond_2a

    move v4, v5

    .line 6505
    goto :goto_a

    .line 6506
    :cond_2a
    if-nez p2, :cond_34

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eq v7, p1, :cond_34

    move v4, v5

    .line 6513
    goto :goto_a

    .line 6516
    :cond_34
    if-eqz p2, :cond_37

    move-object v4, p1

    :cond_37
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 6517
    if-nez p2, :cond_49

    .line 6519
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 6520
    .local v1, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_49

    .line 6521
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->convertFromTranslucent(Landroid/os/IBinder;)Z

    .line 6524
    .end local v1    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_49
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_5c

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_5c

    .line 6527
    :try_start_53
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v5, p2}, Landroid/app/IApplicationThread;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5c} :catch_5e

    :cond_5c
    :goto_5c
    move v4, v6

    .line 6531
    goto :goto_a

    .line 6528
    :catch_5e
    move-exception v4

    goto :goto_5c
.end method

.method resizeStackLocked(ILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "stackId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 5267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, resizeStackLocked(ILandroid/graphics/Rect;Z)V

    .line 5268
    return-void
.end method

.method resizeStackLocked(ILandroid/graphics/Rect;Z)V
    .registers 12
    .param p1, "stackId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "forceToResize"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 5272
    invoke-virtual {p0, p1}, getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 5273
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_28

    .line 5274
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resizeStack: stackId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5310
    :cond_27
    :goto_27
    return-void

    .line 5278
    :cond_28
    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 5279
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_58

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    if-nez v4, :cond_58

    .line 5281
    if-nez p3, :cond_58

    .line 5283
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resizeStack: top task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not resizeable."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 5288
    :cond_58
    iget-object v4, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowManagerService;->resizeStack(ILandroid/graphics/Rect;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 5289
    .local v0, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStack;->updateOverrideConfiguration(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 5290
    if-eqz v1, :cond_27

    .line 5291
    invoke-virtual {v2, v1, v7}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v3

    .line 5294
    .local v3, "updated":Z
    invoke-virtual {p0, v1, v7}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 5295
    if-nez v3, :cond_27

    .line 5296
    invoke-virtual {p0, v2, v5, v5}, resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    goto :goto_27

    .line 5300
    .end local v3    # "updated":Z
    :cond_73
    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v4, :cond_27

    if-eqz p3, :cond_27

    .line 5301
    if-eqz v1, :cond_27

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v4

    if-eqz v4, :cond_27

    iget-object v4, v2, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 5303
    sget-boolean v4, SAFE_DEBUG:Z

    if-eqz v4, :cond_b4

    .line 5304
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "need ensureActivityConfig for split, r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", r.stackConfigOverride="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5306
    :cond_b4
    invoke-virtual {v2, v1, v7}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    goto/16 :goto_27
.end method

.method resizeTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 5316
    iput-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    .line 5317
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 5318
    .local v0, "currentStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 5352
    :cond_c
    :goto_c
    return-void

    .line 5323
    :cond_d
    iget-object v4, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/WindowManagerService;->getStackIdWithBounds(Landroid/graphics/Rect;)I

    move-result v2

    .line 5324
    .local v2, "matchingStackId":I
    if-eq v2, v5, :cond_21

    .line 5326
    if-eqz v0, :cond_1b

    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eq v4, v2, :cond_c

    .line 5331
    :cond_1b
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v4, v2, v6}, moveTaskToStackLocked(IIZ)V

    goto :goto_c

    .line 5335
    :cond_21
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->numTasks()I

    move-result v4

    if-ne v4, v6, :cond_2f

    .line 5337
    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v4, p2}, resizeStackLocked(ILandroid/graphics/Rect;)V

    goto :goto_c

    .line 5342
    :cond_2f
    if-eqz v0, :cond_5b

    iget v4, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v4, v5, :cond_5b

    iget v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 5344
    .local v1, "displayId":I
    :goto_37
    invoke-virtual {p0}, getNextStackId()I

    move-result v4

    invoke-virtual {p0, v4, v1}, createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 5346
    .local v3, "newStack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_5d

    .line 5347
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resizeTaskLocked: Can\'t create stack for task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 5342
    .end local v1    # "displayId":I
    .end local v3    # "newStack":Lcom/android/server/am/ActivityStack;
    :cond_5b
    const/4 v1, 0x0

    goto :goto_37

    .line 5350
    .restart local v1    # "displayId":I
    .restart local v3    # "newStack":Lcom/android/server/am/ActivityStack;
    :cond_5d
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v5, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v4, v5, v6}, moveTaskToStackLocked(IIZ)V

    .line 5351
    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v4, p2}, resizeStackLocked(ILandroid/graphics/Rect;)V

    goto :goto_c
.end method

.method resolveActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 22
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "startFlags"    # I
    .param p5, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p6, "userId"    # I

    .prologue
    .line 1829
    const/4 v7, 0x0

    .line 1830
    .local v7, "displayChooserSelected":Z
    const/4 v6, 0x0

    .line 1831
    .local v6, "callerApp":Lcom/android/server/am/ProcessRecord;
    const/4 v5, 0x0

    .line 1832
    .local v5, "callerActivityRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v4, 0x0

    .line 1847
    .local v4, "callerActivitiesSize":I
    const/4 v10, 0x0

    .line 1850
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    .line 1877
    .local v9, "queryIntent":Landroid/content/Intent;
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    const v12, 0x10480

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p6

    invoke-interface {v11, v0, v1, v12, v2}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 1883
    if-eqz v10, :cond_9e

    iget-object v3, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1b} :catch_a1

    .line 1938
    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_1b
    if-nez p6, :cond_27

    .line 1939
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v11, v10, v0}, Lcom/android/server/pm/PersonaManagerService;->changeInfoIfBBC(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 1943
    :cond_27
    if-eqz v3, :cond_9d

    .line 1961
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v13, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1965
    iget-object v11, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v12, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_55

    if-eqz v10, :cond_55

    iget v11, v10, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/16 v12, 0x64

    if-lt v11, v12, :cond_55

    .line 1967
    const-string/jumbo v11, "crossProfileTargetUserId"

    iget v12, v10, Landroid/content/pm/ResolveInfo;->targetUserId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1972
    :cond_55
    and-int/lit8 v11, p4, 0x2

    if-eqz v11, :cond_6d

    .line 1973
    iget-object v11, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v12, "system"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6d

    .line 1974
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1978
    :cond_6d
    and-int/lit8 v11, p4, 0x4

    if-eqz v11, :cond_85

    .line 1979
    iget-object v11, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v12, "system"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_85

    .line 1980
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 1984
    :cond_85
    if-eqz p5, :cond_9d

    .line 1985
    iget-object v11, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v12, "system"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9d

    .line 1986
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v11, v12, v13, v0}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    .line 1990
    :cond_9d
    return-object v3

    .line 1883
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_9e
    const/4 v3, 0x0

    goto/16 :goto_1b

    .line 1933
    :catch_a1
    move-exception v8

    .line 1934
    .local v8, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_1b
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "userId"    # I

    .prologue
    .line 1824
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, resolveActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 5
    .param p1, "homeStackTaskType"    # I
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 1138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "homeStackTaskType"    # I
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1143
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v3, :cond_e

    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v3, :cond_e

    .line 1186
    :goto_d
    return v2

    .line 1148
    :cond_e
    const/4 v3, 0x2

    if-ne p1, v3, :cond_17

    .line 1149
    iget-object v3, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    goto :goto_d

    .line 1153
    :cond_17
    if-eqz p2, :cond_1e

    .line 1154
    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1158
    :cond_1e
    iget-object v0, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 1167
    .local v0, "mHomeStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop(I)V

    .line 1173
    invoke-virtual {p0}, getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1177
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_38

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_38

    .line 1178
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 1179
    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v2}, resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v2

    goto :goto_d

    .line 1186
    :cond_38
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, p0, mCurrentUser:I

    invoke-virtual {v2, v3, p3, p4}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;I)Z

    move-result v2

    goto :goto_d
.end method

.method resumeTopActivitiesLocked()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 4955
    invoke-virtual {p0, v0, v0, v0}, resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .registers 12
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 4973
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, p0, mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4976
    if-nez p1, :cond_e

    .line 4977
    iget-object p1, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 4980
    :cond_e
    const/4 v1, 0x0

    .line 4990
    .local v1, "result":Z
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5, p1}, Lcom/android/server/am/MultiWindowPolicy;->arrangeMultiWindowStyleOnResumeTopActivities(Lcom/android/server/am/ActivityStack;)V

    .line 4993
    invoke-virtual {p0, p1}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 4994
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v1

    .line 4997
    :cond_20
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_28
    if-ltz v0, :cond_5c

    .line 4998
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4999
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_3a
    if-ltz v3, :cond_59

    .line 5000
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 5001
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-ne v2, p1, :cond_47

    .line 4999
    :cond_44
    :goto_44
    add-int/lit8 v3, v3, -0x1

    goto :goto_3a

    .line 5007
    :cond_47
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5, v2}, Lcom/android/server/am/MultiWindowPolicy;->arrangeMultiWindowStyleOnResumeTopActivities(Lcom/android/server/am/ActivityStack;)V

    .line 5010
    invoke-virtual {p0, v2}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 5016
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_44

    .line 4997
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_59
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 5022
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5c
    invoke-virtual {p0}, notifyGlobalMultiWindowStatusChangedLocked()V

    .line 5023
    invoke-virtual {p0, v7}, isIsolated(I)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 5024
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    const/4 v6, 0x1

    invoke-virtual {v5, v7, v6}, Lcom/android/server/am/MultiWindowPolicy;->resize2Split(IZ)V

    .line 5037
    :goto_6d
    return v1

    .line 5026
    :cond_6e
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5, v7, v7}, Lcom/android/server/am/MultiWindowPolicy;->resize2Split(IZ)V

    goto :goto_6d
.end method

.method resumedAppLocked()Lcom/android/server/am/ActivityRecord;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1264
    iget-object v2, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1265
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_7

    move-object v1, v3

    .line 1284
    :cond_6
    :goto_6
    return-object v1

    .line 1268
    :cond_7
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1269
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_f

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_6

    .line 1270
    :cond_f
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1273
    iget-object v4, v2, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1274
    .local v0, "N":I
    if-lez v0, :cond_23

    .line 1276
    iget-object v4, v2, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1280
    .restart local v1    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_23
    if-eqz v1, :cond_29

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_6

    .line 1281
    :cond_29
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_6
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 6727
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_2a

    .line 6728
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6729
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6730
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_19
    if-ge v3, v1, :cond_27

    .line 6731
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 6732
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 6730
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 6727
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 6735
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2a
    return-void
.end method

.method final scheduleIdleLocked()V
    .registers 3

    .prologue
    .line 7218
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 7219
    return-void
.end method

.method final scheduleIdleLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 7223
    if-eqz p1, :cond_f

    .line 7225
    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7226
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7228
    .end local v0    # "msg":Landroid/os/Message;
    :cond_f
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 7213
    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7214
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7215
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 6545
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6546
    return-void
.end method

.method scheduleMovePrevSamsungHomeTasks(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "samsungHomeTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 9927
    iget-object v0, p0, mSamsungHomeTask:Lcom/android/server/am/TaskRecord;

    if-eq v0, p1, :cond_9

    .line 9928
    const/4 v0, 0x1

    iput-boolean v0, p0, mNeedToMovePrevSamsungHomeTasks:Z

    .line 9929
    iput-object p1, p0, mSamsungHomeTask:Lcom/android/server/am/TaskRecord;

    .line 9931
    :cond_9
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .registers 3

    .prologue
    const/16 v1, 0x66

    .line 7237
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 7238
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 7240
    :cond_f
    return-void
.end method

.method final scheduleSleepTimeout()V
    .registers 5

    .prologue
    .line 7248
    invoke-virtual {p0}, removeSleepTimeouts()V

    .line 7249
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 7250
    return-void
.end method

.method sendExpandRequestToExpandableActivityLocked(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 9969
    return-void
.end method

.method sendShrinkRequestToAllResumedActivityLocked(II)V
    .registers 3
    .param p1, "toDisplayId"    # I
    .param p2, "reason"    # I

    .prologue
    .line 10003
    return-void
.end method

.method sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1555
    const/4 v0, 0x0

    .line 1556
    .local v0, "changed":Z
    iget-object v3, p0, mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_3c

    .line 1557
    iget-object v3, p0, mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    .line 1558
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_39

    .line 1559
    const/4 v0, 0x1

    .line 1560
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 1561
    if-eqz p1, :cond_2c

    .line 1562
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 1564
    :cond_2c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 1565
    iget-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 1556
    :cond_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1568
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_3c
    if-eqz v0, :cond_43

    .line 1569
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1571
    :cond_43
    return-void
.end method

.method setFixedTask(Lcom/android/server/am/TaskRecord;)V
    .registers 5
    .param p1, "fixedTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 9619
    iget-object v1, p0, mFixedTask:Lcom/android/server/am/TaskRecord;

    if-eq v1, p1, :cond_20

    .line 9620
    if-nez p1, :cond_b

    .line 9621
    iget-object v1, p0, mFixedTask:Lcom/android/server/am/TaskRecord;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/am/TaskRecord;->fixed:Z

    .line 9623
    :cond_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 9624
    .local v0, "fixedTaskMsg":Landroid/os/Message;
    const/16 v1, 0x12c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 9625
    if-eqz p1, :cond_21

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_17
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 9626
    iput-object p1, p0, mFixedTask:Lcom/android/server/am/TaskRecord;

    .line 9627
    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 9629
    .end local v0    # "fixedTaskMsg":Landroid/os/Message;
    :cond_20
    return-void

    .line 9625
    .restart local v0    # "fixedTaskMsg":Landroid/os/Message;
    :cond_21
    const/4 v1, -0x1

    goto :goto_17
.end method

.method setFocusedStack(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3348
    if-nez p1, :cond_4

    .line 3364
    :goto_3
    return v1

    .line 3352
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3353
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_c

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_2f

    .line 3354
    :cond_c
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set focus stack for r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3358
    :cond_2f
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3360
    invoke-virtual {p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 3361
    invoke-virtual {p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService;->notifyFocusChanged(I)V

    .line 3364
    :cond_43
    const/4 v1, 0x1

    goto :goto_3
.end method

.method setLaunchSource(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 4677
    iget-object v0, p0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4678
    return-void
.end method

.method setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V
    .registers 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "lockTaskModeState"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "andResume"    # Z

    .prologue
    const/4 v4, 0x0

    .line 7416
    if-nez p1, :cond_1b

    .line 7418
    invoke-virtual {p0}, getLockedTaskLocked()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 7419
    .local v1, "lockedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_1a

    .line 7420
    invoke-virtual {p0, v1}, removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 7421
    iget-object v2, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 7425
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 7426
    invoke-virtual {p0}, resumeTopActivitiesLocked()Z

    .line 7479
    .end local v1    # "lockedTask":Lcom/android/server/am/TaskRecord;
    :cond_1a
    :goto_1a
    return-void

    .line 7436
    :cond_1b
    iget v2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eqz v2, :cond_1a

    .line 7441
    invoke-virtual {p0, p1}, isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 7442
    const-string v2, "ActivityManager"

    const-string/jumbo v3, "setLockTaskMode: Attempt to start an unauthorized lock task."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 7446
    :cond_2e
    iget-object v2, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 7448
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7449
    .local v0, "lockTaskMsg":Landroid/os/Message;
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7450
    iget v2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 7451
    const/16 v2, 0x6d

    iput v2, v0, Landroid/os/Message;->what:I

    .line 7452
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 7453
    iget-object v2, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7458
    .end local v0    # "lockTaskMsg":Landroid/os/Message;
    :cond_55
    iget-object v2, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7459
    iget-object v2, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7461
    iget v2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_68

    .line 7462
    iget v2, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    iput v2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 7467
    :cond_68
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 7468
    invoke-direct {p0, p1}, changeTypeOfTaskToNormalLocked(Lcom/android/server/am/TaskRecord;)V

    .line 7470
    :cond_73
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/MultiWindowPolicy;->closePenWindow()V

    .line 7471
    invoke-virtual {p0, v4}, multiWindowSettingChangeLocked(Z)V

    .line 7475
    if-eqz p4, :cond_1a

    .line 7476
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v4, v2, p3}, findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;Ljava/lang/String;)V

    .line 7477
    invoke-virtual {p0}, resumeTopActivitiesLocked()Z

    goto :goto_1a
.end method

.method setNextTaskId(I)V
    .registers 3
    .param p1, "taskId"    # I

    .prologue
    .line 1248
    iget v0, p0, mCurTaskId:I

    if-le p1, v0, :cond_6

    .line 1249
    iput p1, p0, mCurTaskId:I

    .line 1251
    :cond_6
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 9
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 642
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 643
    :try_start_3
    iput-object p1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 645
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "display"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 647
    iget-object v4, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 649
    iget-object v4, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    .line 650
    .local v3, "displays":[Landroid/view/Display;
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "displayNdx":I
    :goto_23
    if-ltz v2, :cond_4e

    .line 651
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 652
    .local v1, "displayId":I
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 653
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    if-nez v4, :cond_3f

    .line 654
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "Default Display does not exist"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 690
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    .end local v2    # "displayNdx":I
    .end local v3    # "displays":[Landroid/view/Display;
    :catchall_3c
    move-exception v4

    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v4

    .line 656
    .restart local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .restart local v1    # "displayId":I
    .restart local v2    # "displayNdx":I
    .restart local v3    # "displays":[Landroid/view/Display;
    :cond_3f
    :try_start_3f
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 659
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v4, v1}, Lcom/android/server/am/MultiWindowPolicy;->initCenterBarPosition(I)Landroid/graphics/Point;

    .line 650
    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    .line 663
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    :cond_4e
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    .line 664
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iput-object v4, p0, mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 686
    const-class v4, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManagerInternal;

    iput-object v4, p0, mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 689
    invoke-direct {p0}, isLeanbackOnlyDevice()Z

    move-result v4

    iput-boolean v4, p0, mLeanbackOnlyDevice:Z

    .line 690
    monitor-exit v5
    :try_end_6f
    .catchall {:try_start_3f .. :try_end_6f} :catchall_3c

    .line 691
    return-void
.end method

.method showFixTaskDialog()V
    .registers 3

    .prologue
    .line 9647
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 9648
    .local v0, "fixedTaskMsg":Landroid/os/Message;
    const/16 v1, 0x12d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 9649
    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 9650
    return-void
.end method

.method showLockTaskEscapeMessageLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 7406
    iget-object v0, p0, mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7407
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 7409
    :cond_f
    return-void
.end method

.method showLockTaskToast()V
    .registers 3

    .prologue
    .line 7399
    iget-object v0, p0, mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    if-nez v0, :cond_f

    .line 7400
    new-instance v0, Lcom/android/server/am/LockTaskNotify;

    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    .line 7402
    :cond_f
    iget-object v0, p0, mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    iget v1, p0, mLockTaskModeState:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskNotify;->showToast(I)V

    .line 7403
    return-void
.end method

.method shutdownLocked(I)Z
    .registers 16
    .param p1, "timeout"    # I

    .prologue
    .line 6148
    invoke-virtual {p0}, goingToSleepLocked()V

    .line 6150
    const/4 v8, 0x0

    .line 6151
    .local v8, "timedout":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    int-to-long v12, p1

    add-long v2, v10, v12

    .line 6153
    .local v2, "endTime":J
    :goto_b
    const/4 v0, 0x0

    .line 6154
    .local v0, "cantShutdown":Z
    iget-object v9, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "displayNdx":I
    :goto_14
    if-ltz v1, :cond_39

    .line 6155
    iget-object v9, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6156
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "stackNdx":I
    :goto_26
    if-ltz v4, :cond_36

    .line 6157
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v9

    or-int/2addr v0, v9

    .line 6156
    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    .line 6154
    :cond_36
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 6160
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_39
    if-eqz v0, :cond_57

    .line 6161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v2, v10

    .line 6162
    .local v6, "timeRemaining":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-lez v9, :cond_4f

    .line 6164
    :try_start_47
    iget-object v9, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_b

    .line 6165
    :catch_4d
    move-exception v9

    goto :goto_b

    .line 6168
    :cond_4f
    const-string v9, "ActivityManager"

    const-string v10, "Activity manager shutdown timed out"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6169
    const/4 v8, 0x1

    .line 6178
    .end local v6    # "timeRemaining":J
    :cond_57
    const/4 v9, 0x1

    iput-boolean v9, p0, mSleepTimeout:Z

    .line 6179
    invoke-virtual {p0}, checkReadyForSleepLocked()V

    .line 6181
    return v8
.end method

.method final startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .registers 41
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .prologue
    .line 2232
    if-nez p4, :cond_b

    .line 2233
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "intents is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2235
    :cond_b
    if-nez p5, :cond_16

    .line 2236
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "resolvedTypes is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2238
    :cond_16
    move-object/from16 v0, p4

    array-length v2, v0

    move-object/from16 v0, p5

    array-length v3, v0

    if-eq v2, v3, :cond_27

    .line 2239
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "intents are length different than resolvedTypes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2244
    :cond_27
    if-ltz p2, :cond_4c

    .line 2245
    const/4 v12, -0x1

    .line 2252
    .local v12, "callingPid":I
    :goto_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 2254
    .local v28, "origId":J
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_6f

    .line 2255
    const/4 v2, 0x1

    :try_start_36
    new-array v0, v2, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    .line 2256
    .local v21, "outActivity":[Lcom/android/server/am/ActivityRecord;
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_3c
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, v24

    if-ge v0, v2, :cond_113

    .line 2257
    aget-object v25, p4, v24
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_6c

    .line 2258
    .local v25, "intent":Landroid/content/Intent;
    if-nez v25, :cond_5c

    move-object/from16 v4, v25

    .line 2256
    .end local v25    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    :goto_49
    add-int/lit8 v24, v24, 0x1

    goto :goto_3c

    .line 2246
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v12    # "callingPid":I
    .end local v21    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v24    # "i":I
    .end local v28    # "origId":J
    :cond_4c
    if-nez p1, :cond_57

    .line 2247
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 2248
    .restart local v12    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_2a

    .line 2250
    .end local v12    # "callingPid":I
    :cond_57
    const/16 p2, -0x1

    move/from16 v12, p2

    .restart local v12    # "callingPid":I
    goto :goto_2a

    .line 2263
    .restart local v21    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v24    # "i":I
    .restart local v25    # "intent":Landroid/content/Intent;
    .restart local v28    # "origId":J
    :cond_5c
    if-eqz v25, :cond_74

    :try_start_5e
    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 2264
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2302
    .end local v21    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v24    # "i":I
    .end local v25    # "intent":Landroid/content/Intent;
    :catchall_6c
    move-exception v2

    monitor-exit v31
    :try_end_6e
    .catchall {:try_start_5e .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v2
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    .line 2304
    :catchall_6f
    move-exception v2

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2267
    .restart local v21    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v24    # "i":I
    .restart local v25    # "intent":Landroid/content/Intent;
    :cond_74
    if-eqz p6, :cond_c3

    :try_start_76
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v30

    .line 2268
    .local v30, "sr":Lcom/android/server/am/ActivityRecord;
    :goto_7e
    if-eqz v30, :cond_c6

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v2

    if-eqz v2, :cond_c6

    const/16 v26, 0x1

    .line 2269
    .local v26, "isNotFromResolverActivity":Z
    :goto_88
    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_c9

    if-eqz v26, :cond_c9

    const/16 v20, 0x1

    .line 2272
    .local v20, "componentSpecified":Z
    :goto_92
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2275
    .end local v25    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    aget-object v5, p5, v24

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p8

    invoke-virtual/range {v2 .. v8}, resolveActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2277
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p8

    invoke-virtual {v2, v6, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2279
    if-eqz v6, :cond_cc

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_cc

    .line 2282
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2267
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "componentSpecified":Z
    .end local v26    # "isNotFromResolverActivity":Z
    .end local v30    # "sr":Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "intent":Landroid/content/Intent;
    :cond_c3
    const/16 v30, 0x0

    goto :goto_7e

    .line 2268
    .restart local v30    # "sr":Lcom/android/server/am/ActivityRecord;
    :cond_c6
    const/16 v26, 0x0

    goto :goto_88

    .line 2269
    .restart local v26    # "isNotFromResolverActivity":Z
    :cond_c9
    const/16 v20, 0x0

    goto :goto_92

    .line 2287
    .end local v25    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "componentSpecified":Z
    :cond_cc
    if-eqz p7, :cond_ff

    move-object/from16 v0, p4

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_ff

    .line 2288
    move-object/from16 v18, p7

    .line 2292
    .local v18, "theseOptions":Landroid/os/Bundle;
    :goto_d9
    aget-object v5, p5, v24

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p6

    move/from16 v13, p2

    move-object/from16 v14, p3

    move v15, v12

    move/from16 v16, p2

    invoke-virtual/range {v2 .. v23}, startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v27

    .line 2296
    .local v27, "res":I
    if-gez v27, :cond_102

    .line 2297
    monitor-exit v31
    :try_end_fb
    .catchall {:try_start_76 .. :try_end_fb} :catchall_6c

    .line 2304
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2307
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v18    # "theseOptions":Landroid/os/Bundle;
    .end local v20    # "componentSpecified":Z
    .end local v26    # "isNotFromResolverActivity":Z
    .end local v27    # "res":I
    .end local v30    # "sr":Lcom/android/server/am/ActivityRecord;
    :goto_fe
    return v27

    .line 2290
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "componentSpecified":Z
    .restart local v26    # "isNotFromResolverActivity":Z
    .restart local v30    # "sr":Lcom/android/server/am/ActivityRecord;
    :cond_ff
    const/16 v18, 0x0

    .restart local v18    # "theseOptions":Landroid/os/Bundle;
    goto :goto_d9

    .line 2300
    .restart local v27    # "res":I
    :cond_102
    const/4 v2, 0x0

    :try_start_103
    aget-object v2, v21, v2

    if-eqz v2, :cond_110

    const/4 v2, 0x0

    aget-object v2, v21, v2

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p6, v0

    :goto_10e
    goto/16 :goto_49

    :cond_110
    const/16 p6, 0x0

    goto :goto_10e

    .line 2302
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v18    # "theseOptions":Landroid/os/Bundle;
    .end local v20    # "componentSpecified":Z
    .end local v26    # "isNotFromResolverActivity":Z
    .end local v27    # "res":I
    .end local v30    # "sr":Lcom/android/server/am/ActivityRecord;
    :cond_113
    monitor-exit v31
    :try_end_114
    .catchall {:try_start_103 .. :try_end_114} :catchall_6c

    .line 2304
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2307
    const/16 v27, 0x0

    goto :goto_fe
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .registers 95
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingUid"    # I
    .param p12, "callingPackage"    # Ljava/lang/String;
    .param p13, "realCallingPid"    # I
    .param p14, "realCallingUid"    # I
    .param p15, "startFlags"    # I
    .param p16, "options"    # Landroid/os/Bundle;
    .param p17, "ignoreTargetSecurity"    # Z
    .param p18, "componentSpecified"    # Z
    .param p19, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p20, "container"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p21, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 2674
    const/16 v59, 0x0

    .line 2676
    .local v59, "err":I
    const/16 v32, 0x0

    .line 2677
    .local v32, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_20

    .line 2678
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v32

    .line 2679
    if-eqz v32, :cond_52

    .line 2680
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p10, v0

    .line 2681
    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p11, v0

    .line 2690
    :cond_20
    :goto_20
    const/4 v11, 0x0

    .line 2691
    .local v11, "cmp":Landroid/content/ComponentName;
    const-string v12, ""

    .line 2695
    .local v12, "className":Ljava/lang/String;
    :try_start_23
    new-instance v66, Landroid/content/Intent;

    move-object/from16 v0, v66

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2696
    .local v66, "mEdmIntent":Landroid/content/Intent;
    invoke-virtual/range {v66 .. v66}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 2697
    const-string v6, ":android:show_fragment"

    move-object/from16 v0, v66

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2698
    if-nez v12, :cond_40

    if-eqz v11, :cond_40

    .line 2699
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3f} :catch_89

    move-result-object v12

    .end local v66    # "mEdmIntent":Landroid/content/Intent;
    :cond_40
    :goto_40
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move/from16 v9, p14

    move-object/from16 v10, p16

    .line 2705
    invoke-direct/range {v6 .. v12}, checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILandroid/os/Bundle;Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8e

    .line 2707
    const/4 v6, 0x0

    .line 3160
    :goto_51
    return v6

    .line 2683
    .end local v11    # "cmp":Landroid/content/ComponentName;
    .end local v12    # "className":Ljava/lang/String;
    :cond_52
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find app for caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p10

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") when starting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    const/16 v59, -0x4

    goto :goto_20

    .line 2701
    .restart local v11    # "cmp":Landroid/content/ComponentName;
    .restart local v12    # "className":Ljava/lang/String;
    :catch_89
    move-exception v58

    .line 2702
    .local v58, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "unknown"

    goto :goto_40

    .line 2711
    .end local v58    # "e":Ljava/lang/Exception;
    :cond_8e
    if-eqz p4, :cond_1ad

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    .line 2713
    .local v22, "userId":I
    :goto_9a
    if-nez v59, :cond_116

    .line 2714
    const-string v7, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "START u"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " {"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9, v10, v14}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "} from uid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " pid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p13

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " on display "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p20, :cond_1b9

    move-object/from16 v0, p0

    iget-object v6, v0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v6, :cond_1b1

    const/4 v6, 0x0

    :goto_eb
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    sget-boolean v6, SAFE_DEBUG:Z

    if-eqz v6, :cond_116

    .line 2722
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "START "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    :cond_116
    invoke-static/range {v22 .. v22}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_12d

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v17, p12

    move/from16 v18, p13

    move/from16 v19, p14

    .line 2729
    invoke-static/range {v13 .. v19}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->checkLaunchIntentForAccessDLP(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;IILjava/lang/String;II)Z

    .line 2734
    :cond_12d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_180

    .line 2735
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v62

    .line 2736
    .local v62, "intentData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v63

    .line 2737
    .local v63, "intentType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v61

    .line 2738
    .local v61, "intentAction":Ljava/lang/String;
    if-eqz v61, :cond_180

    const-string v6, "android.intent.action.VIEW"

    move-object/from16 v0, v61

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_180

    if-eqz v63, :cond_180

    const-string/jumbo v6, "video"

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_168

    const-string v6, "audio"

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_180

    :cond_168
    if-eqz v62, :cond_180

    const-string/jumbo v6, "http"

    move-object/from16 v0, v62

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_180

    .line 2741
    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->getInstance()Lcom/itsoninc/android/ItsOnOemApi;

    move-result-object v6

    move-object/from16 v0, v62

    move/from16 v1, p11

    invoke-virtual {v6, v0, v1}, Lcom/itsoninc/android/ItsOnOemApi;->registerActivityMapping(Ljava/lang/String;I)V

    .line 2746
    .end local v61    # "intentAction":Ljava/lang/String;
    .end local v62    # "intentData":Ljava/lang/String;
    .end local v63    # "intentType":Ljava/lang/String;
    :cond_180
    const/16 v47, 0x0

    .line 2747
    .local v47, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v15, 0x0

    .line 2748
    .local v15, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p7, :cond_199

    .line 2749
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v47

    .line 2752
    if-eqz v47, :cond_199

    .line 2753
    if-ltz p9, :cond_199

    move-object/from16 v0, v47

    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_199

    .line 2754
    move-object/from16 v15, v47

    .line 2759
    :cond_199
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v65

    .line 2761
    .local v65, "launchFlags":I
    const/high16 v6, 0x2000000

    and-int v6, v6, v65

    if-eqz v6, :cond_201

    if-eqz v47, :cond_201

    .line 2764
    if-ltz p9, :cond_1ca

    .line 2765
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2766
    const/4 v6, -0x3

    goto/16 :goto_51

    .line 2711
    .end local v15    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v22    # "userId":I
    .end local v47    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .end local v65    # "launchFlags":I
    :cond_1ad
    const/16 v22, 0x0

    goto/16 :goto_9a

    .line 2714
    .restart local v22    # "userId":I
    :cond_1b1
    move-object/from16 v0, p0

    iget-object v6, v0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto/16 :goto_eb

    :cond_1b9
    move-object/from16 v0, p20

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v6, :cond_1c2

    const/4 v6, 0x0

    goto/16 :goto_eb

    :cond_1c2
    move-object/from16 v0, p20

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v6, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    goto/16 :goto_eb

    .line 2768
    .restart local v15    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v47    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v65    # "launchFlags":I
    :cond_1ca
    move-object/from16 v0, v47

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2769
    if-eqz v15, :cond_1d7

    invoke-virtual {v15}, Lcom/android/server/am/ActivityRecord;->isInStackLocked()Z

    move-result v6

    if-nez v6, :cond_1d7

    .line 2770
    const/4 v15, 0x0

    .line 2772
    :cond_1d7
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p8, v0

    .line 2773
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p9, v0

    .line 2774
    const/4 v6, 0x0

    move-object/from16 v0, v47

    iput-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2775
    if-eqz v15, :cond_1f3

    .line 2776
    move-object/from16 v0, v47

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 2778
    :cond_1f3
    move-object/from16 v0, v47

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v0, p11

    if-ne v6, v0, :cond_201

    .line 2789
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 p12, v0

    .line 2793
    :cond_201
    if-nez v59, :cond_20b

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_20b

    .line 2796
    const/16 v59, -0x1

    .line 2799
    :cond_20b
    if-nez v59, :cond_211

    if-nez p4, :cond_211

    .line 2802
    const/16 v59, -0x2

    .line 2805
    :cond_211
    if-nez v59, :cond_227

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, isCurrentProfileLocked(I)Z

    move-result v6

    if-nez v6, :cond_227

    move-object/from16 v0, p4

    iget v6, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_227

    .line 2809
    const/16 v59, -0x8

    .line 2812
    :cond_227
    if-nez v59, :cond_27e

    if-eqz v47, :cond_27e

    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_27e

    .line 2818
    const/high16 v6, 0x10000000

    and-int v6, v6, v65

    if-nez v6, :cond_27e

    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v7, :cond_27e

    .line 2821
    :try_start_249
    const-string v6, "android.intent.category.VOICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2822
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v6, v7, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_27e

    .line 2824
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27c
    .catch Landroid/os/RemoteException; {:try_start_249 .. :try_end_27c} :catch_2f4

    .line 2827
    const/16 v59, -0x7

    .line 2836
    :cond_27e
    :goto_27e
    if-nez v59, :cond_2b0

    if-eqz p5, :cond_2b0

    .line 2840
    :try_start_282
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v6, v7, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2b0

    .line 2842
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity being started in new voice task does not support: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ae
    .catch Landroid/os/RemoteException; {:try_start_282 .. :try_end_2ae} :catch_302

    .line 2845
    const/16 v59, -0x7

    .line 2853
    :cond_2b0
    :goto_2b0
    if-nez v15, :cond_30f

    const/4 v13, 0x0

    .line 2855
    .local v13, "resultStack":Lcom/android/server/am/ActivityStack;
    :goto_2b3
    if-eqz v59, :cond_314

    .line 2856
    if-eqz v13, :cond_2c5

    if-eqz v15, :cond_2c5

    .line 2857
    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p8

    move/from16 v17, p9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2861
    :cond_2c5
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2863
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "ActivityStackSupervisor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v16 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    move/from16 v6, v59

    .line 2868
    goto/16 :goto_51

    .line 2829
    .end local v13    # "resultStack":Lcom/android/server/am/ActivityStack;
    :catch_2f4
    move-exception v58

    .line 2830
    .local v58, "e":Landroid/os/RemoteException;
    const-string v6, "ActivityManager"

    const-string v7, "Failure checking voice capabilities"

    move-object/from16 v0, v58

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2831
    const/16 v59, -0x7

    goto/16 :goto_27e

    .line 2847
    .end local v58    # "e":Landroid/os/RemoteException;
    :catch_302
    move-exception v58

    .line 2848
    .restart local v58    # "e":Landroid/os/RemoteException;
    const-string v6, "ActivityManager"

    const-string v7, "Failure checking voice capabilities"

    move-object/from16 v0, v58

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2849
    const/16 v59, -0x7

    goto :goto_2b0

    .line 2853
    .end local v58    # "e":Landroid/os/RemoteException;
    :cond_30f
    iget-object v6, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    goto :goto_2b3

    .line 2871
    .restart local v13    # "resultStack":Lcom/android/server/am/ActivityStack;
    :cond_314
    const/16 v29, 0x0

    .line 2873
    .local v29, "allowLaunchIntent":Z
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_400

    const-string v6, "android.intent.category.HOME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_400

    const/4 v6, 0x1

    :goto_32d
    if-eqz v6, :cond_331

    .line 2875
    const/16 v29, 0x1

    .line 2880
    :cond_331
    const/16 v54, 0x0

    .line 2882
    .local v54, "abort":Z
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v71

    .line 2885
    .local v71, "startAnyPerm":I
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v27, v0

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v24, p2

    move/from16 v25, p10

    move/from16 v26, p11

    invoke-virtual/range {v23 .. v29}, Lcom/android/server/am/ActivityManagerService;->checkContainerAppPermission(Landroid/content/Intent;IIILjava/lang/String;Z)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_403

    .line 2887
    if-eqz v15, :cond_372

    .line 2888
    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p8

    move/from16 v17, p9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2892
    :cond_372
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkContainerAppPermission Denial: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with revoked permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v6, ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    .line 2896
    .local v68, "msg":Ljava/lang/String;
    const-string v6, "ActivityManager"

    move-object/from16 v0, v68

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "ActivityStackSupervisor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v16 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2902
    new-instance v6, Ljava/lang/SecurityException;

    move-object/from16 v0, v68

    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2873
    .end local v54    # "abort":Z
    .end local v68    # "msg":Ljava/lang/String;
    .end local v71    # "startAnyPerm":I
    :cond_400
    const/4 v6, 0x0

    goto/16 :goto_32d

    .line 2906
    .restart local v54    # "abort":Z
    .restart local v71    # "startAnyPerm":I
    :cond_403
    if-eqz v71, :cond_5e3

    move-object/from16 v16, p0

    move-object/from16 v17, p4

    move-object/from16 v18, p12

    move/from16 v19, p10

    move/from16 v20, p11

    move/from16 v21, p17

    .line 2907
    invoke-direct/range {v16 .. v21}, getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v57

    .line 2909
    .local v57, "componentRestriction":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-direct {v0, v6, v1, v2, v3}, getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v56

    .line 2912
    .local v56, "actionRestriction":I
    const/4 v6, 0x1

    move/from16 v0, v57

    if-eq v0, v6, :cond_42f

    const/4 v6, 0x1

    move/from16 v0, v56

    if-ne v0, v6, :cond_57a

    .line 2914
    :cond_42f
    if-eqz v15, :cond_43d

    .line 2915
    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p8

    move/from16 v17, p9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2920
    :cond_43d
    const/4 v6, 0x1

    move/from16 v0, v56

    if-ne v0, v6, :cond_4d0

    .line 2921
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with revoked permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v6, ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    .line 2936
    .restart local v68    # "msg":Ljava/lang/String;
    :goto_499
    const-string v6, "ActivityManager"

    move-object/from16 v0, v68

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "ActivityStackSupervisor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v16 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2942
    new-instance v6, Ljava/lang/SecurityException;

    move-object/from16 v0, v68

    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2925
    .end local v68    # "msg":Ljava/lang/String;
    :cond_4d0
    move-object/from16 v0, p4

    iget-boolean v6, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v6, :cond_529

    .line 2926
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not exported from uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    .restart local v68    # "msg":Ljava/lang/String;
    goto/16 :goto_499

    .line 2931
    .end local v68    # "msg":Ljava/lang/String;
    :cond_529
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requires "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    .restart local v68    # "msg":Ljava/lang/String;
    goto/16 :goto_499

    .line 2945
    .end local v68    # "msg":Ljava/lang/String;
    :cond_57a
    const/4 v6, 0x2

    move/from16 v0, v56

    if-ne v0, v6, :cond_665

    .line 2946
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appop Denial: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requires "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v6, ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    .line 2951
    .local v67, "message":Ljava/lang/String;
    const-string v6, "ActivityManager"

    move-object/from16 v0, v67

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    const/16 v54, 0x1

    .line 2963
    .end local v56    # "actionRestriction":I
    .end local v57    # "componentRestriction":I
    .end local v67    # "message":Ljava/lang/String;
    :cond_5e3
    :goto_5e3
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v16, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v17, p2

    move/from16 v18, p11

    move/from16 v19, p10

    move-object/from16 v20, p3

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_6c8

    const/4 v6, 0x1

    :goto_600
    or-int v54, v54, v6

    .line 2966
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v6, :cond_625

    .line 2970
    :try_start_60a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v72

    .line 2971
    .local v72, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v72

    invoke-interface {v6, v0, v7}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_61f
    .catch Landroid/os/RemoteException; {:try_start_60a .. :try_end_61f} :catch_6ce

    move-result v6

    if-nez v6, :cond_6cb

    const/4 v6, 0x1

    :goto_623
    or-int v54, v54, v6

    .line 2978
    .end local v72    # "watchIntent":Landroid/content/Intent;
    :cond_625
    :goto_625
    if-eqz v54, :cond_6d8

    .line 2979
    if-eqz v13, :cond_637

    if-eqz v15, :cond_637

    .line 2980
    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p8

    move/from16 v17, p9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2985
    :cond_637
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2987
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "ActivityStackSupervisor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " succeeded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v16 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2991
    const/4 v6, 0x0

    goto/16 :goto_51

    .line 2953
    .restart local v56    # "actionRestriction":I
    .restart local v57    # "componentRestriction":I
    :cond_665
    const/4 v6, 0x2

    move/from16 v0, v57

    if-ne v0, v6, :cond_5e3

    .line 2954
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appop Denial: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requires appop "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    .line 2958
    .restart local v67    # "message":Ljava/lang/String;
    const-string v6, "ActivityManager"

    move-object/from16 v0, v67

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    const/16 v54, 0x1

    goto/16 :goto_5e3

    .line 2963
    .end local v56    # "actionRestriction":I
    .end local v57    # "componentRestriction":I
    .end local v67    # "message":Ljava/lang/String;
    :cond_6c8
    const/4 v6, 0x0

    goto/16 :goto_600

    .line 2971
    .restart local v72    # "watchIntent":Landroid/content/Intent;
    :cond_6cb
    const/4 v6, 0x0

    goto/16 :goto_623

    .line 2973
    .end local v72    # "watchIntent":Landroid/content/Intent;
    :catch_6ce
    move-exception v58

    .line 2974
    .restart local v58    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto/16 :goto_625

    .line 2995
    .end local v58    # "e":Landroid/os/RemoteException;
    :cond_6d8
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->SUPPORT_APPLOCK:Z

    if-eqz v6, :cond_822

    .line 2996
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x100000

    and-int/2addr v6, v7

    if-eqz v6, :cond_8a9

    const/16 v64, 0x1

    .line 2997
    .local v64, "isLaunchedFromRecents":Z
    :goto_6eb
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    if-nez v6, :cond_703

    if-eqz v47, :cond_8ad

    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v6, :cond_8ad

    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v6

    if-nez v6, :cond_8ad

    :cond_703
    const/16 v60, 0x1

    .line 2999
    .local v60, "hasMultiWindowStyle":Z
    :goto_705
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppLocked getMultiWindowStyle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    const-string v7, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppLocked isLaunchedFromRecents:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v64

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " hasMultiWindowStyle:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " not normal : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v47, :cond_8b1

    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v6, :cond_8b1

    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v6

    if-nez v6, :cond_8b1

    const/4 v6, 0x1

    :goto_759
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    if-eqz p4, :cond_822

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_822

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p12

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_822

    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_822

    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_822

    if-nez v64, :cond_822

    if-nez v60, :cond_822

    .line 3005
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppLocked pkgName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " className:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 3007
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v55

    .line 3008
    .local v55, "action":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3009
    .local v17, "newIntent":Landroid/content/Intent;
    const-string v6, "LOCKED_PACKAGE_INTENT"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3010
    const-string v6, "LOCKED_PACKAGE_NAME"

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3011
    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v21

    move-object/from16 v16, p0

    move/from16 v19, p15

    invoke-virtual/range {v16 .. v21}, resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p4

    .line 3013
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3014
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3015
    const/high16 v6, 0x8000000

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3016
    move-object/from16 p2, v17

    .line 3022
    .end local v17    # "newIntent":Landroid/content/Intent;
    .end local v55    # "action":Ljava/lang/String;
    .end local v60    # "hasMultiWindowStyle":Z
    .end local v64    # "isLaunchedFromRecents":Z
    :cond_822
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->setupKEAOverridePath(Landroid/content/pm/ActivityInfo;)V

    .line 3034
    new-instance v30, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v38, v0

    if-eqz p5, :cond_8b4

    const/16 v43, 0x1

    :goto_83f
    move/from16 v33, p11

    move-object/from16 v34, p12

    move-object/from16 v35, p2

    move-object/from16 v36, p3

    move-object/from16 v37, p4

    move-object/from16 v39, v15

    move-object/from16 v40, p8

    move/from16 v41, p9

    move/from16 v42, p18

    move-object/from16 v44, p0

    move-object/from16 v45, p20

    move-object/from16 v46, p16

    move-object/from16 v48, p7

    invoke-direct/range {v30 .. v48}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)V

    .line 3039
    .local v30, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p19, :cond_861

    .line 3040
    const/4 v6, 0x0

    aput-object v30, p19, v6

    .line 3043
    :cond_861
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v6, :cond_871

    if-eqz v47, :cond_871

    .line 3046
    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 3050
    :cond_871
    sget-boolean v6, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v6, :cond_8b7

    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v6, :cond_8b7

    .line 3051
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v33, v0

    new-instance v34, Landroid/content/ComponentName;

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v38, "activity"

    const/16 v39, 0x0

    move-object/from16 v35, p1

    move/from16 v36, p10

    move/from16 v37, p11

    invoke-virtual/range {v33 .. v39}, Lcom/android/server/am/MARsPolicyManager;->isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_8b7

    .line 3053
    const/4 v6, -0x4

    goto/16 :goto_51

    .line 2996
    .end local v30    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_8a9
    const/16 v64, 0x0

    goto/16 :goto_6eb

    .line 2997
    .restart local v64    # "isLaunchedFromRecents":Z
    :cond_8ad
    const/16 v60, 0x0

    goto/16 :goto_705

    .line 3000
    .restart local v60    # "hasMultiWindowStyle":Z
    :cond_8b1
    const/4 v6, 0x0

    goto/16 :goto_759

    .line 3034
    .end local v60    # "hasMultiWindowStyle":Z
    .end local v64    # "isLaunchedFromRecents":Z
    :cond_8b4
    const/16 v43, 0x0

    goto :goto_83f

    .line 3071
    .restart local v30    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_8b7
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v6

    if-eqz v6, :cond_96c

    .line 3072
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, v30

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    .line 3080
    :goto_8cb
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->applyMultiWindowLaunchStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 3081
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v30

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v6

    if-nez v6, :cond_8f2

    .line 3082
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v30

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 3087
    :cond_8f2
    move-object/from16 v0, p0

    iget-object v0, v0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v70, v0

    .line 3088
    .local v70, "stack":Lcom/android/server/am/ActivityStack;
    if-nez p5, :cond_97c

    move-object/from16 v0, v70

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_90e

    move-object/from16 v0, v70

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p11

    if-eq v6, v0, :cond_97c

    .line 3090
    :cond_90e
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    const-string v28, "Activity start"

    move/from16 v24, p10

    move/from16 v25, p11

    move/from16 v26, p13

    move/from16 v27, p14

    invoke-virtual/range {v23 .. v28}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_97c

    .line 3092
    new-instance v69, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    move-object/from16 v0, v69

    move-object/from16 v1, v30

    move-object/from16 v2, v47

    move/from16 v3, p15

    move-object/from16 v4, v70

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 3094
    .local v69, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3095
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3097
    const/16 v33, 0x5

    const/16 v34, 0x5

    const/16 v35, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v36

    const-string v37, "ActivityStackSupervisor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move/from16 v39, v22

    invoke-static/range {v33 .. v39}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 3101
    const/4 v6, 0x4

    goto/16 :goto_51

    .line 3074
    .end local v69    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v70    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_96c
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, v30

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_8cb

    .line 3105
    .restart local v70    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_97c
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v6, :cond_9c1

    .line 3111
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 3116
    :goto_98c
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, doPendingActivityLaunchesLocked(Z)V

    .line 3127
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityRecord;->isVRActivity()Z

    move-result v6

    if-eqz v6, :cond_9c9

    .line 3128
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Lcom/android/server/am/VRApplicationPolicy;->readyToStartVRActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_9e2

    .line 3129
    if-eqz v15, :cond_9bb

    .line 3130
    const/16 v34, -0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v33, v13

    move-object/from16 v35, v15

    move-object/from16 v36, p8

    move/from16 v37, p9

    invoke-virtual/range {v33 .. v39}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3134
    :cond_9bb
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3135
    const/4 v6, 0x0

    goto/16 :goto_51

    .line 3113
    :cond_9c1
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_98c

    .line 3138
    :cond_9c9
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    invoke-virtual {v6}, Lcom/android/server/am/VRApplicationPolicy;->inVRMode()Z

    move-result v6

    if-eqz v6, :cond_9e2

    .line 3139
    const-string v6, "ActivityManager"

    const-string/jumbo v7, "startActivity : The current top is vr activity. Do not interrupt it!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    const/4 v6, 0x1

    move-object/from16 v0, v30

    iput-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->launchedBehindVRApp:Z

    .line 3146
    :cond_9e2
    const/16 v51, 0x1

    move-object/from16 v45, p0

    move-object/from16 v46, v30

    move-object/from16 v48, p5

    move-object/from16 v49, p6

    move/from16 v50, p15

    move-object/from16 v52, p16

    move-object/from16 v53, p21

    invoke-virtual/range {v45 .. v53}, startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I

    move-result v59

    .line 3149
    if-gez v59, :cond_a07

    .line 3155
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->isTargetDismissIntent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_a07

    .line 3157
    invoke-virtual/range {p0 .. p0}, notifyActivityDrawnForKeyguard()V

    :cond_a07
    move/from16 v6, v59

    .line 3160
    goto/16 :goto_51
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .registers 65
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "options"    # Landroid/os/Bundle;
    .param p16, "ignoreTargetSecurity"    # Z
    .param p17, "userId"    # I
    .param p18, "iContainer"    # Landroid/app/IActivityContainer;
    .param p19, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 2038
    if-eqz p4, :cond_10

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2039
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2041
    :cond_10
    if-eqz p8, :cond_68

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v42

    .line 2042
    .local v42, "sr":Lcom/android/server/am/ActivityRecord;
    :goto_1a
    if-eqz v42, :cond_6b

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v2

    if-eqz v2, :cond_6b

    const/16 v35, 0x1

    .line 2043
    .local v35, "isNotFromResolverActivity":Z
    :goto_24
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_6e

    if-eqz v35, :cond_6e

    const/16 v27, 0x1

    .line 2046
    .local v27, "componentSpecified":Z
    :goto_2e
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .end local p4    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p5

    move/from16 v6, p11

    move-object/from16 v7, p12

    move/from16 v8, p17

    .line 2049
    invoke-virtual/range {v2 .. v8}, resolveActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v31

    .local v31, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v29, p18

    .line 2052
    check-cast v29, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 2053
    .local v29, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2054
    if-eqz v29, :cond_71

    :try_start_50
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_71

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v5, :cond_71

    .line 2057
    const/16 v41, -0x6

    monitor-exit v3

    move-object/from16 v13, v31

    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v13, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v4

    .line 2225
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    :goto_67
    return v41

    .line 2041
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v27    # "componentSpecified":Z
    .end local v29    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v35    # "isNotFromResolverActivity":Z
    .end local v42    # "sr":Lcom/android/server/am/ActivityRecord;
    :cond_68
    const/16 v42, 0x0

    goto :goto_1a

    .line 2042
    .restart local v42    # "sr":Lcom/android/server/am/ActivityRecord;
    :cond_6b
    const/16 v35, 0x0

    goto :goto_24

    .line 2043
    .restart local v35    # "isNotFromResolverActivity":Z
    :cond_6e
    const/16 v27, 0x0

    goto :goto_2e

    .line 2059
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v27    # "componentSpecified":Z
    .restart local v29    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_71
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    .line 2060
    .local v22, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 2062
    .local v23, "realCallingUid":I
    if-ltz p2, :cond_25a

    .line 2063
    const/16 v19, -0x1

    .line 2072
    .local v19, "callingPid":I
    :goto_7d
    if-eqz v29, :cond_89

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v2

    if-eqz v2, :cond_268

    .line 2073
    :cond_89
    move-object/from16 v0, p0

    iget-object v0, v0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v43, v0

    .line 2083
    .local v43, "stack":Lcom/android/server/am/ActivityStack;
    :goto_8f
    if-eqz p14, :cond_270

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_270

    const/4 v2, 0x1

    :goto_a0
    move-object/from16 v0, v43

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 2088
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v38

    .line 2090
    .local v38, "origId":J
    if-eqz v31, :cond_342

    move-object/from16 v0, v31

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_342

    .line 2095
    move-object/from16 v0, v31

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_342

    .line 2096
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_342

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v5, :cond_f0

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_342

    .line 2099
    :cond_f0
    move/from16 v8, p2

    .line 2100
    .local v8, "appCallingUid":I
    if-eqz p1, :cond_106

    .line 2101
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v32

    .line 2102
    .local v32, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v32, :cond_273

    .line 2103
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2113
    .end local v32    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_106
    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x2

    const-string v7, "android"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x1

    new-array v13, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v4, v13, v2

    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p5, v14, v2

    const/high16 v15, 0x50000000

    const/16 v16, 0x0

    move/from16 v9, p17

    invoke-virtual/range {v5 .. v16}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v44

    .line 2119
    .local v44, "target":Landroid/content/IIntentSender;
    new-instance v36, Landroid/content/Intent;

    invoke-direct/range {v36 .. v36}, Landroid/content/Intent;-><init>()V

    .line 2120
    .local v36, "newIntent":Landroid/content/Intent;
    if-ltz p10, :cond_136

    .line 2122
    const-string/jumbo v2, "has_result"

    const/4 v5, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2124
    :cond_136
    const-string/jumbo v2, "intent"

    new-instance v5, Landroid/content/IntentSender;

    move-object/from16 v0, v44

    invoke-direct {v5, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2126
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_17c

    .line 2127
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/ActivityRecord;

    .line 2128
    .local v34, "hist":Lcom/android/server/am/ActivityRecord;
    const-string/jumbo v2, "cur_app"

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2130
    const-string/jumbo v2, "cur_task"

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2133
    .end local v34    # "hist":Lcom/android/server/am/ActivityRecord;
    :cond_17c
    const-string/jumbo v2, "new_app"

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2135
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2136
    const-string v2, "android"

    const-class v5, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_19e
    .catchall {:try_start_50 .. :try_end_19e} :catchall_32e

    .line 2138
    move-object/from16 p4, v36

    .line 2139
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    const/16 p5, 0x0

    .line 2140
    const/16 p1, 0x0

    .line 2141
    :try_start_1a4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 2142
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_1ab
    .catchall {:try_start_1a4 .. :try_end_1ab} :catchall_335

    move-result v19

    .line 2143
    const/16 v27, 0x1

    .line 2145
    :try_start_1ae
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v5, 0x0

    const v6, 0x10480

    move-object/from16 v0, p4

    move/from16 v1, p17

    invoke-interface {v2, v0, v5, v6, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v40

    .line 2150
    .local v40, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v40, :cond_2b3

    move-object/from16 v0, v40

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_1c4
    .catch Landroid/os/RemoteException; {:try_start_1ae .. :try_end_1c4} :catch_2b6
    .catchall {:try_start_1ae .. :try_end_1c4} :catchall_335

    .line 2151
    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_1c4
    :try_start_1c4
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p17

    invoke-virtual {v2, v13, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_1cd
    .catch Landroid/os/RemoteException; {:try_start_1c4 .. :try_end_1cd} :catch_33f
    .catchall {:try_start_1c4 .. :try_end_1cd} :catchall_257

    move-result-object v13

    .line 2159
    .end local v8    # "appCallingUid":I
    .end local v36    # "newIntent":Landroid/content/Intent;
    .end local v40    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v44    # "target":Landroid/content/IIntentSender;
    :goto_1ce
    const/16 v28, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    move/from16 v18, p10

    move/from16 v20, p2

    move-object/from16 v21, p3

    move/from16 v24, p11

    move-object/from16 v25, p15

    move/from16 v26, p16

    move-object/from16 v30, p19

    :try_start_1ee
    invoke-virtual/range {v9 .. v30}, startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v41

    .line 2165
    .local v41, "res":I
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2167
    move-object/from16 v0, v43

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_218

    .line 2172
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v6, "updateConfiguration()"

    invoke-virtual {v2, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    const/4 v2, 0x0

    move-object/from16 v0, v43

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 2184
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p14

    invoke-virtual {v2, v0, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 2189
    :cond_218
    if-eqz v29, :cond_22a

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_2bc

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v2

    if-eqz v2, :cond_2bc

    .line 2190
    :cond_22a
    invoke-virtual/range {p0 .. p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v43

    .line 2195
    :goto_22e
    if-eqz p13, :cond_254

    .line 2196
    move/from16 v0, v41

    move-object/from16 v1, p13

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 2197
    if-nez v41, :cond_2c4

    .line 2198
    move-object/from16 v0, p0

    iget-object v2, v0, mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_241
    .catchall {:try_start_1ee .. :try_end_241} :catchall_257

    .line 2201
    :cond_241
    :try_start_241
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_248
    .catch Ljava/lang/InterruptedException; {:try_start_241 .. :try_end_248} :catch_33c
    .catchall {:try_start_241 .. :try_end_248} :catchall_257

    .line 2204
    :goto_248
    :try_start_248
    move-object/from16 v0, p13

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_254

    move-object/from16 v0, p13

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v2, :cond_241

    .line 2225
    :cond_254
    :goto_254
    monitor-exit v3

    goto/16 :goto_67

    .line 2226
    .end local v19    # "callingPid":I
    .end local v22    # "realCallingPid":I
    .end local v23    # "realCallingUid":I
    .end local v38    # "origId":J
    .end local v41    # "res":I
    .end local v43    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_257
    move-exception v2

    :goto_258
    monitor-exit v3
    :try_end_259
    .catchall {:try_start_248 .. :try_end_259} :catchall_257

    throw v2

    .line 2064
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v22    # "realCallingPid":I
    .restart local v23    # "realCallingUid":I
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_25a
    if-nez p1, :cond_262

    .line 2065
    move/from16 v19, v22

    .line 2066
    .restart local v19    # "callingPid":I
    move/from16 p2, v23

    goto/16 :goto_7d

    .line 2068
    .end local v19    # "callingPid":I
    :cond_262
    const/16 p2, -0x1

    move/from16 v19, p2

    .restart local v19    # "callingPid":I
    goto/16 :goto_7d

    .line 2075
    :cond_268
    :try_start_268
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v43, v0

    .restart local v43    # "stack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_8f

    .line 2083
    :cond_270
    const/4 v2, 0x0

    goto/16 :goto_a0

    .line 2105
    .restart local v8    # "appCallingUid":I
    .restart local v32    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "origId":J
    :cond_273
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find app for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") when starting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    invoke-static/range {p15 .. p15}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2109
    const/16 v41, -0x4

    monitor-exit v3
    :try_end_2ad
    .catchall {:try_start_268 .. :try_end_2ad} :catchall_32e

    move-object/from16 v13, v31

    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_67

    .line 2150
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v32    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v36    # "newIntent":Landroid/content/Intent;
    .restart local v40    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v44    # "target":Landroid/content/IIntentSender;
    :cond_2b3
    const/4 v13, 0x0

    goto/16 :goto_1c4

    .line 2152
    .end local v40    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_2b6
    move-exception v33

    move-object/from16 v13, v31

    .line 2153
    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v33, "e":Landroid/os/RemoteException;
    :goto_2b9
    const/4 v13, 0x0

    goto/16 :goto_1ce

    .line 2192
    .end local v8    # "appCallingUid":I
    .end local v33    # "e":Landroid/os/RemoteException;
    .end local v36    # "newIntent":Landroid/content/Intent;
    .end local v44    # "target":Landroid/content/IIntentSender;
    .restart local v41    # "res":I
    :cond_2bc
    :try_start_2bc
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v43, v0

    goto/16 :goto_22e

    .line 2205
    :cond_2c4
    const/4 v2, 0x2

    move/from16 v0, v41

    if-ne v0, v2, :cond_254

    .line 2206
    const/4 v2, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v37

    .line 2207
    .local v37, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v37, :cond_308

    move-object/from16 v0, v37

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_308

    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v5, :cond_308

    .line 2208
    const/4 v2, 0x0

    move-object/from16 v0, p13

    iput-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 2209
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p13

    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 2210
    const-wide/16 v6, 0x0

    move-object/from16 v0, p13

    iput-wide v6, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 2211
    const-wide/16 v6, 0x0

    move-object/from16 v0, p13

    iput-wide v6, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_254

    .line 2213
    :cond_308
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p13

    iput-wide v6, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 2214
    move-object/from16 v0, p0

    iget-object v2, v0, mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_319
    .catchall {:try_start_2bc .. :try_end_319} :catchall_257

    .line 2217
    :cond_319
    :try_start_319
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_320
    .catch Ljava/lang/InterruptedException; {:try_start_319 .. :try_end_320} :catch_33a
    .catchall {:try_start_319 .. :try_end_320} :catchall_257

    .line 2220
    :goto_320
    :try_start_320
    move-object/from16 v0, p13

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_254

    move-object/from16 v0, p13

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_32a
    .catchall {:try_start_320 .. :try_end_32a} :catchall_257

    if-eqz v2, :cond_319

    goto/16 :goto_254

    .line 2226
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v19    # "callingPid":I
    .end local v22    # "realCallingPid":I
    .end local v23    # "realCallingUid":I
    .end local v37    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "origId":J
    .end local v41    # "res":I
    .end local v43    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_32e
    move-exception v2

    move-object/from16 v13, v31

    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_258

    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "appCallingUid":I
    .restart local v19    # "callingPid":I
    .restart local v22    # "realCallingPid":I
    .restart local v23    # "realCallingUid":I
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v36    # "newIntent":Landroid/content/Intent;
    .restart local v38    # "origId":J
    .restart local v43    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v44    # "target":Landroid/content/IIntentSender;
    :catchall_335
    move-exception v2

    move-object/from16 v13, v31

    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_258

    .line 2218
    .end local v8    # "appCallingUid":I
    .end local v36    # "newIntent":Landroid/content/Intent;
    .end local v44    # "target":Landroid/content/IIntentSender;
    .restart local v37    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v41    # "res":I
    :catch_33a
    move-exception v2

    goto :goto_320

    .line 2202
    .end local v37    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_33c
    move-exception v2

    goto/16 :goto_248

    .line 2152
    .end local v41    # "res":I
    .restart local v8    # "appCallingUid":I
    .restart local v36    # "newIntent":Landroid/content/Intent;
    .restart local v40    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v44    # "target":Landroid/content/IIntentSender;
    :catch_33f
    move-exception v33

    goto/16 :goto_2b9

    .end local v8    # "appCallingUid":I
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v36    # "newIntent":Landroid/content/Intent;
    .end local v40    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v44    # "target":Landroid/content/IIntentSender;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_342
    move-object/from16 v13, v31

    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_1ce
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I
    .registers 75
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 3425
    move-object/from16 v0, p0

    iget-object v8, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->applyMultiInstanceStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 3426
    if-eqz p2, :cond_17

    .line 3427
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    .line 3441
    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v37, v0

    .line 3442
    .local v37, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v22, v0

    .line 3445
    .local v22, "callingUid":I
    const/16 v26, 0x0

    .line 3452
    .local v26, "createdNewTask":Z
    if-eqz p8, :cond_49

    move-object/from16 v0, p8

    iget-boolean v8, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v8, :cond_49

    .line 3453
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Starting activity in task not in recents: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    const/16 p8, 0x0

    .line 3457
    :cond_49
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_195

    const/16 v43, 0x1

    .line 3458
    .local v43, "launchSingleTop":Z
    :goto_52
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_199

    const/16 v41, 0x1

    .line 3459
    .local v41, "launchSingleInstance":Z
    :goto_5b
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_19d

    const/16 v42, 0x1

    .line 3461
    .local v42, "launchSingleTask":Z
    :goto_64
    invoke-virtual/range {v37 .. v37}, Landroid/content/Intent;->getFlags()I

    move-result v40

    .line 3462
    .local v40, "launchFlags":I
    const/high16 v8, 0x80000

    and-int v8, v8, v40

    if-eqz v8, :cond_1a1

    if-nez v41, :cond_72

    if-eqz v42, :cond_1a1

    .line 3465
    :cond_72
    const-string v8, "ActivityManager"

    const-string v9, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    const v8, -0x8080001

    and-int v40, v40, v8

    .line 3485
    :goto_7e
    :pswitch_7e
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v8, :cond_1bf

    if-nez v42, :cond_1bf

    if-nez v41, :cond_1bf

    const/high16 v8, 0x80000

    and-int v8, v8, v40

    if-eqz v8, :cond_1bf

    const/16 v44, 0x1

    .line 3489
    .local v44, "launchTaskBehind":Z
    :goto_90
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_cc

    const/high16 v8, 0x10000000

    and-int v8, v8, v40

    if-eqz v8, :cond_cc

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v8, :cond_cc

    .line 3496
    const-string v8, "ActivityManager"

    const-string v9, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v6, -0x1

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3500
    const/4 v8, 0x0

    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3503
    :cond_cc
    const/high16 v8, 0x80000

    and-int v8, v8, v40

    if-eqz v8, :cond_104

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v8, :cond_104

    .line 3506
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v8, :cond_1c3

    if-eqz p2, :cond_1c3

    const-string v8, "android"

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c3

    .line 3508
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v8

    if-eqz v8, :cond_104

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v8

    if-nez v8, :cond_104

    .line 3510
    const/high16 v8, 0x10000000

    or-int v40, v40, v8

    .line 3523
    :cond_104
    :goto_104
    const/high16 v8, 0x10000000

    and-int v8, v8, v40

    if-eqz v8, :cond_119

    .line 3524
    if-nez v44, :cond_115

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_119

    .line 3526
    :cond_115
    const/high16 v8, 0x8000000

    or-int v40, v40, v8

    .line 3532
    :cond_119
    const/high16 v8, 0x40000

    and-int v8, v8, v40

    if-nez v8, :cond_1c9

    const/4 v8, 0x1

    :goto_120
    move-object/from16 v0, p0

    iput-boolean v8, v0, mUserLeaving:Z

    .line 3539
    if-nez p6, :cond_12b

    .line 3540
    const/4 v8, 0x1

    move-object/from16 v0, p1

    iput-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 3543
    :cond_12b
    const/high16 v8, 0x1000000

    and-int v8, v8, v40

    if-eqz v8, :cond_1cc

    move-object/from16 v52, p1

    .line 3550
    .local v52, "notTop":Lcom/android/server/am/ActivityRecord;
    :goto_133
    and-int/lit8 v8, p5, 0x1

    if-eqz v8, :cond_155

    .line 3551
    move-object/from16 v24, p2

    .line 3552
    .local v24, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez v24, :cond_145

    .line 3553
    move-object/from16 v0, p0

    iget-object v8, v0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v24

    .line 3555
    :cond_145
    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_155

    .line 3557
    and-int/lit8 p5, p5, -0x2

    .line 3561
    .end local v24    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_155
    const/16 v20, 0x0

    .line 3562
    .local v20, "addingToTask":Z
    const/16 v55, 0x0

    .line 3567
    .local v55, "reuseTask":Lcom/android/server/am/TaskRecord;
    if-nez p2, :cond_3c6

    if-eqz p8, :cond_3c6

    move-object/from16 v0, p8

    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v8, :cond_3c6

    move-object/from16 v0, p8

    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-eqz v8, :cond_3c6

    .line 3572
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v21

    .line 3573
    .local v21, "baseIntent":Landroid/content/Intent;
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v56

    .line 3574
    .local v56, "root":Lcom/android/server/am/ActivityRecord;
    if-nez v21, :cond_1d0

    .line 3575
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3576
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Launching into task without base intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3457
    .end local v20    # "addingToTask":Z
    .end local v21    # "baseIntent":Landroid/content/Intent;
    .end local v40    # "launchFlags":I
    .end local v41    # "launchSingleInstance":Z
    .end local v42    # "launchSingleTask":Z
    .end local v43    # "launchSingleTop":Z
    .end local v44    # "launchTaskBehind":Z
    .end local v52    # "notTop":Lcom/android/server/am/ActivityRecord;
    .end local v55    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .end local v56    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_195
    const/16 v43, 0x0

    goto/16 :goto_52

    .line 3458
    .restart local v43    # "launchSingleTop":Z
    :cond_199
    const/16 v41, 0x0

    goto/16 :goto_5b

    .line 3459
    .restart local v41    # "launchSingleInstance":Z
    :cond_19d
    const/16 v42, 0x0

    goto/16 :goto_64

    .line 3470
    .restart local v40    # "launchFlags":I
    .restart local v42    # "launchSingleTask":Z
    :cond_1a1
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v8, :pswitch_data_e2a

    goto/16 :goto_7e

    .line 3474
    :pswitch_1ac
    const/high16 v8, 0x80000

    or-int v40, v40, v8

    .line 3475
    goto/16 :goto_7e

    .line 3477
    :pswitch_1b2
    const/high16 v8, 0x80000

    or-int v40, v40, v8

    .line 3478
    goto/16 :goto_7e

    .line 3480
    :pswitch_1b8
    const v8, -0x8000001

    and-int v40, v40, v8

    goto/16 :goto_7e

    .line 3485
    :cond_1bf
    const/16 v44, 0x0

    goto/16 :goto_90

    .line 3513
    .restart local v44    # "launchTaskBehind":Z
    :cond_1c3
    const/high16 v8, 0x10000000

    or-int v40, v40, v8

    goto/16 :goto_104

    .line 3532
    :cond_1c9
    const/4 v8, 0x0

    goto/16 :goto_120

    .line 3543
    :cond_1cc
    const/16 v52, 0x0

    goto/16 :goto_133

    .line 3582
    .restart local v20    # "addingToTask":Z
    .restart local v21    # "baseIntent":Landroid/content/Intent;
    .restart local v52    # "notTop":Lcom/android/server/am/ActivityRecord;
    .restart local v55    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .restart local v56    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_1d0
    if-nez v41, :cond_1d4

    if-eqz v42, :cond_242

    .line 3583
    :cond_1d4
    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_210

    .line 3584
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3585
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trying to launch singleInstance/Task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " into different task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3588
    :cond_210
    if-eqz v56, :cond_242

    .line 3589
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3590
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caller with inTask "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has root "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v56

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but target is singleInstance/Task"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3597
    :cond_242
    if-nez v56, :cond_3b8

    .line 3598
    const v29, 0x18082000

    .line 3601
    .local v29, "flagsOfInterest":I
    const v8, -0x18082001

    and-int v8, v8, v40

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const v10, 0x18082000

    and-int/2addr v9, v10

    or-int v40, v8, v9

    .line 3603
    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3604
    move-object/from16 v0, p8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 3605
    const/16 v20, 0x1

    .line 3617
    .end local v29    # "flagsOfInterest":I
    :goto_266
    move-object/from16 v55, p8

    .line 3622
    .end local v21    # "baseIntent":Landroid/content/Intent;
    .end local v56    # "root":Lcom/android/server/am/ActivityRecord;
    :goto_268
    if-nez p8, :cond_293

    .line 3623
    if-nez p2, :cond_3ca

    .line 3626
    const/high16 v8, 0x10000000

    and-int v8, v8, v40

    if-nez v8, :cond_293

    if-nez p8, :cond_293

    .line 3627
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    const/high16 v8, 0x10000000

    or-int v40, v40, v8

    .line 3643
    :cond_293
    :goto_293
    const/16 v49, 0x0

    .line 3644
    .local v49, "newTaskInfo":Landroid/content/pm/ActivityInfo;
    const/16 v50, 0x0

    .line 3646
    .local v50, "newTaskIntent":Landroid/content/Intent;
    if-eqz p2, :cond_3f1

    .line 3647
    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_3e7

    .line 3653
    const/high16 v8, 0x10000000

    and-int v8, v8, v40

    if-nez v8, :cond_2e4

    .line 3654
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startActivity called from finishing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; forcing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    const/high16 v8, 0x10000000

    or-int v40, v40, v8

    .line 3657
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v49, v0

    .line 3658
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v50, v0

    .line 3662
    :cond_2e4
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_33b

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v8, :cond_33b

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p2

    if-ne v8, v0, :cond_33b

    .line 3663
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activity is launching from finishing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", so cancelling activity result."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v6, -0x1

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3668
    const/4 v8, 0x0

    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3673
    :cond_33b
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v8, :cond_3e1

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v8, :cond_3e1

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v8

    if-eqz v8, :cond_3e1

    .line 3676
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v57, v0

    .line 3689
    .local v57, "sourceStack":Lcom/android/server/am/ActivityStack;
    :goto_35d
    const/16 v45, 0x0

    .line 3691
    .local v45, "movedHome":Z
    const/4 v5, 0x0

    .line 3694
    .local v5, "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3695
    const/high16 v8, 0x10000

    and-int v8, v8, v40

    if-eqz v8, :cond_3f5

    const/4 v7, 0x1

    .line 3702
    .local v7, "noAnimation":Z
    :goto_36e
    const/high16 v8, 0x10000000

    and-int v8, v8, v40

    if-eqz v8, :cond_37a

    const/high16 v8, 0x8000000

    and-int v8, v8, v40

    if-eqz v8, :cond_384

    :cond_37a
    if-nez v41, :cond_37e

    if-eqz v42, :cond_890

    :cond_37e
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-nez v8, :cond_890

    .line 3710
    :cond_384
    if-nez p8, :cond_890

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v8, :cond_890

    .line 3715
    if-nez v41, :cond_3f8

    invoke-virtual/range {p0 .. p1}, findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v38

    .line 3717
    .local v38, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_392
    if-eqz v38, :cond_890

    .line 3721
    move-object/from16 v0, v38

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const v8, 0x10008000

    and-int v8, v8, v40

    const v10, 0x10008000

    if-ne v8, v10, :cond_405

    const/4 v8, 0x1

    :goto_3a3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v8

    if-eqz v8, :cond_407

    .line 3724
    invoke-virtual/range {p0 .. p0}, showLockTaskToast()V

    .line 3725
    const-string v8, "ActivityManager"

    const-string/jumbo v9, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    const/4 v8, 0x5

    .line 4651
    .end local v38    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_3b7
    return v8

    .line 3610
    .end local v5    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "noAnimation":Z
    .end local v45    # "movedHome":Z
    .end local v49    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .end local v50    # "newTaskIntent":Landroid/content/Intent;
    .end local v57    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v21    # "baseIntent":Landroid/content/Intent;
    .restart local v56    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_3b8
    const/high16 v8, 0x10000000

    and-int v8, v8, v40

    if-eqz v8, :cond_3c2

    .line 3611
    const/16 v20, 0x0

    goto/16 :goto_266

    .line 3614
    :cond_3c2
    const/16 v20, 0x1

    goto/16 :goto_266

    .line 3619
    .end local v21    # "baseIntent":Landroid/content/Intent;
    .end local v56    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_3c6
    const/16 p8, 0x0

    goto/16 :goto_268

    .line 3631
    :cond_3ca
    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3d7

    .line 3635
    const/high16 v8, 0x10000000

    or-int v40, v40, v8

    goto/16 :goto_293

    .line 3636
    :cond_3d7
    if-nez v41, :cond_3db

    if-eqz v42, :cond_293

    .line 3639
    :cond_3db
    const/high16 v8, 0x10000000

    or-int v40, v40, v8

    goto/16 :goto_293

    .line 3679
    .restart local v49    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .restart local v50    # "newTaskIntent":Landroid/content/Intent;
    :cond_3e1
    const/16 v57, 0x0

    .line 3680
    .restart local v57    # "sourceStack":Lcom/android/server/am/ActivityStack;
    const/16 p2, 0x0

    goto/16 :goto_35d

    .line 3683
    .end local v57    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_3e7
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v57, v0

    .restart local v57    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_35d

    .line 3686
    .end local v57    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_3f1
    const/16 v57, 0x0

    .restart local v57    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_35d

    .line 3695
    .restart local v5    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v45    # "movedHome":Z
    :cond_3f5
    const/4 v7, 0x0

    goto/16 :goto_36e

    .line 3715
    .restart local v7    # "noAnimation":Z
    :cond_3f8
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v8}, findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v38

    goto :goto_392

    .line 3721
    .restart local v38    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_405
    const/4 v8, 0x0

    goto :goto_3a3

    .line 3728
    :cond_407
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v8, :cond_415

    .line 3729
    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3806
    :cond_415
    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v8

    if-eqz v8, :cond_435

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v8

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v9

    if-eq v8, v9, :cond_435

    .line 3808
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v8

    move-object/from16 v0, v38

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/am/VirtualScreenManagerService;->moveTaskToDisplay(Lcom/android/server/am/TaskRecord;IZ)Z

    .line 3812
    :cond_435
    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v8, :cond_446

    .line 3817
    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 3819
    :cond_446
    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3820
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3827
    invoke-virtual/range {p0 .. p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v30

    .line 3828
    .local v30, "focusStack":Lcom/android/server/am/ActivityStack;
    if-nez v30, :cond_561

    const/16 v27, 0x0

    .line 3830
    .local v27, "curTop":Lcom/android/server/am/ActivityRecord;
    :goto_457
    const/16 v46, 0x0

    .line 3831
    .local v46, "movedToFront":Z
    if-eqz v27, :cond_656

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v38

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v8, v9, :cond_48d

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    if-ne v8, v9, :cond_48d

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v8

    if-eqz v8, :cond_48d

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v8

    if-eqz v8, :cond_656

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-nez v8, :cond_656

    .line 3839
    :cond_48d
    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_4aa

    .line 3842
    invoke-direct/range {p0 .. p0}, isKnoxmode()Z

    move-result v8

    if-nez v8, :cond_56b

    .line 3843
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v9, 0x400000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3844
    const/4 v8, 0x0

    sput-boolean v8, isLaunchKnoxApps:Z

    .line 3859
    :cond_4aa
    :goto_4aa
    if-eqz p2, :cond_4be

    invoke-virtual/range {v57 .. v57}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_656

    invoke-virtual/range {v57 .. v57}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v8, v9, :cond_656

    .line 3862
    :cond_4be
    if-eqz v44, :cond_4cb

    if-eqz p2, :cond_4cb

    .line 3863
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 3865
    :cond_4cb
    const/16 v45, 0x1

    .line 3868
    if-eqz v5, :cond_640

    .line 3869
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v8, v2}, computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 3870
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v5, v8, :cond_68a

    .line 3871
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5, v8, v9}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 3872
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3874
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v59

    .line 3875
    .local v59, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v59 .. v59}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_5c1

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v8

    if-eqz v8, :cond_5c1

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v8

    if-eqz v8, :cond_5c1

    .line 3880
    const/16 v51, 0x0

    .line 3881
    .local v51, "notFullScreenTaskNum":I
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 3883
    .local v23, "checkTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v59 .. v59}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "i$":Ljava/util/Iterator;
    :cond_528
    :goto_528
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_596

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/server/am/TaskRecord;

    .line 3884
    .local v58, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v58

    iget v9, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v8, v9, :cond_528

    .line 3885
    move-object/from16 v0, v23

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3886
    invoke-virtual/range {v58 .. v58}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v61

    .line 3888
    .local v61, "top":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v58

    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_528

    if-eqz v61, :cond_528

    move-object/from16 v0, v61

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v8, :cond_528

    .line 3890
    add-int/lit8 v51, v51, 0x1

    goto :goto_528

    .line 3828
    .end local v23    # "checkTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v27    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v34    # "i$":Ljava/util/Iterator;
    .end local v46    # "movedToFront":Z
    .end local v51    # "notFullScreenTaskNum":I
    .end local v58    # "task":Lcom/android/server/am/TaskRecord;
    .end local v59    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v61    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_561
    move-object/from16 v0, v30

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    goto/16 :goto_457

    .line 3846
    .restart local v27    # "curTop":Lcom/android/server/am/ActivityRecord;
    .restart local v46    # "movedToFront":Z
    :cond_56b
    sget-boolean v8, isLaunchKnoxApps:Z

    if-eqz v8, :cond_57d

    .line 3847
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v9, 0x400000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3848
    const/4 v8, 0x0

    sput-boolean v8, isLaunchKnoxApps:Z

    goto/16 :goto_4aa

    .line 3851
    :cond_57d
    :try_start_57d
    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    const-string v9, "com.sec.android.app.launcher"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_4aa

    .line 3852
    const/4 v8, 0x1

    sput-boolean v8, isLaunchKnoxApps:Z
    :try_end_58e
    .catch Ljava/lang/NullPointerException; {:try_start_57d .. :try_end_58e} :catch_590

    goto/16 :goto_4aa

    .line 3853
    :catch_590
    move-exception v53

    .line 3854
    .local v53, "npe":Ljava/lang/NullPointerException;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_4aa

    .line 3895
    .end local v53    # "npe":Ljava/lang/NullPointerException;
    .restart local v23    # "checkTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v34    # "i$":Ljava/util/Iterator;
    .restart local v51    # "notFullScreenTaskNum":I
    .restart local v59    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_596
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v8

    move/from16 v0, v51

    if-ne v0, v8, :cond_5c1

    .line 3896
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_5a2
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5c1

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/server/am/TaskRecord;

    .line 3897
    .restart local v58    # "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v58

    invoke-virtual {v5, v0, v8}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 3898
    invoke-virtual/range {v58 .. v58}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_5a2

    .line 3910
    .end local v23    # "checkTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v34    # "i$":Ljava/util/Iterator;
    .end local v51    # "notFullScreenTaskNum":I
    .end local v58    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5c1
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v8, :cond_682

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v62

    .line 3911
    .local v62, "topActivity":Lcom/android/server/am/ActivityRecord;
    :goto_5d0
    if-eqz v62, :cond_686

    move-object/from16 v0, v62

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_686

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v8

    if-nez v8, :cond_686

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v8

    if-eqz v8, :cond_686

    const/16 v47, 0x1

    .line 3913
    .local v47, "needToResume":Z
    :goto_5ee
    const-string/jumbo v8, "move task to stack"

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v8, v9}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 3914
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v9

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v8, v9, v10, v1}, moveTaskToStackLocked(IIZZ)V

    .line 3918
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3919
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move/from16 v2, p5

    invoke-virtual {v5, v8, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->prepareTaskToFrontTransition(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;I)V

    .line 3920
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v8

    if-eqz v8, :cond_640

    invoke-virtual/range {p0 .. p0}, resumeTopActivitiesLocked()Z

    move-result v8

    if-nez v8, :cond_640

    .line 3921
    move-object/from16 v0, p0

    iget-object v8, v0, mRecentTasks:Lcom/android/server/am/RecentTasks;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v9}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    .line 3922
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v10}, pauseBackStacks(ZZZ)Z

    .line 3937
    .end local v47    # "needToResume":Z
    .end local v59    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v62    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_640
    :goto_640
    const/16 v46, 0x1

    .line 3938
    const v8, 0x10004000

    and-int v8, v8, v40

    const v9, 0x10004000

    if-ne v8, v9, :cond_654

    .line 3947
    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 3950
    :cond_654
    const/16 p7, 0x0

    .line 3953
    :cond_656
    if-nez v46, :cond_65e

    .line 3956
    const-string/jumbo v8, "intentActivityFound"

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3961
    :cond_65e
    const/high16 v8, 0x200000

    and-int v8, v8, v40

    if-eqz v8, :cond_66c

    .line 3962
    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v38

    .line 3964
    :cond_66c
    and-int/lit8 v8, p5, 0x1

    if-eqz v8, :cond_6b7

    .line 3969
    if-eqz p6, :cond_6b3

    .line 3970
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v5, v8, v1}, resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 3974
    if-nez v46, :cond_67f

    .line 3975
    invoke-virtual/range {p0 .. p0}, notifyActivityDrawnForKeyguard()V

    .line 3980
    :cond_67f
    :goto_67f
    const/4 v8, 0x1

    goto/16 :goto_3b7

    .line 3910
    .restart local v59    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_682
    const/16 v62, 0x0

    goto/16 :goto_5d0

    .line 3911
    .restart local v62    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_686
    const/16 v47, 0x0

    goto/16 :goto_5ee

    .line 3925
    .end local v59    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v62    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_68a
    const/4 v12, 0x1

    .line 3926
    .local v12, "isDoResume":Z
    if-eqz p1, :cond_6b1

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    and-int/lit16 v8, v8, 0x1000

    if-nez v8, :cond_6b1

    const/4 v12, 0x1

    .line 3927
    :goto_69a
    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const/4 v10, 0x0

    const-string v11, "bringingFoundTaskToFront"

    move-object/from16 v8, p7

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;ILjava/lang/String;Z)V

    .line 3929
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    goto :goto_640

    .line 3926
    :cond_6b1
    const/4 v12, 0x0

    goto :goto_69a

    .line 3978
    .end local v12    # "isDoResume":Z
    :cond_6b3
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_67f

    .line 3984
    :cond_6b7
    const/16 v35, 0x0

    .line 3987
    .local v35, "ignoreIntentActivity":Z
    const v8, 0x10008000

    and-int v8, v8, v40

    const v9, 0x10008000

    if-ne v8, v9, :cond_74a

    .line 3992
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v55, v0

    .line 3993
    invoke-virtual/range {v55 .. v55}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 3994
    move-object/from16 v0, v55

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 4102
    :cond_6d3
    :goto_6d3
    if-nez v20, :cond_890

    if-nez v55, :cond_890

    if-nez v35, :cond_890

    .line 4109
    if-eqz p6, :cond_88b

    .line 4112
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v8

    if-eqz v8, :cond_713

    .line 4113
    const/16 v32, 0x0

    .line 4114
    .local v32, "fromHomeKey":Z
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_6f9

    .line 4116
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFromHomeKey()Z

    move-result v32

    .line 4117
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setFromHomeKey(Z)V

    .line 4120
    :cond_6f9
    if-eqz v32, :cond_713

    .line 4121
    move-object/from16 v0, p0

    iget-object v8, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/server/am/ActivityManagerService;->mMinimizeAllPenWindowRequested:Z

    .line 4122
    invoke-virtual/range {p0 .. p0}, getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v33

    .line 4123
    .local v33, "homeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v33, :cond_713

    move-object/from16 v0, v33

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_713

    .line 4127
    invoke-virtual/range {p0 .. p0}, handleMinimizeAllPenWindow()V

    .line 4131
    .end local v32    # "fromHomeKey":Z
    .end local v33    # "homeActivity":Lcom/android/server/am/ActivityRecord;
    :cond_713
    if-eqz v5, :cond_734

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_734

    .line 4132
    const/4 v8, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v5, v8, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 4133
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v31

    .line 4134
    .local v31, "focusedActivity":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v8, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v9, "startActivityUncheckedNewTask"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0, v9}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4140
    .end local v31    # "focusedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_734
    if-nez v46, :cond_747

    .line 4144
    if-eqz v27, :cond_744

    move-object/from16 v0, p0

    iget-object v8, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/android/server/am/ActivityManagerService;->isTargetDismissIntent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_747

    .line 4146
    :cond_744
    invoke-virtual/range {p0 .. p0}, notifyActivityDrawnForKeyguard()V

    .line 4152
    :cond_747
    :goto_747
    const/4 v8, 0x2

    goto/16 :goto_3b7

    .line 3995
    :cond_74a
    const/high16 v8, 0x4000000

    and-int v8, v8, v40

    if-nez v8, :cond_754

    if-nez v41, :cond_754

    if-eqz v42, :cond_805

    .line 4001
    :cond_754
    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v8, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v61

    .line 4003
    .restart local v61    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v61, :cond_78d

    .line 4004
    move-object/from16 v0, v61

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v8, :cond_771

    .line 4009
    move-object/from16 v0, v61

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 4011
    :cond_771
    const/16 v8, 0x7533

    move-object/from16 v0, v61

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v8, v0, v9}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4013
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v61

    move/from16 v1, v22

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_6d3

    .line 4015
    :cond_78d
    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v8, :cond_7dd

    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v8, v8, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    if-eqz v8, :cond_7b7

    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v38

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-nez v8, :cond_7dd

    .line 4021
    :cond_7b7
    const/4 v8, 0x0

    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4022
    const/16 v35, 0x1

    .line 4024
    const/high16 v8, 0x10000000

    and-int v8, v8, v40

    if-nez v8, :cond_6d3

    .line 4028
    if-eqz p2, :cond_6d3

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v9

    xor-int/2addr v8, v9

    if-eqz v8, :cond_6d3

    .line 4031
    const/16 p2, 0x0

    goto/16 :goto_6d3

    .line 4039
    :cond_7dd
    const/16 v20, 0x1

    .line 4042
    move-object/from16 p2, v38

    .line 4043
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v58, v0

    .line 4044
    .restart local v58    # "task":Lcom/android/server/am/TaskRecord;
    if-eqz v58, :cond_6d3

    move-object/from16 v0, v58

    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v8, :cond_6d3

    .line 4047
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v8}, computeStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4048
    if-nez v44, :cond_803

    const/4 v8, 0x1

    :goto_7fb
    const/4 v9, 0x0

    move-object/from16 v0, v58

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    goto/16 :goto_6d3

    :cond_803
    const/4 v8, 0x0

    goto :goto_7fb

    .line 4053
    .end local v58    # "task":Lcom/android/server/am/TaskRecord;
    .end local v61    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_805
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v38

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_86c

    .line 4060
    const/high16 v8, 0x20000000

    and-int v8, v8, v40

    if-nez v8, :cond_81d

    if-eqz v43, :cond_856

    :cond_81d
    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_856

    .line 4062
    const/16 v8, 0x7533

    move-object/from16 v0, v38

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v8, v0, v9}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4064
    move-object/from16 v0, v38

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v8, :cond_845

    .line 4065
    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 4067
    :cond_845
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_6d3

    .line 4069
    :cond_856
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v38

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_6d3

    .line 4073
    const/16 v20, 0x1

    .line 4074
    move-object/from16 p2, v38

    goto/16 :goto_6d3

    .line 4084
    :cond_86c
    const/high16 v8, 0x200000

    and-int v8, v8, v40

    if-nez v8, :cond_878

    .line 4090
    const/16 v20, 0x1

    .line 4091
    move-object/from16 p2, v38

    goto/16 :goto_6d3

    .line 4092
    :cond_878
    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v8, v8, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v8, :cond_6d3

    .line 4100
    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_6d3

    .line 4150
    :cond_88b
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto/16 :goto_747

    .line 4164
    .end local v27    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v30    # "focusStack":Lcom/android/server/am/ActivityStack;
    .end local v35    # "ignoreIntentActivity":Z
    .end local v38    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v46    # "movedToFront":Z
    :cond_890
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_921

    .line 4168
    move-object/from16 v0, p0

    iget-object v0, v0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v63, v0

    .line 4195
    .local v63, "topStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v61

    .line 4201
    .restart local v61    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v55, :cond_8b2

    if-eqz v61, :cond_8b2

    move-object/from16 v0, v61

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v55

    if-eq v0, v8, :cond_8b2

    .line 4202
    const/16 v61, 0x0

    .line 4205
    :cond_8b2
    if-eqz v61, :cond_957

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v8, :cond_957

    .line 4206
    move-object/from16 v0, v61

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_957

    move-object/from16 v0, v61

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v8, v9, :cond_957

    .line 4207
    move-object/from16 v0, v61

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_957

    move-object/from16 v0, v61

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v8, :cond_957

    .line 4208
    const/high16 v8, 0x20000000

    and-int v8, v8, v40

    if-nez v8, :cond_8ea

    if-nez v43, :cond_8ea

    if-eqz v42, :cond_957

    :cond_8ea
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-nez v8, :cond_957

    .line 4211
    const/16 v8, 0x7533

    move-object/from16 v0, v61

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v61

    invoke-static {v8, v0, v9}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4215
    const/4 v8, 0x0

    move-object/from16 v0, v63

    iput-object v8, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4216
    if-eqz p6, :cond_905

    .line 4217
    invoke-virtual/range {p0 .. p0}, resumeTopActivitiesLocked()Z

    .line 4219
    :cond_905
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4220
    and-int/lit8 v8, p5, 0x1

    if-eqz v8, :cond_90f

    .line 4224
    const/4 v8, 0x1

    goto/16 :goto_3b7

    .line 4226
    :cond_90f
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v61

    move/from16 v1, v22

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4227
    const/4 v8, 0x3

    goto/16 :goto_3b7

    .line 4234
    .end local v61    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v63    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_921
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_951

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v8, :cond_951

    .line 4235
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v14, -0x1

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4238
    :cond_951
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4239
    const/4 v8, -0x2

    goto/16 :goto_3b7

    .line 4242
    .restart local v61    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v63    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_957
    const-string v8, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9b3

    .line 4243
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_9fb

    const-string v8, "CU_Flag"

    const/4 v9, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_9fb

    .line 4244
    new-instance v36, Landroid/content/Intent;

    const-string v8, "android.intent.action.CHECK_CU_VAS"

    move-object/from16 v0, v36

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4245
    .local v36, "in":Landroid/content/Intent;
    const/high16 v8, 0x50000000

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4246
    const-string v8, "CU_Vas"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4248
    :try_start_999
    move-object/from16 v0, p0

    iget-object v8, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9a4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_999 .. :try_end_9a4} :catch_9a7

    .line 4253
    :goto_9a4
    const/4 v8, 0x4

    goto/16 :goto_3b7

    .line 4249
    :catch_9a7
    move-exception v28

    .line 4250
    .local v28, "e":Landroid/content/ActivityNotFoundException;
    const-string v8, "ActivityManager"

    const-string v9, "Activity Not Found !!! "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    invoke-virtual/range {v28 .. v28}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_9a4

    .line 4255
    .end local v28    # "e":Landroid/content/ActivityNotFoundException;
    .end local v36    # "in":Landroid/content/Intent;
    :cond_9b3
    const-string v8, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9fb

    .line 4256
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_9fb

    .line 4257
    new-instance v36, Landroid/content/Intent;

    const-string v8, "android.intent.action.CHECK_CMCC_VAS"

    move-object/from16 v0, v36

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4258
    .restart local v36    # "in":Landroid/content/Intent;
    const/high16 v8, 0x50000000

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4260
    :try_start_9e1
    move-object/from16 v0, p0

    iget-object v8, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9ec
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9e1 .. :try_end_9ec} :catch_9ef

    .line 4265
    :goto_9ec
    const/4 v8, 0x4

    goto/16 :goto_3b7

    .line 4261
    :catch_9ef
    move-exception v28

    .line 4262
    .restart local v28    # "e":Landroid/content/ActivityNotFoundException;
    const-string v8, "ActivityManager"

    const-string v9, "Activity Not Found !!! "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    invoke-virtual/range {v28 .. v28}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_9ec

    .line 4269
    .end local v28    # "e":Landroid/content/ActivityNotFoundException;
    .end local v36    # "in":Landroid/content/Intent;
    :cond_9fb
    const/16 v48, 0x0

    .line 4270
    .local v48, "newTask":Z
    const/16 v39, 0x0

    .line 4273
    .local v39, "keepCurTransition":Z
    const/16 v25, 0x0

    .line 4324
    .local v25, "coupledTaskMode":Z
    if-eqz v44, :cond_a95

    if-eqz p2, :cond_a95

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v60, v0

    .line 4328
    .local v60, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :goto_a0b
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v8, :cond_a1b

    if-nez p8, :cond_a1b

    if-nez v20, :cond_a1b

    const/high16 v8, 0x10000000

    and-int v8, v8, v40

    if-nez v8, :cond_a1d

    :cond_a1b
    if-eqz v25, :cond_af8

    .line 4331
    :cond_a1d
    const/16 v48, 0x1

    .line 4333
    const/16 v65, 0x1

    .line 4335
    .local v65, "updateFocus":Z
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/VirtualScreenManagerService;->isVirtualScreen(I)Z

    move-result v8

    if-eqz v8, :cond_a31

    .line 4336
    const/16 v65, 0x0

    .line 4340
    :cond_a31
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v48

    move-object/from16 v3, p2

    move/from16 v4, v65

    invoke-virtual {v0, v1, v2, v3, v4}, computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4351
    if-nez v55, :cond_aa4

    .line 4352
    invoke-virtual/range {p0 .. p0}, getNextTaskId()I

    move-result v14

    if-eqz v49, :cond_a99

    move-object/from16 v15, v49

    :goto_a49
    if-eqz v50, :cond_a9e

    move-object/from16 v16, v50

    :goto_a4d
    if-nez v44, :cond_aa1

    const/16 v19, 0x1

    :goto_a51
    move-object v13, v5

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v8

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-virtual {v0, v8, v1}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4362
    if-nez v44, :cond_a69

    .line 4363
    const-string/jumbo v8, "startingNewTask"

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 4391
    :cond_a69
    :goto_a69
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v8

    if-eqz v8, :cond_ab8

    .line 4392
    invoke-virtual/range {p0 .. p0}, showLockTaskToast()V

    .line 4393
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted Lock Task Mode violation r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4394
    const/4 v8, 0x5

    goto/16 :goto_3b7

    .line 4324
    .end local v60    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    .end local v65    # "updateFocus":Z
    :cond_a95
    const/16 v60, 0x0

    goto/16 :goto_a0b

    .line 4352
    .restart local v60    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    .restart local v65    # "updateFocus":Z
    :cond_a99
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_a49

    :cond_a9e
    move-object/from16 v16, v37

    goto :goto_a4d

    :cond_aa1
    const/16 v19, 0x0

    goto :goto_a51

    .line 4382
    :cond_aa4
    move-object/from16 v0, p1

    move-object/from16 v1, v55

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4385
    if-nez v44, :cond_a69

    .line 4386
    const-string/jumbo v8, "startingNewTask"

    move-object/from16 v0, v55

    invoke-virtual {v5, v8, v0}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    goto :goto_a69

    .line 4396
    :cond_ab8
    if-nez v45, :cond_acc

    .line 4397
    const v8, 0x10004000

    and-int v8, v8, v40

    const v9, 0x10004000

    if-ne v8, v9, :cond_acc

    .line 4402
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4601
    .end local v65    # "updateFocus":Z
    :cond_acc
    :goto_acc
    if-eqz v37, :cond_d89

    invoke-virtual/range {v37 .. v37}, Landroid/content/Intent;->getVirtualScreenParams()Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;

    move-result-object v8

    iget v8, v8, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_d89

    .line 4603
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .restart local v34    # "i$":Ljava/util/Iterator;
    :cond_ae0
    :goto_ae0
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d89

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/server/am/TaskRecord;

    .line 4604
    .restart local v58    # "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v58

    if-eq v8, v0, :cond_ae0

    .line 4605
    invoke-virtual/range {v58 .. v58}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    goto :goto_ae0

    .line 4405
    .end local v34    # "i$":Ljava/util/Iterator;
    .end local v58    # "task":Lcom/android/server/am/TaskRecord;
    :cond_af8
    if-eqz p2, :cond_c3d

    .line 4406
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4407
    .local v6, "sourceTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v8

    if-eqz v8, :cond_b26

    .line 4408
    invoke-virtual/range {p0 .. p0}, showLockTaskToast()V

    .line 4409
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted Lock Task Mode violation r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4410
    const/4 v8, 0x5

    goto/16 :goto_3b7

    .line 4412
    :cond_b26
    iget-object v5, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 4413
    const-string/jumbo v8, "sourceStackToFront"

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 4414
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v64

    .line 4415
    .local v64, "topTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v64

    if-eq v0, v6, :cond_b42

    .line 4416
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v10, "sourceTaskToFront"

    move-object/from16 v8, p7

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 4421
    :cond_b42
    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 4424
    move-object/from16 v0, v64

    if-ne v0, v6, :cond_b54

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-nez v8, :cond_b60

    .line 4425
    :cond_b54
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v10, "sourceTaskToFront"

    move-object/from16 v8, p7

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 4427
    :cond_b60
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_b7d

    .line 4428
    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8, v6, v9}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 4429
    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 4439
    :cond_b7d
    if-nez v20, :cond_bc7

    const/high16 v8, 0x4000000

    and-int v8, v8, v40

    if-eqz v8, :cond_bc7

    .line 4443
    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v6, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v61

    .line 4444
    const/16 v39, 0x1

    .line 4445
    if-eqz v61, :cond_c35

    .line 4446
    const/16 v8, 0x7533

    move-object/from16 v0, v61

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v8, v0, v9}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4447
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v61

    move/from16 v1, v22

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4450
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4451
    if-eqz p6, :cond_bc1

    .line 4452
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4454
    if-nez v44, :cond_bc1

    .line 4455
    move-object/from16 v0, p0

    iget-object v8, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const-string v9, "FIXME"

    move-object/from16 v0, v61

    invoke-virtual {v8, v0, v9}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4459
    :cond_bc1
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4460
    const/4 v8, 0x3

    goto/16 :goto_3b7

    .line 4462
    :cond_bc7
    if-nez v20, :cond_c35

    const/high16 v8, 0x20000

    and-int v8, v8, v40

    if-eqz v8, :cond_c35

    .line 4467
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v61

    .line 4468
    if-eqz v61, :cond_c35

    .line 4469
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v58, v0

    .line 4472
    .restart local v58    # "task":Lcom/android/server/am/TaskRecord;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_SupportDeviceReporting"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_bf6

    .line 4475
    move-object/from16 v0, p0

    iget-object v8, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v61

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V

    .line 4478
    :cond_bf6
    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4479
    const/16 v8, 0x7533

    move-object/from16 v0, p1

    move-object/from16 v1, v58

    invoke-static {v8, v0, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4480
    move-object/from16 v0, v61

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 4481
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v61

    move/from16 v1, v22

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4482
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4483
    if-eqz p6, :cond_c32

    .line 4484
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4486
    if-nez v44, :cond_c32

    .line 4487
    move-object/from16 v0, p0

    iget-object v8, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const-string v9, "FIXME"

    move-object/from16 v0, v61

    invoke-virtual {v8, v0, v9}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4491
    :cond_c32
    const/4 v8, 0x3

    goto/16 :goto_3b7

    .line 4497
    .end local v58    # "task":Lcom/android/server/am/TaskRecord;
    :cond_c35
    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_acc

    .line 4501
    .end local v6    # "sourceTask":Lcom/android/server/am/TaskRecord;
    .end local v64    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_c3d
    if-eqz p8, :cond_d43

    .line 4504
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v8

    if-eqz v8, :cond_c69

    .line 4505
    invoke-virtual/range {p0 .. p0}, showLockTaskToast()V

    .line 4506
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted Lock Task Mode violation r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4507
    const/4 v8, 0x5

    goto/16 :goto_3b7

    .line 4512
    :cond_c69
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_cec

    move-object/from16 v0, p8

    iget v8, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, needMoveOnlySpecificTaskToFront(I)Z

    move-result v8

    if-eqz v8, :cond_cec

    invoke-virtual/range {p0 .. p0}, getSpecificFloatingStack()Lcom/android/server/am/ActivityStack;

    move-result-object v8

    if-eqz v8, :cond_cec

    .line 4515
    invoke-virtual/range {p0 .. p0}, getSpecificFloatingStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4520
    :goto_c8a
    move-object/from16 v0, p8

    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v5, v8, :cond_d08

    .line 4521
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p8

    invoke-virtual {v5, v0, v8}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 4522
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 4523
    move-object/from16 v0, p8

    iget v8, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v58

    .line 4524
    .restart local v58    # "task":Lcom/android/server/am/TaskRecord;
    if-nez v58, :cond_cf8

    .line 4525
    move-object/from16 v0, p8

    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 4558
    .end local v58    # "task":Lcom/android/server/am/TaskRecord;
    :goto_cb2
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v61

    .line 4559
    if-eqz v61, :cond_d31

    move-object/from16 v0, v61

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d31

    move-object/from16 v0, v61

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v8, v9, :cond_d31

    .line 4560
    const/high16 v8, 0x20000000

    and-int v8, v8, v40

    if-nez v8, :cond_cda

    if-nez v43, :cond_cda

    if-eqz v42, :cond_d31

    .line 4562
    :cond_cda
    const/16 v8, 0x7533

    move-object/from16 v0, v61

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v61

    invoke-static {v8, v0, v9}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4563
    and-int/lit8 v8, p5, 0x1

    if-eqz v8, :cond_d1f

    .line 4567
    const/4 v8, 0x1

    goto/16 :goto_3b7

    .line 4517
    :cond_cec
    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v8, v2}, computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    goto :goto_c8a

    .line 4532
    .restart local v58    # "task":Lcom/android/server/am/TaskRecord;
    :cond_cf8
    move-object/from16 v0, p8

    iget v8, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v10, v11}, moveTaskToStackLocked(IIZZ)V

    goto :goto_cb2

    .line 4535
    .end local v58    # "task":Lcom/android/server/am/TaskRecord;
    :cond_d08
    move-object/from16 v0, p8

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 4536
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object/from16 v17, v0

    const-string/jumbo v18, "inTaskToFront"

    move-object v13, v5

    move-object/from16 v14, p8

    move v15, v7

    move-object/from16 v16, p7

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_cb2

    .line 4569
    :cond_d1f
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v61

    move/from16 v1, v22

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4570
    const/4 v8, 0x3

    goto/16 :goto_3b7

    .line 4574
    :cond_d31
    if-nez v20, :cond_d39

    .line 4577
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4578
    const/4 v8, 0x2

    goto/16 :goto_3b7

    .line 4581
    :cond_d39
    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1, v8}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_acc

    .line 4589
    :cond_d43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v48

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4590
    const-string v8, "addingToTopTask"

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 4591
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v54

    .line 4592
    .local v54, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v54, :cond_d73

    move-object/from16 v0, v54

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_d5e
    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4594
    move-object/from16 v0, p0

    iget-object v8, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    goto/16 :goto_acc

    .line 4592
    :cond_d73
    invoke-virtual/range {p0 .. p0}, getNextTaskId()I

    move-result v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v13, v5

    move-object/from16 v16, v37

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v8

    goto :goto_d5e

    .line 4612
    .end local v54    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_d89
    move-object/from16 v0, p0

    iget-object v13, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v18, v0

    move/from16 v14, v22

    move-object/from16 v16, v37

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 4615
    if-eqz p2, :cond_db2

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v8

    if-eqz v8, :cond_db2

    .line 4616
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4618
    :cond_db2
    if-eqz v48, :cond_dd4

    .line 4619
    const/16 v8, 0x7534

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v11, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4623
    :cond_dd4
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v8, :cond_ded

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_ded

    .line 4624
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/high16 v9, 0x8000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4626
    :cond_ded
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v8, :cond_dfa

    .line 4627
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->resetSpecificTaskId()V

    .line 4631
    :cond_dfa
    const/16 v8, 0x7535

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v8, v0, v9}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4632
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v13, v5

    move-object/from16 v14, p1

    move/from16 v15, v48

    move/from16 v16, p6

    move/from16 v17, v39

    move-object/from16 v18, p7

    move/from16 v19, v26

    .line 4633
    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;Z)V

    .line 4635
    if-nez v44, :cond_e26

    .line 4637
    move-object/from16 v0, p0

    iget-object v8, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v9, "startedActivity"

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v9}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4651
    :cond_e26
    const/4 v8, 0x0

    goto/16 :goto_3b7

    .line 3470
    nop

    :pswitch_data_e2a
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_1ac
        :pswitch_1b2
        :pswitch_1b8
    .end packed-switch
.end method

.method public startBackgroundUserLocked(ILcom/android/server/am/UserState;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 6845
    iget-object v0, p0, mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6846
    return-void
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 1995
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)V

    .line 1996
    return-void
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)V
    .registers 29
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    .prologue
    .line 2013
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, moveHomeStackTaskToTop(ILjava/lang/String;)Z

    .line 2015
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v23}, startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    .line 2022
    move-object/from16 v0, p0

    iget-boolean v2, v0, inResumeTopActivity:Z

    if-eqz v2, :cond_35

    .line 2026
    invoke-virtual/range {p0 .. p0}, scheduleResumeTopActivities()V

    .line 2028
    :cond_35
    return-void
.end method

.method startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 22
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    .prologue
    .line 2603
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v15

    .line 2607
    .local v15, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_23

    .line 2608
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2611
    :cond_23
    if-eqz v15, :cond_a7

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_a7

    .line 2613
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v4, :cond_45

    .line 2614
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v4, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    if-eqz v4, :cond_45

    .line 2615
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v15, v5}, Lcom/android/server/am/SmartAdjustManager;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V

    .line 2619
    :cond_45
    :try_start_45
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5d

    const-string v4, "android"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    .line 2625
    :cond_5d
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->versionCode:I

    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v15, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    .line 2628
    :cond_74
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v15, v2, v3}, realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_7f} :catch_80

    .line 2664
    :cond_7f
    :goto_7f
    return-void

    .line 2630
    :catch_80
    move-exception v16

    .line 2631
    .local v16, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when starting activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2641
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_a7
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "activity"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v14

    invoke-virtual/range {v4 .. v14}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZI)Lcom/android/server/am/ProcessRecord;

    move-result-object v17

    .line 2648
    .local v17, "startedApp":Lcom/android/server/am/ProcessRecord;
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v4, :cond_ea

    .line 2649
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v4, :cond_ea

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    if-eqz v4, :cond_ea

    .line 2650
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/SmartAdjustManager;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V

    .line 2655
    :cond_ea
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_SupportDeviceReporting"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 2658
    if-eqz v15, :cond_7f

    .line 2659
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v6, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v4, v5, v6}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStart(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_7f
.end method

.method switchUserLocked(ILcom/android/server/am/UserState;)Z
    .registers 14
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    const/4 v10, 0x1

    .line 6794
    iget-object v7, p0, mUserStackInFront:Landroid/util/SparseIntArray;

    iget v8, p0, mCurrentUser:I

    iget-object v9, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 6795
    iget-object v7, p0, mUserStackInFront:Landroid/util/SparseIntArray;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 6796
    .local v2, "restoreStackId":I
    iput p1, p0, mCurrentUser:I

    .line 6798
    iget-object v7, p0, mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6799
    iget-object v7, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "displayNdx":I
    :goto_24
    if-ltz v0, :cond_54

    .line 6800
    iget-object v7, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6801
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "stackNdx":I
    :goto_36
    if-ltz v4, :cond_51

    .line 6802
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 6803
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->switchUserLocked(I)V

    .line 6804
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 6805
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_4e

    .line 6806
    iget-object v7, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 6801
    :cond_4e
    add-int/lit8 v4, v4, -0x1

    goto :goto_36

    .line 6799
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_51
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 6811
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_54
    invoke-virtual {p0, v2}, getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 6812
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_5c

    .line 6813
    iget-object v3, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 6815
    :cond_5c
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v1

    .line 6816
    .local v1, "homeInFront":Z
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 6817
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 6820
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0, v3, v10}, moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 6821
    if-eqz v6, :cond_74

    .line 6822
    iget-object v7, v3, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V

    .line 6829
    :cond_74
    if-eqz v6, :cond_7d

    .line 6830
    iget-object v7, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 6836
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_7d
    :goto_7d
    return v1

    .line 6834
    :cond_7e
    const/4 v7, 0x0

    const-string/jumbo v8, "switchUserOnOtherDisplay"

    invoke-virtual {p0, v10, v7, v8}, resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    goto :goto_7d
.end method

.method topResumedActivityExceptFloatingLocked(ZI)Lcom/android/server/am/ActivityRecord;
    .registers 10
    .param p1, "absoluteTop"    # Z
    .param p2, "displayId"    # I

    .prologue
    const/4 v3, 0x0

    .line 8753
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_22

    .line 8754
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is no ActivityDisplay for displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8771
    :cond_21
    :goto_21
    return-object v3

    .line 8758
    :cond_22
    invoke-virtual {p0, p2}, getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 8759
    .local v2, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    if-eqz p1, :cond_41

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_41

    .line 8760
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    goto :goto_21

    .line 8762
    :cond_41
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "taskNdx":I
    :goto_47
    if-ltz v1, :cond_78

    .line 8763
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 8764
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_75

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_75

    .line 8765
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_75

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_75

    .line 8767
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_21

    .line 8762
    :cond_75
    add-int/lit8 v1, v1, -0x1

    goto :goto_47

    .line 8771
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_78
    iget-object v4, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_21

    iget-object v3, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_21
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .registers 3

    .prologue
    .line 1595
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .registers 5
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "displayId"    # I

    .prologue
    .line 1601
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .registers 15
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "displayId"    # I
    .param p3, "checkObscuredScreen"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1620
    if-gez p2, :cond_4

    .line 1621
    const/4 p2, 0x0

    .line 1630
    :cond_4
    iget-object v0, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1632
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x0

    .line 1633
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v0}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1634
    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1635
    if-eqz v2, :cond_17

    if-eq p1, v2, :cond_17

    move-object v7, v2

    .line 1674
    :goto_16
    return-object v7

    .line 1641
    :cond_17
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_21
    if-ltz v1, :cond_50

    .line 1642
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 1644
    .local v6, "top":Lcom/android/server/am/TaskRecord;
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v9, :cond_40

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v9

    if-eqz v9, :cond_40

    iget-boolean v9, v6, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-eqz v9, :cond_40

    .line 1641
    :cond_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 1648
    :cond_40
    invoke-virtual {v6, v8}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 1649
    .local v7, "topRunningActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_3d

    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_3d

    goto :goto_16

    .line 1662
    .end local v6    # "top":Lcom/android/server/am/TaskRecord;
    .end local v7    # "topRunningActivity":Lcom/android/server/am/ActivityRecord;
    :cond_50
    iget-object v9, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, v9, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1665
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "stackNdx":I
    :goto_5a
    if-ltz v4, :cond_75

    .line 1666
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 1667
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v3, v0, :cond_72

    invoke-virtual {p0, v3}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_72

    .line 1668
    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1669
    if-eqz v2, :cond_72

    move-object v7, v2

    .line 1670
    goto :goto_16

    .line 1665
    :cond_72
    add-int/lit8 v4, v4, -0x1

    goto :goto_5a

    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_75
    move-object v7, v8

    .line 1674
    goto :goto_16
.end method

.method updateCascadeHiddenFlag(Z)V
    .registers 17
    .param p1, "resumed"    # Z

    .prologue
    .line 9402
    invoke-direct {p0}, needsCascadeForceHidden()Z

    move-result v5

    .line 9403
    .local v5, "needsFlags":Z
    const/4 v1, 0x0

    .line 9404
    .local v1, "flagChanged":Z
    iget-object v11, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 9405
    .local v7, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_c
    if-ge v0, v7, :cond_5f

    .line 9406
    iget-object v11, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v9, v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 9407
    .local v9, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    .line 9408
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 9409
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 9410
    .local v10, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_1c

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1c

    .line 9411
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eq v11, v5, :cond_1c

    .line 9412
    const/4 v1, 0x1

    .line 9413
    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v4, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 9414
    .local v4, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v11, 0x8

    invoke-virtual {v4, v11, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 9415
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v11, v4}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_1c

    .line 9405
    .end local v4    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 9422
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v9    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5f
    if-eqz v1, :cond_6d

    .line 9423
    if-eqz v5, :cond_96

    .line 9424
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, pauseBackStacks(ZZZ)Z

    .line 9430
    :cond_6d
    :goto_6d
    invoke-virtual {p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 9431
    .local v2, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_95

    .line 9432
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 9433
    .restart local v10    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_95

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_95

    .line 9434
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->findNextFocusableFloatingStackIdFromTop()I

    move-result v6

    .line 9435
    .local v6, "nextStackId":I
    const/4 v11, -0x1

    if-le v6, v11, :cond_a0

    .line 9436
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 9442
    .end local v6    # "nextStackId":I
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_95
    :goto_95
    return-void

    .line 9425
    .end local v2    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :cond_96
    if-eqz p1, :cond_6d

    .line 9426
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11}, resumeTopActivitiesLocked()Z

    goto :goto_6d

    .line 9438
    .restart local v2    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "nextStackId":I
    .restart local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_a0
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    iget v12, v12, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto :goto_95
.end method

.method updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V
    .registers 9
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8777
    if-eqz p1, :cond_95

    .line 8778
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v1

    if-nez v1, :cond_c

    .line 8779
    iput-object p1, p0, mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 8790
    :cond_c
    :goto_c
    iget-object v1, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v1, p1, :cond_5b

    .line 8793
    const v2, 0x12c4b5

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    if-nez p1, :cond_99

    const/4 v1, -0x1

    :goto_19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    aput-object p2, v3, v5

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8794
    iget-object v1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->hasLastDrawnFocusedStackFrameId()Z

    move-result v1

    if-nez v1, :cond_31

    .line 8795
    iget-object v1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowManagerService;->setLastDrawnFocusedStackFrameId(I)V

    .line 8800
    :cond_31
    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 8801
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 8802
    .local v0, "topTask":Lcom/android/server/am/TaskRecord;
    const-string/jumbo v1, "moveTaskToBack"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 8804
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v1

    iget-object v2, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v4}, Lcom/android/server/am/VirtualScreenManagerService;->moveTaskBackToDisplayIfNeeded(Lcom/android/server/am/TaskRecord;ZZ)Z

    .line 8825
    .end local v0    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_5b
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_92

    iget-object v1, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v1, p1, :cond_92

    .line 8826
    iput-boolean v5, p0, mChangedFocusedStackWhileSleeping:Z

    .line 8827
    sget-boolean v1, SAFE_DEBUG:Z

    if-eqz v1, :cond_92

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mChangedFocusedStackWhileSleeping=true/ mFocusedStack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / newStack=stack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8832
    :cond_92
    iput-object p1, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 8860
    return-void

    .line 8787
    :cond_95
    iput-object p1, p0, mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    goto/16 :goto_c

    .line 8793
    :cond_99
    iget v1, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto/16 :goto_19
.end method

.method updateLastShownWhenLocked(I)V
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 6554
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6555
    :cond_10
    return-void
.end method

.method updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 4925
    const/4 v1, 0x0

    .line 4926
    .local v1, "fgApp":Lcom/android/server/am/ProcessRecord;
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_9
    if-ltz v0, :cond_40

    .line 4927
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4928
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1b
    if-ltz v3, :cond_31

    .line 4929
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 4930
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 4931
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_34

    .line 4932
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4926
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_31
    :goto_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 4933
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_34
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_31

    .line 4934
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_31

    .line 4928
    :cond_3d
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 4943
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_40
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_70

    if-eqz v1, :cond_70

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v1, :cond_70

    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v8, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_70

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v6, :cond_70

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mRecentsProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v6, :cond_70

    .line 4949
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 4950
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .line 4952
    :cond_70
    return-void
.end method

.method validateTopActivitiesLocked()V
    .registers 12

    .prologue
    .line 6909
    iget-object v8, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_103

    .line 6910
    iget-object v8, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6911
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "stackNdx":I
    :goto_1a
    if-ltz v5, :cond_ff

    .line 6912
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 6913
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 6914
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_4f

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 6915
    .local v7, "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :goto_2b
    invoke-virtual {p0, v4}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_a7

    .line 6916
    if-nez v2, :cond_52

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateTop...: null top activity, stack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6911
    :cond_4c
    :goto_4c
    add-int/lit8 v5, v5, -0x1

    goto :goto_1a

    .line 6914
    .end local v7    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_4f
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2b

    .line 6919
    .restart local v7    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_52
    iget-object v1, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 6920
    .local v1, "pausing":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_7b

    if-ne v1, v2, :cond_7b

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateTop...: top stack has pausing activity r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6923
    :cond_7b
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_4c

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_4c

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateTop...: activity in front not resumed r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 6928
    .end local v1    # "pausing":Lcom/android/server/am/ActivityRecord;
    :cond_a7
    iget-object v3, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 6929
    .local v3, "resumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_d0

    if-ne v3, v2, :cond_d0

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateTop...: back stack has resumed activity r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6932
    :cond_d0
    if-eqz v2, :cond_4c

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_da

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_4c

    :cond_da
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateTop...: activity in back resumed r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c

    .line 6909
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "resumed":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_ff
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 6937
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_103
    return-void
.end method
