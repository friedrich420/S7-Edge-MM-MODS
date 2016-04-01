.class final Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$1;,
        Lcom/android/server/am/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation


# static fields
.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static final DESTROY_ACTIVITIES_MSG:I = 0x69

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x66

.field static final FINISH_AFTER_PAUSE:I = 0x1

.field static final FINISH_AFTER_VISIBLE:I = 0x2

.field static final FINISH_IMMEDIATELY:I = 0x0

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x67

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field static final RELEASE_BACKGROUND_RESOURCES_TIMEOUT_MSG:I = 0x6b

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final START_WARN_TIME:J = 0x1388L

.field static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x68

.field static final SUPPORT_MULTIPLE_PAUSING_ACTIVITIES:Z = true

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_APP:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CLEANUP:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONTAINERS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SAVED_STATE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SCREENSHOTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityManager"

.field static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field static final TRANSLUCENT_TIMEOUT_MSG:I = 0x6a

.field private static final VALIDATE_TOKENS:Z = false

.field private static final bDSSEnabled:Z = true

.field static final mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;


# instance fields
.field public aBoostParamVal:[I

.field public aBoostTimeOut:I

.field final mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

.field mConfigWillChange:Z

.field private mConfigurationHandled:Z

.field mCurrentUser:I

.field mDisplayId:I

.field mDragAndDropMode:Z

.field mFeatureMultiwindowRecentUI:Z

.field private mForcedFullscreen:Z

.field mFullscreen:Z

.field mFullyDrawnStartTime:J

.field final mHandler:Landroid/os/Handler;

.field public mIsAnimationBoostEnabled:Z

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field mLaunchStartTime:J

.field mNeedUpdateFocusWhileRemovingStack:Z

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mOverrideConfig:Landroid/content/res/Configuration;

.field final mPausingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field public mPerf:Landroid/util/BoostFramework;

.field private final mRecentTasks:Lcom/android/server/am/RecentTasks;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field mResumedIdleActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackId:I

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field final mStackType:I

.field mStackZone:I

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

.field private mTwiceResumeTop:Z

.field private mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mVRStack:Z

.field final mValidateAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 381
    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/RecentTasks;II)V
    .registers 11
    .param p1, "activityContainer"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p2, "recentTasks"    # Lcom/android/server/am/RecentTasks;
    .param p3, "stackType"    # I
    .param p4, "zone"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object v1, p0, mPerf:Landroid/util/BoostFramework;

    .line 236
    iput-boolean v2, p0, mIsAnimationBoostEnabled:Z

    .line 237
    iput v2, p0, aBoostTimeOut:I

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mValidateAppTokens:Ljava/util/ArrayList;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLRUActivities:Ljava/util/ArrayList;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mNoAnimActivities:Ljava/util/ArrayList;

    .line 267
    iput-object v1, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 270
    iput-object v1, p0, mResumedIdleActivity:Lcom/android/server/am/ActivityRecord;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPausingActivities:Ljava/util/ArrayList;

    .line 287
    iput-object v1, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 294
    iput-object v1, p0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 299
    iput-object v1, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 306
    iput-object v1, p0, mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    .line 314
    iput-object v1, p0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, mFullscreen:Z

    .line 327
    iput-wide v4, p0, mLaunchStartTime:J

    .line 328
    iput-wide v4, p0, mFullyDrawnStartTime:J

    .line 340
    iput-boolean v2, p0, mNeedUpdateFocusWhileRemovingStack:Z

    .line 341
    iput-boolean v2, p0, mFeatureMultiwindowRecentUI:Z

    .line 342
    iput-boolean v2, p0, mDragAndDropMode:Z

    .line 355
    iput-boolean v2, p0, mForcedFullscreen:Z

    .line 359
    iput-boolean v2, p0, mConfigurationHandled:Z

    .line 665
    iput v2, p0, mStackZone:I

    .line 472
    iput-object p1, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 473
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getOuter()Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v0

    iput-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 474
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    .line 475
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;

    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 476
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 477
    iget v0, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    iput v0, p0, mStackId:I

    .line 478
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    iput v0, p0, mCurrentUser:I

    .line 479
    iput-object p2, p0, mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 480
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, mOverrideConfig:Landroid/content/res/Configuration;

    .line 481
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mIsAnimationBoostEnabled:Z

    .line 483
    iget-boolean v0, p0, mIsAnimationBoostEnabled:Z

    if-eqz v0, :cond_c2

    .line 484
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, aBoostTimeOut:I

    .line 486
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, aBoostParamVal:[I

    .line 491
    :cond_c2
    iput p3, p0, mStackType:I

    .line 492
    iput p4, p0, mStackZone:I

    .line 493
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, mFeatureMultiwindowRecentUI:Z

    .line 496
    iput-boolean v2, p0, mVRStack:Z

    .line 498
    return-void
.end method

.method private adjustFocusToNextVisibleStackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)Z
    .registers 9
    .param p1, "inStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4375
    if-eqz p1, :cond_1a

    move-object v1, p1

    .line 4376
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adjustFocusToNextVisibleStack"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4377
    .local v0, "myReason":Ljava/lang/String;
    if-nez v1, :cond_1f

    .line 4385
    :cond_19
    :goto_19
    return v3

    .line 4375
    .end local v0    # "myReason":Ljava/lang/String;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1a
    invoke-direct {p0}, getNextVisibleStackLocked()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    goto :goto_4

    .line 4380
    .restart local v0    # "myReason":Ljava/lang/String;
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1f
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4381
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_19

    .line 4384
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4385
    const/4 v3, 0x1

    goto :goto_19
.end method

.method private adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .registers 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 4262
    const/4 v5, 0x0

    .line 4263
    .local v5, "topObscuredScreenZone":I
    const/4 v0, 0x1

    .line 4273
    .local v0, "needResumeHome":Z
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v6, p1, :cond_a

    .line 4325
    :cond_9
    :goto_9
    return-void

    .line 4275
    :cond_a
    invoke-virtual {p0, v9}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 4277
    .local v1, "next":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0}, getDisplayId()I

    move-result v2

    .line 4284
    .local v2, "targetDisplay":I
    if-eq v1, p1, :cond_53

    .line 4285
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4286
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-nez v6, :cond_20

    invoke-direct {p0, v3}, isAllActivitiesFinishing(Lcom/android/server/am/TaskRecord;)Z

    move-result v6

    if-eqz v6, :cond_53

    :cond_20
    invoke-virtual {p0}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eq v3, v6, :cond_2c

    invoke-direct {p0, v3}, isTopTaskExcludeFinishingTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v6

    if-eqz v6, :cond_53

    :cond_2c
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v6

    if-nez v6, :cond_46

    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-virtual {p0}, isHomeStack()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v6

    if-nez v6, :cond_53

    .line 4295
    :cond_46
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v7

    invoke-virtual {p0}, getDisplayId()I

    move-result v8

    invoke-virtual {v6, v7, p2, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;I)Z

    .line 4308
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_53
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x0

    invoke-virtual {v6, v9, v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4309
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_9

    .line 4320
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v4, p2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private adjustHiddenTaskToBottomLocked()Z
    .registers 6

    .prologue
    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "adjustToBottom":Z
    iget-object v3, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 508
    invoke-virtual {p0}, getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 509
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget-boolean v3, v2, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-eqz v3, :cond_11

    .line 510
    iget-object v3, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->remove(Lcom/android/server/am/TaskRecord;)Z

    .line 511
    iget-object v3, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->add(ILcom/android/server/am/TaskRecord;)V

    .line 512
    const/4 v0, 0x1

    .line 517
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2d
    return v0
.end method

.method private clearWindowModeLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 2196
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2197
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2198
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto :goto_6

    .line 2201
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_26
    return-void
.end method

.method private completePauseLocked(Z)V
    .registers 3
    .param p1, "resumeNext"    # Z

    .prologue
    .line 1550
    iget-object v0, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1552
    .local v0, "prev":Lcom/android/server/am/ActivityRecord;
    invoke-direct {p0, p1, v0}, completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    .line 1553
    return-void
.end method

.method private completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V
    .registers 13
    .param p1, "resumeNext"    # Z
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1559
    if-eqz p2, :cond_30

    .line 1560
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1561
    iget-boolean v6, p2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_a6

    .line 1565
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v6

    if-eqz v6, :cond_9e

    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, p0, mDisplayId:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 1568
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, p2, v6, v7}, finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object p2

    .line 1619
    :cond_22
    :goto_22
    if-eqz p2, :cond_28

    .line 1620
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1622
    :cond_28
    const/4 v6, 0x0

    iput-object v6, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1625
    iget-object v6, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1630
    :cond_30
    if-eqz p1, :cond_46

    .line 1646
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 1686
    .local v5, "topStack":Lcom/android/server/am/ActivityStack;
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v6

    if-nez v6, :cond_107

    .line 1687
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, p2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 1703
    .end local v5    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_46
    :goto_46
    if-eqz p2, :cond_98

    .line 1704
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1706
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_94

    iget-wide v6, p2, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_94

    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v6

    if-eqz v6, :cond_94

    .line 1708
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v6

    iget-wide v8, p2, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long v2, v6, v8

    .line 1710
    .local v2, "diff":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_94

    .line 1711
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 1712
    .local v0, "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    .line 1713
    :try_start_80
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    .line 1716
    .local v1, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v1, :cond_93

    .line 1717
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 1719
    :cond_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_80 .. :try_end_94} :catchall_120

    .line 1722
    .end local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v1    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v2    # "diff":J
    :cond_94
    const-wide/16 v6, 0x0

    iput-wide v6, p2, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1726
    :cond_98
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    .line 1727
    return-void

    .line 1571
    :cond_9e
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {p0, p2, v6, v7}, finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object p2

    goto/16 :goto_22

    .line 1574
    :cond_a6
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_104

    .line 1576
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 1580
    :cond_b4
    iget-boolean v6, p2, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v6, :cond_c1

    .line 1587
    const/4 v6, 0x1

    const-string/jumbo v7, "pause-config"

    invoke-virtual {p0, p2, v6, v7}, destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    goto/16 :goto_22

    .line 1588
    :cond_c1
    invoke-virtual {p0}, hasVisibleBehindActivity()Z

    move-result v6

    if-eqz v6, :cond_cf

    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1591
    :cond_cf
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-gt v6, v7, :cond_f6

    iget-boolean v6, p2, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v6, :cond_ee

    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_f6

    :cond_ee
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    move-result v6

    if-eqz v6, :cond_fd

    .line 1607
    :cond_f6
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto/16 :goto_22

    .line 1609
    :cond_fd
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    goto/16 :goto_22

    .line 1614
    :cond_104
    const/4 p2, 0x0

    goto/16 :goto_22

    .line 1689
    .restart local v5    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_107
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 1690
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1691
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_117

    if-eqz p2, :cond_46

    if-eq v4, p2, :cond_46

    .line 1697
    :cond_117
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    goto/16 :goto_46

    .line 1719
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "topStack":Lcom/android/server/am/ActivityStack;
    .restart local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v2    # "diff":J
    :catchall_120
    move-exception v6

    :try_start_121
    monitor-exit v0
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    throw v6
.end method

.method private completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 9
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1735
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 1736
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1737
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1739
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 1740
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1741
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_2d

    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v1, :cond_2d

    .line 1742
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 1754
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2d
    :goto_2d
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v1, :cond_3e

    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->isTargetDismissIntent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1757
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 1762
    :cond_3e
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowStyle:Z

    if-eqz v1, :cond_45

    .line 1763
    invoke-virtual {p0, p1, v6, v6}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1765
    :cond_45
    iget v1, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowFocus:I

    if-eqz v1, :cond_56

    .line 1766
    iget v1, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowFocus:I

    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, notifyMultiWindowFocusChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1772
    :cond_56
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1774
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1776
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1777
    iget-object v1, p0, mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1782
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_aa

    .line 1783
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1788
    :goto_7a
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 1790
    iget-object v1, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_8b

    .line 1792
    iget-object v1, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1797
    :cond_8b
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->launchedBehindVRApp:Z

    if-eqz v1, :cond_94

    .line 1798
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->launchedBehindVRApp:Z

    .line 1799
    invoke-virtual {p0, v4, v4, v4, v6}, startPausingLocked(ZZZZ)Z

    .line 1803
    :cond_94
    return-void

    .line 1746
    :cond_95
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1747
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1748
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_2d

    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mRecentsProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v1, :cond_2d

    .line 1749
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mRecentsProcess:Lcom/android/server/am/ProcessRecord;

    goto :goto_2d

    .line 1785
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_aa
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_7a
.end method

.method private forceResumeTopActivityInnerLocked(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2625
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v5, :cond_f

    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v5, :cond_f

    .line 2655
    :cond_e
    :goto_e
    return v3

    .line 2629
    :cond_f
    iget-object v5, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v2, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 2630
    .local v2, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1b

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_e

    :cond_1b
    iget-object v5, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2636
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2637
    .local v1, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 2638
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DSS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isn\'t topRunningActivity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 2642
    :cond_4f
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_70

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_70

    .line 2646
    const/4 v5, 0x0

    :try_start_5a
    iput-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2647
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2648
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v5, v6}, Landroid/app/IApplicationThread;->forceCallResumeActivity(Landroid/os/IBinder;)V

    .line 2649
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 2650
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->stopped:Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_70} :catch_72

    :cond_70
    move v3, v4

    .line 2655
    goto :goto_e

    .line 2651
    :catch_72
    move-exception v0

    .line 2652
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_e
.end method

.method private getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .registers 8
    .param p1, "targetTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 3498
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3499
    .local v1, "index":I
    if-ltz v1, :cond_24

    .line 3500
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3501
    .local v2, "numTasks":I
    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    :goto_10
    if-ge v0, v2, :cond_24

    .line 3502
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3503
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    iget v5, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, v5, :cond_21

    .line 3508
    .end local v0    # "i":I
    .end local v2    # "numTasks":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_20
    return-object v3

    .line 3501
    .restart local v0    # "i":I
    .restart local v2    # "numTasks":I
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 3508
    .end local v0    # "i":I
    .end local v2    # "numTasks":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_24
    const/4 v3, 0x0

    goto :goto_20
.end method

.method private getNextVisibleStackLocked()Lcom/android/server/am/ActivityStack;
    .registers 6

    .prologue
    .line 1862
    iget-object v3, p0, mStacks:Ljava/util/ArrayList;

    .line 1863
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    iget-object v4, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 1864
    .local v1, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_e

    .line 1865
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v4, mStacks:Ljava/util/ArrayList;

    .line 1867
    :cond_e
    if-eqz v3, :cond_2a

    .line 1868
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_16
    if-ltz v0, :cond_2a

    .line 1869
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1870
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v2, p0, :cond_27

    invoke-virtual {v2}, isStackVisibleLocked()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1875
    .end local v0    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_26
    return-object v2

    .line 1868
    .restart local v0    # "i":I
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 1875
    .end local v0    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2a
    const/4 v2, 0x0

    goto :goto_26
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3513
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3514
    return-void
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Z)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "arrangeReturnTo"    # Z

    .prologue
    .line 3517
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3518
    return-void
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 14
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "arrangeReturnTo"    # Z
    .param p4, "showForAllUsers"    # Z

    .prologue
    .line 3522
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 3523
    invoke-direct {p0, p1}, getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 3524
    .local v2, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_13

    .line 3525
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 3531
    .end local v2    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_13
    invoke-virtual {p0}, isOnHomeDisplay()Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 3542
    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3546
    .local v1, "lastStack":Lcom/android/server/am/ActivityStack;
    const/4 v4, 0x0

    .line 3548
    .local v4, "skip":Z
    invoke-virtual {v1}, isFloatingStack()Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 3554
    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3557
    :cond_2c
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, isSplitStack()Z

    move-result v4

    .line 3560
    invoke-virtual {v1}, isHomeStack()Z

    move-result v0

    .line 3561
    .local v0, "fromHome":Z
    invoke-virtual {p0}, isHomeStack()Z

    move-result v7

    if-nez v7, :cond_8c

    if-nez v0, :cond_44

    invoke-virtual {p0}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-eq v7, p1, :cond_8c

    :cond_44
    if-nez v4, :cond_8c

    .line 3564
    iget-object v7, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 3565
    .local v5, "taskNdx":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v7

    if-eqz v7, :cond_80

    const/4 v7, -0x1

    if-eq v5, v7, :cond_80

    iget-object v7, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_80

    iget-object v7, p0, mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v7

    if-nez v7, :cond_80

    .line 3568
    iget-object v7, p0, mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 3571
    :cond_80
    if-eqz v0, :cond_f7

    invoke-virtual {v1}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-nez v7, :cond_f0

    const/4 v7, 0x1

    :goto_89
    invoke-virtual {p1, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 3581
    .end local v0    # "fromHome":Z
    .end local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "skip":Z
    .end local v5    # "taskNdx":I
    :cond_8c
    :goto_8c
    iget-object v7, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3583
    iget-object v7, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3584
    .restart local v5    # "taskNdx":I
    if-eqz p2, :cond_a1

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_aa

    :cond_a1
    if-nez p2, :cond_fe

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_fe

    :cond_aa
    const/4 v3, 0x1

    .line 3587
    .local v3, "notShownWhenLocked":Z
    :goto_ab
    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v7

    if-nez v7, :cond_d8

    if-nez v3, :cond_b9

    if-nez p4, :cond_d8

    .line 3589
    :cond_b9
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_d6

    .line 3590
    iget-object v7, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 3591
    .local v6, "tmpTask":Lcom/android/server/am/TaskRecord;
    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v7

    if-eqz v7, :cond_d6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_b9

    .line 3596
    .end local v6    # "tmpTask":Lcom/android/server/am/TaskRecord;
    :cond_d6
    add-int/lit8 v5, v5, 0x1

    .line 3598
    :cond_d8
    iget-object v7, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3602
    iget-object v7, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v7, p1, p4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;Z)V

    .line 3603
    if-eqz p3, :cond_eb

    .line 3604
    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v8, p0, mDisplayId:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->arrangeTaskToReturnTo(I)V

    .line 3609
    :cond_eb
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v7}, updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 3610
    return-void

    .line 3571
    .end local v3    # "notShownWhenLocked":Z
    .restart local v0    # "fromHome":Z
    .restart local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "skip":Z
    :cond_f0
    invoke-virtual {v1}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskType:I

    goto :goto_89

    :cond_f7
    const/4 v7, 0x0

    goto :goto_89

    .line 3578
    .end local v0    # "fromHome":Z
    .end local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "skip":Z
    .end local v5    # "taskNdx":I
    :cond_f9
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_8c

    .line 3584
    .restart local v5    # "taskNdx":I
    :cond_fe
    const/4 v3, 0x0

    goto :goto_ab
.end method

.method private isAllActivitiesFinishing(Lcom/android/server/am/TaskRecord;)Z
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v1, 0x0

    .line 4360
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_27

    .line 4361
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 4362
    .local v0, "rootActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_27

    .line 4363
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_27

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_27

    .line 4364
    sget-boolean v1, Lcom/android/server/am/ActivityStackSupervisor;->SAFE_DEBUG:Z

    if-eqz v1, :cond_26

    .line 4365
    const-string v1, "ActivityManager"

    const-string v2, "All activities are finishing of the task"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4367
    :cond_26
    const/4 v1, 0x1

    .line 4371
    .end local v0    # "rootActivity":Lcom/android/server/am/ActivityRecord;
    :cond_27
    return v1
.end method

.method private isTopTaskExcludeFinishingTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v2, 0x0

    .line 7873
    iget-object v3, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "taskNdx":I
    :goto_9
    if-ltz v1, :cond_4a

    .line 7874
    iget-object v3, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 7875
    .local v0, "t":Lcom/android/server/am/TaskRecord;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_4a

    .line 7876
    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, v4, :cond_4b

    .line 7877
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is topTask exclude finishing tasks."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7878
    const/4 v2, 0x1

    .line 7884
    .end local v0    # "t":Lcom/android/server/am/TaskRecord;
    :cond_4a
    return v2

    .line 7873
    .restart local v0    # "t":Lcom/android/server/am/TaskRecord;
    :cond_4b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9
.end method

.method static final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .registers 12
    .param p0, "tag"    # I
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6255
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 6256
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    .line 6258
    .local v1, "strData":Ljava/lang/String;
    :goto_11
    if-eqz v1, :cond_7c

    const-string/jumbo v2, "nfc://secure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 6259
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "nfc://secure:it should not be shown "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6269
    :goto_79
    return-void

    .line 6256
    .end local v1    # "strData":Ljava/lang/String;
    :cond_7a
    const/4 v1, 0x0

    goto :goto_11

    .line 6264
    .restart local v1    # "strData":Ljava/lang/String;
    :cond_7c
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_79
.end method

.method private relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .registers 16
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "changes"    # I
    .param p3, "andResume"    # Z

    .prologue
    .line 6596
    const/4 v2, 0x0

    .line 6597
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v3, 0x0

    .line 6598
    .local v3, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p3, :cond_8

    .line 6599
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 6600
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 6604
    :cond_8
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateSubWindowState(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 6611
    if-eqz p3, :cond_ce

    const/16 v0, 0x7543

    :goto_13
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v1, v4

    const/4 v4, 0x4

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6615
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 6620
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 6621
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 6625
    :cond_5b
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    .line 6632
    new-instance v6, Landroid/content/res/Configuration;

    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v6, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 6636
    .local v6, "scaledConfiguration":Landroid/content/res/Configuration;
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mScaledAppNames:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isScaledPid(I)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 6638
    :cond_83
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDssHelper:Landroid/os/DssHelper;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/DssHelper;->getScalingFactorAdss(Ljava/lang/String;)F

    move-result v11

    .line 6639
    .local v11, "resolutionFactorf":F
    iget v0, v6, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, v6, Landroid/content/res/Configuration;->densityDpi:I

    .line 6645
    .end local v11    # "resolutionFactorf":F
    :cond_94
    const/4 v0, 0x0

    :try_start_95
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 6647
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez p3, :cond_d2

    const/4 v5, 0x1

    :goto_a0
    new-instance v7, Landroid/content/res/Configuration;

    iget-object v4, p0, mOverrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v7, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v9

    move v4, p2

    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 6656
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v0, :cond_c0

    .line 6658
    const/4 v10, 0x4

    .line 6659
    .local v10, "notifyReason":I
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v10, v1}, notifyMultiWindowFocusChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_c0} :catch_e0

    .line 6666
    .end local v10    # "notifyReason":I
    :cond_c0
    :goto_c0
    if-eqz p3, :cond_d4

    .line 6667
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 6668
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 6669
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 6675
    :goto_cc
    const/4 v0, 0x1

    return v0

    .line 6611
    .end local v6    # "scaledConfiguration":Landroid/content/res/Configuration;
    :cond_ce
    const/16 v0, 0x7544

    goto/16 :goto_13

    .line 6647
    .restart local v6    # "scaledConfiguration":Landroid/content/res/Configuration;
    :cond_d2
    const/4 v5, 0x0

    goto :goto_a0

    .line 6671
    :cond_d4
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 6672
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_cc

    .line 6662
    :catch_e0
    move-exception v0

    goto :goto_c0
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    .line 5260
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    .line 5261
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v2}, finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 5262
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 5266
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 5267
    invoke-direct {p0, p1}, removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5270
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5272
    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5273
    iget-object v1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    .line 5277
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 5278
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_6d

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 5281
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {p0}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne v0, v1, :cond_4d

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 5283
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v2

    invoke-virtual {p0}, getDisplayId()I

    move-result v3

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;I)Z

    .line 5292
    :cond_4d
    invoke-virtual {p0, v0, p2}, removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 5295
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStopped(I)V

    .line 5296
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    sget-object v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eq v1, v2, :cond_6d

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 5298
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 5303
    :cond_6d
    invoke-virtual {p0, p1}, cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5304
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 5305
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 7
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5589
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5592
    .local v0, "i":I
    :cond_4
    :goto_4
    if-lez v0, :cond_19

    .line 5593
    add-int/lit8 v0, v0, -0x1

    .line 5594
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5596
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_4

    .line 5598
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5599
    invoke-direct {p0, v1}, removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_4

    .line 5602
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_19
    return-void
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 5244
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5245
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5246
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5247
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5248
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 5249
    return-void
.end method

