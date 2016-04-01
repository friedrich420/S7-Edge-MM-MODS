.class final Lcom/android/server/am/ActivityRecord;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityRecord$Token;
    }
.end annotation


# static fields
.field static final ACTIVITY_ICON_SUFFIX:Ljava/lang/String; = "_activity_icon_"

.field static final APPLICATION_ACTIVITY_TYPE:I = 0x0

.field private static final ATTR_COMPONENTSPECIFIED:Ljava/lang/String; = "component_specified"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_LAUNCHEDFROMPACKAGE:Ljava/lang/String; = "launched_from_package"

.field private static final ATTR_LAUNCHEDFROMUID:Ljava/lang/String; = "launched_from_uid"

.field private static final ATTR_RESOLVEDTYPE:Ljava/lang/String; = "resolved_type"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field static final FLOATING_ACTIVITY_TYPE:I = 0x3

.field static final HOME_ACTIVITY_TYPE:I = 0x1

.field public static ISOLATED_BASE:I = 0x0

.field private static final LAUNCH_REPORTING_BASE:J

.field static final RECENTS_ACTIVITY_TYPE:I = 0x2

.field public static final RECENTS_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui.recents"

.field static final SAMSUNG_EXPAND_HOME_ACTIVITY_TYPE:I = 0x6

.field static final SAMSUNG_HOME_ACTIVITY_TYPE:I = 0x4

.field static final SAMSUNG_PINNED_HOME_ACTIVITY_TYPE:I = 0x5

.field private static final SHOW_ACTIVITY_START_TIME:Z = true

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_PERSISTABLEBUNDLE:Ljava/lang/String; = "persistable_bundle"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_THUMBNAILS:Ljava/lang/String; = "ActivityManager"

.field static final TAG_TIMELINE:Ljava/lang/String; = "Timeline"


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field appTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field final appToken:Landroid/view/IApplicationToken$Stub;

.field bMultiInstance:Z

.field compat:Landroid/content/res/CompatibilityInfo;

.field final componentSpecified:Z

.field configChangeFlags:I

.field configDestroy:Z

.field configuration:Landroid/content/res/Configuration;

.field connections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field cpuTimeAtResume:J

.field createTime:J

.field delayedResume:Z

.field displayStartTime:J

.field dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

.field finishing:Z

.field forceNewConfig:Z

.field frontOfTask:Z

.field frozenBeforeDestroy:Z

.field fullLaunch:Z

.field fullscreen:Z

.field fullyDrawnStartTime:J

.field hasBeenLaunched:Z

.field haveState:Z

.field icicle:Landroid/os/Bundle;

.field icon:I

.field idle:Z

.field immersive:Z

.field private inHistory:Z

.field final info:Landroid/content/pm/ActivityInfo;

.field final intent:Landroid/content/Intent;

.field isExpandable:Z

.field isolatedBaseCouple:I

.field keysPaused:Z

.field labelRes:I

.field lastLaunchTime:J

.field lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field lastVisibleTime:J

.field launchCount:I

.field launchFailed:Z

.field launchMode:I

.field launchTickTime:J

.field launchedBehindVRApp:Z

.field final launchedFromPackage:Ljava/lang/String;

.field final launchedFromUid:I

.field logo:I

.field mActivityType:I

.field mChildContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;",
            ">;"
        }
    .end annotation
.end field

.field mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

.field mIsLastShownWhenLocked:Z

.field mLaunchTaskBehind:Z

.field mNeedToIdle:Z

.field mSingleTaskForDisplay:Z

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStartingWindowShown:Z

.field public minimizePenWindowRequested:Z

.field multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field newIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field final noDisplay:Z

.field nonLocalizedLabel:Ljava/lang/CharSequence;

.field nowVisible:Z

.field final packageName:Ljava/lang/String;

.field pauseTime:J

.field public pendingNotifyMultiWindowFocus:I

.field public pendingNotifyMultiWindowStyle:Z

.field pendingOptions:Landroid/app/ActivityOptions;

.field pendingResults:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field persistentState:Landroid/os/PersistableBundle;

.field policyExpandedDisplayOrientation:I

.field policyOppositeDisplayOrientation:I

.field final processName:Ljava/lang/String;

.field final realActivity:Landroid/content/ComponentName;

.field realTheme:I

.field final requestCode:I

.field final resolvedType:Ljava/lang/String;

.field resultTo:Lcom/android/server/am/ActivityRecord;

.field final resultWho:Ljava/lang/String;

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field returningOptions:Landroid/app/ActivityOptions;

.field final rootVoiceInteraction:Z

.field final service:Lcom/android/server/am/ActivityManagerService;

.field final shortComponentName:Ljava/lang/String;

.field public skipRotationAnimation:Z

.field sleeping:Z

.field sourceActivity:Landroid/content/ComponentName;

.field stackConfigOverride:Landroid/content/res/Configuration;

.field startTime:J

.field state:Lcom/android/server/am/ActivityStack$ActivityState;

.field final stateNotNeeded:Z

.field stopped:Z

.field stringName:Ljava/lang/String;

.field task:Lcom/android/server/am/TaskRecord;

.field final taskAffinity:Ljava/lang/String;

.field taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field theme:I

.field uriPermissions:Lcom/android/server/am/UriPermissionOwner;

.field final userId:I

.field virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

.field visible:Z

.field final vrActivity:Z

