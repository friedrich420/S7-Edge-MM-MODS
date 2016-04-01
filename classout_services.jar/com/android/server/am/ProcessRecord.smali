.class final Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"


# static fields
.field public static final NO_TOP_IN_APP_STARTING:I = 0x0

.field public static final NO_TOP_SERVICE_IN_APP_KILLING:I = 0x2

.field private static SMART_DHA_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field public static final TOP_ACTIVITY_IN_APP_KILLING:I = 0x3

.field public static final TOP_IN_APP_STARTING:I = 0x1


# instance fields
.field final activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field adjSeq:I

.field adjSource:Ljava/lang/Object;

.field adjSourceProcState:I

.field adjTarget:Ljava/lang/Object;

.field adjType:Ljava/lang/String;

.field adjTypeCode:I

.field anrDialog:Landroid/app/Dialog;

.field bad:Z

.field baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

.field cached:Z

.field compat:Landroid/content/res/CompatibilityInfo;

.field final conProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field final connections:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field crashDialog:Landroid/app/Dialog;

.field crashHandler:Ljava/lang/Runnable;

.field crashing:Z

.field crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field curAdj:I

.field curCpuTime:J

.field curProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

.field curProcState:I

.field curRawAdj:I

.field curReceiver:Lcom/android/server/am/BroadcastRecord;

.field curSchedGroup:I

.field deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field debugging:Z

.field displayId:I

.field empty:Z

.field errorReportReceiver:Landroid/content/ComponentName;

.field execServicesFg:Z

.field final executingServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field fgInteractionTime:J

.field forceCrashReport:Z

.field forcingToForeground:Landroid/os/IBinder;

.field foregroundActivities:Z

.field foregroundServices:Z

.field gids:[I

.field hasAboveClient:Z

.field hasClientActivities:Z

.field hasProviderClient:Z

.field hasShownUi:Z

.field hasStartedServices:Z

.field hotnessAdj:I

.field final info:Landroid/content/pm/ApplicationInfo;

.field initialIdlePss:J

.field instructionSet:Ljava/lang/String;

.field instrumentationArguments:Landroid/os/Bundle;

.field instrumentationClass:Landroid/content/ComponentName;

.field instrumentationInfo:Landroid/content/pm/ApplicationInfo;

.field instrumentationProfileFile:Ljava/lang/String;

.field instrumentationResultClass:Landroid/content/ComponentName;

.field instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

.field interactionEventTime:J

.field final isolated:Z

.field killed:Z

.field killedByAm:Z

.field lastActivityTime:J

.field lastCachedPss:J

.field lastCpuTime:J

.field lastLowMemory:J

.field lastProcState:I

.field lastPss:J

.field lastPssTime:J

.field lastRequestedGc:J

.field lastStateTime:J

.field lastWakeTime:J

.field latestTab:Z

.field lowestClientAdj:I

.field lowestClientName:Ljava/lang/String;

.field lruSeq:I

.field private final mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

.field maxAdj:I

.field nextPssTime:J

.field notCachedSinceIdle:Z

.field notResponding:Z

.field notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field pendingUiClean:Z

.field persistent:Z

.field pid:I

.field pkgDeps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final pkgList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;"
        }
    .end annotation
.end field

.field procStateChanged:Z

.field final processName:Ljava/lang/String;

.field pssProcState:I

.field final pubProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field final receivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field removed:Z

.field repForegroundActivities:Z

.field repProcState:I

.field reportLowMemory:Z

.field reportedInteraction:Z

.field requiredAbi:Ljava/lang/String;

.field serviceHighRam:Z

.field serviceb:Z

.field final services:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field setAdj:I

.field setIsForeground:Z

.field setProcState:I

.field setRawAdj:I

.field setSchedGroup:I

.field shortStringName:Ljava/lang/String;

.field startTime:J

.field startUss:J

.field starting:Z

.field stringName:Ljava/lang/String;

.field systemNoUi:Z

.field thread:Landroid/app/IApplicationThread;

.field treatLikeActivity:Z

.field trimMemoryLevel:I

.field final uid:I

.field uidRecord:Lcom/android/server/am/UidRecord;

.field final userId:I

.field usingWrapper:Z

.field waitDialog:Landroid/app/Dialog;

.field waitedForDebugger:Z