.method private resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I
    .registers 29
    .param p1, "affinityTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "topTaskIsHigher"    # Z
    .param p4, "forceReset"    # Z
    .param p5, "taskInsertionPoint"    # I

    .prologue
    .line 4068
    const/4 v14, -0x1

    .line 4069
    .local v14, "replyChainEnd":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v22, v0

    .line 4070
    .local v22, "taskId":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 4072
    .local v21, "taskAffinity":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4073
    .local v8, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 4074
    .local v13, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v15

    .line 4077
    .local v15, "rootActivityNdx":I
    add-int/lit8 v12, v13, -0x1

    .local v12, "i":I
    :goto_1b
    if-le v12, v15, :cond_29

    .line 4078
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 4079
    .local v18, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_2a

    .line 4169
    .end local v18    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_29
    return p5

    .line 4082
    .restart local v18    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_2a
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4083
    .local v11, "flags":I
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_46

    const/4 v10, 0x1

    .line 4084
    .local v10, "finishOnTaskLaunch":Z
    :goto_35
    and-int/lit8 v2, v11, 0x40

    if-eqz v2, :cond_48

    const/4 v9, 0x1

    .line 4086
    .local v9, "allowTaskReparenting":Z
    :goto_3a
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_4a

    .line 4093
    if-gez v14, :cond_43

    .line 4094
    move v14, v12

    .line 4077
    :cond_43
    :goto_43
    add-int/lit8 v12, v12, -0x1

    goto :goto_1b

    .line 4083
    .end local v9    # "allowTaskReparenting":Z
    .end local v10    # "finishOnTaskLaunch":Z
    :cond_46
    const/4 v10, 0x0

    goto :goto_35

    .line 4084
    .restart local v10    # "finishOnTaskLaunch":Z
    :cond_48
    const/4 v9, 0x0

    goto :goto_3a

    .line 4096
    .restart local v9    # "allowTaskReparenting":Z
    :cond_4a
    if-eqz p3, :cond_43

    if-eqz v9, :cond_43

    if-eqz v21, :cond_43

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 4110
    if-nez p4, :cond_60

    if-eqz v10, :cond_88

    .line 4111
    :cond_60
    if-ltz v14, :cond_79

    move/from16 v17, v14

    .line 4114
    .local v17, "start":I
    :goto_64
    move/from16 v16, v17

    .local v16, "srcPos":I
    :goto_66
    move/from16 v0, v16

    if-lt v0, v12, :cond_10d

    .line 4115
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4116
    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_7c

    .line 4114
    :goto_76
    add-int/lit8 v16, v16, -0x1

    goto :goto_66

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_79
    move/from16 v17, v12

    .line 4111
    goto :goto_64

    .line 4119
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "srcPos":I
    .restart local v17    # "start":I
    :cond_7c
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "move-affinity"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_76

    .line 4123
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_88
    if-gez p5, :cond_92

    .line 4124
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p5

    .line 4128
    :cond_92
    if-ltz v14, :cond_bf

    move/from16 v17, v14

    .line 4132
    .restart local v17    # "start":I
    :goto_96
    move/from16 v16, v17

    .restart local v16    # "srcPos":I
    :goto_98
    move/from16 v0, v16

    if-lt v0, v12, :cond_c2

    .line 4133
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4134
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 4135
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 4142
    move-object/from16 v0, p0

    iget-object v2, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v22

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppTask(Landroid/os/IBinder;I)V

    .line 4132
    add-int/lit8 v16, v16, -0x1

    goto :goto_98

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_bf
    move/from16 v17, v12

    .line 4128
    goto :goto_96

    .line 4144
    .restart local v16    # "srcPos":I
    .restart local v17    # "start":I
    :cond_c2
    move-object/from16 v0, p0

    iget-object v2, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 4153
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10d

    .line 4154
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 4155
    .local v20, "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 4156
    .local v19, "targetNdx":I
    if-lez v19, :cond_10d

    .line 4157
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4158
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 4159
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "replace"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4166
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "targetNdx":I
    .end local v20    # "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_10d
    const/4 v14, -0x1

    goto/16 :goto_43
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .registers 55
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 2661
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v4, :cond_12

    .line 2663
    const/4 v4, 0x0

    .line 3494
    :goto_11
    return v4

    .line 2666
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v40, v0

    .line 2667
    .local v40, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v40, :cond_24

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_2e

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v4

    if-nez v4, :cond_30

    .line 2671
    :cond_2e
    const/4 v4, 0x0

    goto :goto_11

    .line 2674
    :cond_30
    invoke-virtual/range {p0 .. p0}, cancelInitializingActivities()V

    .line 2677
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v35

    .line 2681
    .local v35, "next":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v4, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    move/from16 v51, v0

    .line 2682
    .local v51, "userLeaving":Z
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2685
    if-eqz p1, :cond_7b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v43, v0

    .line 2686
    .local v43, "prevTask":Lcom/android/server/am/TaskRecord;
    :goto_51
    if-nez v35, :cond_ce

    .line 2688
    const-string/jumbo v44, "noMoreActivities"

    .line 2689
    .local v44, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, mFullscreen:Z

    if-nez v4, :cond_7e

    .line 2692
    invoke-direct/range {p0 .. p0}, getNextVisibleStackLocked()Lcom/android/server/am/ActivityStack;

    move-result-object v47

    .line 2693
    .local v47, "stack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v4, "noMoreActivities"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v4}, adjustFocusToNextVisibleStackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2694
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v4

    goto :goto_11

    .line 2685
    .end local v43    # "prevTask":Lcom/android/server/am/TaskRecord;
    .end local v44    # "reason":Ljava/lang/String;
    .end local v47    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_7b
    const/16 v43, 0x0

    goto :goto_51

    .line 2698
    .restart local v43    # "prevTask":Lcom/android/server/am/TaskRecord;
    .restart local v44    # "reason":Ljava/lang/String;
    :cond_7e
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2705
    invoke-virtual/range {p0 .. p0}, isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 2706
    const/4 v4, 0x0

    goto :goto_11

    .line 2708
    :cond_89
    invoke-virtual/range {p0 .. p0}, isHomeStack()Z

    move-result v4

    if-nez v4, :cond_9e

    .line 2709
    if-eqz p1, :cond_9b

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v4

    if-nez v4, :cond_9e

    .line 2710
    :cond_9b
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 2717
    :cond_9e
    if-eqz v43, :cond_a6

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v4

    if-nez v4, :cond_c6

    :cond_a6
    const/16 v46, 0x1

    .line 2720
    .local v46, "returnTaskType":I
    :goto_a8
    invoke-virtual/range {p0 .. p0}, isOnHomeDisplay()Z

    move-result v4

    if-eqz v4, :cond_cb

    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v5, "noMoreActivities"

    move-object/from16 v0, p0

    iget v6, v0, mDisplayId:I

    move/from16 v0, v46

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_cb

    const/4 v4, 0x1

    goto/16 :goto_11

    .line 2717
    .end local v46    # "returnTaskType":I
    :cond_c6
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v46

    goto :goto_a8

    .line 2720
    .restart local v46    # "returnTaskType":I
    :cond_cb
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 2724
    .end local v44    # "reason":Ljava/lang/String;
    .end local v46    # "returnTaskType":I
    :cond_ce
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 2727
    move-object/from16 v0, p0

    iget-object v4, v0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v35

    if-ne v4, v0, :cond_147

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_147

    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete(I)Z

    move-result v4

    if-eqz v4, :cond_147

    .line 2740
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete(ZI)Z

    move-result v4

    if-eqz v4, :cond_125

    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    move-object/from16 v0, p0

    if-ne v4, v0, :cond_125

    .line 2744
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition(I)V

    .line 2745
    move-object/from16 v0, p0

    iget-object v4, v0, mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2746
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2752
    :cond_125
    if-eqz p1, :cond_144

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_144

    .line 2753
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 2754
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2761
    :cond_144
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 2764
    :cond_147
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v37, v0

    .line 2765
    .local v37, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v43, :cond_172

    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    if-ne v4, v0, :cond_172

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v4

    if-eqz v4, :cond_172

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_172

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_172

    .line 2768
    move-object/from16 v0, v43

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_1fc

    .line 2769
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 2801
    :cond_172
    :goto_172
    const/16 v33, 0x0

    .line 2812
    .local v33, "needsResume":Z
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mChangedFocusedStackWhileSleeping:Z

    if-eqz v4, :cond_1c2

    .line 2813
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    move-object/from16 v0, p0

    if-ne v4, v0, :cond_267

    const/16 v33, 0x1

    .line 2814
    :goto_18a
    sget-boolean v4, Lcom/android/server/am/ActivityStackSupervisor;->SAFE_DEBUG:Z

    if-eqz v4, :cond_1bb

    .line 2815
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "needsResume="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / this="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / mChangedFocusedStackWhileSleeping=true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    :cond_1bb
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityStackSupervisor;->mChangedFocusedStackWhileSleeping:Z

    .line 2822
    :cond_1c2
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v4

    if-eqz v4, :cond_26b

    move-object/from16 v0, p0

    iget-object v4, v0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v35

    if-ne v4, v0, :cond_26b

    if-nez v33, :cond_26b

    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete(I)Z

    move-result v4

    if-eqz v4, :cond_26b

    .line 2827
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition(I)V

    .line 2828
    move-object/from16 v0, p0

    iget-object v4, v0, mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2829
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2833
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 2770
    .end local v33    # "needsResume":Z
    :cond_1fc
    invoke-virtual/range {p0 .. p0}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    move-object/from16 v0, v43

    if-eq v0, v4, :cond_222

    .line 2773
    move-object/from16 v0, p0

    iget-object v4, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v49, v4, 0x1

    .line 2779
    .local v49, "taskNdx":I
    move-object/from16 v0, p0

    iget-object v4, v0, mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto/16 :goto_172

    .line 2781
    .end local v49    # "taskNdx":I
    :cond_222
    invoke-virtual/range {p0 .. p0}, isOnHomeDisplay()Z

    move-result v4

    if-nez v4, :cond_22b

    .line 2782
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 2783
    :cond_22b
    invoke-virtual/range {p0 .. p0}, isHomeStack()Z

    move-result v4

    if-nez v4, :cond_172

    .line 2786
    if-eqz v43, :cond_239

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v4

    if-nez v4, :cond_259

    :cond_239
    const/16 v46, 0x1

    .line 2788
    .restart local v46    # "returnTaskType":I
    :goto_23b
    invoke-virtual/range {p0 .. p0}, isOnHomeDisplay()Z

    move-result v4

    if-eqz v4, :cond_25e

    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v5, "prevFinished"

    move-object/from16 v0, p0

    iget v6, v0, mDisplayId:I

    move/from16 v0, v46

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_25e

    .line 2789
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 2786
    .end local v46    # "returnTaskType":I
    :cond_259
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v46

    goto :goto_23b

    .line 2791
    .restart local v46    # "returnTaskType":I
    :cond_25e
    move-object/from16 v0, p0

    iget-boolean v4, v0, mTwiceResumeTop:Z

    if-nez v4, :cond_172

    .line 2792
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 2813
    .end local v46    # "returnTaskType":I
    .restart local v33    # "needsResume":Z
    :cond_267
    const/16 v33, 0x0

    goto/16 :goto_18a

    .line 2839
    :cond_26b
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, v35

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2ac

    .line 2840
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping resume of top activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is stopped"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 2848
    :cond_2ac
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2849
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2850
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2851
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2862
    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v48

    .line 2867
    .local v48, "targetDisplayId":I
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete(I)Z

    move-result v4

    if-nez v4, :cond_2e5

    .line 2871
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 2903
    :cond_2e5
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->setLaunchSource(I)V

    .line 2907
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_34f

    const/16 v26, 0x1

    .line 2908
    .local v26, "dontWaitForPause":Z
    :goto_300
    if-nez p1, :cond_30e

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_30e

    .line 2909
    const/16 v26, 0x0

    .line 2911
    :cond_30e
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x1

    move/from16 v0, v51

    move/from16 v1, v26

    invoke-virtual {v4, v0, v5, v1}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    move-result v41

    .line 2912
    .local v41, "pausing":Z
    move-object/from16 v0, p0

    iget-object v4, v0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_32f

    .line 2915
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v26

    invoke-virtual {v0, v1, v4, v5, v2}, startPausingLocked(ZZZZ)Z

    move-result v4

    or-int v41, v41, v4

    .line 2917
    :cond_32f
    if-eqz v41, :cond_352

    .line 2924
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_34c

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_34c

    .line 2925
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2928
    :cond_34c
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 2907
    .end local v26    # "dontWaitForPause":Z
    .end local v41    # "pausing":Z
    :cond_34f
    const/16 v26, 0x0

    goto :goto_300

    .line 2932
    .restart local v26    # "dontWaitForPause":Z
    .restart local v41    # "pausing":Z
    :cond_352
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v4

    if-eqz v4, :cond_478

    .line 2933
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    .line 2942
    :goto_366
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v4

    if-eqz v4, :cond_394

    move-object/from16 v0, p0

    iget-object v4, v0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_394

    move-object/from16 v0, p0

    iget-object v4, v0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_394

    .line 2946
    move-object/from16 v0, p0

    iget-object v4, v0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "resume-no-history"

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2948
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 2951
    :cond_394
    if-eqz p1, :cond_3bd

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_3bd

    .line 2952
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_488

    if-eqz v35, :cond_488

    move-object/from16 v0, v35

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v4, :cond_488

    .line 2954
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2984
    :cond_3bd
    :goto_3bd
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 2986
    .local v24, "callingId":J
    :try_start_3c1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v35

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v4, v5, v6, v7}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_3d1
    .catch Landroid/os/RemoteException; {:try_start_3c1 .. :try_end_3d1} :catch_4a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c1 .. :try_end_3d1} :catch_4a6
    .catchall {:try_start_3c1 .. :try_end_3d1} :catchall_4d4

    .line 2993
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2999
    :goto_3d4
    const/16 v21, 0x1

    .line 3003
    .local v21, "anim":Z
    if-eqz p1, :cond_617

    .line 3004
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_56a

    .line 3007
    move-object/from16 v0, p0

    iget-object v4, v0, mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d9

    .line 3008
    const/16 v21, 0x0

    .line 3009
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    .line 3054
    :goto_3f9
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 3055
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    .line 3151
    :goto_414
    const/16 v45, 0x0

    .line 3152
    .local v45, "resumeAnimOptions":Landroid/os/Bundle;
    if-eqz v21, :cond_67b

    .line 3153
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;

    move-result-object v39

    .line 3154
    .local v39, "opts":Landroid/app/ActivityOptions;
    if-eqz v39, :cond_422

    .line 3155
    invoke-virtual/range {v39 .. v39}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v45

    .line 3157
    :cond_422
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    .line 3168
    .end local v39    # "opts":Landroid/app/ActivityOptions;
    :goto_425
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v30

    .line 3173
    .local v30, "lastStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p0 .. p0}, isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_680

    .line 3174
    const/16 v30, 0x0

    .line 3186
    :cond_435
    :goto_435
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_b38

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_b38

    .line 3188
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v4}, setLaunchTime(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3192
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->isVRActivity()Z

    move-result v4

    if-nez v4, :cond_696

    if-eqz p1, :cond_696

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isVRActivity()Z

    move-result v4

    if-eqz v4, :cond_696

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    invoke-virtual {v4}, Lcom/android/server/am/VRApplicationPolicy;->isHMTconnected()Z

    move-result v4

    if-eqz v4, :cond_696

    .line 3194
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/VRApplicationPolicy;->startVRHomeLocked(I)Z

    move-result v4

    if-eqz v4, :cond_696

    .line 3195
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 2935
    .end local v21    # "anim":Z
    .end local v24    # "callingId":J
    .end local v30    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v45    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_478
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_366

    .line 2966
    :cond_488
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_3bd

    .line 2967
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    goto/16 :goto_3bd

    .line 2988
    .restart local v24    # "callingId":J
    :catch_4a0
    move-exception v4

    .line 2993
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3d4

    .line 2989
    :catch_4a6
    move-exception v27

    .line 2990
    .local v27, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4a7
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed trying to unstop package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4cf
    .catchall {:try_start_4a7 .. :try_end_4cf} :catchall_4d4

    .line 2993
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3d4

    .end local v27    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_4d4
    move-exception v4

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3018
    .restart local v21    # "anim":Z
    :cond_4d9
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v5, :cond_516

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-eqz v4, :cond_516

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v4

    if-eqz v4, :cond_516

    .line 3020
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 3021
    .local v50, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3022
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x8

    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v6

    move-object/from16 v0, v50

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareMultiWindowTransition(Ljava/util/ArrayList;II)V

    goto/16 :goto_3f9

    .line 3023
    .end local v50    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_516
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-nez v4, :cond_530

    .line 3024
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x66

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_3f9

    .line 3028
    :cond_530
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/android/server/am/VirtualScreenManagerService;->allowAppTransition(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_54e

    .line 3029
    const/16 v21, 0x0

    .line 3030
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_3f9

    .line 3034
    :cond_54e
    move-object/from16 v0, p0

    iget-object v5, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v6, :cond_567

    const/4 v4, 0x7

    :goto_55d
    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_3f9

    :cond_567
    const/16 v4, 0x9

    goto :goto_55d

    .line 3059
    :cond_56a
    move-object/from16 v0, p0

    iget-object v4, v0, mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5ba

    .line 3060
    const/16 v21, 0x0

    .line 3061
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v4

    if-eqz v4, :cond_5ab

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5ab

    .line 3063
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 3064
    .restart local v50    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3065
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x8

    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v6

    move-object/from16 v0, v50

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareMultiWindowTransition(Ljava/util/ArrayList;II)V

    .line 3067
    .end local v50    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_5ab
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_414

    .line 3076
    :cond_5ba
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-eqz v4, :cond_5d4

    .line 3077
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x65

    const/4 v6, 0x0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_414

    .line 3081
    :cond_5d4
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/android/server/am/VirtualScreenManagerService;->allowAppTransition(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_5f2

    .line 3082
    const/16 v21, 0x0

    .line 3083
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_414

    .line 3087
    :cond_5f2
    move-object/from16 v0, p0

    iget-object v5, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v6, :cond_60b

    const/4 v4, 0x6

    :goto_601
    const/4 v6, 0x0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_414

    :cond_60b
    move-object/from16 v0, v35

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v4, :cond_614

    const/16 v4, 0x10

    goto :goto_601

    :cond_614
    const/16 v4, 0x8

    goto :goto_601

    .line 3117
    :cond_617
    move-object/from16 v0, p0

    iget-object v4, v0, mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_634

    .line 3118
    const/16 v21, 0x0

    .line 3119
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_414

    .line 3128
    :cond_634
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-eqz v4, :cond_64e

    .line 3129
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x65

    const/4 v6, 0x0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_414

    .line 3133
    :cond_64e
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/android/server/am/VirtualScreenManagerService;->allowAppTransition(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_66c

    .line 3134
    const/16 v21, 0x0

    .line 3135
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_414

    .line 3139
    :cond_66c
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_414

    .line 3159
    .restart local v45    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_67b
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto/16 :goto_425

    .line 3175
    .restart local v30    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_680
    invoke-virtual/range {p0 .. p0}, isNormalAppStack()Z

    move-result v4

    if-eqz v4, :cond_435

    invoke-virtual/range {v30 .. v30}, isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_435

    .line 3181
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v30

    goto/16 :goto_435

    .line 3203
    :cond_696
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v4, :cond_6b6

    .line 3204
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v4, :cond_6b6

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    if-eqz v4, :cond_6b6

    .line 3205
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/SmartAdjustManager;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V

    .line 3210
    :cond_6b6
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x1

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    .line 3213
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 3215
    if-nez v30, :cond_8d9

    const/16 v29, 0x0

    .line 3217
    .local v29, "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    :goto_6cd
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v31, v0

    .line 3219
    .local v31, "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 3222
    const-string v4, "com.sec.android.app.camera/.Camera"

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_738

    const-string v4, "com.sec.android.app.ocr/.OCR"

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_738

    const-string v4, "com.cyworld.camera/com.cyworld.cymera.CameraMain"

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_779

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_738

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_738

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_738

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_779

    :cond_738
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_779

    .line 3231
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resumeTopActivityLocked() Aggressive kill try = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    const-string/jumbo v4, "persist.sys.kill_support"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 3236
    .local v32, "mSupportAggrKill":I
    if-lez v32, :cond_779

    .line 3237
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string v6, "camera-start"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->killProcessesForMemoryLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3242
    .end local v32    # "mSupportAggrKill":I
    :cond_779
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v35

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3243
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3244
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 3245
    move-object/from16 v0, p0

    iget-object v4, v0, mRecentTasks:Lcom/android/server/am/RecentTasks;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    .line 3248
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/TaskRecord;->bHidden:Z

    .line 3249
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v28

    .line 3250
    .local v28, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v28, :cond_7ce

    if-eqz v35, :cond_7ce

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v28

    if-eq v4, v0, :cond_7ce

    .line 3251
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v22

    .line 3252
    .local v22, "ar":Lcom/android/server/am/ActivityRecord;
    invoke-virtual/range {v28 .. v28}, isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_8e1

    .line 3253
    if-eqz v22, :cond_7ce

    .line 3254
    move-object/from16 v0, p0

    iget-object v4, v0, mRecentTasks:Lcom/android/server/am/RecentTasks;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    .line 3263
    .end local v22    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_7ce
    :goto_7ce
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    move/from16 v42, v0

    .line 3265
    .local v42, "prevOrientation":I
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 3266
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3267
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3271
    const/16 v38, 0x1

    .line 3272
    .local v38, "notUpdated":Z
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_838

    .line 3299
    move-object/from16 v0, p0

    iget-object v5, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_8f8

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_81b
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v23

    .line 3302
    .local v23, "config":Landroid/content/res/Configuration;
    if-eqz v23, :cond_826

    .line 3303
    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 3305
    :cond_826
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v4

    if-nez v4, :cond_8fb

    const/16 v38, 0x1

    .line 3316
    .end local v23    # "config":Landroid/content/res/Configuration;
    :cond_838
    :goto_838
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    move/from16 v34, v0

    .line 3320
    .local v34, "newOrientation":I
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mMinimizeAllPenWindowRequested:Z

    if-eqz v4, :cond_85f

    .line 3321
    invoke-virtual/range {p0 .. p0}, isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_85f

    move/from16 v0, v34

    move/from16 v1, v42

    if-ne v0, v1, :cond_85f

    .line 3322
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->handleMinimizeAllPenWindow()V

    .line 3326
    :cond_85f
    if-eqz v38, :cond_902

    .line 3332
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v36

    .line 3336
    .local v36, "nextNext":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_875

    .line 3338
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 3340
    :cond_875
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->SHIP_BUILD:Z

    if-nez v4, :cond_8c3

    .line 3341
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as resumed: lastState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastResumed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " prev="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nextNext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    :cond_8c3
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_8ff

    .line 3344
    move-object/from16 v0, p0

    iget-object v4, v0, mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3346
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 3215
    .end local v28    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v29    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v31    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v34    # "newOrientation":I
    .end local v36    # "nextNext":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "notUpdated":Z
    .end local v42    # "prevOrientation":I
    :cond_8d9
    move-object/from16 v0, v30

    iget-object v0, v0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v29, v0

    goto/16 :goto_6cd

    .line 3256
    .restart local v22    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v28    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .restart local v29    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v31    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_8e1
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, isSplitStack()Z

    move-result v4

    if-eqz v4, :cond_7ce

    .line 3257
    if-eqz v22, :cond_7ce

    .line 3258
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    goto/16 :goto_7ce

    .line 3299
    .end local v22    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v38    # "notUpdated":Z
    .restart local v42    # "prevOrientation":I
    :cond_8f8
    const/4 v4, 0x0

    goto/16 :goto_81b

    .line 3305
    .restart local v23    # "config":Landroid/content/res/Configuration;
    :cond_8fb
    const/16 v38, 0x0

    goto/16 :goto_838

    .line 3349
    .end local v23    # "config":Landroid/content/res/Configuration;
    .restart local v34    # "newOrientation":I
    .restart local v36    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_8ff
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 3354
    .end local v36    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_902
    :try_start_902
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 3355
    .local v20, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v20, :cond_925

    .line 3356
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3357
    .local v19, "N":I
    move-object/from16 v0, v35

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_925

    if-lez v19, :cond_925

    .line 3360
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v20

    invoke-interface {v4, v5, v0}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 3364
    .end local v19    # "N":I
    :cond_925
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v4, :cond_93c

    .line 3365
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v5, v6}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 3370
    :cond_93c
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->updateSubWindowState(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 3380
    const/16 v4, 0x7537

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v35

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3383
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 3384
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3385
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 3386
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 3387
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 3388
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p0

    iget-object v7, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward(I)Z

    move-result v7

    move-object/from16 v0, v45

    invoke-interface {v4, v5, v6, v7, v0}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    .line 3392
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 3396
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->updateCascadeHiddenFlag(Z)V
    :try_end_9df
    .catch Ljava/lang/Exception; {:try_start_902 .. :try_end_9df} :catch_a0e

    .line 3439
    const/4 v4, 0x1

    :try_start_9e0
    move-object/from16 v0, v35

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 3440
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_9eb
    .catch Ljava/lang/Exception; {:try_start_9e0 .. :try_end_9eb} :catch_b09

    .line 3450
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3487
    .end local v20    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v28    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v29    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v31    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v34    # "newOrientation":I
    .end local v38    # "notUpdated":Z
    .end local v42    # "prevOrientation":I
    :goto_9f0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_SupportDeviceReporting"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a0b

    .line 3488
    if-eqz v35, :cond_a0b

    .line 3489
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V

    .line 3494
    :cond_a0b
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 3400
    .restart local v28    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .restart local v29    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v31    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v34    # "newOrientation":I
    .restart local v38    # "notUpdated":Z
    .restart local v42    # "prevOrientation":I
    :catch_a0e
    move-exception v27

    .line 3404
    .local v27, "e":Ljava/lang/Exception;
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3405
    if-eqz v30, :cond_a1d

    .line 3406
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    iput-object v0, v1, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3408
    :cond_a1d
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restarting because process died: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    move-object/from16 v0, v35

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v4, :cond_a50

    .line 3410
    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 3431
    :cond_a42
    :goto_a42
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3433
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 3411
    :cond_a50
    if-eqz v30, :cond_a42

    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_a42

    .line 3414
    const/16 v16, 0x0

    .line 3415
    .local v16, "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a94

    const-string v4, "android.intent.action.DIAL"

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a94

    const-string v4, "android.intent.action.CALL_BUTTON"

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa7

    .line 3419
    :cond_a94
    new-instance v16, Lcom/android/server/wm/CustomStartingWindowData;

    .end local v16    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v35

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/wm/CustomStartingWindowData;-><init>(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;I)V

    .line 3422
    .restart local v16    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    :cond_aa7
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v35

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v8, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v35

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    move-object/from16 v0, v35

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v35

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v35

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, v35

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, v35

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v17

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_af8

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v18, v0

    :goto_af3
    invoke-virtual/range {v4 .. v18}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZLcom/android/server/wm/CustomStartingWindowData;II)V

    goto/16 :goto_a42

    :cond_af8
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    goto :goto_af3

    .line 3441
    .end local v16    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v20    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_b09
    move-exception v27

    .line 3444
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown during resume of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3445
    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "resume-exception"

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3448
    const/4 v4, 0x1

    goto/16 :goto_11

    .line 3454
    .end local v20    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v27    # "e":Ljava/lang/Exception;
    .end local v28    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v29    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v31    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v34    # "newOrientation":I
    .end local v38    # "notUpdated":Z
    .end local v42    # "prevOrientation":I
    :cond_b38
    move-object/from16 v0, v35

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v4, :cond_b50

    .line 3455
    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 3481
    :goto_b43
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_9f0

    .line 3459
    :cond_b50
    const/16 v16, 0x0

    .line 3460
    .restart local v16    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b86

    const-string v4, "android.intent.action.DIAL"

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b86

    const-string v4, "android.intent.action.CALL_BUTTON"

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b99

    .line 3464
    :cond_b86
    new-instance v16, Lcom/android/server/wm/CustomStartingWindowData;

    .end local v16    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v35

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/wm/CustomStartingWindowData;-><init>(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;I)V

    .line 3467
    .restart local v16    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    :cond_b99
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v35

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v8, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v35

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    move-object/from16 v0, v35

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v35

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v35

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, v35

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, v35

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v17

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_bea

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v18, v0

    :goto_be5
    invoke-virtual/range {v4 .. v18}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZLcom/android/server/wm/CustomStartingWindowData;II)V

    goto/16 :goto_b43

    :cond_bea
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    goto :goto_be5
.end method

.method private setVisible(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visible"    # Z

    .prologue
    .line 1806
    iput-boolean p2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1807
    iget-object v3, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    invoke-virtual {v3, v4, p2, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    .line 1808
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    .line 1809
    .local v2, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "containerNdx":I
    :goto_15
    if-ltz v1, :cond_23

    .line 1810
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 1811
    .local v0, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setVisible(Z)V

    .line 1809
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 1813
    .end local v0    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_23
    return-void
.end method

.method private startLaunchTraces(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x40

    const/4 v4, 0x0

    .line 1080
    iget-wide v0, p0, mFullyDrawnStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 1081
    const-string/jumbo v0, "drawing"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1083
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "launching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1084
    const-string/jumbo v0, "drawing"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1085
    return-void
.end method

.method private stopFullyDrawnTraceIfNeeded()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 1088
    iget-wide v0, p0, mFullyDrawnStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_19

    iget-wide v0, p0, mLaunchStartTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_19

    .line 1089
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "drawing"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1090
    iput-wide v4, p0, mFullyDrawnStartTime:J

    .line 1092
    :cond_19
    return-void
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 5518
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5520
    .local v0, "origId":J
    :try_start_4
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 5521
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_11

    .line 5522
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5526
    :cond_11
    invoke-virtual {p0, v2}, isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 5527
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_25

    .line 5528
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 5529
    invoke-direct {p0, v2, p2}, removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 5532
    :cond_25
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_2e

    .line 5534
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5536
    return-void

    .line 5534
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_2e
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z

    .prologue
    const/4 v8, 0x1

    .line 1457
    invoke-virtual {p0, p1}, isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1458
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1d

    .line 1459
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1460
    iget-object v4, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v4, v2, :cond_1a

    iget-object v4, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1470
    :cond_1a
    invoke-direct {p0, v8, v2}, completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    .line 1506
    :cond_1d
    :goto_1d
    return-void

    .line 1478
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1479
    .local v0, "currentlyPausing":Ljava/lang/StringBuilder;
    iget-object v4, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1480
    .local v3, "record":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_40

    .line 1481
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1483
    :cond_40
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 1485
    .end local v3    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_51

    .line 1486
    const-string v4, "(none)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    :cond_51
    const/16 v4, 0x753c

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1d
.end method

.method final activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;
    .param p4, "description"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x68

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1510
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_28

    .line 1511
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1547
    :cond_27
    :goto_27
    return-void

    .line 1515
    :cond_28
    if-eqz p3, :cond_33

    .line 1516
    iput-object p3, p1, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 1517
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1520
    :cond_33
    if-eqz p2, :cond_3f

    .line 1523
    iput-object p2, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1524
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1525
    iput v2, p1, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 1526
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p4}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1528
    :cond_3f
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v0, :cond_27

    .line 1530
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1531
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1532
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1533
    iget-object v0, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_61

    iget-object v0, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_61

    .line 1534
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    .line 1536
    :cond_61
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_69

    .line 1537
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto :goto_27

    .line 1539
    :cond_69
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_79

    .line 1540
    const-string/jumbo v0, "stop-config"

    invoke-virtual {p0, p1, v3, v0}, destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 1541
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto :goto_27

    .line 1543
    :cond_79
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_27
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZZ)V
    .registers 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "moving"    # Z

    .prologue
    const/4 v4, 0x0

    .line 7903
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, addTask(Lcom/android/server/am/TaskRecord;ZZZI)V

    .line 7904
    return-void
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZZZ)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "moving"    # Z
    .param p4, "restoreFromRecent"    # Z

    .prologue
    .line 7907
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, addTask(Lcom/android/server/am/TaskRecord;ZZZI)V

    .line 7908
    return-void
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZZZI)V
    .registers 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "moving"    # Z
    .param p4, "restoreFromRecent"    # Z
    .param p5, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7911
    iput-object p0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 7919
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 7920
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_23

    .line 7921
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 7922
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v5, :cond_10

    .line 7923
    iput-boolean v4, p0, mNeedUpdateFocusWhileRemovingStack:Z

    goto :goto_10

    .line 7930
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_23
    if-eqz p2, :cond_3e

    .line 7931
    const/4 v5, 0x0

    and-int/lit16 v6, p5, 0x400

    if-eqz v6, :cond_2b

    move v3, v4

    :cond_2b
    invoke-direct {p0, p1, v5, v4, v3}, insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 7941
    :goto_2e
    if-nez p3, :cond_3d

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v3, :cond_3d

    .line 7943
    :try_start_34
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v5, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v3, v4, v5}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3d} :catch_4e

    .line 7947
    :cond_3d
    :goto_3d
    return-void

    .line 7933
    :cond_3e
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 7935
    if-nez p4, :cond_4a

    .line 7936
    iget-object v4, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->add(ILcom/android/server/am/TaskRecord;)V

    .line 7939
    :cond_4a
    invoke-virtual {p0, p1, v3}, updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_2e

    .line 7944
    :catch_4e
    move-exception v3

    goto :goto_3d
.end method

.method arrangeTaskToReturnToForTopTask(Lcom/android/server/am/TaskRecord;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 8153
    iget-object v3, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 8154
    .local v1, "taskNdx":I
    iget-object v3, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 8155
    .local v2, "topTaskNdx":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-eqz v3, :cond_2d

    if-ge v1, v2, :cond_2d

    .line 8156
    iget-object v3, p0, mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 8157
    .local v0, "nextTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 8158
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 8161
    .end local v0    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_2d
    return-void
.end method

.method awakeFromSleepingLocked()V
    .registers 6

    .prologue
    .line 1145
    iget-object v3, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "taskNdx":I
    :goto_8
    if-ltz v2, :cond_2c

    .line 1146
    iget-object v3, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1147
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_29

    .line 1148
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1147
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 1145
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 1151
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2c
    iget-object v3, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_3f

    .line 1152
    const-string v3, "ActivityManager"

    const-string v4, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v3, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 1155
    :cond_3f
    return-void
.end method

.method final backgroundResourcesReleased()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 5563
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5564
    invoke-virtual {p0}, getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5565
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1d

    .line 5566
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5567
    invoke-virtual {p0, v3}, setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 5568
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5570
    :cond_1d
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 5571
    return-void
.end method

.method cancelInitializingActivities()V
    .registers 9

    .prologue
    .line 2543
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2544
    .local v5, "topActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x1

    .line 2545
    .local v0, "aboveTop":Z
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_e
    if-ltz v4, :cond_48

    .line 2546
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2547
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "activityNdx":I
    :goto_20
    if-ltz v2, :cond_45

    .line 2548
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2549
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_30

    .line 2550
    if-ne v3, v5, :cond_2d

    .line 2551
    const/4 v0, 0x0

    .line 2547
    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    .line 2556
    :cond_30
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_2d

    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    if-eqz v6, :cond_2d

    .line 2559
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    .line 2560
    iget-object v6, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->removeAppStartingWindow(Landroid/os/IBinder;)V

    goto :goto_2d

    .line 2545
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_45
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .line 2564
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_48
    return-void
.end method

.method checkReadyForSleepLocked()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1161
    iget-object v3, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_a

    .line 1166
    invoke-virtual {p0, v2, v1, v2, v2}, startPausingLocked(ZZZZ)Z

    .line 1200
    :cond_9
    :goto_9
    return v1

    .line 1172
    :cond_a
    iget-object v3, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_9

    .line 1192
    invoke-virtual {p0}, hasVisibleBehindActivity()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1194
    iget-object v2, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    .line 1195
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_26
    move v1, v2

    .line 1200
    goto :goto_9
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "cleanServices"    # Z
    .param p3, "setState"    # Z

    .prologue
    .line 5175
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZ)V

    .line 5176
    return-void
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZ)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "cleanServices"    # Z
    .param p3, "setState"    # Z
    .param p4, "skipClearFocusActivity"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5181
    iget-object v3, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_8

    .line 5182
    iput-object v5, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5184
    :cond_8
    iget-object v3, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_e

    .line 5185
    iput-object v5, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 5190
    :cond_e
    iget-object v3, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 5191
    iget-object v3, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5200
    :cond_1b
    if-nez p4, :cond_22

    .line 5201
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService;->clearFocusedActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 5205
    :cond_22
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 5206
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 5208
    if-eqz p3, :cond_2e

    .line 5210
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5212
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5218
    :cond_2e
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5219
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5222
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_66

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_66

    .line 5223
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4a
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 5224
    .local v0, "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 5225
    .local v2, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_4a

    .line 5226
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_4a

    .line 5229
    .end local v0    # "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_64
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 5232
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_66
    if-eqz p2, :cond_6b

    .line 5233
    invoke-virtual {p0, p1}, cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5237
    :cond_6b
    invoke-direct {p0, p1}, removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5238
    invoke-virtual {p0}, getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-ne v3, p1, :cond_79

    .line 5239
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    .line 5241
    :cond_79
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 5312
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_21

    .line 5313
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5314
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 5315
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 5316
    .local v0, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_b

    .line 5318
    .end local v0    # "c":Lcom/android/server/am/ConnectionRecord;
    :cond_1f
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 5320
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_21
    return-void
.end method

.method clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1133
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->fullLaunch:Z

    .line 1135
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1136
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    .line 1141
    :goto_13
    return-void

    .line 1138
    :cond_14
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1139
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_13
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .registers 8
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .prologue
    .line 2494
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_8
    if-ltz v4, :cond_2f

    .line 2495
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 2496
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2497
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_2c

    .line 2498
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 2499
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v5, p1, :cond_29

    .line 2500
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2497
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 2494
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2c
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 2504
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2f
    return-void
.end method