.field windowFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 163
    const-string/jumbo v0, "debug.launch.reporting.base"

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, LAUNCH_REPORTING_BASE:J

    .line 245
    const/4 v0, 0x1

    sput v0, ISOLATED_BASE:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)V
    .registers 32
    .param p1, "_service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_caller"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "_launchedFromUid"    # I
    .param p4, "_launchedFromPackage"    # Ljava/lang/String;
    .param p5, "_intent"    # Landroid/content/Intent;
    .param p6, "_resolvedType"    # Ljava/lang/String;
    .param p7, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p8, "_configuration"    # Landroid/content/res/Configuration;
    .param p9, "_resultTo"    # Lcom/android/server/am/ActivityRecord;
    .param p10, "_resultWho"    # Ljava/lang/String;
    .param p11, "_reqCode"    # I
    .param p12, "_componentSpecified"    # Z
    .param p13, "_rootVoiceInteraction"    # Z
    .param p14, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p15, "container"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p16, "options"    # Landroid/os/Bundle;
    .param p17, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p18, "sourceToken"    # Landroid/os/IBinder;

    .prologue
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, createTime:J

    .line 224
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, mChildContainers:Ljava/util/ArrayList;

    .line 229
    const/4 v8, -0x1

    iput v8, p0, policyOppositeDisplayOrientation:I

    .line 230
    const/4 v8, -0x2

    iput v8, p0, policyExpandedDisplayOrientation:I

    .line 231
    const/4 v8, 0x0

    iput-boolean v8, p0, mSingleTaskForDisplay:Z

    .line 234
    const/4 v8, 0x0

    iput-boolean v8, p0, isExpandable:Z

    .line 238
    sget-object v8, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-object v8, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 241
    const/4 v8, 0x0

    iput v8, p0, pendingNotifyMultiWindowFocus:I

    .line 246
    const/4 v8, 0x0

    iput-boolean v8, p0, minimizePenWindowRequested:Z

    .line 248
    const/4 v8, 0x0

    iput-boolean v8, p0, mNeedToIdle:Z

    .line 252
    const/4 v8, 0x0

    iput-boolean v8, p0, skipRotationAnimation:Z

    .line 259
    const/4 v8, 0x0

    iput-boolean v8, p0, mStartingWindowShown:Z

    .line 629
    iput-object p1, p0, service:Lcom/android/server/am/ActivityManagerService;

    .line 630
    new-instance v8, Lcom/android/server/am/ActivityRecord$Token;

    iget-object v9, p0, service:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v8, p0, v9}, Lcom/android/server/am/ActivityRecord$Token;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v8, p0, appToken:Landroid/view/IApplicationToken$Stub;

    .line 631
    move/from16 v0, p3

    iput v0, p0, launchedFromUid:I

    .line 632
    move-object/from16 v0, p4

    iput-object v0, p0, launchedFromPackage:Ljava/lang/String;

    .line 633
    if-eqz p7, :cond_305

    .line 634
    move-object/from16 v0, p7

    iput-object v0, p0, info:Landroid/content/pm/ActivityInfo;

    .line 635
    move-object/from16 v0, p7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    iput v8, p0, userId:I

    .line 640
    :goto_54
    move-object/from16 v0, p5

    iput-object v0, p0, intent:Landroid/content/Intent;

    .line 641
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, shortComponentName:Ljava/lang/String;

    .line 642
    move-object/from16 v0, p6

    iput-object v0, p0, resolvedType:Ljava/lang/String;

    .line 643
    move/from16 v0, p12

    iput-boolean v0, p0, componentSpecified:Z

    .line 644
    move/from16 v0, p13

    iput-boolean v0, p0, rootVoiceInteraction:Z

    .line 645
    move-object/from16 v0, p8

    iput-object v0, p0, configuration:Landroid/content/res/Configuration;

    .line 646
    if-eqz p15, :cond_30d

    move-object/from16 v0, p15

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v8, v8, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    :goto_7a
    iput-object v8, p0, stackConfigOverride:Landroid/content/res/Configuration;

    .line 648
    move-object/from16 v0, p9

    iput-object v0, p0, resultTo:Lcom/android/server/am/ActivityRecord;

    .line 649
    move-object/from16 v0, p10

    iput-object v0, p0, resultWho:Ljava/lang/String;

    .line 650
    move/from16 v0, p11

    iput v0, p0, requestCode:I

    .line 651
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v8, p0, state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 652
    const/4 v8, 0x0

    iput-boolean v8, p0, frontOfTask:Z

    .line 653
    const/4 v8, 0x0

    iput-boolean v8, p0, launchFailed:Z

    .line 654
    const/4 v8, 0x0

    iput-boolean v8, p0, stopped:Z

    .line 655
    const/4 v8, 0x0

    iput-boolean v8, p0, delayedResume:Z

    .line 656
    const/4 v8, 0x0

    iput-boolean v8, p0, finishing:Z

    .line 657
    const/4 v8, 0x0

    iput-boolean v8, p0, configDestroy:Z

    .line 658
    const/4 v8, 0x0

    iput-boolean v8, p0, keysPaused:Z

    .line 659
    const/4 v8, 0x0

    iput-boolean v8, p0, inHistory:Z

    .line 660
    const/4 v8, 0x1

    iput-boolean v8, p0, visible:Z

    .line 661
    const/4 v8, 0x0

    iput-boolean v8, p0, nowVisible:Z

    .line 662
    const/4 v8, 0x0

    iput-boolean v8, p0, idle:Z

    .line 663
    const/4 v8, 0x0

    iput-boolean v8, p0, hasBeenLaunched:Z

    .line 664
    move-object/from16 v0, p14

    iput-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 665
    move-object/from16 v0, p15

    iput-object v0, p0, mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 666
    if-eqz p16, :cond_da

    .line 667
    new-instance v8, Landroid/app/ActivityOptions;

    move-object/from16 v0, p16

    invoke-direct {v8, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    iput-object v8, p0, pendingOptions:Landroid/app/ActivityOptions;

    .line 668
    iget-object v8, p0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getLaunchTaskBehind()Z

    move-result v8

    iput-boolean v8, p0, mLaunchTaskBehind:Z

    .line 669
    iget-object v8, p0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getUsageTimeReport()Landroid/app/PendingIntent;

    move-result-object v7

    .line 670
    .local v7, "usageReport":Landroid/app/PendingIntent;
    if-eqz v7, :cond_da

    .line 671
    new-instance v8, Lcom/android/server/am/AppTimeTracker;

    invoke-direct {v8, v7}, Lcom/android/server/am/AppTimeTracker;-><init>(Landroid/app/PendingIntent;)V

    iput-object v8, p0, appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 678
    .end local v7    # "usageReport":Landroid/app/PendingIntent;
    :cond_da
    const/4 v8, 0x1

    iput-boolean v8, p0, haveState:Z

    .line 709
    iget-object v8, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    move-object/from16 v0, p17

    invoke-virtual {v8, p0, v0}, Lcom/android/server/am/VirtualScreenPolicy;->applyVirtualScreenAttrs(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/VirtualScreenAttrs;

    move-result-object v8

    iput-object v8, p0, virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    .line 713
    if-eqz p7, :cond_3b3

    .line 714
    move-object/from16 v0, p7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v8, :cond_fe

    move-object/from16 v0, p7

    iget v8, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v8, :cond_fe

    move-object/from16 v0, p7

    iget v8, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_311

    .line 717
    :cond_fe
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, p0, realActivity:Landroid/content/ComponentName;

    .line 722
    :goto_104
    move-object/from16 v0, p7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v8, p0, taskAffinity:Ljava/lang/String;

    .line 723
    move-object/from16 v0, p7

    iget v8, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_322

    const/4 v8, 0x1

    :goto_113
    iput-boolean v8, p0, stateNotNeeded:Z

    .line 725
    move-object/from16 v0, p7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, p0, appInfo:Landroid/content/pm/ApplicationInfo;

    .line 726
    move-object/from16 v0, p7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v8, p0, nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 727
    move-object/from16 v0, p7

    iget v8, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v8, p0, labelRes:I

    .line 728
    iget-object v8, p0, nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v8, :cond_13b

    iget v8, p0, labelRes:I

    if-nez v8, :cond_13b

    .line 729
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 730
    .local v3, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v8, p0, nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 731
    iget v8, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v8, p0, labelRes:I

    .line 733
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_13b
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v8

    iput v8, p0, icon:I

    .line 734
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v8

    iput v8, p0, logo:I

    .line 735
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v8

    iput v8, p0, theme:I

    .line 736
    iget v8, p0, theme:I

    iput v8, p0, realTheme:I

    .line 737
    iget v8, p0, realTheme:I

    if-nez v8, :cond_164

    .line 738
    move-object/from16 v0, p7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0xb

    if-ge v8, v9, :cond_325

    const v8, 0x1030005

    :goto_162
    iput v8, p0, realTheme:I

    .line 743
    :cond_164
    move-object/from16 v0, p7

    iget v8, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v8, v8, 0x200

    if-eqz v8, :cond_173

    .line 744
    iget v8, p0, windowFlags:I

    const/high16 v9, 0x1000000

    or-int/2addr v8, v9

    iput v8, p0, windowFlags:I

    .line 746
    :cond_173
    move-object/from16 v0, p7

    iget v8, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_32a

    if-eqz p2, :cond_32a

    move-object/from16 v0, p7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_193

    move-object/from16 v0, p7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v8, v9, :cond_32a

    .line 750
    :cond_193
    iget-object v8, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v8, p0, processName:Ljava/lang/String;

    .line 755
    :goto_197
    move-object/from16 v0, p7

    iget v8, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_1a6

    .line 756
    iget-object v8, p0, intent:Landroid/content/Intent;

    const/high16 v9, 0x800000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 759
    :cond_1a6
    move-object/from16 v0, p7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v8, p0, packageName:Ljava/lang/String;

    .line 760
    move-object/from16 v0, p7

    iget v8, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v8, p0, launchMode:I

    .line 762
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v8

    iget-object v9, p0, packageName:Ljava/lang/String;

    iget v10, p0, realTheme:I

    sget-object v11, Lcom/android/internal/R$styleable;->Window:[I

    iget v12, p0, userId:I

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v5

    .line 764
    .local v5, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v5, :cond_332

    iget-object v8, v5, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-nez v8, :cond_1e4

    iget-object v8, v5, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_332

    iget-object v8, v5, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v9, 0x19

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_332

    :cond_1e4
    const/4 v6, 0x1

    .line 771
    .local v6, "translucent":Z
    :goto_1e5
    if-eqz v5, :cond_335

    iget-object v8, v5, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-nez v8, :cond_335

    if-nez v6, :cond_335

    const/4 v8, 0x1

    :goto_1f4
    iput-boolean v8, p0, fullscreen:Z

    .line 774
    if-eqz v5, :cond_338

    iget-object v8, v5, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_338

    const/4 v8, 0x1

    :goto_204
    iput-boolean v8, p0, noDisplay:Z

    .line 777
    if-eqz p12, :cond_212

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    move/from16 v0, p3

    if-eq v0, v8, :cond_212

    if-nez p3, :cond_33b

    :cond_212
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33b

    const-string v8, "android.intent.category.HOME"

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_33b

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_33b

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_33b

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_33b

    iget-object v8, p0, intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x10000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_33b

    invoke-virtual {p0}, isNotResolverActivity()Z

    move-result v8

    if-eqz v8, :cond_33b

    .line 787
    const/4 v8, 0x1

    iput v8, p0, mActivityType:I

    .line 790
    invoke-static/range {p7 .. p7}, Lcom/android/server/am/DualScreenPolicy;->isFullViewLaunchWithPriority(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-eqz v8, :cond_25c

    .line 791
    const/4 v8, 0x6

    iput v8, p0, mActivityType:I

    .line 816
    :cond_25c
    :goto_25c
    iget-object v8, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, p17

    move-object/from16 v1, p18

    invoke-virtual {v8, p0, p2, v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->applyMultiWindowStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    iput-object v8, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 817
    if-eqz p17, :cond_284

    move-object/from16 v0, p17

    iget-object v8, v0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v9, 0x1000

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_280

    move-object/from16 v0, p17

    iget v8, v0, isolatedBaseCouple:I

    sget v9, ISOLATED_BASE:I

    if-ne v8, v9, :cond_284

    .line 819
    :cond_280
    sget v8, ISOLATED_BASE:I

    iput v8, p0, isolatedBaseCouple:I

    .line 827
    :cond_284
    iget-object v8, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_294

    .line 828
    iget-object v8, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 830
    :cond_294
    new-instance v8, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v9, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v8, p0, lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 831
    iget-object v8, p0, lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setNull(Z)V

    .line 832
    iget-object v8, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2bc

    .line 833
    const/4 v8, 0x3

    iput v8, p0, mActivityType:I

    .line 834
    iget-object v8, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v9, p0, intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getWindowScale()F

    move-result v9

    invoke-virtual {v8, p0, v9}, Lcom/android/server/am/MultiWindowPolicy;->setFloatingBounds(Lcom/android/server/am/ActivityRecord;F)V

    .line 839
    :cond_2bc
    move-object/from16 v0, p7

    iget v8, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v8, v8, 0x800

    if-eqz v8, :cond_3b0

    const/4 v8, 0x1

    :goto_2c5
    iput-boolean v8, p0, immersive:Z

    .line 855
    .end local v5    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v6    # "translucent":Z
    :goto_2c7
    iget-object v8, p0, info:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_3d3

    iget-object v8, p0, info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_3d3

    iget-object v8, p0, info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 856
    .local v4, "applicationMetaData":Landroid/os/Bundle;
    :goto_2d7
    iget-object v8, p0, info:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_3d6

    iget-object v8, p0, info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 857
    .local v2, "activityMetaData":Landroid/os/Bundle;
    :goto_2df
    if-eqz v4, :cond_3fc

    .line 858
    const-string/jumbo v8, "vr_only"

    const-string v9, "com.samsung.android.vr.application.mode"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d9

    .line 859
    const/4 v8, 0x1

    iput-boolean v8, p0, vrActivity:Z

    .line 876
    :goto_2f3
    const/4 v8, 0x0

    iput-object v8, p0, sourceActivity:Landroid/content/ComponentName;

    .line 877
    iget-object v8, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v9, p0, info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p5

    invoke-virtual {v8, v9, v0}, Lcom/android/server/am/MultiWindowPolicy;->getEnableMultiInstance(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z

    move-result v8

    iput-boolean v8, p0, bMultiInstance:Z

    .line 891
    return-void

    .line 637
    .end local v2    # "activityMetaData":Landroid/os/Bundle;
    .end local v4    # "applicationMetaData":Landroid/os/Bundle;
    :cond_305
    const/4 v8, 0x0

    iput-object v8, p0, info:Landroid/content/pm/ActivityInfo;

    .line 638
    const/4 v8, -0x1

    iput v8, p0, userId:I

    goto/16 :goto_54

    .line 646
    :cond_30d
    sget-object v8, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto/16 :goto_7a

    .line 719
    :cond_311
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, p7

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p7

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, realActivity:Landroid/content/ComponentName;

    goto/16 :goto_104

    .line 723
    :cond_322
    const/4 v8, 0x0

    goto/16 :goto_113

    .line 738
    :cond_325
    const v8, 0x103006b

    goto/16 :goto_162

    .line 752
    :cond_32a
    move-object/from16 v0, p7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v8, p0, processName:Ljava/lang/String;

    goto/16 :goto_197

    .line 764
    .restart local v5    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_332
    const/4 v6, 0x0

    goto/16 :goto_1e5

    .line 771
    .restart local v6    # "translucent":Z
    :cond_335
    const/4 v8, 0x0

    goto/16 :goto_1f4

    .line 774
    :cond_338
    const/4 v8, 0x0

    goto/16 :goto_204

    .line 795
    :cond_33b
    iget-object v8, p0, realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.systemui.recents"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_34e

    .line 796
    const/4 v8, 0x2

    iput v8, p0, mActivityType:I

    goto/16 :goto_25c

    .line 798
    :cond_34e
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36f

    const-string v8, "com.samsung.android.dualscreen.intent.category.SAMSUNG_HOME"

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_36f

    invoke-virtual {p0}, isNotResolverActivity()Z

    move-result v8

    if-eqz v8, :cond_36f

    .line 801
    const/4 v8, 0x4

    iput v8, p0, mActivityType:I

    goto/16 :goto_25c

    .line 802
    :cond_36f
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38a

    const-string v8, "com.samsung.android.dualscreen.intent.category.SAMSUNG_PINNED_HOME"

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_38a

    .line 804
    const/4 v8, 0x5

    iput v8, p0, mActivityType:I

    goto/16 :goto_25c

    .line 805
    :cond_38a
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3ab

    const-string v8, "com.samsung.android.dualscreen.intent.category.SAMSUNG_FULLVIEW_HOME"

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3ab

    invoke-virtual {p0}, isNotResolverActivity()Z

    move-result v8

    if-eqz v8, :cond_3ab

    .line 808
    const/4 v8, 0x1

    iput v8, p0, mActivityType:I

    goto/16 :goto_25c

    .line 811
    :cond_3ab
    const/4 v8, 0x0

    iput v8, p0, mActivityType:I

    goto/16 :goto_25c

    .line 839
    :cond_3b0
    const/4 v8, 0x0

    goto/16 :goto_2c5

    .line 841
    .end local v5    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v6    # "translucent":Z
    :cond_3b3
    const/4 v8, 0x0

    iput-object v8, p0, realActivity:Landroid/content/ComponentName;

    .line 842
    const/4 v8, 0x0

    iput-object v8, p0, taskAffinity:Ljava/lang/String;

    .line 843
    const/4 v8, 0x0

    iput-boolean v8, p0, stateNotNeeded:Z

    .line 844
    const/4 v8, 0x0

    iput-object v8, p0, appInfo:Landroid/content/pm/ApplicationInfo;

    .line 845
    const/4 v8, 0x0

    iput-object v8, p0, processName:Ljava/lang/String;

    .line 846
    const/4 v8, 0x0

    iput-object v8, p0, packageName:Ljava/lang/String;

    .line 847
    const/4 v8, 0x1

    iput-boolean v8, p0, fullscreen:Z

    .line 848
    const/4 v8, 0x0

    iput-boolean v8, p0, noDisplay:Z

    .line 849
    const/4 v8, 0x0

    iput v8, p0, mActivityType:I

    .line 850
    const/4 v8, 0x0

    iput-boolean v8, p0, immersive:Z

    goto/16 :goto_2c7

    .line 855
    :cond_3d3
    const/4 v4, 0x0

    goto/16 :goto_2d7

    .line 856
    .restart local v4    # "applicationMetaData":Landroid/os/Bundle;
    :cond_3d6
    const/4 v2, 0x0

    goto/16 :goto_2df

    .line 860
    .restart local v2    # "activityMetaData":Landroid/os/Bundle;
    :cond_3d9
    const-string/jumbo v8, "dual"

    const-string v9, "com.samsung.android.vr.application.mode"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f7

    if-eqz v2, :cond_3f7

    const-string v8, "com.samsung.android.vr.activity"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3f7

    .line 862
    const/4 v8, 0x1

    iput-boolean v8, p0, vrActivity:Z

    goto/16 :goto_2f3

    .line 864
    :cond_3f7
    const/4 v8, 0x0

    iput-boolean v8, p0, vrActivity:Z

    goto/16 :goto_2f3

    .line 867
    :cond_3fc
    const/4 v8, 0x0

    iput-boolean v8, p0, vrActivity:Z

    goto/16 :goto_2f3
.end method

.method static activityResumedLocked(Landroid/os/IBinder;)V
    .registers 5
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    const/high16 v3, 0x10000000

    const/4 v2, 0x0

    .line 1652
    invoke-static {p0}, forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1654
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    iput-object v1, v0, icicle:Landroid/os/Bundle;

    .line 1655
    iput-boolean v2, v0, haveState:Z

    .line 1659
    iget-object v1, v0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1660
    iget-object v1, v0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1661
    iget-object v1, v0, task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_2e

    iget-object v1, v0, task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_2e

    .line 1662
    iget-object v1, v0, task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v0, task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1667
    :cond_2e
    return-void
.end method

.method private static activityTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 1851
    packed-switch p0, :pswitch_data_1e

    .line 1863
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 1852
    :pswitch_8
    const-string v0, "APPLICATION_ACTIVITY_TYPE"

    goto :goto_7

    .line 1853
    :pswitch_b
    const-string v0, "HOME_ACTIVITY_TYPE"

    goto :goto_7

    .line 1854
    :pswitch_e
    const-string v0, "RECENTS_ACTIVITY_TYPE"

    goto :goto_7

    .line 1856
    :pswitch_11
    const-string v0, "FLOATING_ACTIVITY_TYPE"

    goto :goto_7

    .line 1859
    :pswitch_14
    const-string v0, "SAMSUNG_HOME_ACTIVITY_TYPE"

    goto :goto_7

    .line 1860
    :pswitch_17
    const-string v0, "SAMSUNG_PINNED_HOME_ACTIVITY_TYPE"

    goto :goto_7

    .line 1861
    :pswitch_1a
    const-string v0, "SAMSUNG_EXPAND_HOME_ACTIVITY_TYPE"

    goto :goto_7

    .line 1851
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private static createImageFilename(JI)Ljava/lang/String;
    .registers 5
    .param p0, "createTime"    # J
    .param p2, "taskId"    # I

    .prologue
    .line 1727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_activity_icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    .line 610
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/android/server/am/ActivityRecord$Token;

    move-object v2, v0

    # invokes: Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    invoke-static {v2}, Lcom/android/server/am/ActivityRecord$Token;->access$000(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v2

    .line 613
    :goto_8
    return-object v2

    .line 611
    :catch_9
    move-exception v1

    .line 612
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad activity token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    const/4 v2, 0x0

    goto :goto_8
.end method

.method static getStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStack;
    .registers 3
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1688
    invoke-static {p0}, isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1689
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_b

    .line 1690
    iget-object v1, v0, task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1692
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method static getTaskForActivityLocked(Landroid/os/IBinder;Z)I
    .registers 7
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "onlyRoot"    # Z

    .prologue
    const/4 v3, -0x1

    .line 1670
    invoke-static {p0}, forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1671
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_8

    .line 1679
    :cond_7
    :goto_7
    return v3

    .line 1674
    :cond_8
    iget-object v2, v1, task:Lcom/android/server/am/TaskRecord;

    .line 1675
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v4, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1676
    .local v0, "activityNdx":I
    if-ltz v0, :cond_7

    if-eqz p1, :cond_1a

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v4

    if-gt v0, v4, :cond_7

    .line 1679
    :cond_1a
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_7
.end method

.method static isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 3
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1683
    invoke-static {p0}, forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1684
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_f

    iget-object v1, v0, task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private reportLaunchTimeLocked(J)V
    .registers 16
    .param p1, "curTime"    # J

    .prologue
    .line 1419
    iget-object v1, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1420
    .local v9, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v9, :cond_7

    .line 1481
    :goto_6
    return-void

    .line 1423
    :cond_7
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1424
    const-string v1, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<GATE-M>APP_FULLY_LOADED_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</GATE-M>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_2d
    iget-wide v2, p0, displayStartTime:J

    sub-long v4, p1, v2

    .line 1427
    .local v4, "thisTime":J
    iget-wide v2, v9, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v1, v2, v10

    if-eqz v1, :cond_14c

    iget-wide v2, v9, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    sub-long v6, p1, v2

    .line 1430
    .local v6, "totalTime":J
    :goto_3d
    const-wide/16 v2, 0x40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "launching: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, p0, packageName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    invoke-static {v2, v3, v1, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1431
    const/16 v2, 0x7539

    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v10, p0, userId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v1

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v1

    const/4 v1, 0x2

    iget-object v10, p0, shortComponentName:Ljava/lang/String;

    aput-object v10, v3, v1

    const/4 v1, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v1

    const/4 v1, 0x4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v1

    const/4 v10, 0x5

    iget-boolean v1, p0, fullLaunch:Z

    if-eqz v1, :cond_14f

    const/4 v1, 0x1

    :goto_8b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1435
    sget-wide v2, LAUNCH_REPORTING_BASE:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_d7

    cmp-long v1, v4, v6

    if-gtz v1, :cond_d7

    const-string/jumbo v1, "sys.config.bigdata_enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 1438
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1439
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SG_REPORT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1440
    const-string/jumbo v1, "from"

    const/16 v2, 0x7539

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1441
    const-string/jumbo v1, "name"

    iget-object v2, p0, shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1442
    const-string/jumbo v1, "ltime"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1443
    iget-object v1, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1446
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    :cond_d7
    iget-object v1, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1447
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1448
    const-string v1, "Displayed "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    iget-object v1, p0, shortComponentName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    const-string v1, ": "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    invoke-static {v4, v5, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1452
    cmp-long v1, v4, v6

    if-eqz v1, :cond_102

    .line 1453
    const-string v1, " (total "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    invoke-static {v6, v7, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1455
    const-string v1, ")"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    :cond_102
    const-string v1, "ActivityManager"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    move-object v3, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 1460
    const-wide/16 v2, 0x0

    cmp-long v1, v6, v2

    if-lez v1, :cond_118

    .line 1463
    :cond_118
    const-wide/16 v2, 0x0

    iput-wide v2, p0, displayStartTime:J

    .line 1464
    const-wide/16 v2, 0x0

    iput-wide v2, v9, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    .line 1466
    iget-object v2, p0, service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 1468
    :try_start_123
    sget-boolean v1, Lcom/android/server/am/ProcessList;->mDynamicLMKEnable:Z

    if-eqz v1, :cond_132

    .line 1469
    iget-object v1, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, p0, shortComponentName:Ljava/lang/String;

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v3, v10, v11}, Lcom/android/server/am/ProcessList;->updateDynamicLMK(Ljava/lang/String;J)V

    .line 1473
    :cond_132
    sget-boolean v1, Lcom/android/server/am/ProcessList;->mILS_Enable:Z

    if-eqz v1, :cond_146

    .line 1474
    iget-object v1, p0, shortComponentName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->updateILS(Ljava/lang/String;)V

    .line 1476
    sget-boolean v1, Lcom/android/server/am/ProcessList;->mILS_DynamicLMKFlag:Z

    if-eqz v1, :cond_146

    .line 1477
    iget-object v1, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->updateLMKbyILS()V

    .line 1480
    :cond_146
    monitor-exit v2

    goto/16 :goto_6

    :catchall_149
    move-exception v1

    monitor-exit v2
    :try_end_14b
    .catchall {:try_start_123 .. :try_end_14b} :catchall_149

    throw v1

    .end local v6    # "totalTime":J
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_14c
    move-wide v6, v4

    .line 1427
    goto/16 :goto_3d

    .line 1431
    .restart local v6    # "totalTime":J
    :cond_14f
    const/4 v1, 0x0

    goto/16 :goto_8b
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;
    .registers 41
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1771
    const/4 v5, 0x0

    .line 1772
    .local v5, "intent":Landroid/content/Intent;
    const/16 v37, 0x0

    .line 1773
    .local v37, "persistentState":Landroid/os/PersistableBundle;
    const/4 v13, 0x0

    .line 1774
    .local v13, "launchedFromUid":I
    const/4 v14, 0x0

    .line 1775
    .local v14, "launchedFromPackage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1776
    .local v6, "resolvedType":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1777
    .local v22, "componentSpecified":Z
    const/4 v9, 0x0

    .line 1778
    .local v9, "userId":I
    const-wide/16 v32, -0x1

    .line 1779
    .local v32, "createTime":J
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v36

    .line 1780
    .local v36, "outerDepth":I
    new-instance v38, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v38 .. v38}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 1782
    .local v38, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    add-int/lit8 v30, v4, -0x1

    .local v30, "attrNdx":I
    :goto_1a
    if-ltz v30, :cond_ca

    .line 1783
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v29

    .line 1784
    .local v29, "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v31

    .line 1787
    .local v31, "attrValue":Ljava/lang/String;
    const-string/jumbo v4, "id"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1788
    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 1782
    :goto_3f
    add-int/lit8 v30, v30, -0x1

    goto :goto_1a

    .line 1789
    :cond_42
    const-string/jumbo v4, "launched_from_uid"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 1790
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_3f

    .line 1791
    :cond_56
    const-string/jumbo v4, "launched_from_package"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 1792
    move-object/from16 v14, v31

    goto :goto_3f

    .line 1793
    :cond_64
    const-string/jumbo v4, "resolved_type"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 1794
    move-object/from16 v6, v31

    goto :goto_3f

    .line 1795
    :cond_72
    const-string v4, "component_specified"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 1796
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    goto :goto_3f

    .line 1797
    :cond_85
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 1798
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_3f

    .line 1799
    :cond_99
    const-string/jumbo v4, "task_description_"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 1800
    move-object/from16 v0, v38

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 1802
    :cond_ae
    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown ActivityRecord attribute="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 1807
    .end local v29    # "attrName":Ljava/lang/String;
    .end local v31    # "attrValue":Ljava/lang/String;
    :cond_ca
    :goto_ca
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v34

    .local v34, "event":I
    const/4 v4, 0x1

    move/from16 v0, v34

    if-eq v0, v4, :cond_128

    const/4 v4, 0x3

    move/from16 v0, v34

    if-ne v0, v4, :cond_e0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v0, v36

    if-ge v4, v0, :cond_128

    .line 1809
    :cond_e0
    const/4 v4, 0x2

    move/from16 v0, v34

    if-ne v0, v4, :cond_ca

    .line 1810
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v35

    .line 1813
    .local v35, "name":Ljava/lang/String;
    const-string/jumbo v4, "intent"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 1814
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v5

    goto :goto_ca

    .line 1817
    :cond_f9
    const-string/jumbo v4, "persistable_bundle"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_109

    .line 1818
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v37

    goto :goto_ca

    .line 1822
    :cond_109
    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreActivity: unexpected name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_ca

    .line 1828
    .end local v35    # "name":Ljava/lang/String;
    :cond_128
    if-nez v5, :cond_144

    .line 1829
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreActivity error intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1832
    :cond_144
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1833
    .local v11, "service":Lcom/android/server/am/ActivityManagerService;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v17

    .line 1835
    .local v17, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez v17, :cond_176

    .line 1836
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreActivity resolver error. Intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resolvedType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1839
    :cond_176
    new-instance v10, Lcom/android/server/am/ActivityRecord;

    const/4 v12, 0x0

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v24, p1

    invoke-direct/range {v10 .. v28}, <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)V

    .line 1843
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v37

    iput-object v0, v10, persistentState:Landroid/os/PersistableBundle;

    .line 1844
    move-object/from16 v0, v38

    iput-object v0, v10, taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1845
    move-wide/from16 v0, v32

    iput-wide v0, v10, createTime:J

    .line 1847
    return-object v10
.end method


# virtual methods
.method public activityDrawn()V
    .registers 1

    .prologue
    .line 1911
    return-void
.end method

.method addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V
    .registers 3
    .param p1, "intent"    # Lcom/android/internal/content/ReferrerIntent;

    .prologue
    .line 1112
    iget-object v0, p0, newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, newIntents:Ljava/util/ArrayList;

    .line 1115
    :cond_b
    iget-object v0, p0, newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    return-void
.end method

.method addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 12
    .param p1, "from"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1085
    new-instance v0, Lcom/android/server/am/ActivityResult;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityResult;-><init>(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1087
    .local v0, "r":Lcom/android/server/am/ActivityResult;
    iget-object v1, p0, results:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    .line 1088
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, results:Ljava/util/ArrayList;

    .line 1090
    :cond_15
    iget-object v1, p0, results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    return-void
.end method

.method applyOptionsLocked()V
    .registers 20

    .prologue
    .line 1173
    move-object/from16 v0, p0

    iget-object v1, v0, pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v1, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3b

    .line 1175
    move-object/from16 v0, p0

    iget-object v1, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v18

    .line 1176
    .local v18, "animationType":I
    sparse-switch v18, :sswitch_data_2fc

    .line 1268
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyOptionsLocked: Unknown animationType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_36
    :goto_36
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, pendingOptions:Landroid/app/ActivityOptions;

    .line 1273
    .end local v18    # "animationType":I
    :cond_3b
    return-void

    .line 1178
    .restart local v18    # "animationType":I
    :sswitch_3c
    move-object/from16 v0, p0

    iget-object v1, v0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;I)V

    goto :goto_36

    .line 1186
    :sswitch_6a
    move-object/from16 v0, p0

    iget-object v1, v0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionClipReveal(IIII)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v1, v0, intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_36

    .line 1190
    move-object/from16 v0, p0

    iget-object v1, v0, intent:Landroid/content/Intent;

    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    add-int/2addr v6, v8

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_36

    .line 1198
    :sswitch_dd
    move-object/from16 v0, p0

    iget-object v1, v0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionCustomScaleUp(IIII)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v1, v0, intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_36

    .line 1202
    move-object/from16 v0, p0

    iget-object v1, v0, intent:Landroid/content/Intent;

    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    add-int/2addr v6, v8

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_36

    .line 1210
    :sswitch_150
    move-object/from16 v0, p0

    iget-object v1, v0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionScaleUp(IIIII)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v1, v0, intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_36

    .line 1215
    move-object/from16 v0, p0

    iget-object v1, v0, intent:Landroid/content/Intent;

    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    add-int/2addr v6, v8

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_36

    .line 1223
    :sswitch_1c7
    const/4 v1, 0x3

    move/from16 v0, v18

    if-ne v0, v1, :cond_254

    const/4 v7, 0x1

    .line 1224
    .local v7, "scaleUp":Z
    :goto_1cd
    move-object/from16 v0, p0

    iget-object v1, v0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getOnTransitionStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;ZI)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v1, v0, intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_36

    .line 1233
    move-object/from16 v0, p0

    iget-object v1, v0, intent:Landroid/content/Intent;

    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v6, v8

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_36

    .line 1223
    .end local v7    # "scaleUp":Z
    :cond_254
    const/4 v7, 0x0

    goto/16 :goto_1cd

    .line 1243
    :sswitch_257
    move-object/from16 v0, p0

    iget-object v1, v0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v1, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getOnTransitionStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v15

    const/16 v1, 0x8

    move/from16 v0, v18

    if-ne v0, v1, :cond_2ee

    const/16 v16, 0x1

    :goto_29d
    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v17

    invoke-virtual/range {v8 .. v17}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;ZI)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v1, v0, intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_36

    .line 1254
    move-object/from16 v0, p0

    iget-object v1, v0, intent:Landroid/content/Intent;

    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    add-int/2addr v6, v8

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_36

    .line 1243
    :cond_2ee
    const/16 v16, 0x0

    goto :goto_29d

    .line 1263
    :sswitch_2f1
    move-object/from16 v0, p0

    iget-object v1, v0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionTranslate()V

    goto/16 :goto_36

    .line 1176
    :sswitch_data_2fc
    .sparse-switch
        0x1 -> :sswitch_3c
        0x2 -> :sswitch_150
        0x3 -> :sswitch_1c7
        0x4 -> :sswitch_1c7
        0x8 -> :sswitch_257
        0x9 -> :sswitch_257
        0xb -> :sswitch_6a
        0x3e8 -> :sswitch_2f1
        0x3e9 -> :sswitch_dd
    .end sparse-switch
.end method

.method changeWindowTranslucency(Z)Z
    .registers 6
    .param p1, "toOpaque"    # Z

    .prologue
    const/4 v1, 0x1

    .line 915
    iget-boolean v0, p0, fullscreen:Z

    if-ne v0, p1, :cond_7

    .line 916
    const/4 v1, 0x0

    .line 923
    :goto_6
    return v1

    .line 920
    :cond_7
    iget-object v2, p0, task:Lcom/android/server/am/TaskRecord;

    iget v3, v2, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-eqz p1, :cond_14

    move v0, v1

    :goto_e
    add-int/2addr v0, v3

    iput v0, v2, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 922
    iput-boolean p1, p0, fullscreen:Z

    goto :goto_6

    .line 920
    :cond_14
    const/4 v0, -0x1

    goto :goto_e
.end method

.method clearOptionsLocked()V
    .registers 2

    .prologue
    .line 1280
    iget-object v0, p0, pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_c

    .line 1281
    iget-object v0, p0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 1282
    const/4 v0, 0x0

    iput-object v0, p0, pendingOptions:Landroid/app/ActivityOptions;

    .line 1284
    :cond_c
    return-void
.end method

.method continueLaunchTickingLocked()Z
    .registers 10

    .prologue
    const/16 v8, 0x67

    const/4 v2, 0x0

    .line 1336
    iget-wide v4, p0, launchTickTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_c

    .line 1348
    :cond_b
    :goto_b
    return v2

    .line 1340
    :cond_c
    iget-object v3, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1341
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_b

    .line 1345
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1346
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1347
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1348
    const/4 v2, 0x1

    goto :goto_b
.end method

.method final deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V
    .registers 14
    .param p1, "callingUid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrer"    # Ljava/lang/String;

    .prologue
    .line 1124
    iget-object v0, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, packageName:Ljava/lang/String;

    invoke-virtual {p0}, getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, p0, userId:I

    move v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 1131
    new-instance v8, Lcom/android/internal/content/ReferrerIntent;

    invoke-direct {v8, p2, p3}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1132
    .local v8, "rintent":Lcom/android/internal/content/ReferrerIntent;
    const/4 v9, 0x1

    .line 1133
    .local v9, "unsent":Z
    iget-object v0, p0, state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_3c

    iget-object v0, p0, service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_5e

    :cond_2b
    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_5e

    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_5e

    :cond_3c
    iget-object v0, p0, app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_5e

    iget-object v0, p0, app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_5e

    .line 1138
    :try_start_46
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1139
    .local v6, "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1141
    iget-object v0, p0, app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p0, appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v6, v1}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_5d} :catch_64
    .catch Ljava/lang/NullPointerException; {:try_start_46 .. :try_end_5d} :catch_7e

    .line 1142
    const/4 v9, 0x0

    .line 1149
    .end local v6    # "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_5e
    :goto_5e
    if-eqz v9, :cond_63

    .line 1150
    invoke-virtual {p0, v8}, addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V

    .line 1152
    :cond_63
    return-void

    .line 1143
    :catch_64
    move-exception v7

    .line 1144
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending new intent to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e

    .line 1145
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_7e
    move-exception v7

    .line 1146
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending new intent to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 280
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 281
    .local v6, "now":J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "packageName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    const-string v11, " processName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, processName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "launchedFromUid="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, launchedFromUid:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 284
    const-string v11, " launchedFromPackage="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    const-string v11, " userId="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, userId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 286
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "app="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 287
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "frontOfTask="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, frontOfTask:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 289
    const-string v11, " task="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 290
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "taskAffinity="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, taskAffinity:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "realActivity="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v11, v0, realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v11, v0, appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_128

    .line 294
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "baseDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v11, v0, appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_112

    .line 296
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "resDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    :cond_112
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "dataDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    :cond_128
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "stateNotNeeded="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, stateNotNeeded:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 301
    const-string v11, " componentSpecified="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, componentSpecified:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 302
    const-string v11, " mActivityType="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, mActivityType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 303
    move-object/from16 v0, p0

    iget-boolean v11, v0, rootVoiceInteraction:Z

    if-eqz v11, :cond_176

    .line 304
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "rootVoiceInteraction="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, rootVoiceInteraction:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 306
    :cond_176
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "compat="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 307
    const-string v11, " labelRes=0x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, labelRes:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    const-string v11, " icon=0x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, icon:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    const-string v11, " theme=0x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, theme:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "config="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, configuration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 311
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "stackConfigOverride="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, stackConfigOverride:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v11, v0, resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v11, :cond_1f8

    move-object/from16 v0, p0

    iget-object v11, v0, resultWho:Ljava/lang/String;

    if-eqz v11, :cond_22c

    .line 313
    :cond_1f8
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "resultTo="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 314
    const-string v11, " resultWho="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    const-string v11, " resultCode="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, requestCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 317
    :cond_22c
    move-object/from16 v0, p0

    iget-object v11, v0, taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v11, :cond_2b9

    .line 318
    move-object/from16 v0, p0

    iget-object v11, v0, taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "iconFilename":Ljava/lang/String;
    if-nez v4, :cond_250

    move-object/from16 v0, p0

    iget-object v11, v0, taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_250

    move-object/from16 v0, p0

    iget-object v11, v0, taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v11

    if-eqz v11, :cond_2a2

    .line 321
    :cond_250
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "taskDescription:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    const-string v11, " iconFilename="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    const-string v11, " label=\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    const-string v11, "\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    const-string v11, " color="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v11, v0, taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    :cond_2a2
    if-nez v4, :cond_2b9

    move-object/from16 v0, p0

    iget-object v11, v0, taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_2b9

    .line 329
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "taskDescription contains Bitmap"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    .end local v4    # "iconFilename":Ljava/lang/String;
    :cond_2b9
    move-object/from16 v0, p0

    iget-object v11, v0, results:Ljava/util/ArrayList;

    if-eqz v11, :cond_2d3

    .line 334
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "results="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, results:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 336
    :cond_2d3
    move-object/from16 v0, p0

    iget-object v11, v0, pendingResults:Ljava/util/HashSet;

    if-eqz v11, :cond_341

    move-object/from16 v0, p0

    iget-object v11, v0, pendingResults:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v11

    if-lez v11, :cond_341

    .line 337
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "Pending Results:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v11, v0, pendingResults:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2f5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_341

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    .line 339
    .local v10, "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-eqz v10, :cond_31f

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/PendingIntentRecord;

    move-object v8, v11

    .line 340
    .local v8, "pir":Lcom/android/server/am/PendingIntentRecord;
    :goto_30a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  - "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    if-nez v8, :cond_321

    .line 342
    const-string/jumbo v11, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f5

    .line 339
    .end local v8    # "pir":Lcom/android/server/am/PendingIntentRecord;
    :cond_31f
    const/4 v8, 0x0

    goto :goto_30a

    .line 344
    .restart local v8    # "pir":Lcom/android/server/am/PendingIntentRecord;
    :cond_321
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 345
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v11}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2f5

    .line 349
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "pir":Lcom/android/server/am/PendingIntentRecord;
    .end local v10    # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :cond_341
    move-object/from16 v0, p0

    iget-object v11, v0, newIntents:Ljava/util/ArrayList;

    if-eqz v11, :cond_395

    move-object/from16 v0, p0

    iget-object v11, v0, newIntents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_395

    .line 350
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "Pending New Intents:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_35c
    move-object/from16 v0, p0

    iget-object v11, v0, newIntents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_395

    .line 352
    move-object/from16 v0, p0

    iget-object v11, v0, newIntents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 353
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  - "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    if-nez v5, :cond_387

    .line 355
    const-string/jumbo v11, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    :goto_384
    add-int/lit8 v2, v2, 0x1

    goto :goto_35c

    .line 357
    :cond_387
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v5, v11, v12, v13, v14}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_384

    .line 361
    .end local v2    # "i":I
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_395
    move-object/from16 v0, p0

    iget-object v11, v0, pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v11, :cond_3af

    .line 362
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "pendingOptions="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, pendingOptions:Landroid/app/ActivityOptions;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 364
    :cond_3af
    move-object/from16 v0, p0

    iget-object v11, v0, appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v11, :cond_3c1

    .line 365
    move-object/from16 v0, p0

    iget-object v11, v0, appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1, v12}, Lcom/android/server/am/AppTimeTracker;->dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 367
    :cond_3c1
    move-object/from16 v0, p0

    iget-object v11, v0, uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v11, :cond_3d2

    .line 368
    move-object/from16 v0, p0

    iget-object v11, v0, uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 370
    :cond_3d2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "launchFailed="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, launchFailed:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 371
    const-string v11, " launchCount="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, launchCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 372
    const-string v11, " lastLaunchTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, p0

    iget-wide v12, v0, lastLaunchTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_6c0

    const-string v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 375
    :goto_40e
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 376
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "haveState="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, haveState:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 377
    const-string v11, " icicle="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, icicle:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 378
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "state="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 379
    const-string v11, " stopped="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, stopped:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 380
    const-string v11, " delayedResume="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, delayedResume:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 381
    const-string v11, " finishing="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, finishing:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 382
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "keysPaused="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, keysPaused:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 383
    const-string v11, " inHistory="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, inHistory:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 384
    const-string v11, " visible="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, visible:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 385
    const-string v11, " sleeping="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, sleeping:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 386
    const-string v11, " idle="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, idle:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 387
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "fullscreen="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, fullscreen:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 388
    const-string v11, " noDisplay="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, noDisplay:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 389
    const-string v11, " immersive="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, immersive:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 390
    const-string v11, " launchMode="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, launchMode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 391
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "frozenBeforeDestroy="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, frozenBeforeDestroy:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 392
    const-string v11, " forceNewConfig="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, forceNewConfig:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 393
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "mActivityType="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget v11, v0, mActivityType:I

    invoke-static {v11}, activityTypeToString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    iget-wide v12, v0, displayStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_561

    move-object/from16 v0, p0

    iget-wide v12, v0, startTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_598

    .line 396
    :cond_561
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "displayStartTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    move-object/from16 v0, p0

    iget-wide v12, v0, displayStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_6cb

    const-string v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    :goto_57d
    const-string v11, " startTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-wide v12, v0, startTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_6d6

    const-string v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    :goto_595
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 404
    :cond_598
    move-object/from16 v0, p0

    iget-object v11, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 405
    .local v9, "waitingVisible":Z
    move-object/from16 v0, p0

    iget-wide v12, v0, lastVisibleTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_5b6

    if-nez v9, :cond_5b6

    move-object/from16 v0, p0

    iget-boolean v11, v0, nowVisible:Z

    if-eqz v11, :cond_5f1

    .line 406
    :cond_5b6
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "waitingVisible="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 407
    const-string v11, " nowVisible="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, nowVisible:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 408
    const-string v11, " lastVisibleTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    move-object/from16 v0, p0

    iget-wide v12, v0, lastVisibleTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_6e1

    const-string v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    :goto_5ee
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 413
    :cond_5f1
    move-object/from16 v0, p0

    iget-boolean v11, v0, configDestroy:Z

    if-nez v11, :cond_5fd

    move-object/from16 v0, p0

    iget v11, v0, configChangeFlags:I

    if-eqz v11, :cond_624

    .line 414
    :cond_5fd
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "configDestroy="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, configDestroy:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 415
    const-string v11, " configChangeFlags="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    move-object/from16 v0, p0

    iget v11, v0, configChangeFlags:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    :cond_624
    move-object/from16 v0, p0

    iget-object v11, v0, connections:Ljava/util/HashSet;

    if-eqz v11, :cond_63d

    .line 419
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "connections="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, connections:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 424
    :cond_63d
    move-object/from16 v0, p0

    iget-boolean v11, v0, vrActivity:Z

    if-nez v11, :cond_649

    move-object/from16 v0, p0

    iget-boolean v11, v0, launchedBehindVRApp:Z

    if-eqz v11, :cond_66d

    .line 425
    :cond_649
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "vrActivity="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, vrActivity:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 426
    const-string v11, " launchedBehindVRApp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, launchedBehindVRApp:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 433
    :cond_66d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 434
    const-string/jumbo v11, "multiWindowStyle="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v11, v0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 437
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    const-string v11, "bMultiInstance="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 439
    move-object/from16 v0, p0

    iget-boolean v11, v0, bMultiInstance:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 440
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 444
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "mIsLastShownWhenLocked="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, mIsLastShownWhenLocked:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 456
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "virtualScreenAttrs="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 459
    return-void

    .line 374
    .end local v9    # "waitingVisible":Z
    :cond_6c0
    move-object/from16 v0, p0

    iget-wide v12, v0, lastLaunchTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_40e

    .line 398
    :cond_6cb
    move-object/from16 v0, p0

    iget-wide v12, v0, displayStartTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_57d

    .line 401
    :cond_6d6
    move-object/from16 v0, p0

    iget-wide v12, v0, startTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_595

    .line 410
    .restart local v9    # "waitingVisible":Z
    :cond_6e1
    move-object/from16 v0, p0

    iget-wide v12, v0, lastVisibleTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_5ee