.field waitingToKill:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 165
    const/4 v0, 0x0

    sput-boolean v0, SMART_DHA_DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .registers 12
    .param p1, "_batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "_info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "_processName"    # Ljava/lang/String;
    .param p4, "_uid"    # I

    .prologue
    const/16 v6, 0x10

    const/16 v5, -0x64

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, pkgList:Landroid/util/ArrayMap;

    .line 105
    iput v2, p0, curProcState:I

    .line 106
    iput v2, p0, repProcState:I

    .line 107
    iput v2, p0, setProcState:I

    .line 108
    iput v2, p0, pssProcState:I

    .line 163
    iput v6, p0, lowestClientAdj:I

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, lowestClientName:Ljava/lang/String;

    .line 171
    iput v2, p0, lastProcState:I

    .line 174
    iput v1, p0, hotnessAdj:I

    .line 176
    iput-boolean v1, p0, latestTab:Z

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, activities:Ljava/util/ArrayList;

    .line 183
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, services:Landroid/util/ArraySet;

    .line 185
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, executingServices:Landroid/util/ArraySet;

    .line 187
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, connections:Landroid/util/ArraySet;

    .line 189
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, receivers:Landroid/util/ArraySet;

    .line 191
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, pubProviders:Landroid/util/ArrayMap;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, conProviders:Ljava/util/ArrayList;

    .line 527
    iput-object p1, p0, mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 528
    iput-object p2, p0, info:Landroid/content/pm/ApplicationInfo;

    .line 529
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, p4, :cond_92

    const/4 v0, 0x1

    :goto_5d
    iput-boolean v0, p0, isolated:Z

    .line 530
    iput p4, p0, uid:I

    .line 531
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, userId:I

    .line 532
    iput-object p3, p0, processName:Ljava/lang/String;

    .line 533
    iget-object v0, p0, pkgList:Landroid/util/ArrayMap;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    iget v4, p2, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v3, v4}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    iput v6, p0, maxAdj:I

    .line 535
    iput v5, p0, setRawAdj:I

    iput v5, p0, curRawAdj:I

    .line 536
    iput v5, p0, setAdj:I

    iput v5, p0, curAdj:I

    .line 537
    iput-boolean v1, p0, persistent:Z

    .line 538
    iput-boolean v1, p0, removed:Z

    .line 539
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, nextPssTime:J

    iput-wide v2, p0, lastPssTime:J

    iput-wide v2, p0, lastStateTime:J

    .line 541
    iput v1, p0, displayId:I

    .line 543
    return-void

    :cond_92
    move v0, v1

    .line 529
    goto :goto_5d
.end method