.method closeSystemDialogsLocked()V
    .registers 10

    .prologue
    .line 6701
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "taskNdx":I
    :goto_8
    if-ltz v8, :cond_39

    .line 6702
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 6703
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "activityNdx":I
    :goto_1a
    if-ltz v7, :cond_36

    .line 6704
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 6705
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_33

    .line 6706
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "close-sys"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 6703
    :cond_33
    add-int/lit8 v7, v7, -0x1

    goto :goto_1a

    .line 6701
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_36
    add-int/lit8 v8, v8, -0x1

    goto :goto_8

    .line 6710
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_39
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2488
    iput-object p1, p0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2489
    iget-object v0, p0, mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2490
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2491
    return-void
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;
    .registers 15
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z

    .prologue
    const/4 v7, 0x0

    .line 7891
    new-instance v0, Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 7893
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v6, p2, Landroid/content/pm/ActivityInfo;->flags:I

    move-object v1, p0

    move-object v2, v0

    move v3, p6

    move v4, v7

    move v5, v7

    invoke-virtual/range {v1 .. v6}, addTask(Lcom/android/server/am/TaskRecord;ZZZI)V

    .line 7894
    return-object v0
.end method

.method final destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 10
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 5329
    const/4 v3, 0x0

    .line 5330
    .local v3, "lastIsOpaque":Z
    const/4 v2, 0x0

    .line 5331
    .local v2, "activityRemoved":Z
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "taskNdx":I
    :goto_a
    if-ltz v5, :cond_4a

    .line 5332
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5333
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1c
    if-ltz v1, :cond_47

    .line 5334
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 5335
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_2b

    .line 5333
    :cond_28
    :goto_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 5338
    :cond_2b
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_30

    .line 5339
    const/4 v3, 0x1

    .line 5341
    :cond_30
    if-eqz p1, :cond_36

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, p1, :cond_28

    .line 5344
    :cond_36
    if-eqz v3, :cond_28

    .line 5347
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 5351
    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6, p2}, destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 5352
    const/4 v2, 0x1

    goto :goto_28

    .line 5331
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_47
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 5357
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_4a
    if-eqz v2, :cond_51

    .line 5358
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 5360
    :cond_51
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
    .registers 15
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "removeFromApp"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 5427
    const/16 v6, 0x7542

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p3, v7, v8

    const/4 v8, 0x5

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5431
    const/4 v3, 0x0

    .line 5433
    .local v3, "removedFromHistory":Z
    invoke-virtual {p0, p1, v5, v5}, cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 5435
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_e2

    .line 5437
    .local v1, "hadApp":Z
    :goto_45
    if-eqz v1, :cond_10a

    .line 5438
    if-eqz p2, :cond_8e

    .line 5439
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5440
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v7, :cond_6f

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_6f

    .line 5441
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v10, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 5442
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    .line 5445
    :cond_6f
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 5448
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 5450
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7, v5, v10}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 5451
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 5455
    :cond_8e
    const/4 v4, 0x0

    .line 5459
    .local v4, "skipDestroy":Z
    :try_start_8f
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v6, v7, v8, v9}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9c} :catch_e5

    .line 5473
    :cond_9c
    :goto_9c
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 5482
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_103

    if-nez v4, :cond_103

    .line 5485
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5486
    iget-object v6, p0, mHandler:Landroid/os/Handler;

    const/16 v7, 0x66

    invoke-virtual {v6, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5487
    .local v2, "msg":Landroid/os/Message;
    iget-object v6, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5508
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "skipDestroy":Z
    :goto_b7
    iput v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 5510
    iget-object v5, p0, mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e1

    if-eqz v1, :cond_e1

    .line 5511
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " being finished, but not in LRU list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5514
    :cond_e1
    return v3

    .end local v1    # "hadApp":Z
    :cond_e2
    move v1, v5

    .line 5435
    goto/16 :goto_45

    .line 5461
    .restart local v1    # "hadApp":Z
    .restart local v4    # "skipDestroy":Z
    :catch_e5
    move-exception v0

    .line 5466
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_9c

    .line 5467
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exceptionInScheduleDestroy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 5468
    const/4 v3, 0x1

    .line 5469
    const/4 v4, 0x1

    goto :goto_9c

    .line 5491
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_103
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5493
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_b7

    .line 5497
    .end local v4    # "skipDestroy":Z
    :cond_10a
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_126

    .line 5498
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hadNoApp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 5499
    const/4 v3, 0x1

    goto :goto_b7

    .line 5502
    :cond_126
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5504
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_b7
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z
    .registers 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z
    .param p7, "header"    # Ljava/lang/String;

    .prologue
    .line 7522
    const/4 v12, 0x0

    .line 7523
    .local v12, "printed":Z
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v14, v0, -0x1

    .local v14, "taskNdx":I
    :goto_9
    if-ltz v14, :cond_54

    .line 7524
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    .line 7533
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const-string v3, "    "

    const-string v4, "Hist"

    const/4 v5, 0x1

    if-nez p3, :cond_52

    const/4 v6, 0x1

    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Task id #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v12, v0

    .line 7540
    if-eqz v12, :cond_4f

    .line 7541
    const/16 p7, 0x0

    .line 7523
    :cond_4f
    add-int/lit8 v14, v14, -0x1

    goto :goto_9

    .line 7533
    :cond_52
    const/4 v6, 0x0

    goto :goto_25

    .line 7544
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_54
    return v12
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .registers 5
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 2210
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Z)V

    .line 2211
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Z)V
    .registers 11
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "targetTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "visible"    # Z

    .prologue
    .line 2215
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;ZI)V

    .line 2216
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;ZI)V
    .registers 30
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "targetTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "visible"    # Z
    .param p5, "currentObscuredScreenZone"    # I

    .prologue
    .line 2221
    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v19

    .line 2222
    .local v19, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v19, :cond_11

    .line 2485
    :cond_10
    :goto_10
    return-void

    .line 2227
    :cond_11
    if-eqz p3, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 2236
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_62

    .line 2237
    move-object/from16 v0, p0

    iget-object v0, v0, mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 2238
    move-object/from16 v0, p0

    iget-object v0, v0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_57

    .line 2240
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2241
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2243
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x6a

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeMessages(I)V

    .line 2248
    :cond_62
    const/4 v3, 0x1

    .line 2249
    .local v3, "aboveTop":Z
    invoke-virtual/range {p0 .. p1}, isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    if-nez v21, :cond_b4

    const/4 v13, 0x1

    .line 2251
    .local v13, "noStackActivityResumed":Z
    :goto_6a
    if-nez p4, :cond_b6

    const/4 v7, 0x1

    .line 2254
    .local v7, "behindFullscreen":Z
    :goto_6d
    if-eqz p3, :cond_b8

    .line 2255
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v16

    .local v16, "startNdx":I
    move/from16 v9, v16

    .line 2256
    .local v9, "endNdx":I
    const/4 v3, 0x0

    .line 2264
    :goto_80
    move/from16 v14, p5

    .line 2265
    .local v14, "obscuredScreenZone":I
    const/16 v20, 0x0

    .line 2266
    .local v20, "visibleInTask":Z
    const/4 v6, 0x0

    .line 2267
    .local v6, "activityScreenZone":I
    const/4 v11, 0x0

    .line 2268
    .local v11, "isDisplayFullscreen":Z
    const/4 v10, 0x0

    .line 2271
    .local v10, "hasDimTargetInTask":Z
    move/from16 v18, v16

    .local v18, "taskNdx":I
    :goto_89
    move/from16 v0, v18

    if-lt v0, v9, :cond_341

    .line 2273
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/TaskRecord;

    .line 2274
    .local v17, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2284
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v5, v21, -0x1

    .local v5, "activityNdx":I
    :goto_a7
    if-ltz v5, :cond_33d

    .line 2285
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v5, v0, :cond_cf

    .line 2284
    :cond_b1
    :goto_b1
    add-int/lit8 v5, v5, -0x1

    goto :goto_a7

    .line 2249
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "activityNdx":I
    .end local v6    # "activityScreenZone":I
    .end local v7    # "behindFullscreen":Z
    .end local v9    # "endNdx":I
    .end local v10    # "hasDimTargetInTask":Z
    .end local v11    # "isDisplayFullscreen":Z
    .end local v13    # "noStackActivityResumed":Z
    .end local v14    # "obscuredScreenZone":I
    .end local v16    # "startNdx":I
    .end local v17    # "task":Lcom/android/server/am/TaskRecord;
    .end local v18    # "taskNdx":I
    .end local v20    # "visibleInTask":Z
    :cond_b4
    const/4 v13, 0x0

    goto :goto_6a

    .line 2251
    .restart local v13    # "noStackActivityResumed":Z
    :cond_b6
    const/4 v7, 0x0

    goto :goto_6d

    .line 2258
    .restart local v7    # "behindFullscreen":Z
    :cond_b8
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v16, v21, -0x1

    .line 2259
    .restart local v16    # "startNdx":I
    const/4 v9, 0x0

    .line 2260
    .restart local v9    # "endNdx":I
    invoke-virtual/range {p0 .. p0}, isStackVisibleLocked()Z

    move-result v21

    if-nez v21, :cond_cd

    const/4 v7, 0x1

    :goto_cc
    goto :goto_80

    :cond_cd
    const/4 v7, 0x0

    goto :goto_cc

    .line 2288
    .restart local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v5    # "activityNdx":I
    .restart local v6    # "activityScreenZone":I
    .restart local v10    # "hasDimTargetInTask":Z
    .restart local v11    # "isDisplayFullscreen":Z
    .restart local v14    # "obscuredScreenZone":I
    .restart local v17    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v18    # "taskNdx":I
    .restart local v20    # "visibleInTask":Z
    :cond_cf
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityRecord;

    .line 2289
    .local v15, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v21, v0

    if-nez v21, :cond_b1

    .line 2292
    if-eqz v3, :cond_e1

    move-object/from16 v0, v19

    if-ne v15, v0, :cond_b1

    .line 2295
    :cond_e1
    const/4 v3, 0x0

    .line 2309
    if-eqz v7, :cond_f2

    if-nez v20, :cond_f2

    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move/from16 v21, v0

    if-nez v21, :cond_f2

    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->mIsLastShownWhenLocked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_290

    .line 2317
    :cond_f2
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v21

    if-eqz v21, :cond_199

    move-object/from16 v0, p1

    if-eq v15, v0, :cond_199

    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->visible:Z

    move/from16 v21, v0

    if-eqz v21, :cond_199

    if-eqz p1, :cond_199

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, mConfigurationHandled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_199

    .line 2319
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1}, ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 2324
    :cond_123
    :goto_123
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_135

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v21, v0

    if-nez v21, :cond_1aa

    .line 2329
    :cond_135
    move-object/from16 v0, p1

    if-eq v15, v0, :cond_144

    .line 2330
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 2332
    :cond_144
    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->visible:Z

    move/from16 v21, v0

    if-eqz v21, :cond_156

    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move/from16 v21, v0

    if-nez v21, :cond_156

    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->mIsLastShownWhenLocked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_15f

    .line 2335
    :cond_156
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, setVisible(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2337
    :cond_15f
    move-object/from16 v0, p1

    if-eq v15, v0, :cond_180

    .line 2338
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v15, v13, v1}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2340
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v5, v0, :cond_1a8

    .line 2342
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v5, v21, -0x1

    .line 2393
    :cond_180
    :goto_180
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move/from16 v21, v0

    or-int p2, p2, v21

    .line 2401
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    .line 2403
    .local v12, "isMinimized":Z
    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move/from16 v21, v0

    if-eqz v21, :cond_270

    .line 2406
    const/4 v7, 0x1

    goto/16 :goto_b1

    .line 2320
    .end local v12    # "isMinimized":Z
    :cond_199
    move-object/from16 v0, p1

    if-eq v15, v0, :cond_123

    .line 2321
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v15, v1}, ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    goto/16 :goto_123

    .line 2344
    :cond_1a8
    const/4 v13, 0x0

    goto :goto_180

    .line 2348
    :cond_1aa
    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->visible:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1e0

    .line 2353
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 2355
    :try_start_1b7
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1d2

    .line 2356
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v21, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Landroid/app/IApplicationThread;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    :try_end_1d2
    .catch Landroid/os/RemoteException; {:try_start_1b7 .. :try_end_1d2} :catch_360

    .line 2361
    :cond_1d2
    :goto_1d2
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_180

    .line 2362
    const/4 v13, 0x0

    goto :goto_180

    .line 2367
    :cond_1e0
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 2368
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_180

    move-object/from16 v0, p1

    if-eq v15, v0, :cond_180

    .line 2374
    :try_start_1f6
    move-object/from16 v0, p0

    iget-object v0, v0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_212

    .line 2375
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2376
    move-object/from16 v0, p0

    iget-object v0, v0, mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2378
    :cond_212
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, setVisible(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2379
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2380
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2381
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v21, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 2382
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_1f6 .. :try_end_247} :catch_249

    goto/16 :goto_180

    .line 2383
    :catch_249
    move-exception v8

    .line 2386
    .local v8, "e":Ljava/lang/Exception;
    const-string v21, "ActivityManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception thrown making visibile: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_180

    .line 2407
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v12    # "isMinimized":Z
    :cond_270
    invoke-virtual/range {p0 .. p0}, isHomeStack()Z

    move-result v21

    if-nez v21, :cond_285

    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    move/from16 v21, v0

    if-eqz v21, :cond_285

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v21

    if-eqz v21, :cond_285

    .line 2409
    const/4 v7, 0x1

    goto/16 :goto_b1

    .line 2411
    :cond_285
    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    move/from16 v21, v0

    if-nez v21, :cond_b1

    if-eqz v12, :cond_b1

    .line 2414
    const/4 v7, 0x1

    goto/16 :goto_b1

    .line 2430
    .end local v12    # "isMinimized":Z
    :cond_290
    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->visible:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b1

    .line 2433
    const/16 v21, 0x0

    :try_start_298
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, setVisible(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2434
    sget-object v21, Lcom/android/server/am/ActivityStack$1;->$SwitchMap$com$android$server$am$ActivityStack$ActivityState:[I

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_364

    goto/16 :goto_b1

    .line 2437
    :pswitch_2b0
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b1

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b1

    .line 2440
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v21, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_2d5
    .catch Ljava/lang/Exception; {:try_start_298 .. :try_end_2d5} :catch_2d7

    goto/16 :goto_b1

    .line 2467
    :catch_2d7
    move-exception v8

    .line 2470
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v21, "ActivityManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception thrown making hidden: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b1

    .line 2450
    .end local v8    # "e":Ljava/lang/Exception;
    :pswitch_2fe
    :try_start_2fe
    invoke-virtual/range {p0 .. p0}, getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    move-object/from16 v0, v21

    if-ne v0, v15, :cond_30d

    .line 2451
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, releaseBackgroundResources(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_b1

    .line 2456
    :cond_30d
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_332

    .line 2457
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2459
    :cond_332
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V
    :try_end_33b
    .catch Ljava/lang/Exception; {:try_start_2fe .. :try_end_33b} :catch_2d7

    goto/16 :goto_b1

    .line 2271
    .end local v15    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_33d
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_89

    .line 2480
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "activityNdx":I
    .end local v17    # "task":Lcom/android/server/am/TaskRecord;
    :cond_341
    move-object/from16 v0, p0

    iget-object v0, v0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 2483
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_10

    .line 2359
    .restart local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v5    # "activityNdx":I
    .restart local v15    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v17    # "task":Lcom/android/server/am/TaskRecord;
    :catch_360
    move-exception v21

    goto/16 :goto_1d2

    .line 2434
    nop

    :pswitch_data_364
    .packed-switch 0x1
        :pswitch_2b0
        :pswitch_2b0
        :pswitch_2fe
        :pswitch_2fe
        :pswitch_2fe
        :pswitch_2fe
    .end packed-switch
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .registers 31
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "globalChanges"    # I

    .prologue
    .line 6280
    move-object/from16 v0, p0

    iget-boolean v0, v0, mConfigWillChange:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 6283
    const/16 v24, 0x1

    .line 6592
    :goto_a
    return v24

    .line 6286
    :cond_b
    sget-boolean v24, Lcom/android/server/am/ActivityManagerService;->DEBUG_DUALSCREEN:Z

    if-eqz v24, :cond_2b

    const-string v24, "ActivityManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Ensuring correct configuration: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6291
    :cond_2b
    invoke-virtual/range {p0 .. p0}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v22

    .line 6293
    .local v22, "topTask":Lcom/android/server/am/TaskRecord;
    const/16 v23, 0x0

    .line 6295
    .local v23, "typeCascade":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4d

    .line 6296
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_ca

    const/16 v23, 0x1

    .line 6300
    :cond_4d
    :goto_4d
    if-eqz v22, :cond_b0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5f

    move-object/from16 v0, p0

    iget-boolean v0, v0, mForcedFullscreen:Z

    move/from16 v24, v0

    if-nez v24, :cond_75

    :cond_5f
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    move/from16 v24, v0

    if-nez v24, :cond_6f

    move-object/from16 v0, p0

    iget-boolean v0, v0, mFullscreen:Z

    move/from16 v24, v0

    if-eqz v24, :cond_75

    :cond_6f
    invoke-virtual/range {p0 .. p0}, isFloatingStack()Z

    move-result v24

    if-eqz v24, :cond_b0

    .line 6302
    :cond_75
    move-object/from16 v0, p0

    iget-boolean v0, v0, mFullscreen:Z

    move/from16 v17, v0

    .line 6303
    .local v17, "prevFullscreen":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, mStackId:I

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, isFloatingStack()Z

    move-result v24

    if-eqz v24, :cond_cd

    const/16 v24, 0x0

    :goto_8f
    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->forceStackToFullscreen(IZ)Landroid/content/res/Configuration;

    move-result-object v11

    .line 6305
    .local v11, "newOverrideConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, updateOverrideConfiguration(Landroid/content/res/Configuration;)Z

    .line 6306
    if-nez v17, :cond_db

    move-object/from16 v0, p0

    iget-boolean v0, v0, mFullscreen:Z

    move/from16 v24, v0

    if-eqz v24, :cond_db

    const/16 v24, 0x1

    :goto_aa
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, mForcedFullscreen:Z

    .line 6317
    .end local v11    # "newOverrideConfig":Landroid/content/res/Configuration;
    .end local v17    # "prevFullscreen":Z
    :cond_b0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    if-eqz v24, :cond_de

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v24

    if-eqz v24, :cond_de

    .line 6319
    const/16 v24, 0x1

    goto/16 :goto_a

    .line 6296
    :cond_ca
    const/16 v23, 0x0

    goto :goto_4d

    .line 6303
    .restart local v17    # "prevFullscreen":Z
    :cond_cd
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    move/from16 v24, v0

    if-nez v24, :cond_d8

    const/16 v24, 0x1

    goto :goto_8f

    :cond_d8
    const/16 v24, 0x0

    goto :goto_8f

    .line 6306
    .restart local v11    # "newOverrideConfig":Landroid/content/res/Configuration;
    :cond_db
    const/16 v24, 0x0

    goto :goto_aa

    .line 6323
    .end local v11    # "newOverrideConfig":Landroid/content/res/Configuration;
    .end local v17    # "prevFullscreen":Z
    :cond_de
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 6325
    .local v7, "mConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mMinimizeAllPenWindowRequested:Z

    move/from16 v24, v0

    if-nez v24, :cond_fe

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->minimizePenWindowRequested:Z

    move/from16 v24, v0

    if-eqz v24, :cond_12c

    :cond_fe
    iget-object v0, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v24, v0

    if-eqz v24, :cond_128

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v24, v0

    if-eqz v24, :cond_128

    iget-object v0, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_12c

    .line 6327
    :cond_128
    const/16 v24, 0x1

    goto/16 :goto_a

    .line 6334
    :cond_12c
    const/4 v9, 0x0

    .line 6336
    .local v9, "nDisplayId":I
    const/4 v15, -0x1

    .line 6342
    .local v15, "orientation":I
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 6343
    .local v10, "newConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v15, v0, Landroid/content/res/Configuration;->orientation:I

    .line 6349
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mScaledAppNames:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_186

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1c4

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wm/WindowManagerService;->isScaledPid(I)Z

    move-result v24

    if-eqz v24, :cond_1c4

    .line 6350
    :cond_186
    new-instance v8, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 6351
    .local v8, "mScaledConfiguration":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDssHelper:Landroid/os/DssHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/os/DssHelper;->getScalingFactorAdss(Ljava/lang/String;)F

    move-result v18

    .line 6352
    .local v18, "resolutionFactorf":F
    iget v0, v8, Landroid/content/res/Configuration;->densityDpi:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v18

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v8, Landroid/content/res/Configuration;->densityDpi:I

    .line 6353
    move-object v10, v8

    .line 6357
    .end local v8    # "mScaledConfiguration":Landroid/content/res/Configuration;
    .end local v18    # "resolutionFactorf":F
    :cond_1c4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    if-ne v0, v10, :cond_1ec

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1ec

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    move/from16 v24, v0

    if-nez v24, :cond_1ec

    .line 6362
    const/16 v24, 0x1

    goto/16 :goto_a

    .line 6367
    :cond_1ec
    const/4 v5, 0x0

    .line 6368
    .local v5, "declaredFixedOrientation":Z
    const/4 v14, 0x0

    .line 6369
    .local v14, "optionFixedOrientation":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    if-eqz v24, :cond_216

    .line 6370
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    const/high16 v25, 0x400000

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v14

    .line 6371
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, isFixedOrientationDeclared(I)Z

    move-result v5

    .line 6373
    :cond_216
    if-eqz v23, :cond_274

    if-eqz v14, :cond_274

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_248

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_270

    :cond_248
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move/from16 v24, v0

    if-nez v24, :cond_274

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_274

    .line 6378
    :cond_270
    const/16 v24, 0x1

    goto/16 :goto_a

    .line 6384
    :cond_274
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v24, v0

    if-eqz v24, :cond_289

    .line 6387
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 6388
    const/16 v24, 0x1

    goto/16 :goto_a

    .line 6393
    :cond_289
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 6394
    .local v12, "oldConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    .line 6395
    .local v13, "oldStackOverride":Landroid/content/res/Configuration;
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 6396
    move-object/from16 v0, p0

    iget-object v0, v0, mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    .line 6407
    move-object/from16 v0, p0

    iget-object v0, v0, mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v20

    .line 6410
    .local v20, "stackChanges":I
    if-nez v20, :cond_319

    .line 6413
    iget v0, v13, Landroid/content/res/Configuration;->orientation:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2cb

    .line 6414
    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    .line 6416
    :cond_2cb
    iget v0, v13, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2f7

    iget v0, v13, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2fd

    .line 6418
    :cond_2f7
    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    .line 6420
    :cond_2fd
    iget v0, v13, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_319

    .line 6421
    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x800

    move/from16 v20, v0

    .line 6425
    :cond_319
    const/16 v19, 0x0

    .line 6426
    .local v19, "scheduleStackChangesWithoutRelaunch":Z
    sget-boolean v24, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v24, :cond_367

    .line 6427
    if-eqz v20, :cond_367

    .line 6430
    move/from16 v21, v20

    .line 6431
    .local v21, "tmpStackChanges":I
    invoke-virtual {v12, v10}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v6

    .line 6432
    .local v6, "globalConfigChanges":I
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v24, v0

    if-eqz v24, :cond_33b

    and-int/lit16 v0, v6, 0x80

    move/from16 v24, v0

    if-nez v24, :cond_33b

    .line 6434
    move/from16 v0, v21

    and-int/lit16 v0, v0, -0x81

    move/from16 v21, v0

    .line 6436
    :cond_33b
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v24, v0

    if-eqz v24, :cond_34f

    and-int/lit16 v0, v6, 0x400

    move/from16 v24, v0

    if-nez v24, :cond_34f

    .line 6438
    move/from16 v0, v21

    and-int/lit16 v0, v0, -0x401

    move/from16 v21, v0

    .line 6440
    :cond_34f
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x800

    move/from16 v24, v0

    if-eqz v24, :cond_363

    and-int/lit16 v0, v6, 0x800

    move/from16 v24, v0

    if-nez v24, :cond_363

    .line 6442
    move/from16 v0, v21

    and-int/lit16 v0, v0, -0x801

    move/from16 v21, v0

    .line 6444
    :cond_363
    if-nez v21, :cond_367

    .line 6448
    const/16 v19, 0x1

    .line 6460
    .end local v6    # "globalConfigChanges":I
    .end local v21    # "tmpStackChanges":I
    :cond_367
    if-eqz v19, :cond_3b9

    invoke-virtual {v12, v10}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    .line 6465
    .local v4, "changes":I
    :goto_36d
    sget-boolean v24, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v24, :cond_3a9

    .line 6466
    if-eqz v23, :cond_3a9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3a9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3a9

    .line 6470
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    .line 6471
    .local v16, "overrideOr":I
    const/16 v24, 0x2

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_39f

    const/16 v24, 0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_3a9

    .line 6472
    :cond_39f
    and-int/lit16 v4, v4, -0x81

    .line 6473
    and-int/lit16 v4, v4, -0x401

    .line 6474
    and-int/lit16 v4, v4, -0x801

    .line 6475
    if-eqz v20, :cond_3c0

    const/16 v19, 0x1

    .line 6506
    .end local v16    # "overrideOr":I
    :cond_3a9
    :goto_3a9
    if-nez v4, :cond_3c3

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    move/from16 v24, v0

    if-nez v24, :cond_3c3

    if-nez v19, :cond_3c3

    .line 6509
    const/16 v24, 0x1

    goto/16 :goto_a

    .line 6460
    .end local v4    # "changes":I
    :cond_3b9
    invoke-virtual {v12, v10}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v24

    or-int v4, v24, v20

    goto :goto_36d

    .line 6475
    .restart local v4    # "changes":I
    .restart local v16    # "overrideOr":I
    :cond_3c0
    const/16 v19, 0x0

    goto :goto_3a9

    .line 6517
    .end local v16    # "overrideOr":I
    :cond_3c3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3d9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v24, v0

    if-nez v24, :cond_3ee

    .line 6520
    :cond_3d9
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 6521
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 6522
    const/16 v24, 0x1

    goto/16 :goto_a

    .line 6534
    :cond_3ee
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, mConfigurationHandled:Z

    .line 6536
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v24

    xor-int/lit8 v24, v24, -0x1

    and-int v24, v24, v4

    if-nez v24, :cond_40e

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4c4

    .line 6538
    :cond_40e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move/from16 v24, v0

    or-int v24, v24, v4

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 6539
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 6541
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, mConfigurationHandled:Z

    .line 6543
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 6544
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v24, v0

    if-eqz v24, :cond_451

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v24, v0

    if-nez v24, :cond_464

    .line 6547
    :cond_451
    const/16 v24, 0x1

    const-string v25, "config"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 6574
    :goto_460
    const/16 v24, 0x0

    goto/16 :goto_a

    .line 6548
    :cond_464
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_47e

    .line 6554
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 6555
    const/16 v24, 0x1

    goto/16 :goto_a

    .line 6556
    :cond_47e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4a8

    .line 6563
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 6564
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_460

    .line 6568
    :cond_4a8
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 6569
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_460

    .line 6581
    :cond_4c4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4fa

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4fa

    .line 6584
    :try_start_4da
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v25, v0

    new-instance v26, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-interface/range {v24 .. v26}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    :try_end_4fa
    .catch Landroid/os/RemoteException; {:try_start_4da .. :try_end_4fa} :catch_507

    .line 6590
    :cond_4fa
    :goto_4fa
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 6592
    const/16 v24, 0x1

    goto/16 :goto_a

    .line 6586
    :catch_507
    move-exception v24

    goto :goto_4fa
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 929
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 930
    .local v2, "cls":Landroid/content/ComponentName;
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v8, :cond_11

    .line 931
    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "cls":Landroid/content/ComponentName;
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_11
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 935
    .local v7, "userId":I
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "taskNdx":I
    :goto_21
    if-ltz v6, :cond_6d

    .line 936
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 937
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v8, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v8

    if-nez v8, :cond_53

    const/4 v3, 0x1

    .line 939
    .local v3, "notCurrentUserTask":Z
    :goto_36
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 941
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "activityNdx":I
    :goto_3e
    if-ltz v1, :cond_6a

    .line 942
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 943
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_55

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_55

    .line 941
    :cond_50
    add-int/lit8 v1, v1, -0x1

    goto :goto_3e

    .line 937
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "notCurrentUserTask":Z
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_53
    const/4 v3, 0x0

    goto :goto_36

    .line 946
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "notCurrentUserTask":Z
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_55
    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v8, :cond_50

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    iget v8, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v8, v7, :cond_50

    .line 952
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "notCurrentUserTask":Z
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :goto_69
    return-object v4

    .line 935
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "notCurrentUserTask":Z
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6a
    add-int/lit8 v6, v6, -0x1

    goto :goto_21

    .line 952
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "notCurrentUserTask":Z
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6d
    const/4 v4, 0x0

    goto :goto_69
.end method

.method findActivityLockedByName(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 986
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_8
    if-ltz v4, :cond_39

    .line 987
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 989
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 990
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_36

    .line 991
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 992
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_33

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, p1, :cond_33

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 997
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_32
    return-object v2

    .line 990
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 986
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_36
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 997
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_39
    const/4 v2, 0x0

    goto :goto_32
.end method

.method findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 962
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_8
    if-ltz v4, :cond_39

    .line 963
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 964
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 965
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_36

    .line 966
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 967
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_33

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, p1, :cond_33

    .line 972
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_32
    return-object v2

    .line 965
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 962
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_36
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 972
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_39
    const/4 v2, 0x0

    goto :goto_32
.end method

.method findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 16
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v13, 0x0

    .line 1818
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1819
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    if-nez v9, :cond_6

    .line 1858
    :cond_5
    :goto_5
    return-object v13

    .line 1823
    :cond_6
    iget-object v7, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1824
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v7, :cond_5

    .line 1828
    iget-object v12, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 1830
    .local v8, "stackNdx":I
    iget-object v11, v7, mTaskHistory:Ljava/util/ArrayList;

    .line 1831
    .local v11, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 1833
    .local v10, "taskNdx":I
    iget-object v0, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1834
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    add-int/lit8 v2, v12, 0x1

    .line 1836
    .local v2, "activityNdx":I
    iget-object v12, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1837
    .local v5, "numStacks":I
    :goto_24
    if-ge v8, v5, :cond_5

    .line 1838
    iget-object v12, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 1839
    .local v3, "historyStack":Lcom/android/server/am/ActivityStack;
    iget-object v11, v3, mTaskHistory:Ljava/util/ArrayList;

    .line 1840
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1841
    .local v6, "numTasks":I
    :goto_34
    if-ge v10, v6, :cond_60

    .line 1842
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/TaskRecord;

    iget-object v0, v12, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1843
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1844
    .local v4, "numActivities":I
    :goto_42
    if-ge v2, v4, :cond_5c

    .line 1845
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1846
    .local v1, "activity":Lcom/android/server/am/ActivityRecord;
    iget-boolean v12, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v12, :cond_59

    .line 1847
    iget-boolean v12, v3, mFullscreen:Z

    if-eqz v12, :cond_57

    iget-boolean v12, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v12, :cond_57

    move-object v1, v13

    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_57
    move-object v13, v1

    goto :goto_5

    .line 1849
    .restart local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_59
    add-int/lit8 v2, v2, 0x1

    .line 1850
    goto :goto_42

    .line 1851
    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_5c
    const/4 v2, 0x0

    .line 1852
    add-int/lit8 v10, v10, 0x1

    .line 1853
    goto :goto_34

    .line 1854
    .end local v4    # "numActivities":I
    :cond_60
    const/4 v10, 0x0

    .line 1855
    add-int/lit8 v8, v8, 0x1

    .line 1856
    goto :goto_24
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 3
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 777
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, findTaskLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;
    .registers 25
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "findReverse"    # Z

    .prologue
    .line 780
    const/4 v13, 0x0

    .line 782
    .local v13, "rTaskNdx":I
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 783
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 784
    .local v7, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 785
    .local v4, "cls":Landroid/content/ComponentName;
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_24

    .line 786
    new-instance v4, Landroid/content/ComponentName;

    .end local v4    # "cls":Landroid/content/ComponentName;
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .restart local v4    # "cls":Landroid/content/ComponentName;
    :cond_24
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 791
    .local v19, "userId":I
    const/4 v6, 0x0

    .line 792
    .local v6, "findAr":Lcom/android/server/am/ActivityRecord;
    const/4 v11, 0x0

    .line 793
    .local v11, "multiInstanceAr":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v10

    .line 796
    .local v10, "isFront":Z
    if-eqz v8, :cond_63

    const/16 v20, 0x1

    :goto_46
    invoke-virtual {v8}, Landroid/content/Intent;->isDocument()Z

    move-result v21

    and-int v9, v20, v21

    .line 798
    .local v9, "isDocument":Z
    if-eqz v9, :cond_66

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 801
    .local v5, "documentData":Landroid/net/Uri;
    :goto_52
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v18, v20, -0x1

    .local v18, "taskNdx":I
    :goto_5e
    if-gez v18, :cond_68

    .line 915
    if-eqz v11, :cond_174

    .line 920
    .end local v11    # "multiInstanceAr":Lcom/android/server/am/ActivityRecord;
    :goto_62
    return-object v11

    .line 796
    .end local v5    # "documentData":Landroid/net/Uri;
    .end local v9    # "isDocument":Z
    .end local v18    # "taskNdx":I
    .restart local v11    # "multiInstanceAr":Lcom/android/server/am/ActivityRecord;
    :cond_63
    const/16 v20, 0x0

    goto :goto_46

    .line 798
    .restart local v9    # "isDocument":Z
    :cond_66
    const/4 v5, 0x0

    goto :goto_52

    .line 810
    .restart local v5    # "documentData":Landroid/net/Uri;
    .restart local v18    # "taskNdx":I
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/TaskRecord;

    .line 811
    .local v14, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v20, v0

    if-eqz v20, :cond_81

    .line 801
    :cond_7e
    :goto_7e
    add-int/lit8 v18, v18, -0x1

    goto :goto_5e

    .line 816
    :cond_81
    iget v0, v14, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_7e

    .line 821
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 822
    .local v12, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_7e

    iget-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v20, v0

    if-nez v20, :cond_7e

    iget v0, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_7e

    iget v0, v12, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7e

    .line 828
    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    .line 829
    .local v16, "taskIntent":Landroid/content/Intent;
    iget-object v3, v14, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 832
    .local v3, "affinityIntent":Landroid/content/Intent;
    if-eqz v16, :cond_106

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->isDocument()Z

    move-result v20

    if-eqz v20, :cond_106

    .line 833
    const/16 v17, 0x1

    .line 834
    .local v17, "taskIsDocument":Z
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 847
    .local v15, "taskDocumentData":Landroid/net/Uri;
    :goto_c1
    if-nez v9, :cond_119

    if-nez v17, :cond_119

    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_119

    .line 848
    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_dc

    .line 852
    move-object v6, v12

    .line 896
    :cond_dc
    :goto_dc
    if-eqz v6, :cond_7e

    .line 897
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_171

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_171

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v20

    if-eqz v20, :cond_171

    .line 899
    if-nez v11, :cond_151

    .line 900
    move-object v11, v6

    .line 905
    :cond_103
    :goto_103
    const/4 v6, 0x0

    goto/16 :goto_7e

    .line 835
    .end local v15    # "taskDocumentData":Landroid/net/Uri;
    .end local v17    # "taskIsDocument":Z
    :cond_106
    if-eqz v3, :cond_115

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v20

    if-eqz v20, :cond_115

    .line 836
    const/16 v17, 0x1

    .line 837
    .restart local v17    # "taskIsDocument":Z
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .restart local v15    # "taskDocumentData":Landroid/net/Uri;
    goto :goto_c1

    .line 839
    .end local v15    # "taskDocumentData":Landroid/net/Uri;
    .end local v17    # "taskIsDocument":Z
    :cond_115
    const/16 v17, 0x0

    .line 840
    .restart local v17    # "taskIsDocument":Z
    const/4 v15, 0x0

    .restart local v15    # "taskDocumentData":Landroid/net/Uri;
    goto :goto_c1

    .line 860
    :cond_119
    if-eqz v16, :cond_135

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    if-eqz v20, :cond_135

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v20

    if-nez v20, :cond_135

    invoke-static {v5, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_135

    .line 869
    move-object v6, v12

    goto :goto_dc

    .line 876
    :cond_135
    if-eqz v3, :cond_dc

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    if-eqz v20, :cond_dc

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v20

    if-nez v20, :cond_dc

    invoke-static {v5, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_dc

    .line 885
    move-object v6, v12

    goto :goto_dc

    .line 901
    :cond_151
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_103

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v11, v0, :cond_103

    .line 903
    move-object v11, v6

    goto :goto_103

    :cond_171
    move-object v11, v6

    .line 907
    goto/16 :goto_62

    .line 920
    .end local v3    # "affinityIntent":Landroid/content/Intent;
    .end local v12    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "task":Lcom/android/server/am/TaskRecord;
    .end local v15    # "taskDocumentData":Landroid/net/Uri;
    .end local v16    # "taskIntent":Landroid/content/Intent;
    .end local v17    # "taskIsDocument":Z
    :cond_174
    const/4 v11, 0x0

    goto/16 :goto_62
.end method

.method final finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 4555
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4558
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v0

    if-eq v0, v8, :cond_1e

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 4561
    :cond_1e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 4566
    .local v7, "index":I
    :goto_24
    if-ltz v7, :cond_4d

    .line 4567
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4570
    .local v1, "cur":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v0

    if-ne v0, v8, :cond_43

    .line 4572
    const-string/jumbo v4, "request-affinity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4566
    :goto_3b
    add-int/lit8 v7, v7, -0x1

    goto :goto_24

    .line 4563
    .end local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "index":I
    :cond_3e
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .restart local v7    # "index":I
    goto :goto_24

    .line 4577
    .restart local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_43
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 4598
    .end local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_4d
    :goto_4d
    return v5

    .line 4581
    .restart local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_4e
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isLockedTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne v0, v1, :cond_69

    .line 4582
    const-string v0, "ActivityManager"

    const-string/jumbo v2, "this activity should not finish, because LockTaskMode is set"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 4596
    :cond_69
    const-string/jumbo v4, "request-affinity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_3b
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 18
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .prologue
    .line 4672
    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_1e

    .line 4673
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate finish request for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4674
    const/4 v8, 0x0

    .line 4851
    :goto_1d
    return v8

    .line 4679
    :cond_1e
    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v8, :cond_3d

    const-string/jumbo v8, "removeTask"

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3d

    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/am/VirtualScreenManagerService;->moveTaskBackToDisplayIfNeeded(Lcom/android/server/am/TaskRecord;ZZ)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 4682
    const/4 v8, 0x0

    goto :goto_1d

    .line 4684
    :cond_3d
    iget-object v8, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    invoke-virtual {v8, p1}, Lcom/android/server/am/VirtualScreenPolicy;->relinquishVirtualScreenAttrs(Lcom/android/server/am/ActivityRecord;)V

    .line 4688
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 4689
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4690
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    const/16 v8, 0x7531

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget v11, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    aput-object p4, v9, v10

    const/4 v10, 0x5

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4693
    iget-object v1, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4694
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 4695
    .local v4, "index":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_ae

    .line 4696
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 4697
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x80000

    and-int/2addr v8, v9

    if-eqz v8, :cond_ae

    .line 4701
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 4702
    .local v5, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v9, 0x80000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4707
    .end local v5    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_ae
    const/4 v3, 0x0

    .line 4714
    .local v3, "forceToAnimation":Z
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 4722
    const-string/jumbo v8, "move-affinity"

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ec

    const-string/jumbo v8, "reset-task"

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ec

    const-string v8, "clear-task-index"

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ec

    const-string v8, "clear-task-stack"

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ec

    const-string v8, "clear-task-top"

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ec

    .line 4724
    const-string/jumbo v8, "finishActivity"

    invoke-direct {p0, p1, v8}, adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4731
    :cond_ec
    invoke-virtual {p0, p1, p2, p3}, finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 4737
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v8

    if-eqz v8, :cond_129

    const-string v8, "clear"

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_129

    .line 4738
    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_129

    .line 4739
    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 4740
    .local v6, "root":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_129

    .line 4741
    const/4 v8, 0x0

    move/from16 v0, p5

    invoke-virtual {p0, p1, v8, v0}, finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_126

    const/4 v8, 0x1

    goto/16 :goto_1d

    :cond_126
    const/4 v8, 0x0

    goto/16 :goto_1d

    .line 4747
    .end local v6    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_129
    sget-boolean v8, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v8, :cond_151

    .line 4748
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DualScreenTransition] Finishing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mResumedActivity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4753
    :cond_151
    iget-object v8, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v8, p1, :cond_17b

    .line 4830
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v8, v9, :cond_1f6

    .line 4836
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_20f

    const-string/jumbo v8, "no-history"

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_20f

    .line 4838
    const/4 v8, 0x0

    move/from16 v0, p5

    invoke-virtual {p0, p1, v8, v0}, finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_20c

    const/4 v8, 0x1

    goto/16 :goto_1d

    .line 4754
    :cond_17b
    if-gtz v4, :cond_1f9

    const/4 v2, 0x1

    .line 4759
    .local v2, "endTask":Z
    :goto_17e
    sget-boolean v8, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v8, :cond_1b8

    if-eqz v2, :cond_1b8

    .line 4760
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DualScreenTransition] Finishing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isFinishWithCoupledTask="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->isFinishWithCoupledTask()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " coupledTask="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    :cond_1b8
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v8

    if-nez v8, :cond_1fb

    .line 4778
    iget-object v8, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v9, 0x66

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    .line 4805
    :goto_1cc
    iget-object v8, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    .line 4807
    iget-object v8, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_1dc

    .line 4814
    :cond_1dc
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v8, v9, v10, v11}, startPausingLocked(ZZZZ)Z

    .line 4817
    iget-object v8, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isLockedTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v8

    if-eqz v8, :cond_1ef

    iget-boolean v8, v7, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-nez v8, :cond_1f6

    :cond_1ef
    if-eqz v2, :cond_1f6

    .line 4818
    iget-object v8, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 4851
    .end local v2    # "endTask":Z
    :cond_1f6
    const/4 v8, 0x0

    goto/16 :goto_1d

    .line 4754
    :cond_1f9
    const/4 v2, 0x0

    goto :goto_17e

    .line 4796
    .restart local v2    # "endTask":Z
    :cond_1fb
    iget-object v9, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_20a

    const/16 v8, 0x9

    :goto_201
    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v11

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto :goto_1cc

    :cond_20a
    const/4 v8, 0x7

    goto :goto_201

    .line 4838
    .end local v2    # "endTask":Z
    :cond_20c
    const/4 v8, 0x0

    goto/16 :goto_1d

    .line 4839
    :cond_20f
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_232

    const-string/jumbo v8, "removeTask"

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_232

    .line 4841
    const/4 v8, 0x0

    move/from16 v0, p5

    invoke-virtual {p0, p1, v8, v0}, finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_22f

    const/4 v8, 0x1

    goto/16 :goto_1d

    :cond_22f
    const/4 v8, 0x0

    goto/16 :goto_1d

    .line 4842
    :cond_232
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_247

    .line 4843
    const/4 v8, 0x0

    move/from16 v0, p5

    invoke-virtual {p0, p1, v8, v0}, finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_244

    const/4 v8, 0x1

    goto/16 :goto_1d

    :cond_244
    const/4 v8, 0x0

    goto/16 :goto_1d

    .line 4847
    :cond_247
    const/4 v8, 0x1

    move/from16 v0, p5

    invoke-virtual {p0, p1, v8, v0}, finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_253

    const/4 v8, 0x1

    goto/16 :goto_1d

    :cond_253
    const/4 v8, 0x0

    goto/16 :goto_1d
.end method

.method final finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .registers 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 4630
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 4631
    .local v6, "resultTo":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_3b

    .line 4635
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v0, v1, :cond_12

    .line 4636
    if-eqz p3, :cond_12

    .line 4637
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p3, v0}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 4640
    :cond_12
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_2e

    .line 4641
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 4645
    :cond_2e
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4653
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 4660
    :cond_3b
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4661
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4662
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4663
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 4664
    return-void
.end method

.method finishAllActivities()Z
    .registers 12

    .prologue
    const/4 v5, 0x1

    .line 7494
    const/4 v8, 0x0

    .line 7495
    .local v8, "lastTask":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .local v10, "taskNdx":I
    :goto_a
    if-ltz v10, :cond_44

    .line 7496
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 7497
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 7498
    .local v9, "numActivities":I
    const/4 v7, 0x0

    .local v7, "activityNdx":I
    :goto_1b
    if-ge v7, v9, :cond_41

    .line 7499
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 7500
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_2d

    .line 7501
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_30

    .line 7498
    :cond_2d
    :goto_2d
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 7507
    :cond_30
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "force-stop"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7509
    add-int/lit8 v9, v9, -0x1

    .line 7510
    add-int/lit8 v7, v7, -0x1

    goto :goto_2d

    .line 7495
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_41
    add-int/lit8 v10, v10, -0x1

    goto :goto_a

    .line 7515
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    .end local v9    # "numActivities":I
    :cond_44
    return v5
.end method

.method finishAllActivitiesLocked(Z)V
    .registers 11
    .param p1, "immediately"    # Z

    .prologue
    const/4 v8, 0x0

    .line 5027
    const/4 v2, 0x1

    .line 5028
    .local v2, "noActivitiesInStack":Z
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_a
    if-ltz v4, :cond_54

    .line 5029
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5030
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1c
    if-ltz v1, :cond_51

    .line 5031
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5032
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    .line 5033
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2e

    if-nez p1, :cond_2e

    .line 5030
    :goto_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 5036
    :cond_2e
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "finishAllActivitiesLocked: finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " immediately"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5037
    invoke-virtual {p0, v3, v8, v8}, finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    goto :goto_2b

    .line 5028
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_51
    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    .line 5040
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_54
    if-eqz v2, :cond_5b

    .line 5041
    iget-object v5, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    .line 5043
    :cond_5b
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "mode"    # I
    .param p3, "oomAdj"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 4903
    const/4 v4, 0x2

    if-ne p2, v4, :cond_79

    .line 4904
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_62

    .line 4905
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 4906
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4907
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-gt v4, v5, :cond_31

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_42

    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v6, :cond_42

    .line 4914
    :cond_31
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 4933
    :cond_36
    :goto_36
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4934
    if-eqz p3, :cond_41

    .line 4935
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 5023
    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_41
    :goto_41
    return-object p1

    .line 4917
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_42
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-nez v4, :cond_5c

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-nez v4, :cond_56

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_5c

    .line 4922
    :cond_56
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto :goto_36

    .line 4925
    :cond_5c
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    goto :goto_36

    .line 4943
    :cond_62
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_79

    invoke-virtual {p0}, isMultiWindowStack()Z

    move-result v4

    if-eqz v4, :cond_79

    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v6, :cond_79

    .line 4944
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 4955
    :cond_79
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_98

    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_98

    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 4958
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 4963
    :cond_98
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4964
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4965
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4966
    iget-object v4, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_b3

    .line 4967
    iput-object v3, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4969
    :cond_b3
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4971
    .local v2, "prevState":Lcom/android/server/am/ActivityStack$ActivityState;
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4973
    if-eqz p2, :cond_c9

    if-ne p2, v6, :cond_c1

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v4, :cond_c9

    :cond_c1
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v4, :cond_c9

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v4, :cond_10b

    .line 4979
    :cond_c9
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 4980
    const-string/jumbo v4, "finish-imm"

    invoke-virtual {p0, p1, v6, v4}, destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    .line 4981
    .local v0, "activityRemoved":Z
    if-eqz v0, :cond_da

    .line 4982
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4987
    :cond_da
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_ee

    invoke-virtual {p0, v3, v6}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_ee

    .line 4989
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 4997
    :cond_ee
    const/4 v1, 0x0

    .line 5000
    .local v1, "ensureActivitiesVisibilityNeeded":Z
    if-nez v0, :cond_106

    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_106

    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_101

    if-eqz v1, :cond_106

    .line 5002
    :cond_101
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 5008
    :cond_106
    if-eqz v0, :cond_41

    move-object p1, v3

    goto/16 :goto_41

    .line 5014
    .end local v0    # "activityRemoved":Z
    .end local v1    # "ensureActivitiesVisibilityNeeded":Z
    :cond_10b
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5015
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 5021
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4, v3}, resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_41
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .registers 21
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
    .line 6714
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 6715
    .local v9, "didSomething":Z
    const/4 v11, 0x0

    .line 6716
    .local v11, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v10, 0x0

    .line 6717
    .local v10, "homeActivity":Landroid/content/ComponentName;
    iget-object v1, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v14, v1, -0x1

    .local v14, "taskNdx":I
    :goto_b
    if-ltz v14, :cond_db

    .line 6718
    iget-object v1, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v7, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 6719
    .local v7, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 6720
    .local v12, "numActivities":I
    const/4 v8, 0x0

    .local v8, "activityNdx":I
    :goto_1c
    if-ge v8, v12, :cond_d7

    .line 6721
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 6722
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    if-eqz p2, :cond_46

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    :cond_3e
    if-nez p1, :cond_6d

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p5

    if-ne v1, v0, :cond_6d

    :cond_46
    const/4 v13, 0x1

    .line 6726
    .local v13, "sameComponent":Z
    :goto_47
    const/4 v1, -0x1

    move/from16 v0, p5

    if-eq v0, v1, :cond_52

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p5

    if-ne v1, v0, :cond_6a

    :cond_52
    if-nez v13, :cond_58

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v1, v11, :cond_6a

    :cond_58
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_64

    if-nez p4, :cond_64

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v1, :cond_6a

    .line 6729
    :cond_64
    if-nez p3, :cond_71

    .line 6730
    iget-boolean v1, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_6f

    .line 6720
    :cond_6a
    :goto_6a
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    .line 6722
    .end local v13    # "sameComponent":Z
    :cond_6d
    const/4 v13, 0x0

    goto :goto_47

    .line 6735
    .restart local v13    # "sameComponent":Z
    :cond_6f
    const/4 v1, 0x1

    .line 6763
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "activityNdx":I
    .end local v12    # "numActivities":I
    .end local v13    # "sameComponent":Z
    :goto_70
    return v1

    .line 6737
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v8    # "activityNdx":I
    .restart local v12    # "numActivities":I
    .restart local v13    # "sameComponent":Z
    :cond_71
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 6738
    if-eqz v10, :cond_9a

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 6739
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip force-stop again "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 6742
    :cond_9a
    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 6745
    :cond_9c
    const/4 v9, 0x1

    .line 6746
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Force finishing activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6747
    if-eqz v13, :cond_c3

    .line 6748
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_c0

    .line 6749
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 6751
    :cond_c0
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 6753
    :cond_c3
    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 6754
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "force-stop"

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 6757
    add-int/lit8 v12, v12, -0x1

    .line 6758
    add-int/lit8 v8, v8, -0x1

    goto :goto_6a

    .line 6717
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "sameComponent":Z
    :cond_d7
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_b

    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "activityNdx":I
    .end local v12    # "numActivities":I
    :cond_db
    move v1, v9

    .line 6763
    goto :goto_70
.end method

.method final finishSubActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .registers 13
    .param p1, "self"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 4479
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "taskNdx":I
    :goto_9
    if-ltz v8, :cond_4c

    .line 4480
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4481
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "activityNdx":I
    :goto_1b
    if-ltz v7, :cond_49

    .line 4482
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4483
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_46

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_46

    .line 4484
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v0, :cond_31

    if-eqz p2, :cond_3d

    :cond_31
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 4486
    :cond_3d
    const/4 v3, 0x0

    const-string/jumbo v4, "request-sub"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4481
    :cond_46
    add-int/lit8 v7, v7, -0x1

    goto :goto_1b

    .line 4479
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_49
    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    .line 4492
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_4c
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 4493
    return-void
.end method

.method final finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4496
    invoke-virtual {p0, v3}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 4497
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_a6

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_a6

    .line 4500
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4502
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 4503
    .local v7, "taskNdx":I
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .local v6, "activityNdx":I
    move-object v0, p0

    move-object v4, p2

    move v5, v2

    .line 4504
    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4508
    add-int/lit8 v6, v6, -0x1

    .line 4509
    if-gez v6, :cond_4c

    .line 4511
    :cond_48
    add-int/lit8 v7, v7, -0x1

    .line 4512
    if-gez v7, :cond_a7

    .line 4518
    :cond_4c
    :goto_4c
    if-ltz v6, :cond_a6

    .line 4519
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4520
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v4, :cond_70

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v4, :cond_70

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v4, :cond_a6

    .line 4523
    :cond_70
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v4, :cond_a6

    .line 4524
    :cond_7e
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v4, p2

    move v5, v2

    .line 4526
    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4531
    .end local v6    # "activityNdx":I
    .end local v7    # "taskNdx":I
    :cond_a6
    return-void

    .line 4515
    .restart local v6    # "activityNdx":I
    .restart local v7    # "taskNdx":I
    :cond_a7
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 4516
    if-ltz v6, :cond_48

    goto :goto_4c
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 13
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .prologue
    const/4 v2, 0x0

    .line 4534
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 4535
    .local v8, "sessionBinder":Landroid/os/IBinder;
    const/4 v7, 0x0

    .line 4536
    .local v7, "didOne":Z
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .local v9, "taskNdx":I
    :goto_e
    if-ltz v9, :cond_4a

    .line 4537
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    .line 4538
    .local v10, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_47

    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, v8, :cond_47

    .line 4539
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "activityNdx":I
    :goto_2c
    if-ltz v6, :cond_47

    .line 4540
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4541
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_44

    .line 4542
    const/4 v3, 0x0

    const-string/jumbo v4, "finish-voice"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4544
    const/4 v7, 0x1

    .line 4539
    :cond_44
    add-int/lit8 v6, v6, -0x1

    goto :goto_2c

    .line 4536
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "activityNdx":I
    :cond_47
    add-int/lit8 v9, v9, -0x1

    goto :goto_e

    .line 4549
    .end local v10    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_4a
    if-eqz v7, :cond_51

    .line 4550
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 4552
    :cond_51
    return-void
.end method

.method final forceResumeTopActivityLocked(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2603
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v2, :cond_c

    .line 2604
    iput-boolean v4, p0, mTwiceResumeTop:Z

    move v0, v1

    .line 2621
    :goto_b
    return v0

    .line 2608
    :cond_c
    const/4 v0, 0x0

    .line 2611
    .local v0, "result":Z
    :try_start_d
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    .line 2612
    const/4 v2, 0x0

    iput-boolean v2, p0, mTwiceResumeTop:Z

    .line 2613
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    if-ne v2, v4, :cond_26

    .line 2614
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_2f

    .line 2619
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    move v0, v1

    goto :goto_b

    .line 2617
    :cond_26
    :try_start_26
    invoke-direct {p0, p1}, forceResumeTopActivityInnerLocked(Ljava/lang/String;)Z
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2f

    move-result v0

    .line 2619
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    goto :goto_b

    :catchall_2f
    move-exception v2

    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v3, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    throw v2
.end method

.method getAllTasks()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7898
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getDisplayId()I
    .registers 2

    .prologue
    .line 7984
    iget-object v0, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
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
    .line 7548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7550
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    .line 7552
    .local v6, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v9, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 7556
    const-string v9, "all"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 7557
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "taskNdx":I
    :goto_1c
    if-ltz v7, :cond_54

    .line 7558
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7557
    add-int/lit8 v7, v7, -0x1

    goto :goto_1c

    .line 7560
    .end local v7    # "taskNdx":I
    :cond_2c
    const-string/jumbo v9, "top"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_55

    .line 7561
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v8, v9, -0x1

    .line 7562
    .local v8, "top":I
    if-ltz v8, :cond_54

    .line 7563
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    iget-object v2, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 7564
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .line 7565
    .local v3, "listTop":I
    if-ltz v3, :cond_54

    .line 7566
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7582
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "listTop":I
    .end local v8    # "top":I
    :cond_54
    return-object v0

    .line 7570
    :cond_55
    new-instance v4, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v4}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 7571
    .local v4, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 7573
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .restart local v7    # "taskNdx":I
    :goto_63
    if-ltz v7, :cond_54

    .line 7574
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_71
    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 7575
    .local v5, "r1":Lcom/android/server/am/ActivityRecord;
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_71

    .line 7576
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 7573
    .end local v5    # "r1":Lcom/android/server/am/ActivityRecord;
    :cond_8d
    add-int/lit8 v7, v7, -0x1

    goto :goto_63
.end method

.method getGlobalTaskHistoryIsolatedLocked()Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7841
    const/4 v8, 0x0

    .line 7842
    .local v8, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p0, mDisplayId:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 7843
    .local v2, "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7844
    .local v1, "globalLength":I
    iget-object v9, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p0, mDisplayId:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 7845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7846
    .local v0, "alist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v1, :cond_6c

    .line 7847
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "tr":Lcom/android/server/am/TaskRecord;
    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 7848
    .restart local v8    # "tr":Lcom/android/server/am/TaskRecord;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_26
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_69

    .line 7849
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    iget v9, v9, Lcom/android/server/am/ActivityRecord;->isolatedBaseCouple:I

    sget v10, Lcom/android/server/am/ActivityRecord;->ISOLATED_BASE:I

    if-eq v9, v10, :cond_4e

    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v10, 0x1000

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_66

    .line 7851
    :cond_4e
    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 7852
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_74

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 7853
    .local v5, "item":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 7848
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Lcom/android/server/am/TaskRecord;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :cond_66
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 7846
    :cond_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 7861
    .end local v0    # "alist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v3    # "i":I
    .end local v6    # "j":I
    :cond_6c
    iget-object v9, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p0, mDisplayId:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    :cond_74
    return-object v0
.end method

.method getGlobalTaskHistoryLocked()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7864
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p0, mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 7314
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 7315
    :try_start_3
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 7316
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_d

    .line 7317
    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    monitor-exit v2

    .line 7319
    :goto_c
    return-object v1

    :cond_d
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    monitor-exit v2

    goto :goto_c

    .line 7320
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getStackId()I
    .registers 2

    .prologue
    .line 7950
    iget v0, p0, mStackId:I

    return v0
.end method

.method getTasksLocked(Ljava/util/List;IZI)V
    .registers 23
    .param p2, "callingUid"    # I
    .param p3, "allowed"    # Z
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 6767
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v15

    move-object/from16 v0, p0

    if-ne v15, v0, :cond_2d

    const/4 v6, 0x1

    .line 6768
    .local v6, "focusedStack":Z
    :goto_d
    const/4 v14, 0x1

    .line 6769
    .local v14, "topTask":Z
    move-object/from16 v0, p0

    iget-object v15, v0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v11, v15, -0x1

    .local v11, "taskNdx":I
    :goto_18
    if-ltz v11, :cond_11b

    .line 6770
    move-object/from16 v0, p0

    iget-object v15, v0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    .line 6771
    .local v10, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    if-nez v15, :cond_2f

    .line 6769
    :cond_2a
    :goto_2a
    add-int/lit8 v11, v11, -0x1

    goto :goto_18

    .line 6767
    .end local v6    # "focusedStack":Z
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    .end local v11    # "taskNdx":I
    .end local v14    # "topTask":Z
    :cond_2d
    const/4 v6, 0x0

    goto :goto_d

    .line 6774
    .restart local v6    # "focusedStack":Z
    .restart local v10    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "taskNdx":I
    .restart local v14    # "topTask":Z
    :cond_2f
    const/4 v9, 0x0

    .line 6775
    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v13, 0x0

    .line 6777
    .local v13, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v7, 0x0

    .line 6778
    .local v7, "numActivities":I
    const/4 v8, 0x0

    .line 6779
    .local v8, "numRunning":I
    iget-object v2, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 6780
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    if-nez p3, :cond_43

    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v15

    if-nez v15, :cond_43

    iget v15, v10, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    move/from16 v0, p2

    if-ne v15, v0, :cond_2a

    .line 6789
    :cond_43
    const/4 v4, 0x0

    .line 6790
    .local v4, "checkFlags":Z
    and-int/lit8 v15, p4, 0x4

    if-eqz v15, :cond_4c

    .line 6791
    iget-boolean v15, v10, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v15, :cond_2a

    .line 6796
    :cond_4c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v3, v15, -0x1

    .local v3, "activityNdx":I
    :goto_52
    if-ltz v3, :cond_af

    .line 6797
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    .line 6798
    .local v12, "tmp":Lcom/android/server/am/ActivityRecord;
    iget-boolean v15, v12, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v15, :cond_61

    .line 6796
    :cond_5e
    :goto_5e
    add-int/lit8 v3, v3, -0x1

    goto :goto_52

    .line 6801
    :cond_61
    move-object v9, v12

    .line 6804
    if-eqz v13, :cond_6c

    iget-object v15, v13, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v16, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_6f

    .line 6805
    :cond_6c
    move-object v13, v9

    .line 6806
    const/4 v8, 0x0

    move v7, v8

    .line 6810
    :cond_6f
    add-int/lit8 v7, v7, 0x1

    .line 6811
    iget-object v15, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v15, :cond_7d

    iget-object v15, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v15, v15, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v15, :cond_7d

    .line 6812
    add-int/lit8 v8, v8, 0x1

    .line 6821
    :cond_7d
    and-int/lit8 v15, p4, 0x1

    if-eqz v15, :cond_89

    iget-object v15, v9, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v16, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_5e

    :cond_89
    and-int/lit8 v15, p4, 0x2

    if-eqz v15, :cond_9f

    and-int/lit8 v15, p4, 0x10

    if-eqz v15, :cond_a2

    move-object/from16 v0, p0

    iget-object v15, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v0, v9, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v15

    if-eqz v15, :cond_5e

    .line 6825
    :cond_9f
    :goto_9f
    or-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 6821
    :cond_a2
    iget v15, v9, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p0

    iget v0, v0, mCurrentUser:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_5e

    goto :goto_9f

    .line 6832
    .end local v12    # "tmp":Lcom/android/server/am/ActivityRecord;
    :cond_af
    if-eqz v4, :cond_2a

    .line 6837
    new-instance v5, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 6838
    .local v5, "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v15, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v15, v5, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 6839
    iget-object v15, v9, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    iput-object v15, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 6840
    iget-object v15, v13, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    iput-object v15, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 6841
    iget-wide v0, v10, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 6842
    if-eqz v6, :cond_df

    if-eqz v14, :cond_df

    .line 6845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 6846
    const/4 v14, 0x0

    .line 6848
    :cond_df
    iget-wide v0, v10, Lcom/android/server/am/TaskRecord;->lastActiveElapsedTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveElapsedTime:J

    .line 6859
    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v15

    iput-boolean v15, v5, Landroid/app/ActivityManager$RunningTaskInfo;->isHomeType:Z

    .line 6860
    iget-object v15, v9, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    iput-object v15, v5, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    .line 6861
    iget v15, v10, Lcom/android/server/am/TaskRecord;->userId:I

    iput v15, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 6862
    iget-object v15, v10, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iput-object v15, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskAffinity:Ljava/lang/String;

    .line 6864
    and-int/lit8 v15, p4, 0x8

    if-eqz v15, :cond_116

    .line 6865
    iget-object v15, v13, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-object v15, v5, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 6873
    :goto_101
    iget-object v15, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v15, :cond_10b

    .line 6874
    iget-object v15, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    iput-object v15, v5, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    .line 6876
    :cond_10b
    iput v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    .line 6877
    iput v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    .line 6878
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a

    .line 6868
    :cond_116
    iget-object v15, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-object v15, v5, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_101

    .line 6880
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    .end local v4    # "checkFlags":Z
    .end local v5    # "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v7    # "numActivities":I
    .end local v8    # "numRunning":I
    .end local v9    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    .end local v13    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_11b
    return-void
.end method

.method getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .prologue
    .line 5584
    invoke-virtual {p0}, isAttached()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method getZone()I
    .registers 2

    .prologue
    .line 667
    iget v0, p0, mStackZone:I

    return v0
.end method

.method goToSleep()V
    .registers 7

    .prologue
    .line 1212
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_8
    if-ltz v3, :cond_38

    .line 1213
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1214
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_35

    .line 1215
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1216
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_2e

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_32

    .line 1217
    :cond_2e
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1214
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 1212
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_35
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 1221
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_38
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v9, 0x0

    .line 6929
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "taskNdx":I
    :goto_9
    if-ltz v5, :cond_8f

    .line 6930
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 6931
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1b
    if-ltz v1, :cond_8b

    .line 6932
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 6933
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, p1, :cond_88

    .line 6938
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    .line 6939
    .local v3, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v3, :cond_60

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_60

    .line 6940
    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_60

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getKioskHomePackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 6942
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.enterprise.TERMINATE_KIOSK"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6943
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.user_handle"

    iget v7, p0, mCurrentUser:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6944
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6948
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_60
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Force finishing activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6958
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 6959
    invoke-virtual {p0, v4, v9, v9}, finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 6931
    .end local v3    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_88
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 6929
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_8b
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_9

    .line 6963
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_8f
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v3, 0x0

    .line 6901
    iget-object v2, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_d

    iget-object v2, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_d

    .line 6904
    iput-object v3, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 6908
    :cond_d
    iget-object v2, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6910
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_2b

    .line 6911
    iget-object v2, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_28

    .line 6915
    iget-object v2, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6910
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 6920
    :cond_2b
    iget-object v2, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_39

    iget-object v2, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_39

    .line 6921
    iput-object v3, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 6922
    iput-object v3, p0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 6925
    :cond_39
    invoke-virtual {p0, p1}, removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    return v2
.end method

.method hasVisibleBehindActivity()Z
    .registers 2

    .prologue
    .line 5574
    invoke-virtual {p0}, isAttached()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->hasVisibleBehindActivity()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isAllHidden()Z
    .registers 2

    .prologue
    .line 1880
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, isAllHidden(Z)Z

    move-result v0

    return v0
.end method

.method public isAllHidden(Z)Z
    .registers 7
    .param p1, "isFinishing"    # Z

    .prologue
    .line 1884
    const/4 v3, 0x0

    .line 1885
    .local v3, "visible":Z
    const/4 v0, 0x0

    .line 1886
    .local v0, "hasHidden":Z
    invoke-virtual {p0}, getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1887
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-eqz v4, :cond_1b

    const/4 v0, 0x1

    .line 1888
    :cond_1b
    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v4, :cond_a

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 1889
    const/4 v3, 0x1

    .line 1895
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_27
    if-eqz p1, :cond_34

    if-nez v0, :cond_34

    if-nez v3, :cond_34

    .line 1896
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    .line 1898
    :goto_33
    return v4

    :cond_34
    if-nez v3, :cond_38

    const/4 v4, 0x1

    goto :goto_33

    :cond_38
    const/4 v4, 0x0

    goto :goto_33
.end method

.method final isAttached()Z
    .registers 2

    .prologue
    .line 768
    iget-object v0, p0, mStacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isFixedOrientationDeclared(I)Z
    .registers 4
    .param p1, "requestedOrientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 7831
    if-eq p1, v0, :cond_1b

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1b

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1b

    const/16 v1, 0xc

    if-eq p1, v1, :cond_1b

    if-eqz p1, :cond_1b

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1b

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1b

    const/16 v1, 0xb

    if-ne p1, v1, :cond_1c

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method final isFloatingStack()Z
    .registers 3

    .prologue
    .line 658
    iget v0, p0, mStackType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isForceHideCascade()Z
    .registers 2

    .prologue
    .line 8166
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isForceHideCascade()Z

    move-result v0

    return v0
.end method

.method final isHomeStack()Z
    .registers 2

    .prologue
    .line 649
    iget v0, p0, mStackId:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 619
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 620
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v0}, isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    return-object v1
.end method