.end method

.method finishLaunchTickingLocked()V
    .registers 5

    .prologue
    .line 1352
    const-wide/16 v2, 0x0

    iput-wide v2, p0, launchTickTime:J

    .line 1353
    iget-object v1, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1354
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_11

    .line 1355
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1357
    :cond_11
    return-void
.end method

.method getDisplayId()I
    .registers 2

    .prologue
    .line 1919
    iget-object v0, p0, virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreenAttrs;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;
    .registers 2

    .prologue
    .line 1276
    iget-object v0, p0, pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    iget-object v0, p0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->forTargetActivity()Landroid/app/ActivityOptions;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method getPreferredOrientation()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 1045
    iget-object v1, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v1

    if-eq v1, v0, :cond_10

    .line 1046
    iget-object v0, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v0

    .line 1050
    :cond_f
    :goto_f
    return v0

    .line 1047
    :cond_10
    iget-object v1, p0, info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_f

    .line 1048
    iget-object v0, p0, info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    goto :goto_f
.end method

.method getScreen()Lcom/samsung/android/dualscreen/DualScreen;
    .registers 2

    .prologue
    .line 1932
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    return-object v0
.end method

.method getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;
    .registers 3

    .prologue
    .line 1076
    iget-object v0, p0, uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-nez v0, :cond_d

    .line 1077
    new-instance v0, Lcom/android/server/am/UriPermissionOwner;

    iget-object v1, p0, service:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/UriPermissionOwner;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 1079
    :cond_d
    iget-object v0, p0, uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    return-object v0