.method public static setSmartDHADebugMode(Z)V
    .registers 1
    .param p0, "debugMode"    # Z

    .prologue
    .line 298
    sput-boolean p0, SMART_DHA_DEBUG:Z

    .line 299
    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    .line 754
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 755
    new-instance v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    invoke-direct {v0, p2}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    .line 757
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v1, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v1, :cond_2d

    .line 758
    iget v1, p0, uid:I

    iget-object v2, p0, processName:Ljava/lang/String;

    invoke-virtual {p3, p1, v1, p2, v2}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 760
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v2, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v1, v2, :cond_2b

    .line 762
    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 767
    :cond_2b
    :goto_2b
    const/4 v1, 0x1

    .line 769
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :goto_2c
    return v1

    .line 765
    .restart local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_2d
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 769
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_33
    const/4 v1, 0x0

    goto :goto_2c
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 305
    .local v2, "now":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "user #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, userId:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 306
    const-string v6, " uid="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 307
    iget v6, p0, uid:I

    iget-object v7, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v7, :cond_30

    .line 308
    const-string v6, " ISOLATED uid="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, uid:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 310
    :cond_30
    const-string v6, " gids={"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    iget-object v6, p0, gids:[I

    if-eqz v6, :cond_50

    .line 312
    const/4 v0, 0x0

    .local v0, "gi":I
    :goto_3a
    iget-object v6, p0, gids:[I

    array-length v6, v6

    if-ge v0, v6, :cond_50

    .line 313
    if-eqz v0, :cond_46

    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    :cond_46
    iget-object v6, p0, gids:[I

    aget v6, v6, v0

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 318
    .end local v0    # "gi":I
    :cond_50
    const-string/jumbo v6, "}"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "requiredAbi="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, requiredAbi:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    const-string v6, " instructionSet="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, instructionSet:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    iget-object v6, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v6, :cond_83

    .line 322
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "class="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    :cond_83
    iget-object v6, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v6, :cond_99

    .line 325
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "manageSpaceActivityName="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    iget-object v6, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    :cond_99
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "dir="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    const-string v6, " publicDir="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    const-string v6, " data="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "packageList={"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_cb
    iget-object v6, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_e8

    .line 333
    if-lez v1, :cond_da

    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 334
    :cond_da
    iget-object v6, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_cb

    .line 336
    :cond_e8
    const-string/jumbo v6, "}"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    iget-object v6, p0, pkgDeps:Landroid/util/ArraySet;

    if-eqz v6, :cond_11f

    .line 338
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "packageDependencies={"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    const/4 v1, 0x0

    :goto_fc
    iget-object v6, p0, pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v1, v6, :cond_119

    .line 340
    if-lez v1, :cond_10b

    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    :cond_10b
    iget-object v6, p0, pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_fc

    .line 343
    :cond_119
    const-string/jumbo v6, "}"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    :cond_11f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "compat="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 346
    iget-object v6, p0, instrumentationClass:Landroid/content/ComponentName;

    if-nez v6, :cond_138

    iget-object v6, p0, instrumentationProfileFile:Ljava/lang/String;

    if-nez v6, :cond_138

    iget-object v6, p0, instrumentationArguments:Landroid/os/Bundle;

    if-eqz v6, :cond_18d

    .line 348
    :cond_138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "instrumentationClass="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 349
    iget-object v6, p0, instrumentationClass:Landroid/content/ComponentName;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 350
    const-string v6, " instrumentationProfileFile="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    iget-object v6, p0, instrumentationProfileFile:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "instrumentationArguments="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 353
    iget-object v6, p0, instrumentationArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 354
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "instrumentationInfo="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    iget-object v6, p0, instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 356
    iget-object v6, p0, instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_18d

    .line 357
    iget-object v6, p0, instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v7, Landroid/util/PrintWriterPrinter;

    invoke-direct {v7, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 360
    :cond_18d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "thread="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, thread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 361
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "pid="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, pid:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " starting="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget-boolean v6, p0, starting:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "lastActivityTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    iget-wide v6, p0, lastActivityTime:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 365
    const-string v6, " lastPssTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    iget-wide v6, p0, lastPssTime:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 367
    const-string v6, " nextPssTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    iget-wide v6, p0, nextPssTime:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 369
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 370
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "adjSeq="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, adjSeq:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 371
    const-string v6, " lruSeq="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, lruSeq:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 372
    const-string v6, " lastPss="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, lastPss:J

    const-wide/16 v8, 0x400

    mul-long/2addr v6, v8

    invoke-static {p1, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 373
    const-string v6, " lastCachedPss="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, lastCachedPss:J

    const-wide/16 v8, 0x400

    mul-long/2addr v6, v8

    invoke-static {p1, v6, v7}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 374
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 375
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "cached="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, cached:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 376
    const-string v6, " empty="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, empty:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 377
    iget-boolean v6, p0, serviceb:Z

    if-eqz v6, :cond_23f

    .line 378
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "serviceb="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, serviceb:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 379
    const-string v6, " serviceHighRam="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, serviceHighRam:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 381
    :cond_23f
    iget-boolean v6, p0, notCachedSinceIdle:Z

    if-eqz v6, :cond_25b

    .line 382
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "notCachedSinceIdle="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, notCachedSinceIdle:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 383
    const-string v6, " initialIdlePss="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, initialIdlePss:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 385
    :cond_25b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "oom: max="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, maxAdj:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 386
    const-string v6, " curRaw="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, curRawAdj:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 387
    const-string v6, " setRaw="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, setRawAdj:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 388
    const-string v6, " cur="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, curAdj:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 389
    const-string v6, " set="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, setAdj:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 390
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "curSchedGroup="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, curSchedGroup:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 391
    const-string v6, " setSchedGroup="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, setSchedGroup:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 392
    const-string v6, " systemNoUi="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, systemNoUi:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 393
    const-string v6, " trimMemoryLevel="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, trimMemoryLevel:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 394
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "curProcState="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, curProcState:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 395
    const-string v6, " repProcState="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, repProcState:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 396
    const-string v6, " pssProcState="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, pssProcState:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 397
    const-string v6, " setProcState="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, setProcState:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 398
    const-string v6, " lastStateTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    iget-wide v6, p0, lastStateTime:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 400
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 401
    iget-boolean v6, p0, hasShownUi:Z

    if-nez v6, :cond_306

    iget-boolean v6, p0, pendingUiClean:Z

    if-nez v6, :cond_306

    iget-boolean v6, p0, hasAboveClient:Z

    if-nez v6, :cond_306

    iget-boolean v6, p0, treatLikeActivity:Z

    if-eqz v6, :cond_332

    .line 402
    :cond_306
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "hasShownUi="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, hasShownUi:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 403
    const-string v6, " pendingUiClean="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, pendingUiClean:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 404
    const-string v6, " hasAboveClient="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, hasAboveClient:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 405
    const-string v6, " treatLikeActivity="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, treatLikeActivity:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 407
    :cond_332
    iget-boolean v6, p0, setIsForeground:Z

    if-nez v6, :cond_33e

    iget-boolean v6, p0, foregroundServices:Z

    if-nez v6, :cond_33e

    iget-object v6, p0, forcingToForeground:Landroid/os/IBinder;

    if-eqz v6, :cond_360

    .line 408
    :cond_33e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "setIsForeground="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, setIsForeground:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 409
    const-string v6, " foregroundServices="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, foregroundServices:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 410
    const-string v6, " forcingToForeground="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, forcingToForeground:Landroid/os/IBinder;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 412
    :cond_360
    iget-boolean v6, p0, reportedInteraction:Z

    if-nez v6, :cond_36c

    iget-wide v6, p0, fgInteractionTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3a9

    .line 413
    :cond_36c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "reportedInteraction="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    iget-boolean v6, p0, reportedInteraction:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 415
    iget-wide v6, p0, interactionEventTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_390

    .line 416
    const-string v6, " time="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    iget-wide v6, p0, interactionEventTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 419
    :cond_390
    iget-wide v6, p0, fgInteractionTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3a6

    .line 420
    const-string v6, " fgInteractionTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    iget-wide v6, p0, fgInteractionTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 423
    :cond_3a6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 425
    :cond_3a9
    iget-boolean v6, p0, persistent:Z

    if-nez v6, :cond_3b1

    iget-boolean v6, p0, removed:Z

    if-eqz v6, :cond_3c9

    .line 426
    :cond_3b1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "persistent="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, persistent:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 427
    const-string v6, " removed="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, removed:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 429
    :cond_3c9
    iget-boolean v6, p0, hasClientActivities:Z

    if-nez v6, :cond_3d5

    iget-boolean v6, p0, foregroundActivities:Z

    if-nez v6, :cond_3d5

    iget-boolean v6, p0, repForegroundActivities:Z

    if-eqz v6, :cond_3fc

    .line 430
    :cond_3d5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "hasClientActivities="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, hasClientActivities:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 431
    const-string v6, " foregroundActivities="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, foregroundActivities:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 432
    const-string v6, " (rep="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, repForegroundActivities:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, ")"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    :cond_3fc
    iget-boolean v6, p0, hasStartedServices:Z

    if-eqz v6, :cond_40e

    .line 435
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "hasStartedServices="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, hasStartedServices:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 437
    :cond_40e
    iget v6, p0, setProcState:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_467

    .line 439
    iget-object v7, p0, mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 440
    :try_start_417
    iget-object v6, p0, mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, p0, pid:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessWakeTime(IIJ)J

    move-result-wide v4

    .line 442
    .local v4, "wtime":J
    monitor-exit v7
    :try_end_428
    .catchall {:try_start_417 .. :try_end_428} :catchall_551

    .line 443
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "lastWakeTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, lastWakeTime:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 444
    const-string v6, " timeUsed="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    iget-wide v6, p0, lastWakeTime:J

    sub-long v6, v4, v6

    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "lastCpuTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, lastCpuTime:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 447
    const-string v6, " timeUsed="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    iget-wide v6, p0, curCpuTime:J

    iget-wide v8, p0, lastCpuTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    .end local v4    # "wtime":J
    :cond_467
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "lastRequestedGc="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 451
    iget-wide v6, p0, lastRequestedGc:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 452
    const-string v6, " lastLowMemory="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    iget-wide v6, p0, lastLowMemory:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 454
    const-string v6, " reportLowMemory="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, reportLowMemory:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 455
    iget-boolean v6, p0, killed:Z

    if-nez v6, :cond_495

    iget-boolean v6, p0, killedByAm:Z

    if-nez v6, :cond_495

    iget-object v6, p0, waitingToKill:Ljava/lang/String;

    if-eqz v6, :cond_4b7

    .line 456
    :cond_495
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "killed="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, killed:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 457
    const-string v6, " killedByAm="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, killedByAm:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 458
    const-string v6, " waitingToKill="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, waitingToKill:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    :cond_4b7
    iget-boolean v6, p0, debugging:Z

    if-nez v6, :cond_4cf

    iget-boolean v6, p0, crashing:Z

    if-nez v6, :cond_4cf

    iget-object v6, p0, crashDialog:Landroid/app/Dialog;

    if-nez v6, :cond_4cf

    iget-boolean v6, p0, notResponding:Z

    if-nez v6, :cond_4cf

    iget-object v6, p0, anrDialog:Landroid/app/Dialog;

    if-nez v6, :cond_4cf

    iget-boolean v6, p0, bad:Z

    if-eqz v6, :cond_524

    .line 462
    :cond_4cf
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "debugging="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, debugging:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 463
    const-string v6, " crashing="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, crashing:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 464
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, crashDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 465
    const-string v6, " notResponding="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, notResponding:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 466
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, anrDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 467
    const-string v6, " bad="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, bad:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 470
    iget-object v6, p0, errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v6, :cond_521

    .line 471
    const-string v6, " errorReportReceiver="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    iget-object v6, p0, errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 474
    :cond_521
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 476
    :cond_524
    iget-object v6, p0, activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_554

    .line 477
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Activities:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    const/4 v1, 0x0

    :goto_535
    iget-object v6, p0, activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_554

    .line 479
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, activities:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 478
    add-int/lit8 v1, v1, 0x1

    goto :goto_535

    .line 442
    :catchall_551
    move-exception v6

    :try_start_552
    monitor-exit v7
    :try_end_553
    .catchall {:try_start_552 .. :try_end_553} :catchall_551

    throw v6

    .line 482
    :cond_554
    iget-object v6, p0, services:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_581

    .line 483
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Services:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    const/4 v1, 0x0

    :goto_565
    iget-object v6, p0, services:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v1, v6, :cond_581

    .line 485
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, services:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_565

    .line 488
    :cond_581
    iget-object v6, p0, executingServices:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_5b8

    .line 489
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Executing Services (fg="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 490
    iget-boolean v6, p0, execServicesFg:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, ")"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    const/4 v1, 0x0

    :goto_59c
    iget-object v6, p0, executingServices:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v1, v6, :cond_5b8

    .line 492
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, executingServices:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_59c

    .line 495
    :cond_5b8
    iget-object v6, p0, connections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_5e5

    .line 496
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Connections:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    const/4 v1, 0x0

    :goto_5c9
    iget-object v6, p0, connections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v1, v6, :cond_5e5

    .line 498
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, connections:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c9

    .line 501
    :cond_5e5
    iget-object v6, p0, pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-lez v6, :cond_625

    .line 502
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Published Providers:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    const/4 v1, 0x0

    :goto_5f6
    iget-object v6, p0, pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_625

    .line 504
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    -> "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f6

    .line 508
    :cond_625
    iget-object v6, p0, conProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_658

    .line 509
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Connected Providers:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    const/4 v1, 0x0

    :goto_636
    iget-object v6, p0, conProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_658

    .line 511
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, conProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ContentProviderConnection;

    invoke-virtual {v6}, Lcom/android/server/am/ContentProviderConnection;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    add-int/lit8 v1, v1, 0x1

    goto :goto_636

    .line 514
    :cond_658
    iget-object v6, p0, curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-eqz v6, :cond_66a

    .line 515
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "curReceiver="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, curReceiver:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 517
    :cond_66a
    iget-object v6, p0, receivers:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_697

    .line 518
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Receivers:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    const/4 v1, 0x0

    :goto_67b
    iget-object v6, p0, receivers:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v1, v6, :cond_697

    .line 520
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, receivers:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_67b

    .line 523
    :cond_697
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .registers 3
    .param p1, "newState"    # I

    .prologue
    .line 782
    iget v0, p0, repProcState:I

    if-le v0, p1, :cond_8

    .line 783
    iput p1, p0, repProcState:I

    iput p1, p0, curProcState:I

    .line 785
    :cond_8
    return-void
.end method

.method public getHistoricallyAvgUSS(Lcom/android/server/am/ProcessStatsService;I)J
    .registers 17
    .param p1, "procstatsservice"    # Lcom/android/server/am/ProcessStatsService;
    .param p2, "avgCase"    # I

    .prologue
    .line 226
    const-wide/16 v0, 0x0

    .line 227
    .local v0, "beforeMemCheck":J
    const-wide/16 v8, 0x0

    .line 228
    .local v8, "timetaken":J
    const-wide/16 v6, 0x0

    .line 230
    .local v6, "ret":J
    sget-boolean v5, SMART_DHA_DEBUG:Z

    if-eqz v5, :cond_e

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    .line 232
    :cond_e
    iget-object v5, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v12, p0, processName:Ljava/lang/String;

    invoke-virtual {p1, v5, v10, v11, v12}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v4

    .line 236
    .local v4, "processStat":Lcom/android/internal/app/ProcessStats$ProcessState;
    packed-switch p2, :pswitch_data_11a

    .line 269
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v11, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    invoke-direct {v3, v5, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 275
    .local v3, "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :goto_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v4, v3, v10, v11}, Lcom/android/internal/app/ProcessStats;->computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V

    .line 276
    iget-wide v10, v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    const-wide/16 v12, 0x400

    mul-long v6, v10, v12

    .line 278
    sget-boolean v5, SMART_DHA_DEBUG:Z

    if-eqz v5, :cond_79

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v10

    sub-long v8, v10, v0

    .line 280
    const-string v5, "ActivityManager_SDHA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "procstat t :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "us, sz : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v12, 0x400

    div-long v12, v6, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "K, proc : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_79
    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-nez v5, :cond_d0

    .line 284
    sget-boolean v5, SMART_DHA_DEBUG:Z

    if-eqz v5, :cond_87

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    .line 287
    :cond_87
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 288
    .local v2, "mi":Lcom/android/internal/util/MemInfoReader;
    iget v5, p0, pid:I

    invoke-virtual {v2, v5}, Lcom/android/internal/util/MemInfoReader;->getUssByPid(I)J

    move-result-wide v6

    .line 289
    sget-boolean v5, SMART_DHA_DEBUG:Z

    if-eqz v5, :cond_d0

    .line 290
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v10

    sub-long v8, v10, v0

    .line 291
    const-string v5, "ActivityManager_SDHA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "statm    t :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "us, sz : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v12, 0x400

    div-long v12, v6, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "K, proc : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v2    # "mi":Lcom/android/internal/util/MemInfoReader;
    :cond_d0
    return-wide v6

    .line 238
    .end local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :pswitch_d1
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput v13, v11, v12

    invoke-direct {v3, v5, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 242
    .restart local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    goto/16 :goto_2e

    .line 244
    .end local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :pswitch_e3
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    const/16 v11, 0xd

    new-array v11, v11, [I

    fill-array-data v11, :array_126

    invoke-direct {v3, v5, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 252
    .restart local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    goto/16 :goto_2e

    .line 255
    .end local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :pswitch_f5
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/16 v13, 0xd

    aput v13, v11, v12

    invoke-direct {v3, v5, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 259
    .restart local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    goto/16 :goto_2e

    .line 261
    .end local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :pswitch_108
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    const/4 v11, 0x3

    new-array v11, v11, [I

    fill-array-data v11, :array_144

    invoke-direct {v3, v5, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 266
    .restart local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    goto/16 :goto_2e

    .line 236
    nop

    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_e3
        :pswitch_d1
        :pswitch_f5
        :pswitch_108
    .end packed-switch

    .line 244
    :array_126
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data

    .line 261
    :array_144
    .array-data 4
        0xa
        0xb
        0xc
    .end array-data
.end method

.method public getPackageList()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 822
    iget-object v3, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 823
    .local v2, "size":I
    if-nez v2, :cond_a

    .line 824
    const/4 v1, 0x0

    .line 830
    :cond_9
    return-object v1

    .line 826
    :cond_a
    new-array v1, v2, [Ljava/lang/String;

    .line 827
    .local v1, "list":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v3, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 828
    iget-object v3, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public getSetAdjWithServices()I
    .registers 3

    .prologue
    .line 773
    iget v0, p0, setAdj:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_d

    .line 774
    iget-boolean v0, p0, hasStartedServices:Z

    if-eqz v0, :cond_d

    .line 775
    const/16 v0, 0x8

    .line 778
    :goto_c
    return v0

    :cond_d
    iget v0, p0, setAdj:I

    goto :goto_c
.end method

.method public isInterestingToUserLocked()Z
    .registers 5

    .prologue
    .line 602
    iget-object v3, p0, activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 603
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_1c

    .line 604
    iget-object v3, p0, activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 605
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 606
    const/4 v3, 0x1

    .line 609
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_18
    return v3

    .line 603
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 609
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1c
    const/4 v3, 0x0

    goto :goto_18
.end method

.method kill(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "noisy"    # Z

    .prologue
    const-wide/16 v6, 0x40

    const/4 v4, 0x1

    .line 661
    iget-boolean v0, p0, killedByAm:Z

    if-nez v0, :cond_84

    .line 662
    const-string/jumbo v0, "kill"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 663
    if-eqz p2, :cond_41

    .line 664
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Killing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (adj "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, setAdj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_41
    const/16 v0, 0x7547

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, processName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, setAdj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 667
    iget v0, p0, pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 668
    iget-object v0, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, p0, pid:I

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->killProcessGroup(II)V

    .line 669
    iget-boolean v0, p0, persistent:Z

    if-nez v0, :cond_81

    .line 670
    iput-boolean v4, p0, killed:Z

    .line 671
    iput-boolean v4, p0, killedByAm:Z

    .line 673
    :cond_81
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 675
    :cond_84
    return-void
.end method

.method public makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .registers 11
    .param p1, "_thread"    # Landroid/app/IApplicationThread;
    .param p2, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    .line 552
    iget-object v2, p0, thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_72

    .line 553
    iget-object v1, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 554
    .local v1, "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v1, :cond_19

    .line 555
    const/4 v2, -0x1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 557
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 559
    :cond_19
    iget-object v2, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p0, uid:I

    iget-object v4, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v5, p0, processName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v2

    iput-object v2, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 561
    iget-object v2, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 562
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_31
    iget-object v2, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v7, v2, :cond_72

    .line 563
    iget-object v2, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    .line 564
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v2, :cond_4e

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v2, v1, :cond_4e

    .line 565
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 567
    :cond_4e
    iget-object v2, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v3, p0, uid:I

    iget-object v4, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v5, p0, processName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 569
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v3, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v2, v3, :cond_6f

    .line 570
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 562
    :cond_6f
    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    .line 574
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    .end local v1    # "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v7    # "i":I
    :cond_72
    iput-object p1, p0, thread:Landroid/app/IApplicationThread;

    .line 575
    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .registers 3

    .prologue
    .line 725
    iget-object v1, p0, adjSource:Ljava/lang/Object;

    if-nez v1, :cond_8

    iget-object v1, p0, adjTarget:Ljava/lang/Object;

    if-eqz v1, :cond_75

    .line 726
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 727
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 728
    iget-object v1, p0, adjTarget:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_4b

    .line 729
    iget-object v1, p0, adjTarget:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    :goto_25
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget-object v1, p0, adjSource:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_60

    .line 737
    const-string v1, "Proc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    iget-object v1, p0, adjSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    :goto_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 747
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_4a
    return-object v1

    .line 730
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_4b
    iget-object v1, p0, adjTarget:Ljava/lang/Object;

    if-eqz v1, :cond_59

    .line 731
    iget-object v1, p0, adjTarget:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 733
    :cond_59
    const-string/jumbo v1, "{null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 740
    :cond_60
    iget-object v1, p0, adjSource:Ljava/lang/Object;

    if-eqz v1, :cond_6e

    .line 741
    iget-object v1, p0, adjSource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 743
    :cond_6e
    const-string/jumbo v1, "{null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 747
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_75
    const/4 v1, 0x0

    goto :goto_4a
.end method

.method public makeInactive(Lcom/android/server/am/ProcessStatsService;)V
    .registers 11
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    const/4 v8, 0x0

    .line 578
    iput-object v8, p0, thread:Landroid/app/IApplicationThread;

    .line 579
    iget-object v1, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 580
    .local v1, "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v1, :cond_3f

    .line 581
    if-eqz v1, :cond_1a

    .line 582
    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 584
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 586
    :cond_1a
    iput-object v8, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 587
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1d
    iget-object v2, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v7, v2, :cond_3f

    .line 588
    iget-object v2, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    .line 589
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v2, :cond_3a

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v2, v1, :cond_3a

    .line 590
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 592
    :cond_3a
    iput-object v8, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 587
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 595
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    .end local v7    # "i":I
    :cond_3f
    return-void
.end method

.method modifyRawOomAdj(I)I
    .registers 3
    .param p1, "adj"    # I

    .prologue
    .line 639
    iget-boolean v0, p0, hasAboveClient:Z

    if-eqz v0, :cond_6

    .line 645
    if-gez p1, :cond_7

    .line 657
    :cond_6
    :goto_6
    return p1

    .line 647
    :cond_7
    const/4 v0, 0x1

    if-ge p1, v0, :cond_c

    .line 648
    const/4 p1, 0x1

    goto :goto_6

    .line 649
    :cond_c
    const/4 v0, 0x2

    if-ge p1, v0, :cond_11

    .line 650
    const/4 p1, 0x2

    goto :goto_6

    .line 651
    :cond_11
    const/16 v0, 0x9

    if-ge p1, v0, :cond_18

    .line 652
    const/16 p1, 0x9

    goto :goto_6

    .line 653
    :cond_18
    const/16 v0, 0xf

    if-ge p1, v0, :cond_6

    .line 654
    add-int/lit8 p1, p1, 0x1

    goto :goto_6
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .registers 13
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    const/4 v10, 0x1

    .line 791
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 792
    .local v0, "N":I
    iget-object v1, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v1, :cond_6b

    .line 793
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 794
    .local v4, "now":J
    iget-object v1, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    iget-object v6, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 796
    if-eq v0, v10, :cond_6a

    .line 797
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1e
    if-ge v8, v0, :cond_3a

    .line 798
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    .line 799
    .local v7, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v1, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v1, :cond_37

    iget-object v1, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v2, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v1, v2, :cond_37

    .line 800
    iget-object v1, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 797
    :cond_37
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 804
    .end local v7    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_3a
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 805
    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, uid:I

    iget-object v3, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v6, p0, processName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3, v6}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v9

    .line 807
    .local v9, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    new-instance v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v7, v1}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    .line 809
    .restart local v7    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iput-object v9, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 810
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    iget-object v2, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    iget-object v1, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v9, v1, :cond_6a

    .line 812
    invoke-virtual {v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 819
    .end local v4    # "now":J
    .end local v7    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    .end local v8    # "i":I
    .end local v9    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_6a
    :goto_6a
    return-void

    .line 815
    :cond_6b
    if-eq v0, v10, :cond_6a

    .line 816
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 817
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    iget-object v2, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    iget-object v6, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v3, v6}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6a
.end method

.method public setPid(I)V
    .registers 3
    .param p1, "_pid"    # I

    .prologue
    const/4 v0, 0x0

    .line 546
    iput p1, p0, pid:I

    .line 547
    iput-object v0, p0, shortStringName:Ljava/lang/String;

    .line 548
    iput-object v0, p0, stringName:Ljava/lang/String;

    .line 549
    return-void
.end method

.method public stopFreezingAllLocked()V
    .registers 4

    .prologue
    .line 613
    iget-object v1, p0, activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 614
    .local v0, "i":I
    :goto_6
    if-lez v0, :cond_17

    .line 615
    add-int/lit8 v0, v0, -0x1

    .line 616
    iget-object v1, p0, activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_6

    .line 618
    :cond_17
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 678
    iget-object v1, p0, shortStringName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 679
    iget-object v1, p0, shortStringName:Ljava/lang/String;

    .line 683
    :goto_6
    return-object v1

    .line 681
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 682
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, toShortString(Ljava/lang/StringBuilder;)V

    .line 683
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, shortStringName:Ljava/lang/String;

    goto :goto_6
.end method

.method toShortString(Ljava/lang/StringBuilder;)V
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x2710

    .line 687
    iget v1, p0, pid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 688
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 689
    iget-object v1, p0, processName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 691
    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ge v1, v2, :cond_22

    .line 692
    iget v1, p0, uid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 709
    :cond_21
    :goto_21
    return-void

    .line 694
    :cond_22
    const/16 v1, 0x75

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 695
    iget v1, p0, userId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 696
    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 697
    .local v0, "appId":I
    if-lt v0, v2, :cond_5b

    .line 698
    const/16 v1, 0x61

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 699
    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 704
    :goto_40
    iget v1, p0, uid:I

    iget-object v2, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v2, :cond_21

    .line 705
    const/16 v1, 0x69

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 706
    iget v1, p0, uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const v2, 0x182b8

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 701
    :cond_5b
    const/16 v1, 0x73

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_40
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 712
    iget-object v1, p0, stringName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 713
    iget-object v1, p0, stringName:Ljava/lang/String;

    .line 721
    :goto_6
    return-object v1

    .line 715
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 716
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ProcessRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {p0, v0}, toShortString(Ljava/lang/StringBuilder;)V

    .line 720
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, stringName:Ljava/lang/String;

    goto :goto_6
.end method

.method public unlinkDeathRecipient()V
    .registers 4

    .prologue
    .line 621
    iget-object v0, p0, deathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_14

    iget-object v0, p0, thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_14

    .line 622
    iget-object v0, p0, thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 624
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 625
    return-void
.end method

.method updateHasAboveClientLocked()V
    .registers 4

    .prologue
    .line 628
    const/4 v2, 0x0

    iput-boolean v2, p0, hasAboveClient:Z

    .line 629
    iget-object v2, p0, connections:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_1e

    .line 630
    iget-object v2, p0, connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 631
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v2, v0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1f

    .line 632
    const/4 v2, 0x1

    iput-boolean v2, p0, hasAboveClient:Z

    .line 636
    .end local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_1e
    return-void

    .line 629
    .restart local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_b
.end method