.method isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x0

    .line 624
    if-nez p1, :cond_5

    move-object p1, v1

    .line 634
    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_4
    return-object p1

    .line 627
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 628
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_29

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_29

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 630
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v1, p0, :cond_4

    const-string v1, "ActivityManager"

    const-string v2, "Illegal state! task does not point to stack it is in."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_29
    move-object p1, v1

    .line 634
    goto :goto_4
.end method

.method final isMultiWindowStack()Z
    .registers 2

    .prologue
    .line 662
    invoke-virtual {p0}, isFloatingStack()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, isSplitStack()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final isNormalAppStack()Z
    .registers 3

    .prologue
    .line 654
    iget v0, p0, mStackType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method final isOnHomeDisplay()Z
    .registers 2

    .prologue
    .line 713
    invoke-virtual {p0}, isAttached()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method final isSplitStack()Z
    .registers 3

    .prologue
    .line 671
    iget v0, p0, mStackZone:I

    if-eqz v0, :cond_c

    iget v0, p0, mStackZone:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isStackVisibleLocked()Z
    .registers 15

    .prologue
    const/16 v13, 0xf

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1906
    invoke-virtual {p0}, isAttached()Z

    move-result v10

    if-nez v10, :cond_c

    move v8, v9

    .line 1947
    :cond_b
    :goto_b
    return v8

    .line 1910
    :cond_c
    iget-object v10, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1915
    invoke-virtual {p0}, isFloatingStack()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {p0}, isAllHidden()Z

    move-result v10

    if-eqz v10, :cond_22

    move v8, v9

    .line 1916
    goto :goto_b

    .line 1922
    :cond_22
    invoke-virtual {p0}, getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v7

    .line 1923
    .local v7, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v4, 0x0

    .line 1924
    .local v4, "obscuredZone":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1925
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_2d
    if-ltz v2, :cond_b

    .line 1926
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 1927
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1928
    .local v1, "currStack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_59

    .line 1929
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isStackVisible: stack is not exist. id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :cond_56
    :goto_56
    add-int/lit8 v2, v2, -0x1

    goto :goto_2d

    .line 1932
    :cond_59
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isFullscreenVisible()Z

    move-result v3

    .line 1933
    .local v3, "isFullscreen":Z
    invoke-virtual {v5, v9}, Lcom/android/server/am/TaskRecord;->getVisibleObscuredZone(Z)I

    move-result v6

    .line 1934
    .local v6, "taskObscuredZone":I
    if-ne v1, p0, :cond_77

    .line 1935
    if-ne v6, v13, :cond_6b

    .line 1936
    and-int/lit8 v10, v4, 0xf

    if-eqz v10, :cond_b

    move v8, v9

    goto :goto_b

    .line 1937
    :cond_6b
    if-nez v6, :cond_71

    .line 1938
    if-ne v4, v13, :cond_b

    move v8, v9

    goto :goto_b

    .line 1940
    :cond_71
    and-int v10, v4, v6

    if-ne v10, v6, :cond_b

    move v8, v9

    goto :goto_b

    .line 1943
    :cond_77
    if-eqz v3, :cond_56

    .line 1944
    or-int/2addr v4, v6

    goto :goto_56