.end method

.method getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;
    .registers 5

    .prologue
    .line 1574
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-boolean v2, p0, stopped:Z

    if-eqz v2, :cond_31

    .line 1575
    :cond_e
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1577
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1578
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_2c

    .line 1579
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1587
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2f

    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object v0, v2

    .line 1593
    :cond_2c
    :goto_2c
    if-eqz v0, :cond_31

    .line 1597
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_2e
    return-object v0

    .line 1587
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2f
    const/4 v0, 0x0

    goto :goto_2c

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_31
    move-object v0, p0

    .line 1597
    goto :goto_2e
.end method

.method public hasSubWindow()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1608
    iget-object v1, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1609
    iget-object v1, p0, info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1b

    .line 1610
    iget-object v1, p0, info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.cocktail.subwindow.enable"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1613
    :cond_1b
    return v0
.end method

.method isApplicationActivity()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 988
    iget v3, p0, mActivityType:I

    if-nez v3, :cond_e

    move v0, v1

    .line 991
    .local v0, "result":Z
    :goto_7
    iget v3, p0, mActivityType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    :goto_c
    or-int/2addr v0, v1

    .line 994
    return v0

    .end local v0    # "result":Z
    :cond_e
    move v0, v2

    .line 988
    goto :goto_7

    .restart local v0    # "result":Z
    :cond_10
    move v1, v2

    .line 991
    goto :goto_c