.end method

.method final isVRStack()Z
    .registers 2

    .prologue
    .line 699
    iget-boolean v0, p0, mVRStack:Z

    return v0
.end method

.method minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    .line 1059
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1062
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1063
    iput-object p1, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1064
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1065
    iget-object v0, p0, mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    .line 1066
    invoke-direct {p0, p1}, completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1067
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 1068
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, setLaunchTime(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1074
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateCascadeHiddenFlag(Z)V

    .line 1077
    return-void
.end method

.method moveHomeStackTaskToTop(I)V
    .registers 7
    .param p1, "homeStackTaskType"    # I

    .prologue
    .line 5771
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 5772
    .local v2, "top":I
    move v1, v2

    .local v1, "taskNdx":I
    :goto_9
    if-ltz v1, :cond_32

    .line 5773
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 5774
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-ne v4, p1, :cond_33

    .line 5777
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5778
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5779
    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 5782
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 5783
    .local v3, "topTask":Lcom/android/server/am/TaskRecord;
    iget-object v4, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V

    .line 5800
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_32
    return-void

    .line 5772
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_9
.end method

.method final moveTaskToBackLocked(I)Z
    .registers 3
    .param p1, "taskId"    # I

    .prologue
    .line 5996
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, moveTaskToBackLocked(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final moveTaskToBackLocked(ILjava/lang/String;)Z
    .registers 33
    .param p1, "taskId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 6001
    invoke-virtual/range {p0 .. p1}, taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v25

    .line 6002
    .local v25, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v25, :cond_26

    .line 6003
    const-string v26, "ActivityManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "moveTaskToBack: bad taskId="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6004
    const/16 v26, 0x0

    .line 6250
    :goto_25
    return v26

    .line 6009
    :cond_26
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v26

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/VirtualScreenManagerService;->moveTaskBackToDisplayIfNeeded(Lcom/android/server/am/TaskRecord;ZZ)Z

    move-result v26

    if-eqz v26, :cond_3f

    .line 6010
    const/16 v26, 0x0

    goto :goto_25

    .line 6015
    :cond_3f
    const-string v26, "ActivityManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "moveTaskToBack: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6016
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 6027
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v26

    if-eqz v26, :cond_d9

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v26, v0

    if-eqz v26, :cond_d9

    .line 6028
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 6029
    .local v12, "next":Lcom/android/server/am/ActivityRecord;
    if-nez v12, :cond_a3

    .line 6030
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 6032
    :cond_a3
    if-eqz v12, :cond_d9

    .line 6034
    const/4 v10, 0x1

    .line 6036
    .local v10, "moveOK":Z
    :try_start_a6
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v26, v0

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_b9} :catch_c0

    move-result v10

    .line 6041
    :goto_ba
    if-nez v10, :cond_d9

    .line 6042
    const/16 v26, 0x0

    goto/16 :goto_25

    .line 6037
    :catch_c0
    move-exception v7

    .line 6038
    .local v7, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 6039
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_ba

    .line 6049
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v10    # "moveOK":Z
    .end local v12    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_d9
    const/16 v17, 0x0

    .line 6054
    .local v17, "prevIsHome":Z
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v26

    if-nez v26, :cond_26f

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v26

    if-eqz v26, :cond_26f

    const/4 v6, 0x1

    .line 6055
    .local v6, "canGoHome":Z
    :goto_e8
    if-eqz v6, :cond_fd

    .line 6056
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v13

    .line 6057
    .local v13, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v13, :cond_272

    .line 6058
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 6064
    .end local v13    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_fd
    :goto_fd
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 6066
    .local v9, "lastIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6067
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6071
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/server/am/TaskRecord;->bHidden:Z

    .line 6072
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveTaskToBackLocked(Lcom/android/server/am/TaskRecord;)V

    .line 6073
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStopped(I)V

    .line 6074
    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    .line 6075
    .local v14, "notTop":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, mDisplayId:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v24

    .line 6076
    .local v24, "topRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v24, :cond_1c1

    .line 6077
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v27, v0

    const-string/jumbo v28, "moveTaskToBack"

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 6078
    if-eqz v14, :cond_1c1

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v26

    if-eqz v26, :cond_1c1

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v26

    if-eqz v26, :cond_1c1

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v26

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c1

    .line 6081
    const-string/jumbo v26, "moveTaskToBack"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v14, v1}, adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 6087
    :cond_1c1
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 6091
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 6092
    .local v15, "numTasks":I
    add-int/lit8 v21, v15, -0x1

    .local v21, "taskNdx":I
    :goto_1d8
    const/16 v26, 0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-lt v0, v1, :cond_1f6

    .line 6093
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/TaskRecord;

    .line 6094
    .local v20, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v26

    if-eqz v26, :cond_276

    .line 6118
    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1f6
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 6119
    .local v5, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_2a3

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v26

    if-nez v26, :cond_2a3

    .line 6120
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_291

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v26

    if-eqz v26, :cond_291

    .line 6121
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x64

    const/16 v28, 0x0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v29

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    .line 6138
    :goto_233
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    .line 6145
    move/from16 v16, v15

    .line 6147
    .local v16, "numTasksHiddenExclude":I
    invoke-virtual/range {p0 .. p0}, isFloatingStack()Z

    move-result v26

    if-eqz v26, :cond_2c5

    .line 6148
    add-int/lit8 v21, v15, -0x1

    :goto_24a
    const/16 v26, 0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-lt v0, v1, :cond_2c5

    .line 6149
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/TaskRecord;

    .line 6150
    .restart local v20    # "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->bHidden:Z

    move/from16 v26, v0

    if-eqz v26, :cond_26c

    add-int/lit8 v16, v16, -0x1

    .line 6148
    :cond_26c
    add-int/lit8 v21, v21, -0x1

    goto :goto_24a

    .line 6054
    .end local v5    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "canGoHome":Z
    .end local v9    # "lastIndex":I
    .end local v14    # "notTop":Lcom/android/server/am/ActivityRecord;
    .end local v15    # "numTasks":I
    .end local v16    # "numTasksHiddenExclude":I
    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    .end local v21    # "taskNdx":I
    .end local v24    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_26f
    const/4 v6, 0x0

    goto/16 :goto_e8

    .line 6060
    .restart local v6    # "canGoHome":Z
    .restart local v13    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_272
    const/16 v17, 0x1

    goto/16 :goto_fd

    .line 6097
    .end local v13    # "nextTask":Lcom/android/server/am/TaskRecord;
    .restart local v9    # "lastIndex":I
    .restart local v14    # "notTop":Lcom/android/server/am/ActivityRecord;
    .restart local v15    # "numTasks":I
    .restart local v20    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v21    # "taskNdx":I
    .restart local v24    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_276
    const/16 v26, 0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_28d

    .line 6100
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v26

    if-eqz v26, :cond_1f6

    .line 6111
    const/16 v26, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 6092
    :cond_28d
    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_1d8

    .line 6124
    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_291
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x66

    const/16 v28, 0x0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v29

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto :goto_233

    .line 6128
    :cond_2a3
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0xb

    const/16 v29, 0x0

    if-eqz v5, :cond_2c0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v26

    :goto_2b3
    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_233

    :cond_2c0
    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v26

    goto :goto_2b3

    .line 6156
    .restart local v16    # "numTasksHiddenExclude":I
    :cond_2c5
    move-object/from16 v0, p0

    iget-object v0, v0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v26, v0

    if-eqz v26, :cond_317

    move-object/from16 v0, p0

    iget-object v0, v0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v20, v0

    .line 6158
    .restart local v20    # "task":Lcom/android/server/am/TaskRecord;
    :goto_2d9
    if-nez v17, :cond_2f7

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_2e3

    if-nez v6, :cond_2f7

    :cond_2e3
    const/16 v26, 0x1

    move/from16 v0, v26

    if-le v15, v0, :cond_2f1

    const/16 v26, 0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-gt v0, v1, :cond_401

    :cond_2f1
    invoke-virtual/range {p0 .. p0}, isOnHomeDisplay()Z

    move-result v26

    if-eqz v26, :cond_401

    .line 6159
    :cond_2f7
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    move/from16 v26, v0

    if-nez v26, :cond_31a

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    move/from16 v26, v0

    if-nez v26, :cond_31a

    .line 6161
    const/16 v26, 0x0

    goto/16 :goto_25

    .line 6156
    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    :cond_317
    const/16 v20, 0x0

    goto :goto_2d9

    .line 6165
    .restart local v20    # "task":Lcom/android/server/am/TaskRecord;
    :cond_31a
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    .line 6166
    .local v18, "root":Lcom/android/server/am/ActivityRecord;
    if-eqz v18, :cond_33e

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v26

    if-nez v26, :cond_33e

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v26

    if-nez v26, :cond_33e

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v26

    if-nez v26, :cond_3a2

    .line 6168
    :cond_33e
    invoke-virtual/range {p0 .. p0}, isFloatingStack()Z

    move-result v26

    if-eqz v26, :cond_395

    .line 6171
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, startPausingLocked(ZZZZ)Z

    .line 6172
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 6175
    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    .line 6176
    .local v23, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v23, :cond_37e

    .line 6177
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v29

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    .line 6185
    :cond_37e
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 6187
    .local v8, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v8}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v26

    if-eqz v26, :cond_395

    .line 6188
    invoke-virtual {v8}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 6191
    .end local v8    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v23    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_395
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 6192
    const/16 v26, 0x1

    goto/16 :goto_25

    .line 6196
    :cond_3a2
    invoke-virtual/range {p0 .. p0}, getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 6197
    .local v19, "size":I
    if-lez v19, :cond_3d7

    .line 6198
    invoke-virtual/range {p0 .. p0}, getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v26

    add-int/lit8 v27, v19, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/TaskRecord;

    .line 6199
    .local v23, "top":Lcom/android/server/am/TaskRecord;
    if-eqz v23, :cond_3d7

    .line 6200
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    .line 6201
    .local v11, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/TaskRecord;->isRecentTask()Z

    move-result v26

    if-eqz v26, :cond_3d7

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v26

    if-eqz v26, :cond_3d7

    .line 6202
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 6203
    const/16 v26, 0x1

    goto/16 :goto_25

    .line 6219
    .end local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v23    # "top":Lcom/android/server/am/TaskRecord;
    :cond_3d7
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v22

    .line 6220
    .local v22, "taskToReturnTo":I
    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 6221
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string/jumbo v28, "moveTaskToBack"

    move-object/from16 v0, p0

    iget v0, v0, mDisplayId:I

    move/from16 v29, v0

    move-object/from16 v0, v26

    move/from16 v1, v22

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;I)Z

    move-result v26

    goto/16 :goto_25

    .line 6226
    .end local v18    # "root":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "size":I
    .end local v22    # "taskToReturnTo":I
    :cond_401
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    .line 6227
    .restart local v18    # "root":Lcom/android/server/am/ActivityRecord;
    if-eqz v18, :cond_412

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v26

    if-eqz v26, :cond_412

    .line 6228
    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 6242
    :cond_412
    if-eqz p2, :cond_421

    const-string/jumbo v26, "moveOppositeTaskToBack_schIdle"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_433

    .line 6244
    :cond_421
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 6245
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 6250
    :cond_433
    const/16 v26, 0x1

    goto/16 :goto_25
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;ILjava/lang/String;)V
    .registers 15
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "flags"    # I
    .param p6, "reason"    # Ljava/lang/String;

    .prologue
    .line 5808
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;ILjava/lang/String;Z)V

    .line 5809
    return-void
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;ILjava/lang/String;Z)V
    .registers 31
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "flags"    # I
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "isDoResume"    # Z

    .prologue
    .line 5815
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 5816
    .local v10, "numTasks":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 5817
    .local v8, "index":I
    if-eqz v10, :cond_1c

    if-gez v8, :cond_30

    .line 5819
    :cond_1c
    if-eqz p2, :cond_22

    .line 5820
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 5981
    :goto_21
    return-void

    .line 5824
    :cond_22
    const/16 v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, updateTransitLocked(ILandroid/os/Bundle;I)V

    goto :goto_21

    .line 5832
    :cond_30
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v10, v0, :cond_e8

    invoke-virtual/range {p0 .. p0}, isFloatingStack()Z

    move-result v18

    if-eqz v18, :cond_e8

    .line 5833
    add-int/lit8 v15, v10, -0x1

    .local v15, "taskNdx":I
    :goto_3e
    if-ltz v15, :cond_e8

    .line 5835
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/TaskRecord;

    .line 5836
    .local v14, "targetTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p1

    if-ne v14, v0, :cond_55

    .line 5833
    :cond_52
    :goto_52
    add-int/lit8 v15, v15, -0x1

    goto :goto_3e

    .line 5839
    :cond_55
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    .line 5840
    .local v17, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v17, :cond_52

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v18

    if-eqz v18, :cond_52

    .line 5841
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mDisplayId:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 5842
    .local v9, "normalStack":Lcom/android/server/am/ActivityStack;
    if-eqz v9, :cond_52

    .line 5844
    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .local v4, "activityNdx":I
    :goto_85
    if-ltz v4, :cond_d1

    .line 5845
    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 5846
    .local v5, "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v18

    if-nez v18, :cond_ce

    .line 5847
    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 5848
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v19, v0

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-virtual/range {v18 .. v22}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    .line 5849
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 5844
    :cond_ce
    add-int/lit8 v4, v4, -0x1

    goto :goto_85

    .line 5852
    .end local v5    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_d1
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    iget v0, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v19, v0

    iget v0, v9, mStackId:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    goto/16 :goto_52

    .line 5859
    .end local v4    # "activityNdx":I
    .end local v9    # "normalStack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v15    # "taskNdx":I
    .end local v17    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_e8
    if-eqz p4, :cond_10f

    .line 5861
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v7, v18, -0x1

    .local v7, "i":I
    :goto_f6
    if-ltz v7, :cond_10f

    .line 5862
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5861
    add-int/lit8 v7, v7, -0x1

    goto :goto_f6

    .line 5868
    .end local v7    # "i":I
    :cond_10f
    and-int/lit8 v18, p5, 0x1

    if-eqz v18, :cond_209

    .line 5871
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Z)V

    .line 5884
    :goto_122
    const/4 v6, 0x0

    .line 5886
    .local v6, "forceUpdate":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v18, v0

    if-eqz v18, :cond_140

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, isFloatingStack()Z

    move-result v18

    if-eqz v18, :cond_140

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->bHidden:Z

    move/from16 v18, v0

    if-eqz v18, :cond_140

    .line 5887
    const/4 v6, 0x1

    .line 5893
    :cond_140
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/TaskRecord;->bHidden:Z

    .line 5899
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 5903
    .local v11, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v0, v11, v6, v1}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    .line 5909
    if-eqz p2, :cond_234

    .line 5910
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v21

    invoke-virtual/range {v18 .. v21}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    .line 5912
    if-eqz v11, :cond_17f

    .line 5913
    move-object/from16 v0, p0

    iget-object v0, v0, mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5915
    :cond_17f
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 5935
    :goto_182
    invoke-virtual/range {p0 .. p0}, topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    .line 5936
    .local v16, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v16, :cond_1d3

    invoke-virtual/range {p0 .. p0}, isFloatingStack()Z

    move-result v18

    if-eqz v18, :cond_1d3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_1d3

    .line 5937
    new-instance v13, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5938
    .local v13, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v18, 0x4

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 5939
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5954
    .end local v13    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1d3
    if-eqz p7, :cond_1de

    .line 5955
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 5976
    :cond_1de
    const/16 v18, 0x7532

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_21

    .line 5876
    .end local v6    # "forceUpdate":Z
    .end local v11    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_209
    const/4 v12, 0x0

    .line 5877
    .local v12, "showForAllUsers":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 5878
    .restart local v5    # "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_223

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    if-eqz v18, :cond_223

    .line 5879
    const/4 v12, 0x1

    .line 5881
    :cond_223
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v12}, insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_122

    .line 5922
    .end local v5    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "showForAllUsers":Z
    .restart local v6    # "forceUpdate":Z
    .restart local v11    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_234
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/am/VirtualScreenManagerService;->allowAppTransition(Lcom/android/server/am/ActivityRecord;)Z

    move-result v18

    if-nez v18, :cond_24f

    .line 5923
    const/16 v18, 0x12c

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, updateTransitLocked(ILandroid/os/Bundle;I)V

    goto/16 :goto_182

    .line 5928
    :cond_24f
    const/16 v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, updateTransitLocked(ILandroid/os/Bundle;I)V

    goto/16 :goto_182
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .registers 13
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    .line 5805
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;ILjava/lang/String;)V

    .line 5806
    return-void
.end method

.method final moveToFront(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 719
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 720
    return-void
.end method

.method final moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .registers 9
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v3, 0x1

    .line 725
    invoke-virtual {p0}, isAttached()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 726
    invoke-virtual {p0}, isHomeStack()Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_56

    iget-object v4, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v4

    if-eqz v4, :cond_56

    :cond_1d
    move v0, v3

    .line 729
    .local v0, "homeStack":Z
    :goto_1e
    const/4 v1, 0x0

    .line 730
    .local v1, "lastFocusStack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_3b

    .line 733
    iget-object v4, p0, mStacks:Ljava/util/ArrayList;

    iget-object v5, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "lastFocusStack":Lcom/android/server/am/ActivityStack;
    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 734
    .restart local v1    # "lastFocusStack":Lcom/android/server/am/ActivityStack;
    iget-object v4, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 735
    iget-object v4, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    :cond_3b
    invoke-virtual {p0}, isOnHomeDisplay()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 742
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 748
    :cond_46
    invoke-virtual {p0}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 749
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_55

    .line 752
    if-nez p2, :cond_58

    .line 753
    iget-object v3, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 765
    .end local v0    # "homeStack":Z
    .end local v1    # "lastFocusStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_55
    :goto_55
    return-void

    .line 726
    :cond_56
    const/4 v0, 0x0

    goto :goto_1e

    .line 754
    .restart local v0    # "homeStack":Z
    .restart local v1    # "lastFocusStack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_58
    if-eq v2, p2, :cond_66

    iget-object v3, p2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_55

    iget-object v3, p2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, isHomeStack()Z

    move-result v3

    if-nez v3, :cond_55

    .line 755
    :cond_66
    iget-object v3, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v4, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    goto :goto_55
.end method

.method final navigateUpToLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .registers 47
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 5084
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v41, v0

    .line 5085
    .local v41, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    .line 5086
    .local v24, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v40

    .line 5087
    .local v40, "start":I
    move-object/from16 v0, p0

    iget-object v2, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    if-gez v40, :cond_25

    .line 5088
    :cond_22
    const/16 v30, 0x0

    .line 5160
    :goto_24
    return v30

    .line 5090
    :cond_25
    add-int/lit8 v29, v40, -0x1

    .line 5091
    .local v29, "finishTo":I
    if-gez v29, :cond_91

    const/16 v33, 0x0

    .line 5092
    .local v33, "parent":Lcom/android/server/am/ActivityRecord;
    :goto_2b
    const/16 v30, 0x0

    .line 5093
    .local v30, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v26

    .line 5094
    .local v26, "dest":Landroid/content/ComponentName;
    if-lez v40, :cond_69

    if-eqz v26, :cond_69

    .line 5095
    move/from16 v31, v29

    .local v31, "i":I
    :goto_37
    if-ltz v31, :cond_69

    .line 5096
    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/am/ActivityRecord;

    .line 5097
    .local v37, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 5099
    move/from16 v29, v31

    .line 5100
    move-object/from16 v33, v37

    .line 5101
    const/16 v30, 0x1

    .line 5107
    .end local v31    # "i":I
    .end local v37    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_69
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v25, v0

    .line 5108
    .local v25, "controller":Landroid/app/IActivityController;
    if-eqz v25, :cond_b2

    .line 5109
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v32

    .line 5110
    .local v32, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v32, :cond_b2

    .line 5112
    const/16 v39, 0x1

    .line 5114
    .local v39, "resumeOK":Z
    :try_start_82
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8b} :catch_a1

    move-result v39

    .line 5120
    :goto_8c
    if-nez v39, :cond_b2

    .line 5121
    const/16 v30, 0x0

    goto :goto_24

    .line 5091
    .end local v25    # "controller":Landroid/app/IActivityController;
    .end local v26    # "dest":Landroid/content/ComponentName;
    .end local v30    # "foundParentInTask":Z
    .end local v32    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v33    # "parent":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "resumeOK":Z
    :cond_91
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v33, v2

    goto :goto_2b

    .line 5095
    .restart local v26    # "dest":Landroid/content/ComponentName;
    .restart local v30    # "foundParentInTask":Z
    .restart local v31    # "i":I
    .restart local v33    # "parent":Lcom/android/server/am/ActivityRecord;
    .restart local v37    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_9e
    add-int/lit8 v31, v31, -0x1

    goto :goto_37

    .line 5115
    .end local v31    # "i":I
    .end local v37    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "controller":Landroid/app/IActivityController;
    .restart local v32    # "next":Lcom/android/server/am/ActivityRecord;
    .restart local v39    # "resumeOK":Z
    :catch_a1
    move-exception v28

    .line 5116
    .local v28, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 5117
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_8c

    .line 5125
    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v32    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "resumeOK":Z
    :cond_b2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    .line 5126
    .local v34, "origId":J
    move/from16 v31, v40

    .restart local v31    # "i":I
    :goto_b8
    move/from16 v0, v31

    move/from16 v1, v29

    if-le v0, v1, :cond_e0

    .line 5127
    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/am/ActivityRecord;

    .line 5128
    .restart local v37    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v6, "navigate-up"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5130
    const/16 p3, 0x0

    .line 5131
    const/16 p4, 0x0

    .line 5126
    add-int/lit8 v31, v31, -0x1

    goto :goto_b8

    .line 5134
    .end local v37    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_e0
    if-eqz v33, :cond_118

    if-eqz v30, :cond_118

    .line 5135
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    move/from16 v36, v0

    .line 5136
    .local v36, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v27

    .line 5137
    .local v27, "destIntentFlags":I
    const/4 v2, 0x3

    move/from16 v0, v36

    if-eq v0, v2, :cond_105

    const/4 v2, 0x2

    move/from16 v0, v36

    if-eq v0, v2, :cond_105

    const/4 v2, 0x1

    move/from16 v0, v36

    if-eq v0, v2, :cond_105

    const/high16 v2, 0x4000000

    and-int v2, v2, v27

    if-eqz v2, :cond_11d

    .line 5141
    :cond_105
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 5159
    .end local v27    # "destIntentFlags":I
    .end local v36    # "parentLaunchMode":I
    :cond_118
    :goto_118
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_24

    .line 5145
    .restart local v27    # "destIntentFlags":I
    .restart local v36    # "parentLaunchMode":I
    :cond_11d
    :try_start_11d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 5147
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v33

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object/from16 v0, v33

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move-object/from16 v0, v33

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    const/4 v15, -0x1

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_164
    .catch Landroid/os/RemoteException; {:try_start_11d .. :try_end_164} :catch_17e

    move-result v38

    .line 5151
    .local v38, "res":I
    if-nez v38, :cond_17b

    const/16 v30, 0x1

    .line 5155
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v38    # "res":I
    :goto_169
    move-object/from16 v0, v33

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v11, "navigate-top"

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v7 .. v12}, requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_118

    .line 5151
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v38    # "res":I
    :cond_17b
    const/16 v30, 0x0

    goto :goto_169

    .line 5152
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v38    # "res":I
    :catch_17e
    move-exception v28

    .line 5153
    .restart local v28    # "e":Landroid/os/RemoteException;
    const/16 v30, 0x0

    goto :goto_169
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x0

    .line 2515
    iget-object v2, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setDrawn()V

    .line 2516
    if-eqz p1, :cond_18

    iget-object v2, p0, mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2521
    :cond_18
    iget-object v0, p0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2522
    .local v0, "waitingActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    iput-object v2, p0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2523
    iget-object v2, p0, mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2524
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2526
    if-eqz v0, :cond_48

    .line 2527
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    .line 2528
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_48

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_48

    .line 2530
    :try_start_3c
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz p1, :cond_45

    const/4 v1, 0x1

    :cond_45
    invoke-interface {v2, v3, v1}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_48} :catch_49

    .line 2537
    .end local v0    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :cond_48
    :goto_48
    return-void

    .line 2532
    .restart local v0    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :catch_49
    move-exception v1

    goto :goto_48