.end method

.method isCoupled()Z
    .registers 2

    .prologue
    .line 1949
    const/4 v0, 0x0

    return v0
.end method

.method final isDestroyable()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1696
    iget-boolean v1, p0, finishing:Z

    if-nez v1, :cond_15

    iget-object v1, p0, app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_15

    iget-object v1, p0, state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_15

    iget-object v1, p0, state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_16

    .line 1723
    :cond_15
    :goto_15
    return v0

    .line 1705
    :cond_16
    iget-object v1, p0, task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_15

    iget-object v1, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_15

    iget-object v1, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p0, v1, :cond_15

    iget-object v1, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-boolean v1, p0, haveState:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p0, stopped:Z

    if-eqz v1, :cond_15

    .line 1714
    iget-object v1, p0, task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_15

    iget-object v1, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_15

    iget-object v1, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p0, v1, :cond_15

    iget-object v1, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p0, v1, :cond_15

    iget-boolean v1, p0, haveState:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p0, stopped:Z

    if-eqz v1, :cond_15

    .line 1719
    iget-boolean v1, p0, visible:Z

    if-nez v1, :cond_15

    .line 1723
    const/4 v0, 0x1

    goto :goto_15
.end method

.method isExpandHomeActivity()Z
    .registers 2

    .prologue
    .line 979
    const/4 v0, 0x0

    return v0