.end method

.method notifyMultiWindowFocusChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "notifyReason"    # I
    .param p3, "focus"    # Z

    .prologue
    .line 7456
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, notifyMultiWindowFocusChangedLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    .line 7457
    return-void
.end method

.method notifyMultiWindowFocusChangedLocked(Lcom/android/server/am/ActivityRecord;IZZ)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "notifyReason"    # I
    .param p3, "focus"    # Z
    .param p4, "keepInputMethod"    # Z

    .prologue
    .line 7460
    if-nez p1, :cond_3

    .line 7489
    :cond_2
    :goto_2
    return-void

    .line 7463
    :cond_3
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_d

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_12

    .line 7464
    :cond_d
    or-int/lit8 p2, p2, 0x2

    .line 7465
    iput p2, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowFocus:I

    goto :goto_2

    .line 7468
    :cond_12
    const/4 v3, 0x0

    iput v3, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowFocus:I

    .line 7469
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_49

    .line 7470
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7471
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_23
    if-ltz v2, :cond_2

    .line 7472
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 7473
    .local v1, "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_46

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_46

    .line 7475
    :try_start_39
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, p2, p3, p4}, Landroid/app/IApplicationThread;->scheduleMultiWindowFocusChanged(Landroid/os/IBinder;IZZ)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_42} :catch_55

    .line 7478
    :goto_42
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v3, :cond_2

    .line 7471
    :cond_46
    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    .line 7485
    .end local v0    # "N":I
    .end local v1    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "i":I
    :cond_49
    :try_start_49
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, p2, p3, p4}, Landroid/app/IApplicationThread;->scheduleMultiWindowFocusChanged(Landroid/os/IBinder;IZZ)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_52} :catch_53

    goto :goto_2

    .line 7486
    :catch_53
    move-exception v3

    goto :goto_2

    .line 7476
    .restart local v0    # "N":I
    .restart local v1    # "cr":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "i":I
    :catch_55
    move-exception v3

    goto :goto_42
.end method

.method notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .registers 26
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "notifyReason"    # I
    .param p3, "allInTask"    # Z

    .prologue
    .line 7355
    if-nez p1, :cond_3

    .line 7453
    :goto_2
    return-void

    .line 7358
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    if-nez v18, :cond_22

    .line 7359
    :cond_19
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowStyle:Z

    goto :goto_2

    .line 7363
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/am/MultiWindowPolicy;->applyMetaDataMultiWindowOptions(Landroid/content/pm/ActivityInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 7365
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    .line 7366
    .local v12, "minimizedActivity":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/high16 v19, 0x20000

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    .line 7368
    .local v11, "minimizableFromFull":Z
    if-eqz v12, :cond_67

    if-eqz v11, :cond_a6

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mMinimizeAllPenWindowRequested:Z

    move/from16 v18, v0

    if-nez v18, :cond_a6

    :cond_67
    const/16 v18, 0x4

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_a6

    .line 7370
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 7372
    .local v16, "origId":J
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    .line 7375
    invoke-virtual/range {p0 .. p1}, screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 7376
    .local v13, "tmp":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_a3

    .line 7377
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 7379
    :cond_a3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7381
    .end local v13    # "tmp":Landroid/graphics/Bitmap;
    .end local v16    # "origId":J
    :cond_a6
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowStyle:Z

    .line 7383
    packed-switch p2, :pswitch_data_27c

    .line 7390
    :cond_b1
    :pswitch_b1
    if-eqz p3, :cond_158

    .line 7391
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 7392
    .local v6, "N":I
    add-int/lit8 v9, v6, -0x1

    .local v9, "i":I
    :goto_c5
    if-ltz v9, :cond_115

    .line 7393
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 7394
    .local v7, "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10a

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10a

    .line 7396
    :try_start_ed
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v19, v0

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    :try_end_10a
    .catch Landroid/os/RemoteException; {:try_start_ed .. :try_end_10a} :catch_278

    .line 7392
    :cond_10a
    :goto_10a
    add-int/lit8 v9, v9, -0x1

    goto :goto_c5

    .line 7385
    .end local v6    # "N":I
    .end local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "i":I
    :pswitch_10d
    invoke-virtual/range {p0 .. p0}, isFloatingStack()Z

    move-result v18

    if-nez v18, :cond_115

    if-eqz v11, :cond_155

    .line 7411
    :cond_115
    :goto_115
    if-eqz v11, :cond_17e

    .line 7413
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_127

    const/16 v18, 0x4

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_142

    .line 7415
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/am/MultiWindowPolicy;->notifyMultiWindowStyleChangedLocked(Landroid/content/ComponentName;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 7418
    :cond_142
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    goto/16 :goto_2

    .line 7387
    :cond_155
    :pswitch_155
    if-eqz v12, :cond_b1

    goto :goto_115

    .line 7403
    :cond_158
    :try_start_158
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    :try_end_17b
    .catch Landroid/os/RemoteException; {:try_start_158 .. :try_end_17b} :catch_17c

    goto :goto_115

    .line 7404
    :catch_17c
    move-exception v18

    goto :goto_115

    .line 7422
    :cond_17e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/16 v19, 0x400

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    const/16 v20, 0x400

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_217

    const/4 v8, 0x1

    .line 7429
    .local v8, "displayChanged":Z
    :goto_19d
    if-eqz v8, :cond_21f

    .line 7430
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNull()Z

    move-result v10

    .line 7431
    .local v10, "isFirstLaunch":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 7432
    .local v14, "orgId":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_1da

    .line 7433
    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v18, v0

    sget-object v20, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_219

    if-nez v10, :cond_219

    const/16 v18, 0x1

    :goto_1cf
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 7436
    :cond_1da
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 7437
    .restart local v6    # "N":I
    add-int/lit8 v9, v6, -0x1

    .restart local v9    # "i":I
    :goto_1ec
    if-ltz v9, :cond_21c

    .line 7438
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 7439
    .restart local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p1

    if-eq v0, v7, :cond_214

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v18, v0

    if-nez v18, :cond_214

    .line 7440
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v7, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 7437
    :cond_214
    add-int/lit8 v9, v9, -0x1

    goto :goto_1ec

    .line 7422
    .end local v6    # "N":I
    .end local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "displayChanged":Z
    .end local v9    # "i":I
    .end local v10    # "isFirstLaunch":Z
    .end local v14    # "orgId":J
    :cond_217
    const/4 v8, 0x0

    goto :goto_19d

    .line 7433
    .restart local v8    # "displayChanged":Z
    .restart local v10    # "isFirstLaunch":Z
    .restart local v14    # "orgId":J
    :cond_219
    const/16 v18, 0x0

    goto :goto_1cf

    .line 7443
    .restart local v6    # "N":I
    .restart local v9    # "i":I
    :cond_21c
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7445
    .end local v6    # "N":I
    .end local v9    # "i":I
    .end local v10    # "isFirstLaunch":Z
    .end local v14    # "orgId":J
    :cond_21f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 7446
    .restart local v6    # "N":I
    add-int/lit8 v9, v6, -0x1

    .restart local v9    # "i":I
    :goto_231
    if-ltz v9, :cond_265

    .line 7447
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 7448
    .restart local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_262

    .line 7449
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 7446
    :cond_262
    add-int/lit8 v9, v9, -0x1

    goto :goto_231

    .line 7452
    .end local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    :cond_265
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    goto/16 :goto_2

    .line 7397
    .end local v8    # "displayChanged":Z
    .restart local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    :catch_278
    move-exception v18

    goto/16 :goto_10a

    .line 7383
    nop

    :pswitch_data_27c
    .packed-switch 0x2
        :pswitch_155
        :pswitch_b1
        :pswitch_10d
    .end packed-switch
.end method

.method numActivities()I
    .registers 4

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "count":I
    iget-object v2, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_9
    if-ltz v1, :cond_1d

    .line 459
    iget-object v2, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 458
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 461
    :cond_1d
    return v0
.end method

.method numTasks()I
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 501
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method onLockTaskPackagesUpdatedLocked()V
    .registers 3

    .prologue
    .line 7977
    iget-object v1, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 7978
    iget-object v1, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    .line 7977
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 7980
    :cond_18
    return-void
.end method

.method onNotifyMinimizeMultiWindow(Lcom/android/server/am/ActivityRecord;)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v5, 0x1

    .line 7325
    if-nez p1, :cond_4

    .line 7352
    :cond_3
    :goto_3
    return-void

    .line 7329
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_11

    .line 7330
    :cond_e
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowStyle:Z

    goto :goto_3

    .line 7334
    :cond_11
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v0, :cond_36

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 7337
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "minimize-finish"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_3

    .line 7341
    :cond_36
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 7342
    .local v6, "N":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_40
    if-ltz v8, :cond_3

    .line 7343
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 7344
    .local v7, "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_62

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_62

    .line 7347
    :try_start_56
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_62} :catch_65

    .line 7342
    :cond_62
    :goto_62
    add-int/lit8 v8, v8, -0x1

    goto :goto_40

    .line 7348
    :catch_65
    move-exception v0

    goto :goto_62
.end method

.method postProcessAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V
    .registers 13
    .param p1, "movedTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p3, "toTop"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 7743
    invoke-virtual {p0, p1, p2}, updatePausingActivitiesAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    .line 7746
    iget-object v4, p0, mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "index":I
    :goto_d
    if-ltz v0, :cond_2a

    .line 7747
    iget-object v4, p0, mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 7748
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v4, v5, :cond_27

    .line 7749
    iget-object v4, p0, mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7750
    invoke-virtual {p2, v1}, updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 7746
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 7754
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2a
    if-eqz p3, :cond_92

    .line 7755
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 7756
    .local v3, "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_85

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_85

    .line 7757
    iget-object v2, p2, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 7758
    .local v2, "resumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_48

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_48

    if-eq v2, v3, :cond_48

    .line 7763
    invoke-virtual {p2, v7, v7, v7, v7}, startPausingLocked(ZZZZ)Z

    .line 7765
    :cond_48
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-ne p2, v4, :cond_85

    .line 7766
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->SHIP_BUILD:Z

    if-nez v4, :cond_83

    .line 7767
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "postProcessAfterMovingTaskLocked: Setting mResumedActivity of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, mStackId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oldStack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mStackId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7769
    :cond_83
    iput-object v3, p2, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 7774
    .end local v2    # "resumed":Lcom/android/server/am/ActivityRecord;
    :cond_85
    iget-object v4, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getDisplayId()I

    move-result v4

    if-lez v4, :cond_92

    .line 7775
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v7, v8, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZZ)Z

    .line 7789
    .end local v3    # "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    :cond_92
    return-void
.end method

.method prepareDisplayTransitions(IZILcom/android/server/am/ActivityRecord;)V
    .registers 24
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z
    .param p3, "targetDisplayId"    # I
    .param p4, "targetActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 7988
    const/16 v17, 0x2

    move/from16 v0, p3

    move/from16 v1, v17

    if-eq v0, v1, :cond_e0

    .line 7990
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUniversalTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7991
    .local v4, "N":I
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v8

    .line 7993
    .local v8, "currObscuredScreenZone":I
    const/4 v13, 0x0

    .line 7995
    .local v13, "isObscuredFullScreenZone":Z
    const/4 v10, 0x0

    .line 7996
    .local v10, "enterTransition":Z
    packed-switch p1, :pswitch_data_148

    .line 8005
    :goto_21
    :pswitch_21
    add-int/lit8 v11, v4, -0x1

    .local v11, "i":I
    :goto_23
    if-ltz v11, :cond_db

    .line 8006
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUniversalTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskRecord;

    .line 8007
    .local v16, "tr":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 8008
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v6, v17, -0x1

    .local v6, "activityNdx":I
    :goto_43
    if-ltz v6, :cond_dc

    .line 8009
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 8010
    .local v14, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v17

    if-eqz v17, :cond_6d

    iget-boolean v0, v14, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v17, v0

    if-nez v17, :cond_6d

    move-object/from16 v0, p4

    if-eq v0, v14, :cond_6d

    iget-boolean v0, v14, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move/from16 v17, v0

    if-nez v17, :cond_72

    .line 8008
    :cond_6d
    :goto_6d
    add-int/lit8 v6, v6, -0x1

    goto :goto_43

    .line 8000
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "activityNdx":I
    .end local v11    # "i":I
    .end local v14    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "tr":Lcom/android/server/am/TaskRecord;
    :pswitch_70
    const/4 v10, 0x1

    goto :goto_21

    .line 8013
    .restart local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v6    # "activityNdx":I
    .restart local v11    # "i":I
    .restart local v14    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_72
    if-nez v13, :cond_b0

    .line 8014
    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v17

    or-int v8, v8, v17

    .line 8015
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v8, v0, :cond_6d

    .line 8016
    const/4 v8, 0x0

    .line 8017
    const/4 v13, 0x1

    .line 8019
    if-eqz v10, :cond_6d

    if-eqz p4, :cond_6d

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6d

    .line 8020
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto :goto_6d

    .line 8025
    :cond_b0
    iget-boolean v0, v14, Lcom/android/server/am/ActivityRecord;->visible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_cb

    .line 8026
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    .line 8028
    :cond_cb
    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v17

    or-int v8, v8, v17

    .line 8029
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v8, v0, :cond_6d

    .line 8054
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "activityNdx":I
    .end local v8    # "currObscuredScreenZone":I
    .end local v10    # "enterTransition":Z
    .end local v13    # "isObscuredFullScreenZone":Z
    .end local v14    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_db
    return-void

    .line 8005
    .restart local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v6    # "activityNdx":I
    .restart local v8    # "currObscuredScreenZone":I
    .restart local v10    # "enterTransition":Z
    .restart local v13    # "isObscuredFullScreenZone":Z
    .restart local v16    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_dc
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_23

    .line 8038
    .end local v4    # "N":I
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "activityNdx":I
    .end local v8    # "currObscuredScreenZone":I
    .end local v10    # "enterTransition":Z
    .end local v11    # "i":I
    .end local v13    # "isObscuredFullScreenZone":Z
    .end local v16    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_e0
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUniversalTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8039
    .restart local v4    # "N":I
    const/4 v7, 0x0

    .line 8041
    .local v7, "currDisplayObscureZone":I
    add-int/lit8 v11, v4, -0x1

    .restart local v11    # "i":I
    :goto_f3
    if-ltz v11, :cond_db

    .line 8042
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUniversalTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskRecord;

    .line 8043
    .restart local v16    # "tr":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->getObscuredScreenIds(Lcom/android/server/am/ActivityRecord;)Ljava/util/ArrayList;

    move-result-object v15

    .line 8044
    .local v15, "taskDisplayIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_115
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_144

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 8045
    .local v9, "displayId":I
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->convertScreenZoneToDisplayId(I)I

    move-result v17

    or-int v7, v7, v17

    .line 8046
    move/from16 v0, p3

    if-eq v9, v0, :cond_13e

    .line 8047
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    .line 8049
    :cond_13e
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v7, v0, :cond_115

    .line 8041
    .end local v9    # "displayId":I
    :cond_144
    add-int/lit8 v11, v11, -0x1

    goto :goto_f3

    .line 7996
    nop

    :pswitch_data_148
    .packed-switch 0x6
        :pswitch_70
        :pswitch_21
        :pswitch_70
        :pswitch_21
        :pswitch_70
    .end packed-switch
.end method

.method prepareTaskToFrontTransition(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 2175
    if-eqz p2, :cond_27

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_27

    .line 2177
    iget-object v1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, getDisplayId()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    .line 2179
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2180
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_23

    .line 2181
    iget-object v1, p0, mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2188
    :cond_23
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2192
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_26
    return-void

    .line 2190
    :cond_27
    const/16 v1, 0xa

    invoke-virtual {p0, v1, p3, p4}, updateTransitLocked(ILandroid/os/Bundle;I)V

    goto :goto_26
.end method

.method releaseBackgroundResources(Lcom/android/server/am/ActivityRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/16 v4, 0x6b

    .line 5539
    invoke-virtual {p0}, hasVisibleBehindActivity()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 5541
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne p1, v0, :cond_18

    .line 5560
    :cond_17
    :goto_17
    return-void

    .line 5549
    :cond_18
    if-eqz p1, :cond_35

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_35

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_35

    .line 5551
    :try_start_24
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1}, Landroid/app/IApplicationThread;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2d} :catch_58

    .line 5554
    :goto_2d
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_17

    .line 5556
    :cond_35
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseBackgroundResources: activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " no longer running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5557
    invoke-virtual {p0}, backgroundResourcesReleased()V

    goto :goto_17

    .line 5552
    :catch_58
    move-exception v0

    goto :goto_2d
.end method

.method final releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I
    .registers 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v9, 0x1

    .line 5376
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v8

    div-int/lit8 v4, v8, 0x4

    .line 5377
    .local v4, "maxTasks":I
    if-ge v4, v9, :cond_a

    .line 5378
    const/4 v4, 0x1

    .line 5380
    :cond_a
    const/4 v5, 0x0

    .line 5381
    .local v5, "numReleased":I
    const/4 v7, 0x0

    .local v7, "taskNdx":I
    :goto_c
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_61

    if-lez v4, :cond_61

    .line 5382
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 5383
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    .line 5381
    :cond_24
    :goto_24
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 5387
    :cond_27
    const/4 v3, 0x0

    .line 5388
    .local v3, "curNum":I
    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5389
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v0, 0x0

    .local v0, "actNdx":I
    :goto_2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_51

    .line 5390
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 5391
    .local v2, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v8, p1, :cond_4e

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 5395
    invoke-virtual {p0, v2, v9, p3}, destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 5396
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v2, :cond_4c

    .line 5398
    add-int/lit8 v0, v0, -0x1

    .line 5400
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    .line 5389
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 5403
    .end local v2    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_51
    if-lez v3, :cond_24

    .line 5404
    add-int/2addr v5, v3

    .line 5405
    add-int/lit8 v4, v4, -0x1

    .line 5406
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v6, :cond_24

    .line 5408
    add-int/lit8 v7, v7, -0x1

    goto :goto_24

    .line 5414
    .end local v0    # "actNdx":I
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "curNum":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_61
    return v5
.end method

.method removeCoupledTask(Lcom/android/server/am/TaskRecord;)V
    .registers 8
    .param p1, "finishingTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v5, 0x0

    .line 4856
    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 4857
    sget-boolean v2, Lcom/android/server/wm/DualScreenTransition;->DEBUG:Z

    if-eqz v2, :cond_26

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeCoupledTask() finishingTask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4858
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isFinishWithCoupledTask()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 4860
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    if-eqz v2, :cond_5a

    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/RecentTasks;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 4864
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_6b

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 4867
    .local v0, "childCoupledTask":Lcom/android/server/am/TaskRecord;
    :goto_50
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, v0}, Lcom/android/server/am/RecentTasks;->remove(Ljava/lang/Object;)Z

    .line 4868
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 4870
    .end local v0    # "childCoupledTask":Lcom/android/server/am/TaskRecord;
    :cond_5a
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 4871
    .local v1, "coupledTask":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_67

    .line 4873
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, arrangeTaskToReturnToForTopTask(Lcom/android/server/am/TaskRecord;)V

    .line 4875
    :cond_67
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->removeTaskActivitiesLocked()V

    .line 4893
    .end local v1    # "coupledTask":Lcom/android/server/am/TaskRecord;
    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    move-object v0, p1

    .line 4864
    goto :goto_50

    .line 4877
    :cond_6d
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getParentCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_98

    .line 4878
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/am/TaskRecord;->setChildCoupledTask(Lcom/android/server/am/TaskRecord;)V

    .line 4879
    invoke-virtual {p1, v5}, Lcom/android/server/am/TaskRecord;->setParentCoupledTask(Lcom/android/server/am/TaskRecord;)V

    .line 4886
    :cond_7d
    :goto_7d
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    if-eqz v2, :cond_6a

    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, p1}, Lcom/android/server/am/RecentTasks;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 4888
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, p1}, Lcom/android/server/am/RecentTasks;->remove(Ljava/lang/Object;)Z

    .line 4889
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    goto :goto_6a

    .line 4881
    :cond_98
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_7d

    .line 4882
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/am/TaskRecord;->setParentCoupledTask(Lcom/android/server/am/TaskRecord;)V

    .line 4883
    invoke-virtual {p1, v5}, Lcom/android/server/am/TaskRecord;->setChildCoupledTask(Lcom/android/server/am/TaskRecord;)V

    goto :goto_7d
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 5605
    iget-object v8, p0, mLRUActivities:Ljava/util/ArrayList;

    const-string/jumbo v9, "mLRUActivities"

    invoke-direct {p0, v8, p1, v9}, removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 5606
    iget-object v8, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string/jumbo v9, "mStoppingActivities"

    invoke-direct {p0, v8, p1, v9}, removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 5608
    iget-object v8, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string/jumbo v9, "mGoingToSleepActivities"

    invoke-direct {p0, v8, p1, v9}, removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 5610
    iget-object v8, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string/jumbo v9, "mWaitingVisibleActivities"

    invoke-direct {p0, v8, p1, v9}, removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 5612
    iget-object v8, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string/jumbo v9, "mFinishingActivities"

    invoke-direct {p0, v8, p1, v9}, removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 5615
    const/4 v2, 0x0

    .line 5618
    .local v2, "hasVisibleActivities":Z
    const/4 v6, 0x0

    .line 5622
    .local v6, "skipClearFocusActivity":Z
    invoke-virtual {p0}, numActivities()I

    move-result v3

    .line 5625
    .local v3, "i":I
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .local v7, "taskNdx":I
    :goto_3e
    if-ltz v7, :cond_14f

    .line 5626
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5627
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "activityNdx":I
    :goto_50
    if-ltz v1, :cond_14b

    .line 5628
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 5629
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v3, -0x1

    .line 5632
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v8, p1, :cond_103

    .line 5633
    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v8, :cond_63

    .line 5634
    const/4 v2, 0x1

    .line 5637
    :cond_63
    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v8, :cond_6b

    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v8, :cond_6f

    :cond_6b
    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_107

    .line 5640
    :cond_6f
    const/4 v5, 0x1

    .line 5653
    .local v5, "remove":Z
    :goto_70
    if-eqz v5, :cond_131

    .line 5660
    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v8, :cond_f7

    .line 5661
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Force removing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": app died, no saved state"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5664
    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v8, :cond_a3

    .line 5665
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v8

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/am/VirtualScreenManagerService;->moveTaskBackToDisplayIfNeeded(Lcom/android/server/am/TaskRecord;ZZ)Z

    .line 5669
    :cond_a3
    const/16 v8, 0x7531

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v11, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, v4, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "proc died without state saved"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5673
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_f7

    .line 5674
    iget-object v8, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 5677
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 5678
    const-string v8, "appDied"

    invoke-direct {p0, v4, v8}, adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 5679
    const/4 v6, 0x1

    .line 5707
    :cond_f7
    :goto_f7
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p0, v4, v8, v9, v6}, cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZ)V

    .line 5709
    if-eqz v5, :cond_103

    .line 5710
    const-string v8, "appDied"

    invoke-direct {p0, v4, v8}, removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 5627
    .end local v5    # "remove":Z
    :cond_103
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_50

    .line 5641
    :cond_107
    iget v8, v4, Lcom/android/server/am/ActivityRecord;->launchCount:I

    const/4 v9, 0x2

    if-le v8, v9, :cond_11d

    iget-wide v8, v4, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    sub-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-lez v8, :cond_11d

    .line 5645
    const/4 v5, 0x1

    .restart local v5    # "remove":Z
    goto/16 :goto_70

    .line 5647
    .end local v5    # "remove":Z
    :cond_11d
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/VirtualScreenManagerService;->isVirtualScreen(I)Z

    move-result v8

    if-eqz v8, :cond_12e

    .line 5648
    const/4 v5, 0x1

    .restart local v5    # "remove":Z
    goto/16 :goto_70

    .line 5651
    .end local v5    # "remove":Z
    :cond_12e
    const/4 v5, 0x0

    .restart local v5    # "remove":Z
    goto/16 :goto_70

    .line 5689
    :cond_131
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5690
    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 5691
    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v8, :cond_13e

    .line 5694
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 5698
    :cond_13e
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_f7

    .line 5699
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    goto :goto_f7

    .line 5625
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "remove":Z
    :cond_14b
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_3e

    .line 5716
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_14f
    return v2
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 7608
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)V

    .line 7609
    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "notMoving"    # Z

    .prologue
    const/4 v4, 0x0

    .line 7620
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v4

    invoke-virtual/range {v0 .. v6}, removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZZZZ)V

    .line 7621
    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZZ)V
    .registers 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "notMoving"    # Z
    .param p4, "exchange"    # Z

    .prologue
    .line 7624
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZZZZ)V

    .line 7625
    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZZZZ)V
    .registers 19
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "notMoving"    # Z
    .param p4, "exchange"    # Z
    .param p5, "updateFocus"    # Z
    .param p6, "displayChange"    # Z

    .prologue
    .line 7631
    if-eqz p3, :cond_9

    if-nez p4, :cond_9

    .line 7632
    iget-object v9, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 7639
    :cond_9
    iget-object v10, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-nez p3, :cond_d7

    const/4 v9, 0x1

    :goto_10
    move/from16 v0, p6

    invoke-virtual {v10, v11, v9, v0}, Lcom/android/server/wm/WindowManagerService;->removeTask(IZZ)V

    .line 7656
    iget-object v5, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 7657
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_20

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v9, p1, :cond_20

    .line 7658
    const/4 v9, 0x0

    iput-object v9, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 7661
    :cond_20
    iget-object v9, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 7662
    .local v6, "taskNdx":I
    iget-object v9, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v8, v9, -0x1

    .line 7663
    .local v8, "topTaskNdx":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v9

    if-eqz v9, :cond_4a

    if-ge v6, v8, :cond_4a

    .line 7664
    iget-object v9, p0, mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 7665
    .local v3, "nextTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v9

    if-nez v9, :cond_4a

    .line 7671
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 7675
    .end local v3    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_4a
    iget-object v9, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7678
    iget-object v9, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v9, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->remove(Lcom/android/server/am/TaskRecord;)Z

    .line 7679
    iget-object v9, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v10, v10, mDisplayId:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->arrangeTaskToReturnTo(I)V

    .line 7682
    const/4 v9, 0x1

    invoke-virtual {p0, p1, v9}, updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 7684
    if-eqz p3, :cond_8b

    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 7685
    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v9, :cond_da

    const/4 v2, 0x1

    .line 7686
    .local v2, "isVoiceSession":Z
    :goto_70
    if-eqz v2, :cond_7b

    .line 7688
    :try_start_72
    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v10, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v9, v10, v11}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_7b} :catch_10d

    .line 7692
    :cond_7b
    :goto_7b
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->autoRemoveFromRecents()Z

    move-result v9

    if-nez v9, :cond_83

    if-eqz v2, :cond_8b

    .line 7695
    :cond_83
    iget-object v9, p0, mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v9, p1}, Lcom/android/server/am/RecentTasks;->remove(Ljava/lang/Object;)Z

    .line 7696
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 7700
    .end local v2    # "isVoiceSession":Z
    :cond_8b
    if-nez p4, :cond_de

    if-eqz p5, :cond_de

    iget-object v9, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a4

    invoke-virtual {p0}, isFloatingStack()Z

    move-result v9

    if-eqz v9, :cond_de

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, isAllHidden(Z)Z

    move-result v9

    if-eqz v9, :cond_de

    .line 7702
    :cond_a4
    invoke-virtual {p0}, isHomeStack()Z

    move-result v9

    if-nez v9, :cond_dc

    const/4 v4, 0x1

    .line 7703
    .local v4, "notHomeStack":Z
    :goto_ab
    invoke-virtual {p0}, isOnHomeDisplay()Z

    move-result v9

    if-eqz v9, :cond_b7

    .line 7706
    iget-object v9, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v10, 0x0

    invoke-virtual {v9, p0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 7715
    :cond_b7
    iget-object v9, p0, mStacks:Ljava/util/ArrayList;

    if-eqz v9, :cond_c6

    .line 7716
    iget-object v9, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v9, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7717
    iget-object v9, p0, mStacks:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 7719
    :cond_c6
    if-eqz v4, :cond_d3

    invoke-direct {p0}, adjustHiddenTaskToBottomLocked()Z

    move-result v9

    if-nez v9, :cond_d3

    .line 7720
    iget-object v9, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    .line 7737
    .end local v4    # "notHomeStack":Z
    :cond_d3
    :goto_d3
    const/4 v9, 0x0

    iput-object v9, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 7738
    return-void

    .line 7639
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "taskNdx":I
    .end local v8    # "topTaskNdx":I
    :cond_d7
    const/4 v9, 0x0

    goto/16 :goto_10

    .line 7685
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v6    # "taskNdx":I
    .restart local v8    # "topTaskNdx":I
    :cond_da
    const/4 v2, 0x0

    goto :goto_70

    .line 7702
    :cond_dc
    const/4 v4, 0x0

    goto :goto_ab

    .line 7725
    :cond_de
    iget-object v9, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d3

    invoke-virtual {p0}, isFloatingStack()Z

    move-result v9

    if-eqz v9, :cond_d3

    .line 7726
    invoke-virtual {p0}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    .line 7727
    .local v7, "top":Lcom/android/server/am/TaskRecord;
    if-eqz v7, :cond_d3

    iget-boolean v9, v7, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v9, :cond_d3

    iget-object v9, v7, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_d3

    .line 7728
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 7729
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_d3

    .line 7730
    const/16 v9, 0x20

    const/4 v10, 0x1

    invoke-virtual {p0, v1, v9, v10}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_d3

    .line 7689
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "top":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "isVoiceSession":Z
    :catch_10d
    move-exception v9

    goto/16 :goto_7b
.end method

.method protected removeTimeoutsForActivitiesLocked()V
    .registers 3

    .prologue
    .line 5253
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5254
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5255
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5256
    return-void
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .prologue
    const/4 v6, 0x0

    .line 4458
    invoke-virtual {p0, p1}, isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 4463
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_9

    move v0, v6

    .line 4475
    :goto_8
    return v0

    :cond_9
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 4467
    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4470
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_17

    move v0, v6

    .line 4471
    goto :goto_8

    .line 4475
    :cond_17
    const/4 v0, 0x1

    goto :goto_8
.end method

.method final resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;
    .registers 31
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "forceReset"    # Z

    .prologue
    .line 3906
    const/16 v27, 0x0

    .line 3908
    .local v27, "topOptions":Landroid/app/ActivityOptions;
    const/16 v20, -0x1

    .line 3909
    .local v20, "replyChainEnd":I
    const/4 v12, 0x1

    .line 3913
    .local v12, "canMoveOptions":Z
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3914
    .local v9, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3915
    .local v19, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v21

    .line 3916
    .local v21, "rootActivityNdx":I
    add-int/lit8 v17, v19, -0x1

    .local v17, "i":I
    :goto_13
    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_27

    .line 3917
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ActivityRecord;

    .line 3918
    .local v24, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v24

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_28

    .line 4055
    .end local v24    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_27
    return-object v27

    .line 3921
    .restart local v24    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_28
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v16, v0

    .line 3922
    .local v16, "flags":I
    and-int/lit8 v2, v16, 0x2

    if-eqz v2, :cond_59

    const/4 v15, 0x1

    .line 3924
    .local v15, "finishOnTaskLaunch":Z
    :goto_35
    and-int/lit8 v2, v16, 0x40

    if-eqz v2, :cond_5b

    const/4 v10, 0x1

    .line 3926
    .local v10, "allowTaskReparenting":Z
    :goto_3a
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-eqz v2, :cond_5d

    const/4 v13, 0x1

    .line 3929
    .local v13, "clearWhenTaskReset":Z
    :goto_48
    if-nez v15, :cond_5f

    if-nez v13, :cond_5f

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_5f

    .line 3938
    if-gez v20, :cond_56

    .line 3939
    move/from16 v20, v17

    .line 3916
    :cond_56
    :goto_56
    add-int/lit8 v17, v17, -0x1

    goto :goto_13

    .line 3922
    .end local v10    # "allowTaskReparenting":Z
    .end local v13    # "clearWhenTaskReset":Z
    .end local v15    # "finishOnTaskLaunch":Z
    :cond_59
    const/4 v15, 0x0

    goto :goto_35

    .line 3924
    .restart local v15    # "finishOnTaskLaunch":Z
    :cond_5b
    const/4 v10, 0x0

    goto :goto_3a

    .line 3926
    .restart local v10    # "allowTaskReparenting":Z
    :cond_5d
    const/4 v13, 0x0

    goto :goto_48

    .line 3941
    .restart local v13    # "clearWhenTaskReset":Z
    :cond_5f
    if-nez v15, :cond_14a

    if-nez v13, :cond_14a

    if-eqz v10, :cond_14a

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_14a

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14a

    .line 3953
    move-object/from16 v0, p0

    iget-object v2, v0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f5

    move-object/from16 v0, p0

    iget-object v2, v0, mTaskHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f5

    move-object/from16 v0, p0

    iget-object v2, v0, mTaskHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object v11, v2

    .line 3956
    .local v11, "bottom":Lcom/android/server/am/ActivityRecord;
    :goto_ab
    if-eqz v11, :cond_f7

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_f7

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 3961
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    .line 3972
    .local v25, "targetTask":Lcom/android/server/am/TaskRecord;
    :goto_c5
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v26, v0

    .line 3973
    .local v26, "targetTaskId":I
    move-object/from16 v0, p0

    iget-object v2, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppTask(Landroid/os/IBinder;I)V

    .line 3975
    move/from16 v18, v12

    .line 3976
    .local v18, "noOptions":Z
    if-gez v20, :cond_116

    move/from16 v23, v17

    .line 3977
    .local v23, "start":I
    :goto_de
    move/from16 v22, v23

    .local v22, "srcPos":I
    :goto_e0
    move/from16 v0, v22

    move/from16 v1, v17

    if-lt v0, v1, :cond_13d

    .line 3978
    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3979
    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_119

    .line 3977
    :goto_f2
    add-int/lit8 v22, v22, -0x1

    goto :goto_e0

    .line 3953
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "noOptions":Z
    .end local v22    # "srcPos":I
    .end local v23    # "start":I
    .end local v25    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v26    # "targetTaskId":I
    :cond_f5
    const/4 v11, 0x0

    goto :goto_ab

    .line 3965
    .restart local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    :cond_f7
    move-object/from16 v0, p0

    iget-object v2, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v3

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v25

    .line 3967
    .restart local v25    # "targetTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_c5

    .restart local v18    # "noOptions":Z
    .restart local v26    # "targetTaskId":I
    :cond_116
    move/from16 v23, v20

    .line 3976
    goto :goto_de

    .line 3983
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v22    # "srcPos":I
    .restart local v23    # "start":I
    :cond_119
    const/4 v12, 0x0

    .line 3984
    if-eqz v18, :cond_126

    if-nez v27, :cond_126

    .line 3985
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v27

    .line 3986
    if-eqz v27, :cond_126

    .line 3987
    const/16 v18, 0x0

    .line 3995
    :cond_126
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3996
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V

    .line 3998
    move-object/from16 v0, p0

    iget-object v2, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppTask(Landroid/os/IBinder;I)V

    goto :goto_f2

    .line 4001
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_13d
    move-object/from16 v0, p0

    iget-object v2, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    .line 4006
    const/16 v20, -0x1

    .line 4007
    goto/16 :goto_56

    .end local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "noOptions":Z
    .end local v22    # "srcPos":I
    .end local v23    # "start":I
    .end local v25    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v26    # "targetTaskId":I
    :cond_14a
    if-nez p2, :cond_150

    if-nez v15, :cond_150

    if-eqz v13, :cond_1a3

    .line 4013
    :cond_150
    if-eqz v13, :cond_16c

    .line 4017
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .line 4023
    .local v14, "end":I
    :goto_158
    move/from16 v18, v12

    .line 4024
    .restart local v18    # "noOptions":Z
    move/from16 v22, v17

    .restart local v22    # "srcPos":I
    :goto_15c
    move/from16 v0, v22

    if-gt v0, v14, :cond_168

    .line 4025
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-lt v0, v2, :cond_174

    .line 4046
    :cond_168
    const/16 v20, -0x1

    .line 4047
    goto/16 :goto_56

    .line 4018
    .end local v14    # "end":I
    .end local v18    # "noOptions":Z
    .end local v22    # "srcPos":I
    :cond_16c
    if-gez v20, :cond_171

    .line 4019
    move/from16 v14, v17

    .restart local v14    # "end":I
    goto :goto_158

    .line 4021
    .end local v14    # "end":I
    :cond_171
    move/from16 v14, v20

    .restart local v14    # "end":I
    goto :goto_158

    .line 4027
    .restart local v18    # "noOptions":Z
    .restart local v22    # "srcPos":I
    :cond_174
    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4028
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_183

    .line 4024
    :cond_180
    :goto_180
    add-int/lit8 v22, v22, 0x1

    goto :goto_15c

    .line 4031
    :cond_183
    const/4 v12, 0x0

    .line 4032
    if-eqz v18, :cond_190

    if-nez v27, :cond_190

    .line 4033
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v27

    .line 4034
    if-eqz v27, :cond_190

    .line 4035
    const/16 v18, 0x0

    .line 4040
    :cond_190
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "reset-task"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_180

    .line 4042
    add-int/lit8 v14, v14, -0x1

    .line 4043
    add-int/lit8 v22, v22, -0x1

    goto :goto_180

    .line 4051
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "end":I
    .end local v18    # "noOptions":Z
    .end local v22    # "srcPos":I
    :cond_1a3
    const/16 v20, -0x1

    goto/16 :goto_56
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 14
    .param p1, "taskTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 4174
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2d

    const/4 v4, 0x1

    .line 4183
    .local v4, "forceReset":Z
    :goto_9
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4187
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    const/4 v3, 0x0

    .line 4190
    .local v3, "taskFound":Z
    const/4 v9, 0x0

    .line 4193
    .local v9, "topOptions":Landroid/app/ActivityOptions;
    const/4 v5, -0x1

    .line 4195
    .local v5, "reparentInsertionPoint":I
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_16
    if-ltz v6, :cond_3d

    .line 4196
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 4199
    .local v1, "targetTask":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, v1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 4195
    :goto_2a
    add-int/lit8 v6, v6, -0x1

    goto :goto_16

    .line 4174
    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskFound":Z
    .end local v4    # "forceReset":Z
    .end local v5    # "reparentInsertionPoint":I
    .end local v6    # "i":I
    .end local v9    # "topOptions":Landroid/app/ActivityOptions;
    :cond_2d
    const/4 v4, 0x0

    goto :goto_9

    .line 4203
    .restart local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "taskFound":Z
    .restart local v4    # "forceReset":Z
    .restart local v5    # "reparentInsertionPoint":I
    .restart local v6    # "i":I
    .restart local v9    # "topOptions":Landroid/app/ActivityOptions;
    :cond_2f
    if-ne v1, v2, :cond_37

    .line 4204
    invoke-virtual {p0, v2, v4}, resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;

    move-result-object v9

    .line 4205
    const/4 v3, 0x1

    goto :goto_2a

    :cond_37
    move-object v0, p0

    .line 4207
    invoke-direct/range {v0 .. v5}, resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I

    move-result v5

    goto :goto_2a

    .line 4212
    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    :cond_3d
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 4213
    .local v7, "taskNdx":I
    if-ltz v7, :cond_58

    .line 4215
    :goto_45
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, -0x1

    .end local v7    # "taskNdx":I
    .local v8, "taskNdx":I
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 4216
    if-nez p1, :cond_57

    if-gez v8, :cond_64

    :cond_57
    move v7, v8

    .line 4219
    .end local v8    # "taskNdx":I
    .restart local v7    # "taskNdx":I
    :cond_58
    if-eqz v9, :cond_5f

    .line 4222
    if-eqz p1, :cond_60

    .line 4223
    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 4229
    :cond_5f
    :goto_5f
    return-object p1

    .line 4225
    :cond_60
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->abort()V

    goto :goto_5f

    .end local v7    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    :cond_64
    move v7, v8

    .end local v8    # "taskNdx":I
    .restart local v7    # "taskNdx":I
    goto :goto_45
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 7586
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 7590
    .local v3, "starting":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_d
    if-ltz v4, :cond_49

    .line 7591
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v1, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 7592
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "activityNdx":I
    :goto_1f
    if-ltz v2, :cond_46

    .line 7593
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 7594
    .local v0, "a":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 7595
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 7596
    if-eqz v3, :cond_43

    if-ne v0, v3, :cond_43

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_43

    .line 7597
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v6, 0x100

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 7592
    :cond_43
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 7590
    .end local v0    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_46
    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    .line 7604
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_49
    return-object v3
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 3
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2576
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .registers 8
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2580
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v2, :cond_c

    .line 2581
    iput-boolean v4, p0, mTwiceResumeTop:Z

    move v0, v1

    .line 2599
    :goto_b
    return v0

    .line 2586
    :cond_c
    const/4 v0, 0x0

    .line 2589
    .local v0, "result":Z
    :try_start_d
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    .line 2590
    const/4 v2, 0x0

    iput-boolean v2, p0, mTwiceResumeTop:Z

    .line 2591
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    if-ne v2, v4, :cond_25

    .line 2592
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    .line 2593
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 2595
    :cond_25
    invoke-direct {p0, p1, p2}, resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_2e

    move-result v0

    .line 2597
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    goto :goto_b

    :catchall_2e
    move-exception v2

    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v3, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    throw v2
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 5363
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5367
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    .line 5369
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 6
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 5323
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5324
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5325
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5326
    return-void
.end method

.method public final screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "who"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x0

    .line 1225
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v3, :cond_6

    .line 1263
    :cond_5
    :goto_5
    return-object v1

    .line 1230
    :cond_6
    invoke-virtual {p0}, isHomeStack()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1237
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v3, Lcom/android/server/am/ActivityManagerService;->mThumbnailWidth:I

    .line 1238
    .local v2, "w":I
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v3, Lcom/android/server/am/ActivityManagerService;->mThumbnailHeight:I

    .line 1239
    .local v0, "h":I
    if-lez v2, :cond_35

    .line 1249
    iget-object v3, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1254
    .local v1, "screenshot":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5

    .line 1255
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const-string v4, "1"

    const-string/jumbo v5, "sys.samsung.personalpage.mode"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/am/TaskRecord;->isSecretMode:Z

    goto :goto_5

    .line 1262
    .end local v1    # "screenshot":Landroid/graphics/Bitmap;
    :cond_35
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid thumbnail dimensions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 15
    .param p1, "callingUid"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "resultCode"    # I
    .param p6, "data"    # Landroid/content/Intent;

    .prologue
    .line 4235
    if-lez p1, :cond_11

    .line 4236
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    move v1, p1

    move-object v3, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 4243
    :cond_11
    iget-object v0, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p2, :cond_4f

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_4f

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_4f

    .line 4245
    :try_start_1f
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4246
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4248
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_35} :catch_36

    .line 4256
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :goto_35
    return-void

    .line 4250
    :catch_36
    move-exception v6

    .line 4251
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4255
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4f
    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_35