.end method

.method isFloatingActivity()Z
    .registers 3

    .prologue
    .line 1041
    iget v0, p0, mActivityType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isHomeActivity()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 957
    iget v1, p0, mActivityType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isHomeWindow()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1618
    iget v1, p0, mActivityType:I

    if-ne v1, v0, :cond_6

    .line 1622
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isInHistory()Z
    .registers 2

    .prologue
    .line 943
    iget-boolean v0, p0, inHistory:Z

    return v0
.end method

.method isInStackLocked()Z
    .registers 2

    .prologue
    .line 947
    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_16

    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_16

    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isInterestingToUserLocked()Z
    .registers 3

    .prologue
    .line 1630
    iget-boolean v0, p0, visible:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, nowVisible:Z

    if-nez v0, :cond_14

    iget-object v0, p0, state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method isNotResolverActivity()Z
    .registers 3

    .prologue
    .line 618
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method isPersistable()Z
    .registers 3

    .prologue
    .line 998
    iget-object v0, p0, info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v0, :cond_d

    iget-object v0, p0, info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    :cond_d
    iget-object v0, p0, intent:Landroid/content/Intent;

    if-eqz v0, :cond_1c

    iget-object v0, p0, intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method isRecentsActivity()Z
    .registers 3

    .prologue
    .line 984
    iget v0, p0, mActivityType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isSamsungHomeActivity()Z
    .registers 2

    .prologue
    .line 965
    const/4 v0, 0x0

    return v0