.end method

.method public sendActivityResultToOpposite(Lcom/android/server/am/ActivityRecord;)V
    .registers 8
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 4603
    if-nez p1, :cond_3

    .line 4623
    :cond_2
    :goto_2
    return-void

    .line 4607
    :cond_3
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 4608
    .local v3, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_2

    .line 4611
    iget-object v1, v3, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4612
    .local v1, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v1, :cond_2

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_2

    .line 4613
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4614
    .local v0, "N":I
    if-lez v0, :cond_2e

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_2e

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2e

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_2e

    .line 4616
    :try_start_25
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v5, v1}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2e} :catch_34

    .line 4621
    :cond_2e
    :goto_2e
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 4617
    :catch_34
    move-exception v2

    .line 4618
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method sendExpandRequestToActivityLocked(Lcom/android/server/am/ActivityRecord;I)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # I

    .prologue
    .line 8135
    return-void
.end method

.method sendShrinkRequestIfNeeded(Lcom/android/server/am/ActivityRecord;)V
    .registers 2
    .param p1, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 8060
    return-void
.end method

.method sendShrinkRequestToActivityLocked(Lcom/android/server/am/ActivityRecord;II)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "toDisplayId"    # I
    .param p3, "reason"    # I

    .prologue
    .line 8116
    return-void
.end method

.method setLaunchTime(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "fullLaunch"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 1120
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    .line 1121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    .line 1122
    iget-wide v0, p0, mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    .line 1123
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, startLaunchTraces(Ljava/lang/String;)V

    .line 1124
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p0, mFullyDrawnStartTime:J

    iput-wide v0, p0, mLaunchStartTime:J

    .line 1130
    :cond_21
    :goto_21
    return-void

    .line 1126
    :cond_22
    iget-wide v0, p0, mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    .line 1127
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, startLaunchTraces(Ljava/lang/String;)V

    .line 1128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mFullyDrawnStartTime:J

    iput-wide v0, p0, mLaunchStartTime:J

    goto :goto_21
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p3, "allInTask"    # Z

    .prologue
    .line 6967
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;)V

    .line 6968
    return-void
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;)V
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p3, "allInTask"    # Z
    .param p4, "toTop"    # Z
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 6971
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;Z)V

    .line 6972
    return-void
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;Z)V
    .registers 56
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p3, "allInTask"    # Z
    .param p4, "toTop"    # Z
    .param p5, "options"    # Landroid/os/Bundle;
    .param p6, "onlyForOrientation"    # Z

    .prologue
    .line 6975
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v48, v0

    monitor-enter v48

    .line 6976
    :try_start_7
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v29

    .line 6977
    .local v29, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v29, :cond_f

    .line 6978
    monitor-exit v48

    .line 7311
    :goto_e
    return-void

    .line 6981
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .line 6985
    .local v30, "origId":J
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v6, 0x2000000

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 6986
    new-instance v13, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v13, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 6987
    .local v13, "diffStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v4, 0x2000000

    const/high16 v6, 0x2000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    invoke-virtual {v13, v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 6989
    const/high16 v4, 0x10000000

    const/high16 v6, 0x10000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    invoke-virtual {v13, v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 6991
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 6992
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    invoke-virtual {v4, v6, v0}, setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 6993
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6994
    monitor-exit v48

    goto :goto_e

    .line 7310
    .end local v13    # "diffStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v29    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v30    # "origId":J
    :catchall_5e
    move-exception v4

    monitor-exit v48
    :try_end_60
    .catchall {:try_start_7 .. :try_end_60} :catchall_5e

    throw v4

    .line 7000
    .restart local v29    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v30    # "origId":J
    :cond_61
    const/16 v23, 0x0

    .line 7003
    .local v23, "needPauseBackStacks":Z
    const/4 v15, 0x0

    .line 7004
    .local v15, "forceUpdateAll":Z
    :try_start_64
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    if-ne v4, v6, :cond_99

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_87

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    if-ne v4, v6, :cond_99

    :cond_87
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_191

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-eqz v4, :cond_191

    :cond_99
    const/16 v22, 0x1

    .line 7008
    .local v22, "needChangeStack":Z
    :goto_9b
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-eqz v4, :cond_195

    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_195

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_195

    const/16 v21, 0x1

    .line 7012
    .local v21, "minimizedToCascade":Z
    :goto_b7
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_cc

    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_cc

    .line 7014
    const/4 v15, 0x1

    .line 7016
    :cond_cc
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_e2

    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 7018
    const/16 v23, 0x1

    .line 7021
    :cond_e2
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_fa

    const/16 v4, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_fa

    .line 7023
    const/16 v23, 0x1

    .line 7026
    :cond_fa
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_10d

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-nez v4, :cond_10d

    .line 7028
    const/16 v23, 0x1

    .line 7031
    :cond_10d
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_120

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-nez v4, :cond_120

    .line 7033
    const/16 v23, 0x1

    .line 7036
    :cond_120
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-nez v4, :cond_136

    .line 7039
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x0

    const-string/jumbo v7, "setMultiWindowStyle"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, mDisplayId:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;I)V

    .line 7043
    :cond_136
    const/high16 v4, 0x20000

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_147

    .line 7044
    const/4 v4, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 7049
    :cond_147
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1bf

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, isNormalAppStack()Z

    move-result v4

    if-eqz v4, :cond_1bf

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, isSplitStack()Z

    move-result v4

    if-nez v4, :cond_1bf

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v4

    if-eqz v4, :cond_1bf

    .line 7052
    invoke-virtual/range {p0 .. p0}, getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v40

    .line 7054
    .local v40, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v27, v4, -0x1

    .local v27, "nonFloatingTopTask":I
    :goto_17a
    if-ltz v27, :cond_199

    .line 7055
    move-object/from16 v0, v40

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_199

    .line 7054
    add-int/lit8 v27, v27, -0x1

    goto :goto_17a

    .line 7004
    .end local v21    # "minimizedToCascade":Z
    .end local v22    # "needChangeStack":Z
    .end local v27    # "nonFloatingTopTask":I
    .end local v40    # "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_191
    const/16 v22, 0x0

    goto/16 :goto_9b

    .line 7008
    .restart local v22    # "needChangeStack":Z
    :cond_195
    const/16 v21, 0x0

    goto/16 :goto_b7

    .line 7062
    .restart local v21    # "minimizedToCascade":Z
    .restart local v27    # "nonFloatingTopTask":I
    .restart local v40    # "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_199
    if-lez v27, :cond_1bf

    move-object/from16 v0, v40

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v6, :cond_1bf

    .line 7064
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v6

    const-string/jumbo v7, "setMultiWindowStyle"

    move-object/from16 v0, p0

    iget v8, v0, mDisplayId:I

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;I)Z

    .line 7070
    .end local v27    # "nonFloatingTopTask":I
    .end local v40    # "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_1bf
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v6, 0x800000

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_333

    const/high16 v4, 0x800000

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_333

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v4}, Lcom/android/server/am/MultiWindowPolicy;->getTabFrontStack()I

    move-result v4

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, mStackId:I

    if-ne v4, v6, :cond_333

    .line 7073
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_26f

    .line 7074
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget v6, v0, mStackId:I

    move-object/from16 v0, p1

    invoke-virtual {v4, v6, v0}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v12

    .line 7075
    .local v12, "bound":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_20f
    :goto_20f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_333

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/ActivityStack;

    .line 7076
    .local v35, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v35 .. v35}, isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_20f

    .line 7077
    invoke-virtual/range {v35 .. v35}, topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v44

    .line 7078
    .local v44, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v44, :cond_20f

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v6, 0x800000

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_20f

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20f

    .line 7083
    new-instance v45, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 7084
    .local v45, "topMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v35 .. v35}, getStackId()I

    move-result v36

    .line 7085
    .local v36, "stackId":I
    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 7086
    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 7087
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, v35

    move-object/from16 v1, v45

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 7088
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v36

    invoke-virtual {v4, v0, v12}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    goto :goto_20f

    .line 7092
    .end local v12    # "bound":Landroid/graphics/Rect;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v35    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v36    # "stackId":I
    .end local v44    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v45    # "topMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_26f
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/MultiWindowPolicy;->setTabFrontStack(I)V

    .line 7093
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v4}, Lcom/android/server/am/MultiWindowPolicy;->getTabs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 7094
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_292
    :goto_292
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_333

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/ActivityStack;

    .line 7095
    .restart local v35    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v35 .. v35}, isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_292

    .line 7096
    invoke-virtual/range {v35 .. v35}, topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v44

    .line 7097
    .restart local v44    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v44, :cond_292

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_292

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v6, 0x800000

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_292

    .line 7100
    new-instance v45, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 7101
    .restart local v45    # "topMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {v35 .. v35}, getStackId()I

    move-result v6

    move-object/from16 v0, v44

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v28

    .line 7102
    .local v28, "oldBound":Landroid/graphics/Rect;
    if-eqz v28, :cond_292

    .line 7105
    new-instance v24, Landroid/graphics/Rect;

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 7106
    .local v24, "newBound":Landroid/graphics/Rect;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10502aa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    neg-int v6, v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 7107
    const/high16 v4, 0x800000

    const/4 v6, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 7108
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, v35

    move-object/from16 v1, v45

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 7109
    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 7110
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {v35 .. v35}, getStackId()I

    move-result v6

    move-object/from16 v0, v24

    invoke-virtual {v4, v6, v0}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    .line 7112
    const/16 v4, 0x8

    const/4 v6, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v4, v6}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_292

    .line 7118
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v24    # "newBound":Landroid/graphics/Rect;
    .end local v28    # "oldBound":Landroid/graphics/Rect;
    .end local v35    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v44    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v45    # "topMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_333
    if-eqz p3, :cond_488

    .line 7119
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3c5

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3c5

    .line 7121
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 7122
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v46

    .line 7123
    .local v46, "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v37, v29

    .line 7124
    .local v37, "targetRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v46, :cond_361

    .line 7125
    move-object/from16 v37, v46

    .line 7127
    :cond_361
    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 7128
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v37

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    .line 7129
    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v4, v6}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 7158
    .end local v37    # "targetRecord":Lcom/android/server/am/ActivityRecord;
    .end local v46    # "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    :goto_384
    if-eqz v22, :cond_6a7

    .line 7159
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-nez v4, :cond_4ae

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_4ae

    const/16 v16, 0x1

    .line 7160
    .local v16, "fromCascadeToOthers":Z
    :goto_39e
    if-eqz v16, :cond_3b8

    .line 7162
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 7163
    move-object/from16 v0, p0

    iget-object v4, v0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V

    .line 7165
    :cond_3b8
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v34

    .line 7167
    .local v34, "root":Lcom/android/server/am/ActivityRecord;
    if-nez v34, :cond_4b2

    .line 7168
    monitor-exit v48

    goto/16 :goto_e

    .line 7130
    .end local v16    # "fromCascadeToOthers":Z
    .end local v34    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_3c5
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3e6

    .line 7131
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 7132
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_384

    .line 7134
    :cond_3e6
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_458

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v6, 0x2000

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_458

    if-nez v23, :cond_458

    if-nez v15, :cond_458

    .line 7136
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 7137
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v29

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    .line 7138
    invoke-virtual/range {p0 .. p0}, isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_44c

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_44c

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget v7, v0, mStackId:I

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44c

    .line 7141
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget v6, v0, mStackId:I

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    .line 7143
    :cond_44c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_384

    .line 7144
    :cond_458
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_472

    .line 7145
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p2

    invoke-virtual {v4, v6, v0}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_384

    .line 7147
    :cond_472
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 7148
    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4, v6}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_384

    .line 7152
    :cond_488
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 7153
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v29

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    .line 7154
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_384

    .line 7159
    :cond_4ae
    const/16 v16, 0x0

    goto/16 :goto_39e

    .line 7170
    .restart local v16    # "fromCascadeToOthers":Z
    .restart local v34    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_4b2
    const/16 v38, 0x0

    .line 7171
    .local v38, "targetStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_521

    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->needMoveOnlySpecificTaskToFront(I)Z

    move-result v4

    if-eqz v4, :cond_521

    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getSpecificFloatingStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_521

    .line 7174
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getSpecificFloatingStack()Lcom/android/server/am/ActivityStack;

    move-result-object v38

    .line 7179
    :goto_4dd
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v38

    if-eq v0, v4, :cond_5e9

    .line 7180
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_673

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_673

    if-eqz p3, :cond_673

    .line 7182
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 7183
    .local v39, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_50d
    :goto_50d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_539

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 7186
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    if-nez p4, :cond_52d

    .line 7187
    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50d

    .line 7176
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v39    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_521
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v4, v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->computeStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v38

    goto :goto_4dd

    .line 7189
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v39    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_52d
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v5, v4, :cond_50d

    .line 7190
    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50d

    .line 7194
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_539
    const/16 v19, 0x0

    .local v19, "idx":I
    :goto_53b
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_5b3

    .line 7195
    move-object/from16 v0, v39

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget v0, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v42, v0

    .line 7196
    .local v42, "tid":I
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v0, v42

    if-eq v0, v4, :cond_5a4

    .line 7197
    move-object/from16 v0, v39

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 7198
    move-object/from16 v0, v39

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v6, v1}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 7200
    move-object/from16 v0, p0

    iget-object v6, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v38

    iget v7, v0, mStackId:I

    move-object/from16 v0, v39

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v4, :cond_5a2

    const/4 v4, 0x1

    :goto_599
    const/4 v8, 0x0

    move/from16 v0, v42

    invoke-virtual {v6, v0, v7, v4, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    .line 7194
    :goto_59f
    add-int/lit8 v19, v19, 0x1

    goto :goto_53b

    .line 7200
    :cond_5a2
    const/4 v4, 0x0

    goto :goto_599

    .line 7202
    :cond_5a4
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v38

    iget v6, v0, mStackId:I

    const/4 v7, 0x1

    move/from16 v0, v42

    invoke-virtual {v4, v0, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    goto :goto_59f

    .line 7205
    .end local v42    # "tid":I
    :cond_5b3
    if-eqz p4, :cond_5c7

    .line 7206
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v38

    iget v7, v0, mStackId:I

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    .line 7208
    :cond_5c7
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_5cb
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5de

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/am/TaskRecord;

    .line 7209
    .local v47, "tr":Lcom/android/server/am/TaskRecord;
    const/4 v4, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_5cb

    .line 7211
    .end local v47    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_5de
    move-object/from16 v0, p0

    iget-object v4, v0, mRecentTasks:Lcom/android/server/am/RecentTasks;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    .line 7255
    .end local v16    # "fromCascadeToOthers":Z
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "idx":I
    .end local v34    # "root":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v39    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_5e9
    :goto_5e9
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-nez v4, :cond_5f8

    .line 7256
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, clearWindowModeLocked(Lcom/android/server/am/TaskRecord;)V

    .line 7260
    :cond_5f8
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_612

    .line 7261
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v29

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 7264
    :cond_612
    if-eqz v23, :cond_66d

    .line 7265
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    .line 7267
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-eqz v4, :cond_7d1

    .line 7268
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->findNextFocusableFloatingStackIdFromTop()I

    move-result v26

    .line 7269
    .local v26, "nextStackId":I
    const/4 v4, -0x1

    move/from16 v0, v26

    if-le v0, v4, :cond_795

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v4

    if-nez v4, :cond_795

    .line 7270
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 7289
    :cond_64a
    :goto_64a
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_66d

    .line 7290
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 7291
    move-object/from16 v0, p0

    iget-object v4, v0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V

    .line 7309
    .end local v26    # "nextStackId":I
    :cond_66d
    :goto_66d
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7310
    monitor-exit v48

    goto/16 :goto_e

    .line 7213
    .restart local v16    # "fromCascadeToOthers":Z
    .restart local v34    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v38    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_673
    const-string/jumbo v4, "setMultiWindowStyle"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, moveToFront(Ljava/lang/String;)V

    .line 7214
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v38

    iget v7, v0, mStackId:I

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    .line 7215
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-eqz v4, :cond_5e9

    .line 7216
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v38

    iget v6, v0, mStackId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 7217
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    goto/16 :goto_5e9

    .line 7224
    .end local v16    # "fromCascadeToOthers":Z
    .end local v34    # "root":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_6a7
    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_5e9

    const/16 v4, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_5e9

    .line 7226
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_6ef

    .line 7227
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v4, v6, v7, v0}, Lcom/android/server/am/MultiWindowPolicy;->getRelativeStackIdLocked(IILcom/android/server/am/ActivityRecord;)I

    move-result v33

    .line 7228
    .local v33, "relativeStackId":I
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v32

    .line 7229
    .local v32, "relativeStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v6}, Lcom/android/server/am/MultiWindowPolicy;->arrangeMultiWindowStyle(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 7232
    .end local v32    # "relativeStack":Lcom/android/server/am/ActivityStack;
    .end local v33    # "relativeStackId":I
    :cond_6ef
    if-nez p6, :cond_5e9

    .line 7233
    if-eqz v21, :cond_76e

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eq v4, v6, :cond_76e

    .line 7236
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 7237
    .restart local v39    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 7238
    .local v20, "indexOfTask":I
    move/from16 v17, v20

    .local v17, "i":I
    :goto_71a
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_744

    .line 7239
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/am/TaskRecord;

    .line 7240
    .local v41, "tempTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7238
    add-int/lit8 v17, v17, 0x1

    goto :goto_71a

    .line 7242
    .end local v41    # "tempTask":Lcom/android/server/am/TaskRecord;
    :cond_744
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :goto_748
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 7243
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_767

    const/4 v8, 0x0

    :goto_75c
    const-string/jumbo v9, "setMultiWindowStyle"

    move-object/from16 v4, p0

    move-object/from16 v7, p5

    invoke-virtual/range {v4 .. v9}, moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_748

    :cond_767
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_75c

    .line 7247
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v17    # "i":I
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "indexOfTask":I
    .end local v39    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_76e
    move-object/from16 v0, v29

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v8, 0x0

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_78a

    const/4 v10, 0x0

    :goto_77e
    const-string/jumbo v11, "setMultiWindowStyle"

    move-object/from16 v6, p0

    move-object/from16 v9, p5

    invoke-virtual/range {v6 .. v11}, moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto/16 :goto_5e9

    :cond_78a
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_77e

    .line 7278
    .restart local v26    # "nextStackId":I
    :cond_795
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v35

    .line 7280
    .restart local v35    # "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_7b6

    .line 7281
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v35

    iget v6, v0, mStackId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto/16 :goto_64a

    .line 7283
    :cond_7b6
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 7284
    .local v25, "newTop":Lcom/android/server/am/ActivityRecord;
    if-eqz v25, :cond_64a

    .line 7285
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, mStackId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto/16 :goto_64a

    .line 7300
    .end local v25    # "newTop":Lcom/android/server/am/ActivityRecord;
    .end local v26    # "nextStackId":I
    .end local v35    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_7d1
    move-object/from16 v0, p0

    iget-object v4, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v14

    .line 7302
    .local v14, "focusedStack":Lcom/android/server/am/ActivityStack;
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v43

    .line 7303
    .local v43, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v43, :cond_66d

    .line 7304
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V
    :try_end_7e7
    .catchall {:try_start_64 .. :try_end_7e7} :catchall_5e

    goto/16 :goto_66d
.end method

.method setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 18
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "srcMultiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 1997
    iget-object v10, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2001
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2003
    .local v1, "N":I
    move-object/from16 v6, p2

    .line 2004
    .local v6, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->hasUnitaryOption()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 2006
    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2007
    .restart local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->removeUnitaryOption()V

    .line 2013
    :cond_1c
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v5

    .line 2014
    .local v5, "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_64

    .line 2015
    if-eqz v5, :cond_64

    .line 2017
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_2b
    if-ltz v3, :cond_64

    .line 2018
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 2019
    .local v9, "record":Lcom/android/server/am/ActivityRecord;
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-nez v10, :cond_43

    iget-boolean v10, v9, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v10, :cond_4a

    .line 2020
    :cond_43
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2022
    :cond_4a
    const/16 v10, 0x800

    invoke-virtual {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_61

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_61

    .line 2024
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2017
    :cond_61
    add-int/lit8 v3, v3, -0x1

    goto :goto_2b

    .line 2030
    .end local v3    # "i":I
    .end local v9    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_64
    const/4 v2, 0x0

    .line 2032
    .local v2, "changeMinimized":Z
    add-int/lit8 v3, v1, -0x1

    .restart local v3    # "i":I
    :goto_67
    if-ltz v3, :cond_237

    .line 2033
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 2035
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v10

    if-eqz v10, :cond_a6

    .line 2037
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_98

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_98

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v11, 0x20000

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_98

    .line 2032
    :cond_95
    :goto_95
    add-int/lit8 v3, v3, -0x1

    goto :goto_67

    .line 2042
    :cond_98
    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    goto :goto_95

    .line 2047
    :cond_a6
    const/16 v10, 0x800

    invoke-virtual {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_c5

    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v11}, Lcom/android/server/am/MultiWindowPolicy;->isAvoidScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_c5

    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_c5

    iget-boolean v10, v8, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v10, :cond_95

    .line 2054
    :cond_c5
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_e9

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_e9

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v11, 0x20000

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_e9

    .line 2057
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_95

    .line 2061
    :cond_e9
    if-nez v2, :cond_108

    .line 2062
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_108

    const/16 v10, 0x800

    invoke-virtual {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_108

    .line 2064
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    const/4 v11, 0x4

    invoke-virtual {v6, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    xor-int v2, v10, v11

    .line 2068
    :cond_108
    const/4 v4, 0x0

    .line 2069
    .local v4, "isFixedRatioNotNeeded":Z
    const v10, 0x8000

    invoke-virtual {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_11e

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const v11, 0x8000

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_11e

    .line 2071
    const/4 v4, 0x1

    .line 2074
    :cond_11e
    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v11}, Lcom/android/server/am/MultiWindowPolicy;->isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_1a1

    .line 2075
    const/4 v10, 0x1

    invoke-virtual {v8, v6, v10}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 2106
    :goto_12e
    if-eqz v4, :cond_139

    .line 2107
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const v11, 0x8000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2109
    :cond_139
    iget v10, v8, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/server/am/TaskRecord;->setType(I)V

    .line 2111
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_16c

    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v11}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_15f

    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v11}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_16c

    .line 2114
    :cond_15f
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 2115
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2118
    :cond_16c
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_186

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_186

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v11, 0x20000

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_95

    .line 2123
    :cond_186
    const/4 v7, 0x1

    .line 2124
    .local v7, "notifyReason":I
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v11, 0x4000000

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_193

    .line 2125
    or-int/lit8 v7, v7, 0x40

    .line 2126
    :cond_193
    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13, v7}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    goto/16 :goto_95

    .line 2076
    .end local v7    # "notifyReason":I
    :cond_1a1
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1c0

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_1c0

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v11, 0x20000

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_1c0

    .line 2080
    const/4 v10, 0x3

    iput v10, v8, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto/16 :goto_12e

    .line 2082
    :cond_1c0
    invoke-virtual {v8, v6}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2086
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1e3

    const/16 v10, 0x800

    invoke-virtual {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_1e3

    if-eqz v5, :cond_1e3

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_1e3

    .line 2089
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2091
    :cond_1e3
    if-eqz v5, :cond_20c

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_20c

    .line 2092
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v11, 0x200000

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_224

    .line 2093
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 2094
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2095
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v11, 0x1000000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2100
    :cond_20c
    :goto_20c
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v10, v11, :cond_22d

    const/high16 v10, 0x10000000

    invoke-virtual {v6, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_22d

    .line 2101
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v11, 0x10000000

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_12e

    .line 2097
    :cond_224
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v11, 0x1000000

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto :goto_20c

    .line 2103
    :cond_22d
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v11, 0x10000000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_12e

    .line 2130
    .end local v4    # "isFixedRatioNotNeeded":Z
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_237
    invoke-virtual {p0}, isFloatingStack()Z

    move-result v10

    if-eqz v10, :cond_265

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    if-eqz v10, :cond_265

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v12, p0, mStackId:I

    invoke-virtual {v11, v12}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_265

    .line 2133
    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v11, p0, mStackId:I

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    .line 2138
    :cond_264
    :goto_264
    return-void

    .line 2134
    :cond_265
    if-eqz v2, :cond_264

    .line 2136
    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v11}, getStackId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->assignMultiWindowScale(I)V

    goto :goto_264
.end method

.method setStackBoundForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 2153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, setStackBoundForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;I)V

    .line 2154
    return-void
.end method

.method setStackBoundForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;I)V
    .registers 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "bound"    # Landroid/graphics/Rect;
    .param p3, "reason"    # I

    .prologue
    .line 2157
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2171
    :cond_8
    return-void

    .line 2161
    :cond_9
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2162
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_8

    .line 2163
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 2164
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_48

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 2167
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3, p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 2168
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    or-int/lit8 v4, p3, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2162
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 2142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;I)V

    .line 2143
    return-void