.end method

.method isSamsungPinnedHomeActivity()Z
    .registers 2

    .prologue
    .line 972
    const/4 v0, 0x0

    return v0
.end method

.method isVRActivity()Z
    .registers 2

    .prologue
    .line 1006
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, isVRActivity(Z)Z

    move-result v0

    return v0
.end method

.method isVRActivity(Z)Z
    .registers 3
    .param p1, "original"    # Z

    .prologue
    .line 1011
    if-eqz p1, :cond_5

    .line 1012
    iget-boolean v0, p0, vrActivity:Z

    .line 1014
    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    iget-boolean v0, v0, Lcom/android/server/am/VRApplicationPolicy;->mVRDevelopMode:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_4

    :cond_f
    iget-boolean v0, p0, vrActivity:Z

    goto :goto_4
.end method

.method makeFinishingLocked()V
    .registers 3

    .prologue
    .line 1055
    iget-boolean v0, p0, finishing:Z

    if-nez v0, :cond_31

    .line 1056
    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1e

    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_1e

    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne p0, v0, :cond_1e

    .line 1059
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    .line 1061
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, finishing:Z

    .line 1065
    iget-object v0, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makingFinishing(Landroid/os/IBinder;)V

    .line 1069
    iget-boolean v0, p0, stopped:Z

    if-eqz v0, :cond_31

    .line 1070
    invoke-virtual {p0}, clearOptionsLocked()V

    .line 1073
    :cond_31
    return-void
.end method

.method public mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1366
    if-eqz p1, :cond_c

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v0, :cond_c

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method pauseKeyDispatchingLocked()V
    .registers 3

    .prologue
    .line 1300
    iget-boolean v0, p0, keysPaused:Z

    if-nez v0, :cond_10

    .line 1301
    const/4 v0, 0x1

    iput-boolean v0, p0, keysPaused:Z

    .line 1302
    iget-object v0, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 1304
    :cond_10
    return-void
.end method

.method putInHistory()V
    .registers 2

    .prologue
    .line 927
    iget-boolean v0, p0, inHistory:Z

    if-nez v0, :cond_7

    .line 928
    const/4 v0, 0x1

    iput-boolean v0, p0, inHistory:Z

    .line 930
    :cond_7
    return-void
.end method

.method removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .registers 7
    .param p1, "from"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    .line 1095
    iget-object v2, p0, results:Ljava/util/ArrayList;

    if-eqz v2, :cond_36

    .line 1096
    iget-object v2, p0, results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_36

    .line 1097
    iget-object v2, p0, results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityResult;

    .line 1098
    .local v1, "r":Lcom/android/server/am/ActivityResult;
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mFrom:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_1d

    .line 1096
    :cond_1a
    :goto_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1099
    :cond_1d
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_2d

    .line 1100
    if-nez p2, :cond_1a

    .line 1104
    :cond_23
    iget v2, v1, Lcom/android/server/am/ActivityResult;->mRequestCode:I

    if-ne v2, p3, :cond_1a

    .line 1106
    iget-object v2, p0, results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1a

    .line 1102
    :cond_2d
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_1a

    .line 1109
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/server/am/ActivityResult;
    :cond_36
    return-void
.end method

.method removeUriPermissionsLocked()V
    .registers 2

    .prologue
    .line 1293
    iget-object v0, p0, uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v0, :cond_c

    .line 1294
    iget-object v0, p0, uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked()V

    .line 1295
    const/4 v0, 0x0

    iput-object v0, p0, uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 1297
    :cond_c
    return-void
.end method

.method public reportFullyDrawnLocked()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    const-wide/16 v12, 0x0

    .line 1383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1384
    .local v0, "curTime":J
    iget-wide v8, p0, displayStartTime:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_10

    .line 1385
    invoke-direct {p0, v0, v1}, reportLaunchTimeLocked(J)V

    .line 1387
    :cond_10
    iget-object v8, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1388
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-wide v8, p0, fullyDrawnStartTime:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_99

    if-eqz v3, :cond_99

    .line 1389
    iget-wide v8, p0, fullyDrawnStartTime:J

    sub-long v4, v0, v8

    .line 1390
    .local v4, "thisTime":J
    iget-wide v8, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_9c

    iget-wide v8, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    sub-long v6, v0, v8

    .line 1393
    .local v6, "totalTime":J
    :goto_2a
    const-wide/16 v8, 0x40

    const-string/jumbo v10, "drawing"

    invoke-static {v8, v9, v10, v14}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1394
    const/16 v8, 0x755a

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, userId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    const/4 v10, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, shortComponentName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1397
    iget-object v8, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v8, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1398
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1399
    const-string v8, "Fully drawn "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    iget-object v8, p0, shortComponentName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    const-string v8, ": "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1403
    cmp-long v8, v4, v6

    if-eqz v8, :cond_8a

    .line 1404
    const-string v8, " (total "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1406
    const-string v8, ")"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    :cond_8a
    const-string v8, "ActivityManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    cmp-long v8, v6, v12

    if-lez v8, :cond_97

    .line 1413
    :cond_97
    iput-wide v12, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    .line 1415
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "thisTime":J
    .end local v6    # "totalTime":J
    :cond_99
    iput-wide v12, p0, fullyDrawnStartTime:J

    .line 1416
    return-void

    .restart local v4    # "thisTime":J
    :cond_9c
    move-wide v6, v4

    .line 1390
    goto :goto_2a
.end method

.method resumeKeyDispatchingLocked()V
    .registers 3

    .prologue
    .line 1307
    iget-boolean v0, p0, keysPaused:Z

    if-eqz v0, :cond_10

    .line 1308
    const/4 v0, 0x0

    iput-boolean v0, p0, keysPaused:Z

    .line 1309
    iget-object v0, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 1311
    :cond_10
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1743
    const-string/jumbo v0, "id"

    iget-wide v2, p0, createTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1744
    const-string/jumbo v0, "launched_from_uid"

    iget v1, p0, launchedFromUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1745
    iget-object v0, p0, launchedFromPackage:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 1746
    const-string/jumbo v0, "launched_from_package"

    iget-object v1, p0, launchedFromPackage:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1748
    :cond_25
    iget-object v0, p0, resolvedType:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 1749
    const-string/jumbo v0, "resolved_type"

    iget-object v1, p0, resolvedType:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1751
    :cond_31
    const-string v0, "component_specified"

    iget-boolean v1, p0, componentSpecified:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1752
    const-string/jumbo v0, "user_id"

    iget v1, p0, userId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1754
    iget-object v0, p0, taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_51

    .line 1755
    iget-object v0, p0, taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1758
    :cond_51
    const-string/jumbo v0, "intent"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1759
    iget-object v0, p0, intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1760
    const-string/jumbo v0, "intent"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1762
    invoke-virtual {p0}, isPersistable()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, persistentState:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_7d

    .line 1763
    const-string/jumbo v0, "persistable_bundle"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1764
    iget-object v0, p0, persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1765
    const-string/jumbo v0, "persistable_bundle"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1767
    :cond_7d
    return-void
.end method

.method public scheduleSetMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 3
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 1602
    iget-object v0, p0, service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/ActivityManagerService;->scheduleSetMultiWindowStyle(Lcom/android/server/am/ActivityRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1603
    return-void
.end method

.method setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 3
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 1024
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 1025
    return-void
.end method

.method setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V
    .registers 5
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "includeUniqueOptions"    # Z

    .prologue
    .line 1028
    iget-object v0, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1029
    iget-object v0, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 1031
    iget-object v0, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 1032
    const/4 v0, 0x3

    iput v0, p0, mActivityType:I

    .line 1033
    iget-object v0, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getScale()F

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/MultiWindowPolicy;->setFloatingBounds(Lcom/android/server/am/ActivityRecord;F)V

    .line 1038
    :cond_24
    :goto_24
    return-void

    .line 1034
    :cond_25
    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_31

    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1035
    :cond_31
    const/4 v0, 0x0

    iput v0, p0, mActivityType:I

    goto :goto_24
.end method

.method setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    .registers 2
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 1940
    return-void
.end method

.method public setSleeping(Z)V
    .registers 6
    .param p1, "_sleeping"    # Z

    .prologue
    .line 1635
    iget-boolean v1, p0, sleeping:Z

    if-ne v1, p1, :cond_5

    .line 1649
    :cond_4
    :goto_4
    return-void

    .line 1638
    :cond_5
    iget-object v1, p0, app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4

    iget-object v1, p0, app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_4

    .line 1640
    :try_start_f
    iget-object v1, p0, app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v1, v2, p1}, Landroid/app/IApplicationThread;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 1641
    if-eqz p1, :cond_2b

    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1642
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1644
    :cond_2b
    iput-boolean p1, p0, sleeping:Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2d} :catch_2e

    goto :goto_4

    .line 1645
    :catch_2e
    move-exception v0

    .line 1646
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when sleeping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    .registers 6
    .param p1, "newTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 894
    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_2d

    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    if-eq v0, p1, :cond_2d

    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_2d

    .line 895
    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, task:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v2, "setTask"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v1, p0, task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStopped(I)V

    .line 902
    :cond_2d
    iput-object p1, p0, task:Lcom/android/server/am/TaskRecord;

    .line 903
    invoke-virtual {p0, p2}, setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 904
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 7
    .param p1, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 1733
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_22

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_22

    .line 1735
    iget-wide v2, p0, createTime:J

    iget-object v4, p0, task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v2, v3, v4}, createImageFilename(JI)Ljava/lang/String;

    move-result-object v1

    .line 1736
    .local v1, "iconFilename":Ljava/lang/String;
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1737
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 1739
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    .end local v1    # "iconFilename":Ljava/lang/String;
    :cond_22
    iput-object p1, p0, taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1740
    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .registers 4
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 907
    if-eqz p1, :cond_11

    iget v0, p0, launchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    iget v0, p0, launchMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    .line 910
    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 912
    :cond_11
    return-void
.end method

.method public startDisplayChanging(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1953
    invoke-virtual {p0, p1}, mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, noDisplay:Z

    if-nez v0, :cond_13

    .line 1954
    iget-object v0, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->startDisplayChanging(Landroid/os/IBinder;)V

    .line 1956
    :cond_13
    return-void
.end method

.method public startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 1370
    invoke-virtual {p0, p1}, mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, noDisplay:Z

    if-nez v0, :cond_13

    .line 1371
    iget-object v0, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 1373
    :cond_13
    return-void
.end method

.method startLaunchTickingLocked()V
    .registers 5

    .prologue
    .line 1326
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v0, :cond_5

    .line 1333
    :cond_4
    :goto_4
    return-void

    .line 1329
    :cond_5
    iget-wide v0, p0, launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1330
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, launchTickTime:J

    .line 1331
    invoke-virtual {p0}, continueLaunchTickingLocked()Z

    goto :goto_4
.end method

.method stopDisplayChanging()V
    .registers 3

    .prologue
    .line 1959
    iget-object v0, p0, app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v0}, mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, noDisplay:Z

    if-nez v0, :cond_15

    .line 1960
    iget-object v0, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->stopDisplayChanging(Landroid/os/IBinder;)V

    .line 1962
    :cond_15
    return-void
.end method

.method public stopFreezingScreenLocked(Z)V
    .registers 4
    .param p1, "force"    # Z

    .prologue
    .line 1376
    if-nez p1, :cond_6

    iget-boolean v0, p0, frozenBeforeDestroy:Z

    if-eqz v0, :cond_12

    .line 1377
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, frozenBeforeDestroy:Z

    .line 1378
    iget-object v0, p0, service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 1380
    :cond_12
    return-void
.end method

.method takeFromHistory()V
    .registers 2

    .prologue
    .line 933
    iget-boolean v0, p0, inHistory:Z

    if-eqz v0, :cond_15

    .line 934
    const/4 v0, 0x0

    iput-boolean v0, p0, inHistory:Z

    .line 935
    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, finishing:Z

    if-nez v0, :cond_12

    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    .line 938
    :cond_12
    invoke-virtual {p0}, clearOptionsLocked()V

    .line 940
    :cond_15
    return-void
.end method

.method takeOptionsLocked()Landroid/app/ActivityOptions;
    .registers 3

    .prologue
    .line 1287
    iget-object v0, p0, pendingOptions:Landroid/app/ActivityOptions;

    .line 1288
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x0

    iput-object v1, p0, pendingOptions:Landroid/app/ActivityOptions;

    .line 1289
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1878
    iget-object v1, p0, stringName:Ljava/lang/String;

    if-eqz v1, :cond_36

    .line 1879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, stringName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, task:Lcom/android/server/am/TaskRecord;

    if-nez v1, :cond_2d

    const/4 v1, -0x1

    :goto_1a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, finishing:Z

    if-eqz v1, :cond_32

    const-string v1, " f}"

    :goto_24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1891
    :goto_2c
    return-object v1

    .line 1879
    :cond_2d
    iget-object v1, p0, task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_1a

    :cond_32
    const-string/jumbo v1, "}"

    goto :goto_24

    .line 1883
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1884
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ActivityRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1887
    iget v1, p0, userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1888
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1889
    iget-object v1, p0, intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, stringName:Ljava/lang/String;

    .line 1891
    invoke-virtual {p0}, toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2c
.end method

.method updateOptionsLocked(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 1164
    if-eqz p1, :cond_d

    .line 1165
    iget-object v0, p0, pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    .line 1166
    iget-object v0, p0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 1168
    :cond_b
    iput-object p1, p0, pendingOptions:Landroid/app/ActivityOptions;

    .line 1170
    :cond_d
    return-void
.end method

.method updateOptionsLocked(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1155
    if-eqz p1, :cond_12

    .line 1156
    iget-object v0, p0, pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    .line 1157
    iget-object v0, p0, pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 1159
    :cond_b
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, pendingOptions:Landroid/app/ActivityOptions;

    .line 1161
    :cond_12
    return-void
.end method

.method updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "newThumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1314
    if-eqz p1, :cond_1a

    .line 1317
    iget-object v1, p0, task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->setLastThumbnail(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 1318
    .local v0, "thumbnailUpdated":Z
    if-eqz v0, :cond_1a

    invoke-virtual {p0}, isPersistable()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1319
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, task:Lcom/android/server/am/TaskRecord;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1322
    .end local v0    # "thumbnailUpdated":Z
    :cond_1a
    iget-object v1, p0, task:Lcom/android/server/am/TaskRecord;

    iput-object p2, v1, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 1323
    return-void
.end method

.method windowsDrawnLocked()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 1484
    iget-wide v0, p0, displayStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_30

    .line 1498
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, reportLaunchTimeLocked(J)V

    .line 1500
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1501
    iget-object v0, p0, shortComponentName:Ljava/lang/String;

    const-string v1, "com.android.vending/.AssetBrowserActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, shortComponentName:Ljava/lang/String;

    const-string v1, "com.android.vending/com.google.android.finsky.activities.TosActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1503
    :cond_29
    const-string v0, "GATE"

    const-string v1, "<GATE-M> MARKET_LAUNCHED </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    :cond_30
    :goto_30
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1511
    iput-wide v2, p0, startTime:J

    .line 1512
    invoke-virtual {p0}, finishLaunchTickingLocked()V

    .line 1513
    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_43

    .line 1514
    iget-object v0, p0, task:Lcom/android/server/am/TaskRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    .line 1516
    :cond_43
    return-void

    .line 1505
    :cond_44
    const-string v0, "GATE"

    const-string v1, "<GATE-M> APP_OPENED </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method windowsVisibleLocked()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1519
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p0}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1521
    iget-boolean v2, p0, nowVisible:Z

    if-nez v2, :cond_31

    .line 1522
    iput-boolean v5, p0, nowVisible:Z

    .line 1523
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, lastVisibleTime:J

    .line 1524
    iget-boolean v2, p0, idle:Z

    if-nez v2, :cond_73

    .line 1527
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0}, getDisplayId()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(ZI)Ljava/util/ArrayList;

    .line 1530
    iget-boolean v2, p0, mNeedToIdle:Z

    if-eqz v2, :cond_61

    .line 1531
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1551
    :cond_2a
    :goto_2a
    iget-object v2, p0, service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 1554
    iput-boolean v4, p0, mNeedToIdle:Z

    .line 1560
    :cond_31
    iget v2, p0, mActivityType:I

    if-ne v2, v5, :cond_9a

    .line 1561
    iget-object v2, p0, service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v4, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    .line 1566
    :goto_3a
    const-string v2, "Timeline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeline: Activity_windows_visible id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    return-void

    .line 1532
    :cond_61
    iget-boolean v2, p0, frontOfTask:Z

    if-eqz v2, :cond_2a

    iget-object v2, p0, multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1533
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto :goto_2a

    .line 1541
    :cond_73
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1542
    .local v1, "size":I
    if-lez v1, :cond_2a

    .line 1543
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7e
    if-ge v0, v1, :cond_8d

    .line 1544
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1543
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 1547
    :cond_8d
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1548
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto :goto_2a

    .line 1563
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_9a
    iget-object v2, p0, service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v4, v4, v4, v6}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto :goto_3a
.end method