.end method

.method setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;I)V
    .registers 7
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "reason"    # I

    .prologue
    .line 2146
    invoke-virtual {p0}, getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 2147
    .local v0, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 2148
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0, v2, p1, p2}, setStackBoundForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;I)V

    goto :goto_8

    .line 2150
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_18
    return-void
.end method

.method setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 5578
    invoke-virtual {p0}, isAttached()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5579
    iget-object v0, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 5581
    :cond_d
    return-void
.end method

.method final shouldUpRecreateTaskLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 9
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5048
    if-eqz p1, :cond_14

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v4, :cond_14

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 5079
    :cond_14
    :goto_14
    return v2

    .line 5056
    :cond_15
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_74

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_74

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_74

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->isDocument()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 5059
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v4

    if-nez v4, :cond_14

    .line 5064
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 5065
    .local v1, "taskIdx":I
    if-gtz v1, :cond_5e

    .line 5066
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 5067
    goto :goto_14

    .line 5069
    :cond_5e
    if-eqz v1, :cond_14

    .line 5073
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 5074
    .local v0, "prevTask":Lcom/android/server/am/TaskRecord;
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .end local v0    # "prevTask":Lcom/android/server/am/TaskRecord;
    .end local v1    # "taskIdx":I
    :cond_74
    move v2, v3

    .line 5079
    goto :goto_14
.end method

.method final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;Z)V
    .registers 50
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "doResume"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/os/Bundle;
    .param p6, "createdNewTask"    # Z

    .prologue
    .line 3615
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v36, v0

    .line 3616
    .local v36, "rTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v40, v0

    .line 3618
    .local v40, "taskId":I
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v3, :cond_3c

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_1e

    if-eqz p2, :cond_3c

    .line 3622
    :cond_1e
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_63

    const/4 v3, 0x1

    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v4, v3}, insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3623
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 3625
    :cond_3c
    const/16 v39, 0x0

    .line 3626
    .local v39, "task":Lcom/android/server/am/TaskRecord;
    if-nez p2, :cond_ea

    .line 3628
    const/16 v38, 0x1

    .line 3629
    .local v38, "startIt":Z
    move-object/from16 v0, p0

    iget-object v3, v0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v41, v3, -0x1

    .local v41, "taskNdx":I
    :goto_4c
    if-ltz v41, :cond_ea

    .line 3630
    move-object/from16 v0, p0

    iget-object v3, v0, mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "task":Lcom/android/server/am/TaskRecord;
    check-cast v39, Lcom/android/server/am/TaskRecord;

    .line 3631
    .restart local v39    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_65

    .line 3629
    :cond_60
    :goto_60
    add-int/lit8 v41, v41, -0x1

    goto :goto_4c

    .line 3622
    .end local v38    # "startIt":Z
    .end local v39    # "task":Lcom/android/server/am/TaskRecord;
    .end local v41    # "taskNdx":I
    :cond_63
    const/4 v3, 0x0

    goto :goto_2a

    .line 3635
    .restart local v38    # "startIt":Z
    .restart local v39    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v41    # "taskNdx":I
    :cond_65
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v39

    if-ne v0, v3, :cond_e0

    .line 3639
    if-nez v38, :cond_ea

    .line 3642
    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 3643
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 3644
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_dc

    const/4 v10, 0x1

    :goto_aa
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v39

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_de

    const/4 v13, 0x1

    :goto_bb
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->skipRotationAnimation:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->policyExpandedDisplayOrientation:I

    move/from16 v18, v0

    invoke-virtual/range {v3 .. v18}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLcom/samsung/android/multiwindow/MultiWindowStyle;ZZI)V

    .line 3654
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3869
    .end local v38    # "startIt":Z
    .end local v41    # "taskNdx":I
    :cond_db
    :goto_db
    return-void

    .line 3644
    .restart local v38    # "startIt":Z
    .restart local v41    # "taskNdx":I
    :cond_dc
    const/4 v10, 0x0

    goto :goto_aa

    :cond_de
    const/4 v13, 0x0

    goto :goto_bb

    .line 3658
    :cond_e0
    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-lez v3, :cond_60

    .line 3659
    const/16 v38, 0x0

    goto/16 :goto_60

    .line 3670
    .end local v38    # "startIt":Z
    .end local v41    # "taskNdx":I
    :cond_ea
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v39

    if-ne v0, v3, :cond_10f

    move-object/from16 v0, p0

    iget-object v3, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_10f

    .line 3671
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 3676
    :cond_10f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v39, v0

    .line 3681
    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 3682
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 3684
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 3695
    invoke-virtual/range {p0 .. p0}, isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_12e

    invoke-virtual/range {p0 .. p0}, numActivities()I

    move-result v3

    if-lez v3, :cond_3ad

    .line 3699
    :cond_12e
    move/from16 v37, p2

    .line 3700
    .local v37, "showStartingIcon":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v35, v0

    .line 3701
    .local v35, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v35, :cond_150

    .line 3702
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v35

    .end local v35    # "proc":Lcom/android/server/am/ProcessRecord;
    check-cast v35, Lcom/android/server/am/ProcessRecord;

    .line 3704
    .restart local v35    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_150
    if-eqz v35, :cond_158

    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_15a

    .line 3705
    :cond_158
    const/16 v37, 0x1

    .line 3719
    :cond_15a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_267

    .line 3720
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    move/from16 v0, p4

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    .line 3728
    move-object/from16 v0, p0

    iget-object v3, v0, mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3767
    :goto_17e
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_2c6

    const/4 v10, 0x1

    :goto_1af
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v39

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_2c9

    const/4 v13, 0x1

    :goto_1c0
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->skipRotationAnimation:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->policyExpandedDisplayOrientation:I

    move/from16 v18, v0

    invoke-virtual/range {v3 .. v18}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLcom/samsung/android/multiwindow/MultiWindowStyle;ZZI)V

    .line 3774
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_210

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_210

    .line 3776
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 3777
    .local v42, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3778
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x8

    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v5

    move-object/from16 v0, v42

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareMultiWindowTransition(Ljava/util/ArrayList;II)V

    .line 3781
    .end local v42    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_210
    const/16 v32, 0x1

    .line 3782
    .local v32, "doShow":Z
    if-eqz p2, :cond_2d0

    .line 3788
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_237

    .line 3789
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 3790
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_2cc

    const/16 v32, 0x1

    .line 3796
    :cond_237
    :goto_237
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_2e4

    .line 3799
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    .line 3802
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 3866
    .end local v32    # "doShow":Z
    .end local v35    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v37    # "showStartingIcon":Z
    :cond_256
    :goto_256
    if-eqz p3, :cond_db

    .line 3867
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    goto/16 :goto_db

    .line 3730
    .restart local v35    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v37    # "showStartingIcon":Z
    :cond_267
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/am/VirtualScreenManagerService;->allowAppTransition(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_283

    .line 3732
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x12c

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto/16 :goto_17e

    .line 3737
    :cond_283
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_2a7

    .line 3738
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x65

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    move/from16 v0, p4

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    .line 3765
    :goto_29c
    move-object/from16 v0, p0

    iget-object v3, v0, mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_17e

    .line 3742
    :cond_2a7
    move/from16 v33, p2

    .line 3748
    .local v33, "isCreatedNewTask":Z
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v33, :cond_2c4

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_2c1

    const/16 v3, 0x10

    :goto_2b7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    move/from16 v0, p4

    invoke-virtual {v4, v3, v0, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto :goto_29c

    :cond_2c1
    const/16 v3, 0x8

    goto :goto_2b7

    :cond_2c4
    const/4 v3, 0x6

    goto :goto_2b7

    .line 3767
    .end local v33    # "isCreatedNewTask":Z
    :cond_2c6
    const/4 v10, 0x0

    goto/16 :goto_1af

    :cond_2c9
    const/4 v13, 0x0

    goto/16 :goto_1c0

    .line 3790
    .restart local v32    # "doShow":Z
    :cond_2cc
    const/16 v32, 0x0

    goto/16 :goto_237

    .line 3792
    :cond_2d0
    if-eqz p5, :cond_237

    new-instance v3, Landroid/app/ActivityOptions;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_237

    .line 3794
    const/16 v32, 0x0

    goto/16 :goto_237

    .line 3807
    :cond_2e4
    if-eqz v32, :cond_256

    .line 3812
    move-object/from16 v0, p0

    iget-object v0, v0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v34, v0

    .line 3813
    .local v34, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v34, :cond_2fa

    .line 3816
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v4, :cond_396

    .line 3817
    const/16 v34, 0x0

    .line 3825
    :cond_2fa
    :goto_2fa
    const/4 v15, 0x0

    .line 3826
    .local v15, "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32f

    const-string v3, "android.intent.action.DIAL"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32f

    const-string v3, "android.intent.action.CALL_BUTTON"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_340

    .line 3830
    :cond_32f
    new-instance v15, Lcom/android/server/wm/CustomStartingWindowData;

    .end local v15    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v15, v3, v4, v5}, Lcom/android/server/wm/CustomStartingWindowData;-><init>(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;I)V

    .line 3833
    .restart local v15    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    :cond_340
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    if-eqz v34, :cond_3a0

    move-object/from16 v0, v34

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_378
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v16

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_3a2

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v14, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v17, v0

    :goto_38a
    move/from16 v14, v37

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZLcom/android/server/wm/CustomStartingWindowData;II)V

    .line 3842
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    goto/16 :goto_256

    .line 3820
    .end local v15    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    :cond_396
    move-object/from16 v0, v34

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_2fa

    .line 3821
    const/16 v34, 0x0

    goto/16 :goto_2fa

    .line 3833
    .restart local v15    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    :cond_3a0
    const/4 v13, 0x0

    goto :goto_378

    :cond_3a2
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    goto :goto_38a

    .line 3847
    .end local v15    # "customStartingWindowData":Lcom/android/server/wm/CustomStartingWindowData;
    .end local v32    # "doShow":Z
    .end local v34    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v35    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v37    # "showStartingIcon":Z
    :cond_3ad
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, mStackId:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_429

    const/16 v23, 0x1

    :goto_3eb
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    move/from16 v25, v0

    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v3, :cond_42c

    const/16 v26, 0x1

    :goto_401
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->skipRotationAnimation:Z

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->policyExpandedDisplayOrientation:I

    move/from16 v31, v0

    invoke-virtual/range {v16 .. v31}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLcom/samsung/android/multiwindow/MultiWindowStyle;ZZI)V

    .line 3854
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3855
    const/16 p5, 0x0

    goto/16 :goto_256

    .line 3847
    :cond_429
    const/16 v23, 0x0

    goto :goto_3eb

    :cond_42c
    const/16 v26, 0x0

    goto :goto_401
.end method

.method final startPausingLocked(ZZZZ)Z
    .registers 18
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Z
    .param p4, "dontWait"    # Z

    .prologue
    .line 1282
    iget-object v0, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_38

    .line 1283
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1289
    const/4 v0, 0x0

    invoke-direct {p0, v0}, completePauseLocked(Z)V

    .line 1293
    :cond_38
    iget-object v1, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1294
    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_4c

    .line 1295
    if-nez p3, :cond_4a

    .line 1296
    const-string v0, "ActivityManager"

    const-string v2, "Trying to pause when nothing is resumed"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 1299
    :cond_4a
    const/4 v0, 0x0

    .line 1449
    :goto_4b
    return v0

    .line 1302
    :cond_4c
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->minimizePenWindowRequested:Z

    .line 1304
    iget-object v0, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_60

    .line 1306
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->pauseChildStacks(Lcom/android/server/am/ActivityRecord;ZZZZ)V

    .line 1311
    :cond_60
    const/4 v0, 0x0

    iput-object v0, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1312
    iput-object v1, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1316
    const/4 v0, 0x0

    iput-object v0, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1317
    iget-object v0, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 1318
    iget-object v0, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    :cond_75
    iput-object v1, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1324
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-nez v0, :cond_8a

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1a0

    :cond_8a
    move-object v0, v1

    :goto_8b
    iput-object v0, p0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1326
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1327
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1330
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 1331
    .local v11, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_b4

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_b4

    .line 1332
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1333
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v2, :cond_b4

    .line 1334
    iget-object v0, p0, mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v2, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    .line 1339
    :cond_b4
    invoke-virtual {p0, v1}, clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 1340
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-nez v0, :cond_121

    .line 1342
    const/4 v9, 0x0

    .line 1344
    .local v9, "isMinimized":Z
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    .line 1345
    if-eqz v9, :cond_df

    .line 1346
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip updateThumbnail for r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_df
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1a3

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1352
    .local v12, "prevTaskPackageName":Ljava/lang/String;
    :goto_f5
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 1353
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHasRecents:Z

    if-eqz v0, :cond_121

    if-eqz v11, :cond_10f

    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_10f

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v0, v2, :cond_10f

    if-eqz p2, :cond_121

    :cond_10f
    const-string v0, "com.sec.knox.knoxsetupwizardclient"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_121

    if-nez v9, :cond_121

    .line 1357
    invoke-virtual {p0, v1}, screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1360
    .end local v9    # "isMinimized":Z
    .end local v12    # "prevTaskPackageName":Ljava/lang/String;
    :cond_121
    invoke-direct {p0}, stopFullyDrawnTraceIfNeeded()V

    .line 1362
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1364
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1be

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1be

    .line 1367
    const/16 v0, 0x753d

    const/4 v2, 0x4

    :try_start_136
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1370
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1371
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v6, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move v5, p1

    move/from16 v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_177} :catch_1a7

    .line 1398
    :goto_177
    if-nez p2, :cond_186

    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_186

    .line 1399
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireLaunchWakelock()V

    .line 1402
    :cond_186
    iget-object v0, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_192

    iget-object v0, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    .line 1412
    :cond_192
    if-nez p2, :cond_197

    .line 1413
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 1418
    :cond_197
    if-eqz p4, :cond_1cd

    .line 1421
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    .line 1422
    const/4 v0, 0x0

    goto/16 :goto_4b

    .line 1324
    .end local v11    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_1a0
    const/4 v0, 0x0

    goto/16 :goto_8b

    .line 1350
    .restart local v9    # "isMinimized":Z
    .restart local v11    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_1a3
    const-string v12, ""

    goto/16 :goto_f5

    .line 1373
    .end local v9    # "isMinimized":Z
    :catch_1a7
    move-exception v8

    .line 1375
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    const-string v2, "Exception thrown during pause"

    invoke-static {v0, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1376
    const/4 v0, 0x0

    iput-object v0, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1377
    const/4 v0, 0x0

    iput-object v0, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1378
    const/4 v0, 0x0

    iput-object v0, p0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1381
    iget-object v0, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_177

    .line 1386
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1be
    const/4 v0, 0x0

    iput-object v0, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1387
    const/4 v0, 0x0

    iput-object v0, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1388
    const/4 v0, 0x0

    iput-object v0, p0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1391
    iget-object v0, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_177

    .line 1428
    :cond_1cd
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1429
    .local v10, "msg":Landroid/os/Message;
    iput-object v1, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1430
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    .line 1431
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v10, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1433
    const/4 v0, 0x1

    goto/16 :goto_4b

    .line 1440
    .end local v10    # "msg":Landroid/os/Message;
    :cond_1e7
    if-nez p3, :cond_1f3

    .line 1446
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1449
    :cond_1f3
    const/4 v0, 0x0

    goto/16 :goto_4b
.end method

.method final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 4390
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_39

    .line 4392
    :cond_15
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_39

    .line 4393
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-nez v0, :cond_39

    .line 4395
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const-string/jumbo v4, "stop-no-history"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 4398
    const-string/jumbo v0, "stopActivityFinished"

    invoke-direct {p0, p1, v0}, adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4399
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 4450
    :cond_38
    :goto_38
    return-void

    .line 4409
    :cond_39
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_38

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_38

    .line 4410
    const-string/jumbo v0, "stopActivity"

    invoke-direct {p0, p1, v0}, adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4411
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 4413
    const/4 v0, 0x0

    :try_start_4d
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 4416
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4419
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_63

    .line 4420
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    .line 4422
    :cond_63
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 4430
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 4431
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 4434
    :cond_7c
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 4435
    .local v7, "msg":Landroid/os/Message;
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_8b} :catch_8c

    goto :goto_38

    .line 4436
    .end local v7    # "msg":Landroid/os/Message;
    :catch_8c
    move-exception v6

    .line 4440
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    const-string v1, "Exception thrown during pause"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4442
    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 4444
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4445
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_38

    .line 4446
    const-string/jumbo v0, "stop-except"

    invoke-virtual {p0, p1, v8, v0}, destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    goto :goto_38
.end method

.method final switchUserLocked(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 1006
    iget v6, p0, mCurrentUser:I

    if-ne v6, p1, :cond_5

    .line 1056
    :goto_4
    return-void

    .line 1009
    :cond_5
    iput p1, p0, mCurrentUser:I

    .line 1012
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1013
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_6b

    .line 1014
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 1018
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v6

    if-nez v6, :cond_29

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_68

    .line 1022
    :cond_29
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1023
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_SupportDeviceReporting"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 1027
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1028
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "j":I
    :goto_47
    if-ltz v3, :cond_62

    .line 1029
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1030
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_65

    invoke-virtual {p0, v4}, okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 1033
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V

    .line 1040
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "j":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_62
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 1028
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v3    # "j":I
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_65
    add-int/lit8 v3, v3, -0x1

    goto :goto_47

    .line 1043
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "j":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1049
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6b
    iget-object v6, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->switchUserLocked()V

    goto :goto_4
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 609
    iget-object v2, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_8
    if-ltz v1, :cond_1a

    .line 610
    iget-object v2, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 611
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_17

    .line 615
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :goto_16
    return-object v0

    .line 609
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 615
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 7961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityStack{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tasks}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final topActivity()Lcom/android/server/am/ActivityRecord;
    .registers 6

    .prologue
    .line 588
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_8
    if-ltz v3, :cond_2d

    .line 589
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 590
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_2a

    .line 591
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 592
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_27

    .line 597
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_26
    return-object v2

    .line 590
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 588
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2a
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 597
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2d
    const/4 v2, 0x0

    goto :goto_26
.end method

.method final topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;
    .registers 7

    .prologue
    .line 677
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_8
    if-ltz v4, :cond_4c

    .line 678
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 679
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_49

    .line 680
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 681
    .local v2, "activityRecord":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_29

    .line 679
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 684
    :cond_29
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 685
    .local v3, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v5, 0x20000

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_42

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_26

    const/high16 v5, 0x40000

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_26

    .line 688
    :cond_42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 692
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_48
    return-object v5

    .line 677
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    :cond_49
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 692
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_4c
    const/4 v5, 0x0

    goto :goto_48
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .prologue
    .line 570
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_8
    if-ltz v4, :cond_3b

    .line 571
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 572
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, p2, :cond_19

    .line 570
    :cond_16
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 575
    :cond_19
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 576
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_21
    if-ltz v1, :cond_16

    .line 577
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 579
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_38

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v5, :cond_38

    invoke-virtual {p0, v2}, okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 584
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_37
    return-object v2

    .line 576
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "i":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 584
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3b
    const/4 v2, 0x0

    goto :goto_37
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 3
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;
    .registers 7
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "includeMinimize"    # Z

    .prologue
    .line 527
    iget-object v2, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_8
    if-ltz v1, :cond_27

    .line 528
    iget-object v2, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 529
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_24

    .line 532
    if-nez p2, :cond_23

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_24

    .line 543
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_23
    :goto_23
    return-object v0

    .line 527
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 543
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_27
    const/4 v0, 0x0

    goto :goto_23
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 8
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 547
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_8
    if-ltz v4, :cond_39

    .line 548
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 549
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 550
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_36

    .line 551
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 552
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_33

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v5, :cond_33

    if-eq v2, p1, :cond_33

    invoke-virtual {p0, v2}, okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 557
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_32
    return-object v2

    .line 550
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 547
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_36
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 557
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_39
    const/4 v2, 0x0

    goto :goto_32
.end method

.method final topTask()Lcom/android/server/am/TaskRecord;
    .registers 4

    .prologue
    .line 601
    iget-object v1, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 602
    .local v0, "size":I
    if-lez v0, :cond_13

    .line 603
    iget-object v1, p0, mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 605
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public unhandledBackLocked()V
    .registers 10

    .prologue
    .line 6883
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 6885
    .local v8, "top":I
    if-ltz v8, :cond_2c

    .line 6886
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 6887
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 6888
    .local v7, "activityTop":I
    if-lez v7, :cond_2c

    .line 6889
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "unhandled-back"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 6893
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityTop":I
    :cond_2c
    return-void
.end method

.method final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 638
    iget-object v1, p0, mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 639
    .local v0, "hadit":Z
    iget-object v1, p0, mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    return v0
.end method

.method updateOverrideConfiguration(Landroid/content/res/Configuration;)Z
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 7967
    iget-object v0, p0, mOverrideConfig:Landroid/content/res/Configuration;

    .line 7968
    .local v0, "oldConfig":Landroid/content/res/Configuration;
    if-nez p1, :cond_6

    sget-object p1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .end local p1    # "newConfig":Landroid/content/res/Configuration;
    :cond_6
    iput-object p1, p0, mOverrideConfig:Landroid/content/res/Configuration;

    .line 7972
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v2, p0, mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    iput-boolean v1, p0, mFullscreen:Z

    .line 7973
    iget-object v1, p0, mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method updatePausingActivitiesAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V
    .registers 16
    .param p1, "movedTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const-wide/16 v6, 0x0

    const/16 v12, 0x65

    .line 7794
    if-eq p0, p2, :cond_61

    .line 7796
    iget-object v8, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7797
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_54

    .line 7798
    iget-object v8, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 7799
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v8, p1, :cond_4f

    .line 7800
    iget-object v8, p2, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_45

    .line 7801
    iget-object v8, p2, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7803
    iget-object v8, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 7804
    .local v2, "msg":Landroid/os/Message;
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7805
    iget-wide v8, v3, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    const-wide/16 v10, 0x1f4

    add-long/2addr v8, v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 7806
    .local v4, "revisedTimeout":J
    cmp-long v8, v4, v6

    if-lez v8, :cond_52

    .line 7808
    :goto_40
    iget-object v8, p2, mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7810
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "revisedTimeout":J
    :cond_45
    iget-object v8, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 7811
    iget-object v8, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7797
    :cond_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v4    # "revisedTimeout":J
    :cond_52
    move-wide v4, v6

    .line 7806
    goto :goto_40

    .line 7815
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "revisedTimeout":J
    :cond_54
    iget-object v6, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_61

    iget-object v6, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v6, p1, :cond_61

    .line 7816
    const/4 v6, 0x0

    iput-object v6, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 7828
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_61
    return-void
.end method

.method updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toFront"    # Z

    .prologue
    .line 5759
    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_13

    .line 5760
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 5764
    if-nez p2, :cond_13

    .line 5765
    iget-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 5768
    :cond_13
    return-void
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 5721
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, updateTransitLocked(ILandroid/os/Bundle;I)V

    .line 5722
    return-void
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;I)V
    .registers 9
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "flags"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5726
    if-eqz p2, :cond_13

    .line 5727
    invoke-virtual {p0, v3}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5728
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_31

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_31

    .line 5729
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 5736
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_13
    :goto_13
    invoke-virtual {p0, v3}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5737
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_35

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eqz v1, :cond_35

    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_35

    .line 5742
    iget-object v1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v2, 0x65

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    .line 5756
    :goto_30
    return-void

    .line 5731
    :cond_31
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_13

    .line 5745
    :cond_35
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v1

    :goto_3d
    invoke-virtual {v2, p1, v4, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    goto :goto_30

    :cond_41
    invoke-virtual {p0}, getDisplayId()I

    move-result v1

    goto :goto_3d
.end method

.method final validateAppTokensLocked()V
    .registers 12

    .prologue
    .line 3872
    iget-object v8, p0, mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3873
    iget-object v8, p0, mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {p0}, numActivities()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 3874
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3875
    .local v4, "numTasks":I
    const/4 v7, 0x0

    .local v7, "taskNdx":I
    :goto_15
    if-ge v7, v4, :cond_4f

    .line 3876
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 3877
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3878
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 3875
    :cond_27
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 3881
    :cond_2a
    new-instance v2, Lcom/android/server/wm/TaskGroup;

    invoke-direct {v2}, Lcom/android/server/wm/TaskGroup;-><init>()V

    .line 3882
    .local v2, "group":Lcom/android/server/wm/TaskGroup;
    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v8, v2, Lcom/android/server/wm/TaskGroup;->taskId:I

    .line 3883
    iget-object v8, p0, mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3884
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3885
    .local v3, "numActivities":I
    const/4 v1, 0x0

    .local v1, "activityNdx":I
    :goto_3d
    if-ge v1, v3, :cond_27

    .line 3886
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3887
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v2, Lcom/android/server/wm/TaskGroup;->tokens:Ljava/util/ArrayList;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3885
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 3890
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "group":Lcom/android/server/wm/TaskGroup;
    .end local v3    # "numActivities":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4f
    iget-object v8, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v9, p0, mStackId:I

    iget-object v10, p0, mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->validateAppTokens(ILjava/util/List;)V

    .line 3891
    return-void
.end method

.method willActivityBeVisibleLocked(Landroid/os/IBinder;)Z
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 6679
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_a
    if-ltz v3, :cond_38

    .line 6680
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 6681
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1c
    if-ltz v1, :cond_35

    .line 6682
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 6683
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-ne v4, p1, :cond_2a

    move v6, v5

    .line 6697
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_29
    :goto_29
    return v6

    .line 6686
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    :cond_2a
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_32

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_29

    .line 6681
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 6679
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_35
    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    .line 6691
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_38
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 6692
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_29

    .line 6695
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_5b

    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6697
    :cond_5b
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_62

    move v4, v5

    :goto_60
    move v6, v4

    goto :goto_29

    :cond_62
    move v4, v6

    goto :goto_60
.end method
