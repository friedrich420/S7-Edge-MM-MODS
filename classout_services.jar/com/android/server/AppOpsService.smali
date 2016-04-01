.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$AskRunnable;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$UidState;
    }
.end annotation


# static fields
.field private static final ANDROID_SYSTEM_PACKAGE:Ljava/lang/String; = "android"

.field static final DEBUG:Z = false

.field static final DEFAULT_POLICY_FILE:Ljava/lang/String; = "/system/etc/appops_policy.xml"

.field private static final GOOGLE_PLAYSERVICE_PACKAGE:Ljava/lang/String; = "com.google.android.gms"

.field private static final LOCATION_INFORM_NSFLP:I = 0x3

.field static final TAG:Ljava/lang/String; = "AppOps"

.field static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field private mLocationManager:Landroid/location/LocationManager;

.field final mLooper:Landroid/os/Looper;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[Z>;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field mPolicy:Lcom/android/server/AppOpsPolicy;

.field final mStrictEnable:Z

.field final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .registers 4
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 105
    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, mWriteRunner:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mUidStates:Landroid/util/SparseArray;

    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mOpRestrictions:Landroid/util/SparseArray;

    .line 191
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mOpModeWatchers:Landroid/util/SparseArray;

    .line 193
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 195
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mModeWatchers:Landroid/util/ArrayMap;

    .line 197
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mAudioRestrictions:Landroid/util/SparseArray;

    .line 221
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mClients:Landroid/util/ArrayMap;

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, mLocationManager:Landroid/location/LocationManager;

    .line 270
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, mFile:Landroid/util/AtomicFile;

    .line 271
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 272
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, mLooper:Landroid/os/Looper;

    .line 273
    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v0

    iput-boolean v0, p0, mStrictEnable:Z

    .line 274
    invoke-virtual {p0}, readState()V

    .line 275
    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "op"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 676
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .local p3, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez p3, :cond_3

    .line 703
    :cond_2
    return-object p0

    .line 679
    :cond_3
    if-nez p0, :cond_a

    .line 680
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 682
    .restart local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    :cond_a
    const/4 v1, 0x0

    .line 683
    .local v1, "duplicate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 684
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 685
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 686
    .local v6, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-nez v6, :cond_39

    .line 687
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .restart local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {p0, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    :cond_28
    :goto_28
    if-nez v1, :cond_36

    .line 700
    new-instance v7, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 690
    :cond_39
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 691
    .local v5, "reportCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3e
    if-ge v3, v5, :cond_28

    .line 692
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 693
    .local v4, "report":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p2, :cond_5c

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 694
    const/4 v1, 0x1

    .line 695
    goto :goto_28

    .line 691
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e
.end method

.method private askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    .registers 13
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    .line 1954
    new-instance v6, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    invoke-direct {v6}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;-><init>()V

    .line 1955
    .local v6, "request":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    iget-object v7, p0, mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/AppOpsService$AskRunnable;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AppOpsService$AskRunnable;-><init>(Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/AppOpsService$Op;Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1956
    return-object v6
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .registers 8
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 916
    iget-object v2, p0, mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 917
    .local v1, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-eqz v1, :cond_1d

    .line 918
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Restriction;

    .line 919
    .local v0, "r":Lcom/android/server/AppOpsService$Restriction;
    if-eqz v0, :cond_1d

    iget-object v2, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 920
    iget v2, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 923
    .end local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .registers 6
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 1910
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1911
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_21

    .line 1912
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1915
    :cond_21
    return-void
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .registers 16
    .param p1, "pkgOps"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    const/4 v12, 0x0

    .line 409
    .local v12, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_2e

    .line 410
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .restart local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_9
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v1

    if-ge v11, v1, :cond_5c

    .line 412
    invoke-virtual {p1, v11}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 413
    .local v0, "curOp":Lcom/android/server/AppOpsService$Op;
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v9, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    iget-object v10, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 418
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v11    # "j":I
    :cond_2e
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_2f
    array-length v1, p2

    if-ge v11, v1, :cond_5c

    .line 419
    aget v1, p2, v11

    invoke-virtual {p1, v1}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 420
    .restart local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v0, :cond_59

    .line 421
    if-nez v12, :cond_43

    .line 422
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .restart local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_43
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v9, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    iget-object v10, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_59
    add-int/lit8 v11, v11, 0x1

    goto :goto_2f

    .line 430
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_5c
    return-object v12
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1689
    const-string v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    const-string v0, "  [-h] [CMD]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1691
    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1692
    const-string v0, "Commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1693
    const-string v0, "  write-settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1694
    const-string v0, "    Immediately write pending changes to storage."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1695
    const-string v0, "  read-settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1696
    const-string v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1697
    return-void
.end method

.method private getDefaultMode(IILjava/lang/String;)I
    .registers 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1960
    invoke-direct {p0, p2}, isStrict(I)Z

    move-result v2

    invoke-static {p1, v2}, Landroid/app/AppOpsManager;->opToDefaultMode(IZ)I

    move-result v0

    .line 1961
    .local v0, "mode":I
    invoke-static {p1}, Landroid/app/AppOpsManager;->isStrictOp(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, mPolicy:Lcom/android/server/AppOpsPolicy;

    if-eqz v2, :cond_1c

    .line 1962
    iget-object v2, p0, mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/AppOpsPolicy;->getDefualtMode(ILjava/lang/String;)I

    move-result v1

    .line 1963
    .local v1, "policyMode":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1c

    .line 1964
    move v0, v1

    .line 1967
    .end local v1    # "policyMode":I
    :cond_1c
    return v0
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .registers 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "edit"    # Z

    .prologue
    .line 1319
    invoke-direct {p0, p2, p3, p4}, getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1320
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_8

    .line 1321
    const/4 v1, 0x0

    .line 1323
    :goto_7
    return-object v1

    :cond_8
    invoke-direct {p0, v0, p1, p4}, getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    goto :goto_7
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .registers 8
    .param p1, "ops"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    .prologue
    .line 1328
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Op;

    .line 1329
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_24

    .line 1330
    if-nez p3, :cond_c

    .line 1331
    const/4 v2, 0x0

    .line 1340
    :goto_b
    return-object v2

    .line 1333
    :cond_c
    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v2, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, v2, v3}, getDefaultMode(IILjava/lang/String;)I

    move-result v0

    .line 1334
    .local v0, "mode":I
    new-instance v1, Lcom/android/server/AppOpsService$Op;

    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v2, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2, v0}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;II)V

    .line 1335
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    invoke-virtual {p1, p2, v1}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 1337
    .end local v0    # "mode":I
    :cond_24
    if-eqz p3, :cond_29

    .line 1338
    invoke-direct {p0}, scheduleWriteLocked()V

    :cond_29
    move-object v2, v1

    .line 1340
    goto :goto_b
.end method

.method private getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    .line 1227
    if-nez p1, :cond_a

    .line 1228
    const-string/jumbo p2, "root"

    .line 1235
    :cond_5
    :goto_5
    invoke-direct {p0, p1, p2, p3}, getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    return-object v0

    .line 1229
    :cond_a
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_11

    .line 1230
    const-string p2, "com.android.shell"

    goto :goto_5

    .line 1231
    :cond_11
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 1232
    if-nez p2, :cond_5

    .line 1233
    const-string p2, "android"

    goto :goto_5
.end method

.method private getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .registers 19
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    .line 1239
    move/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {p0, v0, v1}, getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v11

    .line 1240
    .local v11, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v11, :cond_c

    .line 1241
    const/4 v9, 0x0

    .line 1299
    :cond_b
    :goto_b
    return-object v9

    .line 1244
    :cond_c
    iget-object v12, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v12, :cond_1b

    .line 1245
    if-nez p3, :cond_14

    .line 1246
    const/4 v9, 0x0

    goto :goto_b

    .line 1248
    :cond_14
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    iput-object v12, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1251
    :cond_1b
    iget-object v12, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$Ops;

    .line 1252
    .local v9, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v9, :cond_2b

    iget-boolean v12, v9, Lcom/android/server/AppOpsService$Ops;->isPrivilegedCredible:Z

    if-nez v12, :cond_b

    .line 1253
    :cond_2b
    if-nez p3, :cond_31

    if-nez v9, :cond_31

    .line 1254
    const/4 v9, 0x0

    goto :goto_b

    .line 1256
    :cond_31
    const/4 v5, 0x0

    .line 1259
    .local v5, "isPrivileged":Z
    if-eqz p1, :cond_ae

    .line 1260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1262
    .local v6, "ident":J
    const/4 v10, -0x1

    .line 1264
    .local v10, "pkgUid":I
    :try_start_39
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v12, v0, v13, v14}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1266
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_8e

    .line 1267
    iget v10, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1268
    iget v12, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_4e} :catch_9d
    .catchall {:try_start_39 .. :try_end_4e} :catchall_a6

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_8c

    const/4 v5, 0x1

    .line 1279
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_53
    :goto_53
    move/from16 v0, p1

    if-eq v10, v0, :cond_ab

    .line 1282
    :try_start_57
    const-string v12, "AppOps"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad call: specified package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " under uid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " but it is really "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_57 .. :try_end_87} :catchall_a6

    .line 1284
    const/4 v9, 0x0

    .line 1287
    .end local v9    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b

    .line 1268
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_8c
    const/4 v5, 0x0

    goto :goto_53

    .line 1271
    :cond_8e
    :try_start_8e
    const-string/jumbo v12, "media"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_96} :catch_9d
    .catchall {:try_start_8e .. :try_end_96} :catchall_a6

    move-result v12

    if-eqz v12, :cond_53

    .line 1272
    const/16 v10, 0x3f5

    .line 1273
    const/4 v5, 0x0

    goto :goto_53

    .line 1276
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_9d
    move-exception v3

    .line 1277
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_9e
    const-string v12, "AppOps"

    const-string v13, "Could not contact PackageManager"

    invoke-static {v12, v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a5
    .catchall {:try_start_9e .. :try_end_a5} :catchall_a6

    goto :goto_53

    .line 1287
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_a6
    move-exception v12

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    :cond_ab
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1290
    .end local v6    # "ident":J
    .end local v10    # "pkgUid":I
    :cond_ae
    new-instance v8, Lcom/android/server/AppOpsService$Ops;

    move-object/from16 v0, p2

    invoke-direct {v8, v0, v11, v5}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    .line 1291
    .local v8, "newOps":Lcom/android/server/AppOpsService$Ops;
    if-eqz v9, :cond_d0

    .line 1292
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b8
    invoke-virtual {v9}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v12

    if-ge v4, v12, :cond_d0

    .line 1293
    invoke-virtual {v9, v4}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$Op;

    iget v12, v12, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v9, v4}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 1292
    add-int/lit8 v4, v4, 0x1

    goto :goto_b8

    .line 1296
    .end local v4    # "i":I
    :cond_d0
    move-object v9, v8

    .line 1297
    iget-object v12, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .registers 3
    .param p0, "uid"    # I

    .prologue
    .line 2091
    const/4 v0, 0x0

    .line 2093
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v0

    .line 2097
    :goto_9
    if-nez v0, :cond_d

    .line 2098
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2100
    .end local v0    # "packageNames":[Ljava/lang/String;
    :cond_d
    return-object v0

    .line 2094
    .restart local v0    # "packageNames":[Ljava/lang/String;
    :catch_e
    move-exception v1

    goto :goto_9
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "edit"    # Z

    .prologue
    .line 1215
    iget-object v1, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .line 1216
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_18

    .line 1217
    if-nez p2, :cond_e

    .line 1218
    const/4 v1, 0x0

    .line 1223
    :goto_d
    return-object v1

    .line 1220
    :cond_e
    new-instance v0, Lcom/android/server/AppOpsService$UidState;

    .end local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    invoke-direct {v0, p1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .line 1221
    .restart local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_18
    move-object v1, v0

    .line 1223
    goto :goto_d
.end method

.method private isOpRestricted(IILjava/lang/String;)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1344
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1345
    .local v2, "userHandle":I
    iget-object v5, p0, mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 1346
    .local v0, "opRestrictions":[Z
    if-eqz v0, :cond_27

    aget-boolean v5, v0, p2

    if-eqz v5, :cond_27

    .line 1347
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1348
    monitor-enter p0

    .line 1349
    const/4 v5, 0x1

    :try_start_1c
    invoke-direct {p0, p1, p3, v5}, getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    .line 1350
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v1, :cond_28

    iget-boolean v5, v1, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    if-eqz v5, :cond_28

    .line 1351
    monitor-exit p0

    .line 1357
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_27
    :goto_27
    return v3

    .line 1353
    .restart local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_28
    monitor-exit p0

    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_29
    move v3, v4

    .line 1355
    goto :goto_27

    .line 1353
    :catchall_2b
    move-exception v3

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method private isStrict(I)Z
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 1971
    iget-boolean v0, p0, mStrictEnable:Z

    if-nez v0, :cond_6

    .line 1972
    const/4 v0, 0x0

    .line 1974
    :goto_5
    return v0

    :cond_6
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    goto :goto_5
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I
    .registers 20
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "proxyUid"    # I
    .param p5, "proxyPackageName"    # Ljava/lang/String;

    .prologue
    .line 995
    monitor-enter p0

    .line 996
    const/4 v9, 0x1

    :try_start_2
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1, v9}, getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v3

    .line 997
    .local v3, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v3, :cond_f

    .line 1000
    const/4 v7, 0x2

    monitor-exit p0

    .line 1054
    :goto_e
    return v7

    .line 1002
    :cond_f
    const/4 v9, 0x1

    invoke-direct {p0, v3, p1, v9}, getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 1003
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, p1, v1}, isOpRestricted(IILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 1004
    const/4 v7, 0x1

    monitor-exit p0

    goto :goto_e

    .line 1053
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_21
    move-exception v9

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_21

    throw v9

    .line 1006
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_24
    :try_start_24
    iget v9, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_71

    .line 1007
    const-string v9, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Noting op not finished: uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pkg "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " time="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v2, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " duration="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :cond_71
    const/4 v9, 0x0

    iput v9, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1011
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v5

    .line 1012
    .local v5, "switchCode":I
    iget-object v8, v3, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1013
    .local v8, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v9, :cond_8e

    .line 1014
    iget-object v9, v8, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 1015
    .local v7, "uidMode":I
    if-eqz v7, :cond_8e

    .line 1019
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1020
    monitor-exit p0

    goto :goto_e

    .line 1023
    .end local v7    # "uidMode":I
    :cond_8e
    if-eq v5, p1, :cond_a9

    const/4 v9, 0x1

    invoke-direct {p0, v3, v5, v9}, getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v6

    .line 1024
    .local v6, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_95
    iget v9, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v9, :cond_ab

    iget v9, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_ab

    .line 1028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1029
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto/16 :goto_e

    .end local v6    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_a9
    move-object v6, v2

    .line 1023
    goto :goto_95

    .line 1030
    .restart local v6    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_ab
    iget v9, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    if-nez v9, :cond_c5

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1035
    const-wide/16 v10, 0x0

    iput-wide v10, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1036
    move/from16 v0, p4

    iput v0, v2, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1037
    move-object/from16 v0, p5

    iput-object v0, v2, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 1038
    const/4 v7, 0x0

    monitor-exit p0

    goto/16 :goto_e

    .line 1040
    :cond_c5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    iget-object v10, p0, mLooper:Landroid/os/Looper;

    if-ne v9, v10, :cond_109

    .line 1041
    const-string v9, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "noteOperation: This method will deadlock if called from the main thread. (Code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto/16 :goto_e

    .line 1050
    :cond_109
    iget v9, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 1051
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, p1, v0, v1, v6}, askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    move-result-object v4

    .line 1053
    .local v4, "req":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    monitor-exit p0
    :try_end_118
    .catchall {:try_start_24 .. :try_end_118} :catchall_21

    .line 1054
    invoke-virtual {v4}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->get()I

    move-result v7

    goto/16 :goto_e
.end method

.method private printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .registers 6
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "mode"    # I
    .param p3, "operation"    # Ljava/lang/String;

    .prologue
    .line 1978
    if-eqz p1, :cond_b

    .line 1979
    iget v1, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 1980
    .local v0, "switchCode":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_c

    .line 1990
    .end local v0    # "switchCode":I
    :cond_b
    :goto_b
    return-void

    .line 1984
    .restart local v0    # "switchCode":I
    :cond_c
    if-nez p2, :cond_b

    goto :goto_b
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .registers 12
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 487
    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->time:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3f

    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3f

    .line 488
    const/4 v3, 0x0

    invoke-direct {p0, p2, p3, v3}, getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 489
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_3f

    .line 490
    iget v3, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v3}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    .line 491
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v3

    if-gtz v3, :cond_3f

    .line 492
    iget-object v2, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 493
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 494
    .local v1, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v1, :cond_3f

    .line 495
    iget-object v3, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 497
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 499
    :cond_34
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 500
    iget-object v3, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 506
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_3f
    return-void
.end method

.method private readPolicy()V
    .registers 4

    .prologue
    .line 2104
    iget-boolean v0, p0, mStrictEnable:Z

    if-eqz v0, :cond_1f

    .line 2105
    new-instance v0, Lcom/android/server/AppOpsPolicy;

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/appops_policy.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsPolicy;-><init>(Ljava/io/File;Landroid/content/Context;)V

    iput-object v0, p0, mPolicy:Lcom/android/server/AppOpsPolicy;

    .line 2106
    iget-object v0, p0, mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v0}, Lcom/android/server/AppOpsPolicy;->readPolicy()V

    .line 2107
    iget-object v0, p0, mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v0}, Lcom/android/server/AppOpsPolicy;->debugPoilcy()V

    .line 2111
    :goto_1e
    return-void

    .line 2109
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, mPolicy:Lcom/android/server/AppOpsPolicy;

    goto :goto_1e
.end method

.method private recordOperationLocked(IILjava/lang/String;I)V
    .registers 15
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 1994
    invoke-direct {p0, p1, p2, p3, v6}, getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 1995
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_2f

    .line 1996
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v3, :cond_13

    .line 1997
    const-string/jumbo v3, "noteOperartion"

    invoke-direct {p0, v2, p4, v3}, printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 1998
    :cond_13
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v3, :cond_1d

    .line 1999
    const-string/jumbo v3, "startOperation"

    invoke-direct {p0, v2, p4, v3}, printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 2000
    :cond_1d
    const/4 v3, 0x1

    if-ne p4, v3, :cond_30

    .line 2001
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2026
    :cond_26
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2027
    iput v6, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    .line 2028
    iput v6, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 2030
    :cond_2f
    return-void

    .line 2002
    :cond_30
    if-nez p4, :cond_26

    .line 2003
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v3, :cond_3e

    .line 2004
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 2005
    iput-wide v8, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2007
    :cond_3e
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v3, :cond_26

    .line 2008
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v3, :cond_51

    .line 2009
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 2010
    iput-wide v8, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2011
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 2013
    :cond_51
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    iget v4, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 2014
    :goto_58
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_26

    .line 2015
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 2016
    .local v1, "clientToken":Landroid/os/IBinder;
    iget-object v3, p0, mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 2017
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    if-eqz v0, :cond_7b

    .line 2018
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v3, :cond_7b

    .line 2019
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2022
    :cond_7b
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_58
.end method

.method private scheduleFastWriteLocked()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1310
    iget-boolean v0, p0, mFastWriteScheduled:Z

    if-nez v0, :cond_19

    .line 1311
    iput-boolean v1, p0, mWriteScheduled:Z

    .line 1312
    iput-boolean v1, p0, mFastWriteScheduled:Z

    .line 1313
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1314
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1316
    :cond_19
    return-void
.end method

.method private scheduleWriteLocked()V
    .registers 5

    .prologue
    .line 1303
    iget-boolean v0, p0, mWriteScheduled:Z

    if-nez v0, :cond_11

    .line 1304
    const/4 v0, 0x1

    iput-boolean v0, p0, mWriteScheduled:Z

    .line 1305
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1307
    :cond_11
    return-void
.end method

.method private scheduleWriteNowLocked()V
    .registers 3

    .prologue
    .line 2083
    iget-boolean v0, p0, mWriteScheduled:Z

    if-nez v0, :cond_7

    .line 2084
    const/4 v0, 0x1

    iput-boolean v0, p0, mWriteScheduled:Z

    .line 2086
    :cond_7
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2087
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2088
    return-void
.end method

.method private sendInfoToFLP(IILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "pName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 2123
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendInfoToFLP, code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    iget-object v2, p0, mLocationManager:Landroid/location/LocationManager;

    if-nez v2, :cond_48

    .line 2126
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, mLocationManager:Landroid/location/LocationManager;

    .line 2129
    :cond_48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2130
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "op"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2131
    const-string/jumbo v2, "uId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2132
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2136
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2137
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2139
    iget-object v2, p0, mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->notifyNSFLP(Landroid/os/Message;)Z

    .line 2140
    return-void
.end method

.method private verifyIncomingOp(I)V
    .registers 5
    .param p1, "op"    # I

    .prologue
    .line 1208
    if-ltz p1, :cond_7

    const/16 v0, 0x4b

    if-ge p1, v0, :cond_7

    .line 1209
    return-void

    .line 1211
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 1197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1205
    :cond_6
    :goto_6
    return-void

    .line 1200
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 1203
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .registers 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 906
    monitor-enter p0

    .line 907
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, checkRestrictionLocked(IIILjava/lang/String;)I

    move-result v0

    .line 908
    .local v0, "mode":I
    if-eqz v0, :cond_9

    .line 909
    monitor-exit p0

    .line 912
    .end local v0    # "mode":I
    :goto_8
    return v0

    .line 911
    .restart local v0    # "mode":I
    :cond_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    .line 912
    invoke-virtual {p0, p1, p3, p4}, checkOperation(IILjava/lang/String;)I

    move-result v0

    goto :goto_8

    .line 911
    .end local v0    # "mode":I
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public checkOperation(IILjava/lang/String;)I
    .registers 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 882
    invoke-direct {p0, p2}, verifyIncomingUid(I)V

    .line 883
    invoke-direct {p0, p1}, verifyIncomingOp(I)V

    .line 884
    monitor-enter p0

    .line 885
    :try_start_7
    invoke-direct {p0, p2, p1, p3}, isOpRestricted(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 886
    const/4 v1, 0x1

    monitor-exit p0

    .line 900
    :goto_f
    return v1

    .line 888
    :cond_10
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 889
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v2

    .line 890
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-eqz v2, :cond_2c

    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v3, :cond_2c

    .line 891
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 892
    .local v1, "uidMode":I
    if-eqz v1, :cond_2c

    .line 893
    monitor-exit p0

    goto :goto_f

    .line 901
    .end local v1    # "uidMode":I
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_29
    move-exception v3

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v3

    .line 896
    .restart local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_2c
    const/4 v3, 0x0

    :try_start_2d
    invoke-direct {p0, p1, p2, p3, v3}, getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 897
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_39

    .line 898
    invoke-direct {p0, p1, p2, p3}, getDefaultMode(IILjava/lang/String;)I

    move-result v1

    monitor-exit p0

    goto :goto_f

    .line 900
    :cond_39
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_29

    goto :goto_f
.end method

.method public checkPackage(ILjava/lang/String;)I
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 958
    monitor-enter p0

    .line 959
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 960
    const/4 v0, 0x0

    monitor-exit p0

    .line 962
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x2

    monitor-exit p0

    goto :goto_a

    .line 964
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_e

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 36
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "android.permission.DUMP"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_3b

    .line 1703
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Permission Denial: can\'t dump ApOps service from from pid="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", uid="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1877
    :goto_3a
    return-void

    .line 1709
    :cond_3b
    if-eqz p3, :cond_117

    .line 1710
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3e
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v8, v0, :cond_117

    .line 1711
    aget-object v4, p3, v8

    .line 1712
    .local v4, "arg":Ljava/lang/String;
    const-string v28, "-h"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5b

    .line 1713
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_3a

    .line 1715
    :cond_5b
    const-string v28, "-a"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_68

    .line 1710
    add-int/lit8 v8, v8, 0x1

    goto :goto_3e

    .line 1717
    :cond_68
    const-string/jumbo v28, "write-settings"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a0

    .line 1718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 1720
    .local v24, "token":J
    :try_start_77
    monitor-enter p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_9b

    .line 1721
    :try_start_78
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWriteRunner:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1722
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_78 .. :try_end_88} :catchall_98

    .line 1723
    :try_start_88
    invoke-virtual/range {p0 .. p0}, writeState()V

    .line 1724
    const-string v28, "Current settings written."

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_88 .. :try_end_94} :catchall_9b

    .line 1726
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3a

    .line 1722
    :catchall_98
    move-exception v28

    :try_start_99
    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    :try_start_9a
    throw v28
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9b

    .line 1726
    :catchall_9b
    move-exception v28

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v28

    .line 1729
    .end local v24    # "token":J
    :cond_a0
    const-string/jumbo v28, "read-settings"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c5

    .line 1730
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 1732
    .restart local v24    # "token":J
    :try_start_af
    invoke-virtual/range {p0 .. p0}, readState()V

    .line 1733
    const-string v28, "Last settings read."

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_af .. :try_end_bb} :catchall_c0

    .line 1735
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3a

    :catchall_c0
    move-exception v28

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v28

    .line 1738
    .end local v24    # "token":J
    :cond_c5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_f9

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f9

    .line 1739
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Unknown option: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 1742
    :cond_f9
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Unknown command: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 1748
    .end local v4    # "arg":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_117
    monitor-enter p0

    .line 1749
    :try_start_118
    const-string v28, "Current AppOps Service state:"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1751
    .local v14, "now":J
    const/4 v12, 0x0

    .line 1752
    .local v12, "needSep":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    if-lez v28, :cond_1b3

    .line 1753
    const/4 v12, 0x1

    .line 1754
    const-string v28, "  Op mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1755
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_13d
    move-object/from16 v0, p0

    iget-object v0, v0, mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_1b3

    .line 1756
    const-string v28, "    Op "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v28

    invoke-static/range {v28 .. v28}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1757
    const-string v28, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1759
    .local v5, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_183
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_1b0

    .line 1760
    const-string v28, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v28, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1759
    add-int/lit8 v10, v10, 0x1

    goto :goto_183

    .line 1755
    :cond_1b0
    add-int/lit8 v8, v8, 0x1

    goto :goto_13d

    .line 1765
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v10    # "j":I
    :cond_1b3
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v28

    if-lez v28, :cond_23e

    .line 1766
    const/4 v12, 0x1

    .line 1767
    const-string v28, "  Package mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1768
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1ca
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_23e

    .line 1769
    const-string v28, "    Pkg "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1770
    const-string v28, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1772
    .restart local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_20e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_23b

    .line 1773
    const-string v28, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v28, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1774
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1772
    add-int/lit8 v10, v10, 0x1

    goto :goto_20e

    .line 1768
    :cond_23b
    add-int/lit8 v8, v8, 0x1

    goto :goto_1ca

    .line 1778
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v10    # "j":I
    :cond_23e
    move-object/from16 v0, p0

    iget-object v0, v0, mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v28

    if-lez v28, :cond_29e

    .line 1779
    const/4 v12, 0x1

    .line 1780
    const-string v28, "  All mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1781
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_255
    move-object/from16 v0, p0

    iget-object v0, v0, mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_29e

    .line 1782
    const-string v28, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1783
    const-string v28, " -> "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1781
    add-int/lit8 v8, v8, 0x1

    goto :goto_255

    .line 1786
    .end local v8    # "i":I
    :cond_29e
    move-object/from16 v0, p0

    iget-object v0, v0, mClients:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v28

    if-lez v28, :cond_38d

    .line 1787
    const/4 v12, 0x1

    .line 1788
    const-string v28, "  Clients:"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1789
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2b5
    move-object/from16 v0, p0

    iget-object v0, v0, mClients:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_38d

    .line 1790
    const-string v28, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, mClients:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v28, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, mClients:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$ClientState;

    .line 1792
    .local v7, "cs":Lcom/android/server/AppOpsService$ClientState;
    const-string v28, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1793
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_389

    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_389

    .line 1794
    const-string v28, "      Started ops:"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1795
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_31e
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_389

    .line 1796
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AppOpsService$Op;

    .line 1797
    .local v16, "op":Lcom/android/server/AppOpsService$Op;
    const-string v28, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v28, "uid="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->uid:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1798
    const-string v28, " pkg="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1799
    const-string v28, " op="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1795
    add-int/lit8 v10, v10, 0x1

    goto :goto_31e

    .line 1789
    .end local v10    # "j":I
    .end local v16    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_389
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2b5

    .line 1804
    .end local v7    # "cs":Lcom/android/server/AppOpsService$ClientState;
    .end local v8    # "i":I
    :cond_38d
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    if-lez v28, :cond_474

    .line 1805
    const/16 v21, 0x0

    .line 1806
    .local v21, "printedHeader":Z
    const/4 v13, 0x0

    .local v13, "o":I
    :goto_39c
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v13, v0, :cond_474

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v28

    invoke-static/range {v28 .. v28}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v16

    .line 1808
    .local v16, "op":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 1809
    .local v23, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3c9
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_470

    .line 1810
    if-nez v21, :cond_3df

    .line 1811
    const-string v28, "  Audio Restrictions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1812
    const/16 v21, 0x1

    .line 1813
    const/4 v12, 0x1

    .line 1815
    :cond_3df
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v27

    .line 1816
    .local v27, "usage":I
    const-string v28, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1817
    const-string v28, " usage="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v27 .. v27}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1818
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/AppOpsService$Restriction;

    .line 1819
    .local v22, "r":Lcom/android/server/AppOpsService$Restriction;
    const-string v28, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1820
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_46c

    .line 1821
    const-string v28, "      Exceptions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1822
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_43d
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArraySet;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_46c

    .line 1823
    const-string v28, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1822
    add-int/lit8 v10, v10, 0x1

    goto :goto_43d

    .line 1809
    .end local v10    # "j":I
    :cond_46c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3c9

    .line 1806
    .end local v22    # "r":Lcom/android/server/AppOpsService$Restriction;
    .end local v27    # "usage":I
    :cond_470
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_39c

    .line 1829
    .end local v8    # "i":I
    .end local v13    # "o":I
    .end local v16    # "op":Ljava/lang/String;
    .end local v21    # "printedHeader":Z
    .end local v23    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_474
    if-eqz v12, :cond_479

    .line 1830
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1832
    :cond_479
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_47a
    move-object/from16 v0, p0

    iget-object v0, v0, mUidStates:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_616

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, mUidStates:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/AppOpsService$UidState;

    .line 1835
    .local v26, "uidState":Lcom/android/server/AppOpsService$UidState;
    const-string v28, "  Uid "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v28, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1837
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    .line 1838
    .local v18, "opModes":Landroid/util/SparseIntArray;
    if-eqz v18, :cond_4f7

    .line 1839
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseIntArray;->size()I

    move-result v17

    .line 1840
    .local v17, "opModeCount":I
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_4c2
    move/from16 v0, v17

    if-ge v10, v0, :cond_4f7

    .line 1841
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 1842
    .local v6, "code":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    .line 1843
    .local v11, "mode":I
    const-string v28, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1844
    const-string v28, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 1840
    add-int/lit8 v10, v10, 0x1

    goto :goto_4c2

    .line 1848
    .end local v6    # "code":I
    .end local v10    # "j":I
    .end local v11    # "mode":I
    .end local v17    # "opModeCount":I
    :cond_4f7
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    .line 1849
    .local v20, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v20, :cond_503

    .line 1832
    :cond_4ff
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_47a

    .line 1853
    :cond_503
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_50b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_4ff

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/AppOpsService$Ops;

    .line 1854
    .local v19, "ops":Lcom/android/server/AppOpsService$Ops;
    const-string v28, "    Package "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v28, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1855
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_537
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_50b

    .line 1856
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AppOpsService$Op;

    .line 1857
    .local v16, "op":Lcom/android/server/AppOpsService$Op;
    const-string v28, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1858
    const-string v28, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1859
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_5a4

    .line 1860
    const-string v28, "; time="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v28, v0

    sub-long v28, v14, v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1861
    const-string v28, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1863
    :cond_5a4
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_5d1

    .line 1864
    const-string v28, "; rejectTime="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v28, v0

    sub-long v28, v14, v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1865
    const-string v28, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1867
    :cond_5d1
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5ef

    .line 1868
    const-string v28, " (running)"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1872
    :cond_5e8
    :goto_5e8
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1855
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_537

    .line 1869
    :cond_5ef
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v28, v0

    if-eqz v28, :cond_5e8

    .line 1870
    const-string v28, "; duration="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_5e8

    .line 1876
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "j":I
    .end local v12    # "needSep":Z
    .end local v14    # "now":J
    .end local v16    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v18    # "opModes":Landroid/util/SparseIntArray;
    .end local v19    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v20    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v26    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_613
    move-exception v28

    monitor-exit p0
    :try_end_615
    .catchall {:try_start_118 .. :try_end_615} :catchall_613

    throw v28

    .restart local v8    # "i":I
    .restart local v12    # "needSep":Z
    .restart local v14    # "now":J
    :cond_616
    :try_start_616
    monitor-exit p0
    :try_end_617
    .catchall {:try_start_616 .. :try_end_617} :catchall_613

    goto/16 :goto_3a
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1151
    invoke-direct {p0, p3}, verifyIncomingUid(I)V

    .line 1152
    invoke-direct {p0, p2}, verifyIncomingOp(I)V

    move-object v0, p1

    .line 1153
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 1154
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 1156
    const/16 v2, 0x29

    if-eq p2, v2, :cond_12

    const/16 v2, 0x2a

    if-ne p2, v2, :cond_28

    :cond_12
    :try_start_12
    const-string v2, "com.google.android.gms"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "android"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1158
    const-string/jumbo v2, "finishOp"

    invoke-direct {p0, p2, p3, p4, v2}, sendInfoToFLP(IILjava/lang/String;Ljava/lang/String;)V

    .line 1161
    :cond_28
    const/4 v2, 0x1

    invoke-direct {p0, p2, p3, p4, v2}, getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    .line 1162
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_31

    .line 1163
    monitor-exit p0

    .line 1173
    :goto_30
    return-void

    .line 1165
    :cond_31
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v2, :cond_73

    .line 1166
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 1167
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operation not started: uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " op="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1172
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_70
    move-exception v2

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_12 .. :try_end_72} :catchall_70

    throw v2

    .line 1171
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_73
    :try_start_73
    invoke-virtual {p0, v1}, finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V

    .line 1172
    monitor-exit p0
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_70

    goto :goto_30
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    .registers 6
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    const/4 v1, 0x1

    .line 1181
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-gt v0, v1, :cond_76

    .line 1182
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-ne v0, v1, :cond_1f

    .line 1183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1184
    iget-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1190
    :goto_1b
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1194
    :goto_1e
    return-void

    .line 1186
    :cond_1f
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1192
    :cond_76
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    goto :goto_1e
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 12
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 467
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 469
    monitor-enter p0

    .line 470
    const/4 v4, 0x0

    :try_start_12
    invoke-direct {p0, p1, p2, v4}, getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 471
    .local v0, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_1a

    .line 472
    monitor-exit p0

    .line 482
    :goto_19
    return-object v1

    .line 474
    :cond_1a
    invoke-direct {p0, v0, p3}, collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 475
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_25

    .line 476
    monitor-exit p0

    goto :goto_19

    .line 483
    .end local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :catchall_22
    move-exception v4

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_22

    throw v4

    .line 478
    .restart local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_25
    :try_start_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget-object v4, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v5, v5, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v3, v4, v5, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 481
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_22

    goto :goto_19
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .registers 20
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    const-string v14, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 437
    const/4 v7, 0x0

    .line 438
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 439
    :try_start_15
    move-object/from16 v0, p0

    iget-object v13, v0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 440
    .local v12, "uidStateCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v12, :cond_6c

    .line 441
    move-object/from16 v0, p0

    iget-object v13, v0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$UidState;

    .line 442
    .local v11, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v13, :cond_36

    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_39

    .line 440
    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 445
    :cond_39
    iget-object v5, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 446
    .local v5, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I
    :try_end_3e
    .catchall {:try_start_15 .. :try_end_3e} :catchall_6e

    move-result v4

    .line 447
    .local v4, "packageCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    move-object v8, v7

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v8, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_41
    if-ge v3, v4, :cond_78

    .line 448
    :try_start_43
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    .line 449
    .local v6, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v9

    .line 450
    .local v9, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v9, :cond_76

    .line 451
    if-nez v8, :cond_74

    .line 452
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_71

    .line 454
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_5a
    :try_start_5a
    new-instance v10, Landroid/app/AppOpsManager$PackageOps;

    iget-object v13, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v14, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v14, v14, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v10, v13, v14, v9}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 456
    .local v10, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v10    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :goto_68
    add-int/lit8 v3, v3, 0x1

    move-object v8, v7

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_41

    .line 460
    .end local v3    # "j":I
    .end local v4    # "packageCount":I
    .end local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_6c
    monitor-exit p0

    .line 461
    return-object v7

    .line 460
    .end local v2    # "i":I
    .end local v12    # "uidStateCount":I
    :catchall_6e
    move-exception v13

    :goto_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_5a .. :try_end_70} :catchall_6e

    throw v13

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "packageCount":I
    .restart local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v12    # "uidStateCount":I
    :catchall_71
    move-exception v13

    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_6f

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_74
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_5a

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_76
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_68

    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_78
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_36
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 4
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .prologue
    .line 870
    monitor-enter p0

    .line 871
    :try_start_1
    iget-object v1, p0, mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 872
    .local v0, "cs":Lcom/android/server/AppOpsService$ClientState;
    if-nez v0, :cond_15

    .line 873
    new-instance v0, Lcom/android/server/AppOpsService$ClientState;

    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    .line 874
    .restart local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    iget-object v1, p0, mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    :cond_15
    monitor-exit p0

    return-object v0

    .line 877
    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    :catchall_17
    move-exception v1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .registers 5
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2114
    const/4 v0, 0x1

    .line 2115
    .local v0, "isShow":Z
    iget-object v1, p0, mPolicy:Lcom/android/server/AppOpsPolicy;

    if-eqz v1, :cond_b

    .line 2116
    iget-object v1, p0, mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/AppOpsPolicy;->isControlAllowed(ILjava/lang/String;)Z

    move-result v0

    .line 2118
    :cond_b
    return v0
.end method

.method public noteOperation(IILjava/lang/String;)I
    .registers 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 982
    invoke-direct {p0, p2}, verifyIncomingUid(I)V

    .line 983
    invoke-direct {p0, p1}, verifyIncomingOp(I)V

    .line 986
    const/16 v0, 0xc

    if-ne p1, v0, :cond_18

    const-string v0, "com.google.android.gms"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 987
    const-string/jumbo v0, "noteOp"

    invoke-direct {p0, p1, p2, p3, v0}, sendInfoToFLP(IILjava/lang/String;Ljava/lang/String;)V

    .line 989
    :cond_18
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .registers 12
    .param p1, "code"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 970
    invoke-direct {p0, p1}, verifyIncomingOp(I)V

    .line 971
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v6

    .line 973
    .local v6, "proxyMode":I
    if-nez v6, :cond_18

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, p3, :cond_19

    .line 976
    .end local v6    # "proxyMode":I
    :cond_18
    :goto_18
    return v6

    .restart local v6    # "proxyMode":I
    :cond_19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v6

    goto :goto_18
.end method

.method public notifyOperation(IILjava/lang/String;IZ)V
    .registers 15
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "remember"    # Z

    .prologue
    .line 2034
    invoke-direct {p0, p2}, verifyIncomingUid(I)V

    .line 2035
    invoke-direct {p0, p1}, verifyIncomingOp(I)V

    .line 2036
    const/4 v3, 0x0

    .line 2037
    .local v3, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v5

    .line 2038
    .local v5, "switchCode":I
    monitor-enter p0

    .line 2039
    :try_start_c
    invoke-direct {p0, p1, p2, p3, p4}, recordOperationLocked(IILjava/lang/String;I)V

    .line 2040
    const/4 v6, 0x1

    invoke-direct {p0, v5, p2, p3, v6}, getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 2041
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_6d

    .line 2043
    iget-object v6, v2, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v6}, Lcom/android/server/PermissionDialogReqQueue;->getDialog()Lcom/android/server/PermissionDialog;

    move-result-object v6

    if-eqz v6, :cond_29

    .line 2044
    iget-object v6, v2, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v6, p4}, Lcom/android/server/PermissionDialogReqQueue;->notifyAll(I)V

    .line 2045
    iget-object v6, v2, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/PermissionDialogReqQueue;->setDialog(Lcom/android/server/PermissionDialog;)V

    .line 2047
    :cond_29
    if-eqz p5, :cond_6d

    iget v6, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v6, p4, :cond_6d

    .line 2048
    iput p4, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 2049
    iget-object v6, p0, mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2050
    .local v0, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_46

    .line 2051
    if-nez v3, :cond_43

    .line 2052
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v4, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    move-object v3, v4

    .line 2054
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_43
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_46
    .catchall {:try_start_c .. :try_end_46} :catchall_85

    :cond_46
    move-object v4, v3

    .line 2056
    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_47
    iget-object v6, p0, mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v6, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 2057
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_90

    .line 2058
    if-nez v4, :cond_8e

    .line 2059
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_58
    .catchall {:try_start_47 .. :try_end_58} :catchall_8b

    .line 2061
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_58
    :try_start_58
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2063
    :goto_5b
    iget v6, v2, Lcom/android/server/AppOpsService$Op;->op:I

    iget v7, v2, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v8, v2, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, getDefaultMode(IILjava/lang/String;)I

    move-result v6

    if-ne p4, v6, :cond_6a

    .line 2066
    invoke-direct {p0, v2, p2, p3}, pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 2068
    :cond_6a
    invoke-direct {p0}, scheduleFastWriteLocked()V

    .line 2071
    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_58 .. :try_end_6e} :catchall_85

    .line 2072
    if-eqz v3, :cond_88

    .line 2073
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_71
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_88

    .line 2075
    :try_start_77
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Callback;

    iget-object v6, v6, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v6, v5, p3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_82} :catch_89

    .line 2073
    :goto_82
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 2071
    .end local v1    # "i":I
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_85
    move-exception v6

    :goto_86
    :try_start_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v6

    .line 2080
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_88
    return-void

    .line 2076
    .restart local v1    # "i":I
    :catch_89
    move-exception v6

    goto :goto_82

    .line 2071
    .end local v1    # "i":I
    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_8b
    move-exception v6

    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_86

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_8e
    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_58

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_90
    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_5b
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 359
    monitor-enter p0

    .line 360
    :try_start_1
    iget-object v2, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$UidState;

    .line 361
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v1, :cond_d

    .line 362
    monitor-exit p0

    .line 382
    :goto_c
    return-void

    .line 365
    :cond_d
    const/4 v0, 0x0

    .line 368
    .local v0, "changed":Z
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1b

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 369
    const/4 v0, 0x1

    .line 373
    :cond_1b
    if-eqz v0, :cond_31

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {p1}, getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_31

    .line 375
    iget-object v2, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 378
    :cond_31
    if-eqz v0, :cond_36

    .line 379
    invoke-direct {p0}, scheduleFastWriteLocked()V

    .line 381
    :cond_36
    monitor-exit p0

    goto :goto_c

    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_38
    move-exception v2

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    throw v2
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1177
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 279
    invoke-direct {p0}, readPolicy()V

    .line 280
    const-string v0, "appops"

    invoke-virtual {p0}, asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 281
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1459
    const/4 v4, 0x0

    const-string/jumbo v5, "n"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1460
    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1463
    .local v0, "outerDepth":I
    :cond_d
    :goto_d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_52

    if-ne v3, v7, :cond_1c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_52

    .line 1464
    :cond_1c
    if-eq v3, v7, :cond_d

    const/4 v4, 0x4

    if-eq v3, v4, :cond_d

    .line 1468
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1469
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1470
    invoke-virtual {p0, p1, v1}, readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_d

    .line 1472
    :cond_32
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_d

    .line 1477
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_52
    return-void
.end method

.method readState()V
    .registers 14

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x1

    .line 1361
    iget-object v8, p0, mFile:Landroid/util/AtomicFile;

    monitor-enter v8

    .line 1362
    :try_start_6
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_81

    .line 1365
    :try_start_7
    iget-object v7, p0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_c} :catch_59
    .catchall {:try_start_7 .. :try_end_c} :catchall_1bc

    move-result-object v3

    .line 1370
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1371
    .local v4, "success":Z
    :try_start_e
    iget-object v7, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_1bc

    .line 1373
    :try_start_13
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1374
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1377
    :cond_20
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v9, :cond_28

    if-ne v6, v11, :cond_20

    .line 1381
    :cond_28
    if-eq v6, v9, :cond_84

    .line 1382
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "no start tag found"

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_33
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_33} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_33} :catch_ac
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_33} :catch_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_33} :catch_128
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_33} :catch_160
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_33} :catch_188
    .catchall {:try_start_13 .. :try_end_33} :catchall_1b0

    .line 1404
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_33
    move-exception v0

    .line 1405
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_34
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_1b0

    .line 1417
    if-nez v4, :cond_53

    .line 1418
    :try_start_4e
    iget-object v7, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_1bc

    .line 1421
    :cond_53
    :try_start_53
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_1bf
    .catchall {:try_start_53 .. :try_end_56} :catchall_1bc

    .line 1425
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_56
    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_1bc

    .line 1426
    :try_start_57
    monitor-exit v8
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_81

    .line 1427
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "success":Z
    :goto_58
    return-void

    .line 1366
    :catch_59
    move-exception v0

    .line 1367
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_5a
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No existing app ops "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; starting empty"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_5a .. :try_end_7f} :catchall_1bc

    :try_start_7f
    monitor-exit v8

    goto :goto_58

    .line 1426
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_81
    move-exception v7

    monitor-exit v8
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_81

    throw v7

    .line 1385
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "success":Z
    .restart local v6    # "type":I
    :cond_84
    :try_start_84
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1387
    .local v1, "outerDepth":I
    :cond_88
    :goto_88
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v11, :cond_150

    if-ne v6, v12, :cond_96

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_150

    .line 1388
    :cond_96
    if-eq v6, v12, :cond_88

    const/4 v7, 0x4

    if-eq v6, v7, :cond_88

    .line 1392
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1393
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "pkg"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d2

    .line 1394
    invoke-virtual {p0, v2}, readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_ab
    .catch Ljava/lang/IllegalStateException; {:try_start_84 .. :try_end_ab} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_84 .. :try_end_ab} :catch_ac
    .catch Ljava/lang/NumberFormatException; {:try_start_84 .. :try_end_ab} :catch_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_84 .. :try_end_ab} :catch_128
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_ab} :catch_160
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_84 .. :try_end_ab} :catch_188
    .catchall {:try_start_84 .. :try_end_ab} :catchall_1b0

    goto :goto_88

    .line 1406
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_ac
    move-exception v0

    .line 1407
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_ad
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_ad .. :try_end_c5} :catchall_1b0

    .line 1417
    if-nez v4, :cond_cc

    .line 1418
    :try_start_c7
    iget-object v7, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_cc
    .catchall {:try_start_c7 .. :try_end_cc} :catchall_1bc

    .line 1421
    :cond_cc
    :try_start_cc
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0
    .catchall {:try_start_cc .. :try_end_cf} :catchall_1bc

    goto :goto_56

    .line 1422
    :catch_d0
    move-exception v7

    goto :goto_56

    .line 1395
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_d2
    :try_start_d2
    const-string/jumbo v7, "uid"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_107

    .line 1396
    invoke-virtual {p0, v2}, readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_de
    .catch Ljava/lang/IllegalStateException; {:try_start_d2 .. :try_end_de} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_d2 .. :try_end_de} :catch_ac
    .catch Ljava/lang/NumberFormatException; {:try_start_d2 .. :try_end_de} :catch_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d2 .. :try_end_de} :catch_128
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_de} :catch_160
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d2 .. :try_end_de} :catch_188
    .catchall {:try_start_d2 .. :try_end_de} :catchall_1b0

    goto :goto_88

    .line 1408
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_df
    move-exception v0

    .line 1409
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_e0
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_e0 .. :try_end_f8} :catchall_1b0

    .line 1417
    if-nez v4, :cond_ff

    .line 1418
    :try_start_fa
    iget-object v7, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_ff
    .catchall {:try_start_fa .. :try_end_ff} :catchall_1bc

    .line 1421
    :cond_ff
    :try_start_ff
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_104
    .catchall {:try_start_ff .. :try_end_102} :catchall_1bc

    goto/16 :goto_56

    .line 1422
    :catch_104
    move-exception v7

    goto/16 :goto_56

    .line 1398
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_107
    :try_start_107
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <app-ops>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_126
    .catch Ljava/lang/IllegalStateException; {:try_start_107 .. :try_end_126} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_107 .. :try_end_126} :catch_ac
    .catch Ljava/lang/NumberFormatException; {:try_start_107 .. :try_end_126} :catch_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_107 .. :try_end_126} :catch_128
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_126} :catch_160
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_107 .. :try_end_126} :catch_188
    .catchall {:try_start_107 .. :try_end_126} :catchall_1b0

    goto/16 :goto_88

    .line 1410
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_128
    move-exception v0

    .line 1411
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_129
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_141
    .catchall {:try_start_129 .. :try_end_141} :catchall_1b0

    .line 1417
    if-nez v4, :cond_148

    .line 1418
    :try_start_143
    iget-object v7, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_148
    .catchall {:try_start_143 .. :try_end_148} :catchall_1bc

    .line 1421
    :cond_148
    :try_start_148
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14b} :catch_14d
    .catchall {:try_start_148 .. :try_end_14b} :catchall_1bc

    goto/16 :goto_56

    .line 1422
    :catch_14d
    move-exception v7

    goto/16 :goto_56

    .line 1403
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_150
    const/4 v4, 0x1

    .line 1417
    if-nez v4, :cond_158

    .line 1418
    :try_start_153
    iget-object v7, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_158
    .catchall {:try_start_153 .. :try_end_158} :catchall_1bc

    .line 1421
    :cond_158
    :try_start_158
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_15b} :catch_15d
    .catchall {:try_start_158 .. :try_end_15b} :catchall_1bc

    goto/16 :goto_56

    .line 1422
    :catch_15d
    move-exception v7

    goto/16 :goto_56

    .line 1412
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_160
    move-exception v0

    .line 1413
    .local v0, "e":Ljava/io/IOException;
    :try_start_161
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_179
    .catchall {:try_start_161 .. :try_end_179} :catchall_1b0

    .line 1417
    if-nez v4, :cond_180

    .line 1418
    :try_start_17b
    iget-object v7, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_180
    .catchall {:try_start_17b .. :try_end_180} :catchall_1bc

    .line 1421
    :cond_180
    :try_start_180
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_183} :catch_185
    .catchall {:try_start_180 .. :try_end_183} :catchall_1bc

    goto/16 :goto_56

    .line 1422
    :catch_185
    move-exception v7

    goto/16 :goto_56

    .line 1414
    .end local v0    # "e":Ljava/io/IOException;
    :catch_188
    move-exception v0

    .line 1415
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_189
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a1
    .catchall {:try_start_189 .. :try_end_1a1} :catchall_1b0

    .line 1417
    if-nez v4, :cond_1a8

    .line 1418
    :try_start_1a3
    iget-object v7, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_1a8
    .catchall {:try_start_1a3 .. :try_end_1a8} :catchall_1bc

    .line 1421
    :cond_1a8
    :try_start_1a8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1ab} :catch_1ad
    .catchall {:try_start_1a8 .. :try_end_1ab} :catchall_1bc

    goto/16 :goto_56

    .line 1422
    :catch_1ad
    move-exception v7

    goto/16 :goto_56

    .line 1417
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_1b0
    move-exception v7

    if-nez v4, :cond_1b8

    .line 1418
    :try_start_1b3
    iget-object v9, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V
    :try_end_1b8
    .catchall {:try_start_1b3 .. :try_end_1b8} :catchall_1bc

    .line 1421
    :cond_1b8
    :try_start_1b8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1bb} :catch_1c2
    .catchall {:try_start_1b8 .. :try_end_1bb} :catchall_1bc

    .line 1423
    :goto_1bb
    :try_start_1bb
    throw v7

    .line 1425
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "success":Z
    :catchall_1bc
    move-exception v7

    monitor-exit p0
    :try_end_1be
    .catchall {:try_start_1bb .. :try_end_1be} :catchall_1bc

    :try_start_1be
    throw v7
    :try_end_1bf
    .catchall {:try_start_1be .. :try_end_1bf} :catchall_81

    .line 1422
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "success":Z
    :catch_1bf
    move-exception v7

    goto/16 :goto_56

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1c2
    move-exception v9

    goto :goto_1bb
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 31
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1481
    const/16 v25, 0x0

    const-string/jumbo v26, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1482
    .local v23, "uid":I
    const/16 v25, 0x0

    const-string/jumbo v26, "p"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1483
    .local v11, "isPrivilegedString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1484
    .local v9, "isPrivileged":Z
    const/4 v10, 0x1

    .line 1485
    .local v10, "isPrivilegedCredible":Z
    if-nez v11, :cond_1a7

    .line 1487
    :try_start_26
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v16

    .line 1488
    .local v16, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz v16, :cond_195

    .line 1489
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1491
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_4d

    .line 1492
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    move/from16 v25, v0
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_48} :catch_198

    and-int/lit8 v25, v25, 0x8

    if-eqz v25, :cond_192

    const/4 v9, 0x1

    .line 1507
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_4d
    :goto_4d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 1510
    .local v15, "outerDepth":I
    :cond_51
    :goto_51
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    .local v22, "type":I
    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_1f2

    const/16 v25, 0x3

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_6d

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v25

    move/from16 v0, v25

    if-le v0, v15, :cond_1f2

    .line 1511
    :cond_6d
    const/16 v25, 0x3

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_51

    const/16 v25, 0x4

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_51

    .line 1515
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 1516
    .local v20, "tagName":Ljava/lang/String;
    const-string/jumbo v25, "op"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1d1

    .line 1517
    const/16 v25, 0x0

    const-string/jumbo v26, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1519
    .local v5, "code":I
    new-instance v13, Lcom/android/server/AppOpsService$Op;

    const/16 v25, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-direct {v13, v0, v1, v5, v2}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;II)V

    .line 1520
    .local v13, "op":Lcom/android/server/AppOpsService$Op;
    const/16 v25, 0x0

    const-string/jumbo v26, "m"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1521
    .local v12, "mode":Ljava/lang/String;
    if-eqz v12, :cond_1ad

    .line 1522
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    iput v0, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1533
    :goto_c7
    const/16 v25, 0x0

    const-string/jumbo v26, "t"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1534
    .local v21, "time":Ljava/lang/String;
    if-eqz v21, :cond_e0

    .line 1535
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v13, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1537
    :cond_e0
    const/16 v25, 0x0

    const-string/jumbo v26, "r"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1538
    if-eqz v21, :cond_f9

    .line 1539
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1541
    :cond_f9
    const/16 v25, 0x0

    const-string/jumbo v26, "d"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1542
    .local v7, "dur":Ljava/lang/String;
    if-eqz v7, :cond_112

    .line 1543
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    iput v0, v13, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1545
    :cond_112
    const/16 v25, 0x0

    const-string/jumbo v26, "pu"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1546
    .local v18, "proxyUid":Ljava/lang/String;
    if-eqz v18, :cond_12b

    .line 1547
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    iput v0, v13, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1549
    :cond_12b
    const/16 v25, 0x0

    const-string/jumbo v26, "pp"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1550
    .local v17, "proxyPackageName":Ljava/lang/String;
    if-eqz v17, :cond_140

    .line 1551
    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 1554
    :cond_140
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v24

    .line 1555
    .local v24, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    if-nez v25, :cond_15f

    .line 1556
    new-instance v25, Landroid/util/ArrayMap;

    invoke-direct/range {v25 .. v25}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1559
    :cond_15f
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AppOpsService$Ops;

    .line 1560
    .local v14, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v14, :cond_187

    .line 1561
    new-instance v14, Lcom/android/server/AppOpsService$Ops;

    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-direct {v14, v0, v1, v9, v10}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;ZZ)V

    .line 1562
    .restart local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    :cond_187
    iget v0, v13, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v14, v0, v13}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    goto/16 :goto_51

    .line 1492
    .end local v5    # "code":I
    .end local v7    # "dur":Ljava/lang/String;
    .end local v12    # "mode":Ljava/lang/String;
    .end local v13    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v15    # "outerDepth":I
    .end local v17    # "proxyPackageName":Ljava/lang/String;
    .end local v18    # "proxyUid":Ljava/lang/String;
    .end local v20    # "tagName":Ljava/lang/String;
    .end local v21    # "time":Ljava/lang/String;
    .end local v22    # "type":I
    .end local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_192
    const/4 v9, 0x0

    goto/16 :goto_4d

    .line 1498
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_195
    const/4 v10, 0x0

    goto/16 :goto_4d

    .line 1500
    .end local v16    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_198
    move-exception v8

    .line 1501
    .local v8, "e":Landroid/os/RemoteException;
    const-string v25, "AppOps"

    const-string v26, "Could not contact PackageManager"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1502
    const/4 v10, 0x0

    .line 1503
    goto/16 :goto_4d

    .line 1505
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_1a7
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_4d

    .line 1524
    .restart local v5    # "code":I
    .restart local v12    # "mode":Ljava/lang/String;
    .restart local v13    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v15    # "outerDepth":I
    .restart local v20    # "tagName":Ljava/lang/String;
    .restart local v22    # "type":I
    :cond_1ad
    const/16 v25, 0x0

    const-string/jumbo v26, "dm"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1526
    .local v19, "sDefualtMode":Ljava/lang/String;
    if-eqz v19, :cond_1c6

    .line 1527
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1531
    .local v6, "defaultMode":I
    :goto_1c2
    iput v6, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    goto/16 :goto_c7

    .line 1529
    .end local v6    # "defaultMode":I
    :cond_1c6
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, getDefaultMode(IILjava/lang/String;)I

    move-result v6

    .restart local v6    # "defaultMode":I
    goto :goto_1c2

    .line 1566
    .end local v5    # "code":I
    .end local v6    # "defaultMode":I
    .end local v12    # "mode":Ljava/lang/String;
    .end local v13    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v19    # "sDefualtMode":Ljava/lang/String;
    :cond_1d1
    const-string v25, "AppOps"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unknown element under <pkg>: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_51

    .line 1571
    .end local v20    # "tagName":Ljava/lang/String;
    :cond_1f2
    return-void
.end method

.method readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1431
    const-string/jumbo v7, "n"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1432
    .local v5, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1435
    .local v2, "outerDepth":I
    :cond_12
    :goto_12
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v11, :cond_7d

    if-ne v4, v12, :cond_20

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_7d

    .line 1436
    :cond_20
    if-eq v4, v12, :cond_12

    const/4 v7, 0x4

    if-eq v4, v7, :cond_12

    .line 1440
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1441
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "op"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 1442
    const-string/jumbo v7, "n"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1443
    .local v0, "code":I
    const-string/jumbo v7, "m"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1444
    .local v1, "mode":I
    invoke-direct {p0, v5, v11}, getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v6

    .line 1445
    .local v6, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v7, :cond_57

    .line 1446
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1448
    :cond_57
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_12

    .line 1450
    .end local v0    # "code":I
    .end local v1    # "mode":I
    .end local v6    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_5d
    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element under <uid-ops>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_12

    .line 1455
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_7d
    return-void
.end method

.method public removeUser(I)V
    .registers 3
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1905
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, checkSystemUid(Ljava/lang/String;)V

    .line 1906
    iget-object v0, p0, mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1907
    return-void
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .registers 35
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;

    .prologue
    .line 708
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 709
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 710
    .local v3, "callingUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 712
    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string/jumbo v7, "resetAllModes"

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 715
    const/16 v29, -0x1

    .line 716
    .local v29, "reqUid":I
    if-eqz p2, :cond_2e

    .line 718
    :try_start_22
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v4, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2d} :catch_1f7

    move-result v29

    .line 725
    :cond_2e
    :goto_2e
    const/4 v10, 0x0

    .line 726
    .local v10, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    monitor-enter p0

    .line 727
    const/4 v12, 0x0

    .line 728
    .local v12, "changed":Z
    :try_start_31
    move-object/from16 v0, p0

    iget-object v4, v0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v18, v4, -0x1

    .local v18, "i":I
    :goto_3b
    if-ltz v18, :cond_1a0

    .line 729
    move-object/from16 v0, p0

    iget-object v4, v0, mUidStates:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/AppOpsService$UidState;

    .line 731
    .local v31, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v23, v0

    .line 732
    .local v23, "opModes":Landroid/util/SparseIntArray;
    if-eqz v23, :cond_c3

    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v0, v29

    if-eq v4, v0, :cond_5e

    const/4 v4, -0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_c3

    .line 733
    :cond_5e
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseIntArray;->size()I

    move-result v30

    .line 734
    .local v30, "uidOpCount":I
    add-int/lit8 v21, v30, -0x1

    .local v21, "j":I
    :goto_64
    if-ltz v21, :cond_c3

    .line 735
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 736
    .local v13, "code":I
    invoke-static {v13}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 737
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 738
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_86

    .line 739
    const/4 v4, 0x0

    move-object/from16 v0, v31

    iput-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 741
    :cond_86
    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .local v9, "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_93
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_c0

    aget-object v24, v9, v19

    .line 742
    .local v24, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-static {v10, v0, v13, v4}, addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v10

    .line 744
    move-object/from16 v0, p0

    iget-object v4, v0, mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-static {v10, v0, v13, v4}, addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v10

    .line 741
    add-int/lit8 v19, v19, 0x1

    goto :goto_93

    .line 734
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v24    # "packageName":Ljava/lang/String;
    :cond_c0
    add-int/lit8 v21, v21, -0x1

    goto :goto_64

    .line 751
    .end local v13    # "code":I
    .end local v21    # "j":I
    .end local v30    # "uidOpCount":I
    :cond_c3
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_cd

    .line 728
    :cond_c9
    :goto_c9
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_3b

    .line 755
    :cond_cd
    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_de

    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_c9

    .line 761
    :cond_de
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    .line 762
    .local v25, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 763
    .local v20, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    :cond_ec
    :goto_ec
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18d

    .line 764
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 765
    .local v17, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 766
    .restart local v24    # "packageName":Ljava/lang/String;
    if-eqz p2, :cond_10a

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 770
    :cond_10a
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/AppOpsService$Ops;

    .line 771
    .local v26, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    add-int/lit8 v21, v4, -0x1

    .restart local v21    # "j":I
    :goto_116
    if-ltz v21, :cond_17f

    .line 772
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AppOpsService$Op;

    .line 773
    .local v14, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v4, v14, Lcom/android/server/AppOpsService$Op;->op:I

    iget v5, v14, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v6, v14, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, getDefaultMode(IILjava/lang/String;)I

    move-result v15

    .line 775
    .local v15, "defaultMode":I
    iget v4, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_17c

    iget v4, v14, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v4, v15, :cond_17c

    .line 777
    iput v15, v14, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 778
    const/4 v12, 0x1

    .line 779
    iget v5, v14, Lcom/android/server/AppOpsService$Op;->op:I

    move-object/from16 v0, p0

    iget-object v4, v0, mOpModeWatchers:Landroid/util/SparseArray;

    iget v6, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-static {v10, v0, v5, v4}, addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v10

    .line 781
    iget v5, v14, Lcom/android/server/AppOpsService$Op;->op:I

    move-object/from16 v0, p0

    iget-object v4, v0, mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-static {v10, v0, v5, v4}, addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v10

    .line 783
    iget-wide v4, v14, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_17c

    iget-wide v4, v14, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_17c

    .line 784
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V

    .line 771
    :cond_17c
    add-int/lit8 v21, v21, -0x1

    goto :goto_116

    .line 788
    .end local v14    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v15    # "defaultMode":I
    :cond_17f
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    if-nez v4, :cond_ec

    .line 789
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_ec

    .line 800
    .end local v17    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v18    # "i":I
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v21    # "j":I
    .end local v23    # "opModes":Landroid/util/SparseIntArray;
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v25    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v26    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v31    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_18a
    move-exception v4

    monitor-exit p0
    :try_end_18c
    .catchall {:try_start_31 .. :try_end_18c} :catchall_18a

    throw v4

    .line 792
    .restart local v18    # "i":I
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .restart local v23    # "opModes":Landroid/util/SparseIntArray;
    .restart local v25    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v31    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_18d
    :try_start_18d
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 793
    move-object/from16 v0, p0

    iget-object v4, v0, mUidStates:Landroid/util/SparseArray;

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_c9

    .line 797
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v23    # "opModes":Landroid/util/SparseIntArray;
    .end local v25    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v31    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_1a0
    if-eqz v12, :cond_1a5

    .line 798
    invoke-direct/range {p0 .. p0}, scheduleFastWriteLocked()V

    .line 800
    :cond_1a5
    monitor-exit p0
    :try_end_1a6
    .catchall {:try_start_18d .. :try_end_1a6} :catchall_18a

    .line 801
    if-eqz v10, :cond_1f4

    .line 802
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_1b0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 803
    .local v16, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$Callback;

    .line 804
    .local v11, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayList;

    .line 805
    .local v28, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/16 v18, 0x0

    :goto_1ca
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_1b0

    .line 806
    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/util/Pair;

    .line 808
    .local v27, "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_1dc
    iget-object v5, v11, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_1f1
    .catch Landroid/os/RemoteException; {:try_start_1dc .. :try_end_1f1} :catch_1f5

    .line 805
    :goto_1f1
    add-int/lit8 v18, v18, 0x1

    goto :goto_1ca

    .line 814
    .end local v11    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v27    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v28    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_1f4
    return-void

    .line 809
    .restart local v11    # "cb":Lcom/android/server/AppOpsService$Callback;
    .restart local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v27    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v28    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_1f5
    move-exception v4

    goto :goto_1f1

    .line 720
    .end local v10    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v11    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v12    # "changed":Z
    .end local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v18    # "i":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v27    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v28    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_1f7
    move-exception v4

    goto/16 :goto_2e
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .registers 13
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 929
    invoke-direct {p0, p3}, verifyIncomingUid(I)V

    .line 930
    invoke-direct {p0, p1}, verifyIncomingOp(I)V

    .line 931
    monitor-enter p0

    .line 932
    :try_start_7
    iget-object v5, p0, mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 933
    .local v4, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-nez v4, :cond_1b

    .line 934
    new-instance v4, Landroid/util/SparseArray;

    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 935
    .restart local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    iget-object v5, p0, mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 937
    :cond_1b
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 938
    if-eqz p4, :cond_48

    .line 939
    new-instance v3, Lcom/android/server/AppOpsService$Restriction;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$1;)V

    .line 940
    .local v3, "r":Lcom/android/server/AppOpsService$Restriction;
    iput p4, v3, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 941
    if-eqz p5, :cond_45

    .line 942
    array-length v0, p5

    .line 943
    .local v0, "N":I
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 944
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    if-ge v1, v0, :cond_45

    .line 945
    aget-object v2, p5, v1

    .line 946
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_42

    .line 947
    iget-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 944
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 951
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_45
    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 953
    .end local v3    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_48
    monitor-exit p0

    .line 954
    return-void

    .line 953
    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :catchall_4a
    move-exception v5

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4a

    throw v5
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 22
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 619
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    if-eq v12, v13, :cond_1d

    .line 620
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    const-string v13, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 623
    :cond_1d
    invoke-direct/range {p0 .. p1}, verifyIncomingOp(I)V

    .line 624
    const/4 v9, 0x0

    .line 625
    .local v9, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 626
    monitor-enter p0

    .line 627
    const/4 v12, 0x0

    :try_start_27
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v12}, getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v11

    .line 628
    .local v11, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/4 v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v12}, getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v8

    .line 629
    .local v8, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v8, :cond_8e

    .line 630
    iget v12, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v0, p4

    if-eq v12, v0, :cond_8e

    .line 631
    move/from16 v0, p4

    iput v0, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 632
    move-object/from16 v0, p0

    iget-object v12, v0, mOpModeWatchers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 633
    .local v4, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_61

    .line 634
    if-nez v9, :cond_5e

    .line 635
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .end local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    move-object v9, v10

    .line 637
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_5e
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_61
    .catchall {:try_start_27 .. :try_end_61} :catchall_ae

    :cond_61
    move-object v10, v9

    .line 639
    .end local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_62
    move-object/from16 v0, p0

    iget-object v12, v0, mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 640
    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_c1

    .line 641
    if-nez v10, :cond_bf

    .line 642
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_77
    .catchall {:try_start_62 .. :try_end_77} :catchall_bc

    .line 644
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_77
    :try_start_77
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 646
    :goto_7a
    invoke-direct/range {p0 .. p3}, getDefaultMode(IILjava/lang/String;)I

    move-result v12

    move/from16 v0, p4

    if-ne v0, v12, :cond_8b

    .line 649
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v8, v1, v2}, pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 651
    :cond_8b
    invoke-direct/range {p0 .. p0}, scheduleFastWriteLocked()V

    .line 654
    .end local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_77 .. :try_end_8f} :catchall_ae

    .line 655
    if-eqz v9, :cond_b4

    .line 659
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 661
    .local v6, "identity":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_96
    :try_start_96
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_b5

    move-result v12

    if-ge v5, v12, :cond_b1

    .line 663
    :try_start_9c
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$Callback;

    iget-object v12, v12, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v12, v0, v1}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_ab} :catch_ba
    .catchall {:try_start_9c .. :try_end_ab} :catchall_b5

    .line 661
    :goto_ab
    add-int/lit8 v5, v5, 0x1

    goto :goto_96

    .line 654
    .end local v5    # "i":I
    .end local v6    # "identity":J
    .end local v8    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_ae
    move-exception v12

    :goto_af
    :try_start_af
    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw v12

    .line 668
    .restart local v5    # "i":I
    .restart local v6    # "identity":J
    .restart local v8    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_b1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 671
    .end local v5    # "i":I
    .end local v6    # "identity":J
    :cond_b4
    return-void

    .line 668
    .restart local v5    # "i":I
    .restart local v6    # "identity":J
    :catchall_b5
    move-exception v12

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 664
    :catch_ba
    move-exception v12

    goto :goto_ab

    .line 654
    .end local v5    # "i":I
    .end local v6    # "identity":J
    .end local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_bc
    move-exception v12

    move-object v9, v10

    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_af

    .end local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_bf
    move-object v9, v10

    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_77

    .end local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_c1
    move-object v9, v10

    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_7a
.end method

.method public setUidMode(III)V
    .registers 33
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .prologue
    .line 510
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_23

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v26

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v27

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 514
    :cond_23
    invoke-direct/range {p0 .. p1}, verifyIncomingOp(I)V

    .line 515
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 517
    monitor-enter p0

    .line 518
    :try_start_2b
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, isStrict(I)Z

    move-result v24

    move/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/app/AppOpsManager;->opToDefaultMode(IZ)I

    move-result v10

    .line 520
    .local v10, "defaultMode":I
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v23

    .line 521
    .local v23, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v23, :cond_be

    .line 522
    move/from16 v0, p3

    if-ne v0, v10, :cond_4f

    .line 523
    monitor-exit p0

    .line 615
    :cond_4e
    :goto_4e
    return-void

    .line 525
    :cond_4f
    new-instance v23, Lcom/android/server/AppOpsService$UidState;

    .end local v23    # "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .line 526
    .restart local v23    # "uidState":Lcom/android/server/AppOpsService$UidState;
    new-instance v24, Landroid/util/SparseIntArray;

    invoke-direct/range {v24 .. v24}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 527
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, mUidStates:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p2

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 529
    invoke-direct/range {p0 .. p0}, scheduleWriteLocked()V

    .line 550
    :cond_84
    :goto_84
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_2b .. :try_end_85} :catchall_e8

    .line 552
    invoke-static/range {p2 .. p2}, getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    .line 553
    .local v22, "uidPackageNames":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 555
    .local v7, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 556
    .local v8, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v8, :cond_13c

    .line 557
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 558
    .local v6, "callbackCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_a1
    if-ge v12, v6, :cond_13c

    .line 559
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Callback;

    .line 560
    .local v5, "callback":Lcom/android/server/AppOpsService$Callback;
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 561
    .local v9, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    invoke-static {v9, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 562
    new-instance v7, Landroid/util/ArrayMap;

    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 563
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v7, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    add-int/lit8 v12, v12, 0x1

    goto :goto_a1

    .line 530
    .end local v5    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v6    # "callbackCount":I
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v22    # "uidPackageNames":[Ljava/lang/String;
    :cond_be
    :try_start_be
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    if-nez v24, :cond_eb

    .line 531
    move/from16 v0, p3

    if-eq v0, v10, :cond_84

    .line 532
    new-instance v24, Landroid/util/SparseIntArray;

    invoke-direct/range {v24 .. v24}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 533
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 534
    invoke-direct/range {p0 .. p0}, scheduleWriteLocked()V

    goto :goto_84

    .line 550
    .end local v10    # "defaultMode":I
    .end local v23    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_e8
    move-exception v24

    monitor-exit p0
    :try_end_ea
    .catchall {:try_start_be .. :try_end_ea} :catchall_e8

    throw v24

    .line 537
    .restart local v10    # "defaultMode":I
    .restart local v23    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_eb
    :try_start_eb
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, p3

    if-ne v0, v1, :cond_102

    .line 538
    monitor-exit p0

    goto/16 :goto_4e

    .line 540
    :cond_102
    move/from16 v0, p3

    if-ne v0, v10, :cond_12c

    .line 541
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 542
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseIntArray;->size()I

    move-result v24

    if-gtz v24, :cond_127

    .line 543
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 548
    :cond_127
    :goto_127
    invoke-direct/range {p0 .. p0}, scheduleWriteLocked()V

    goto/16 :goto_84

    .line 546
    :cond_12c
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_13b
    .catchall {:try_start_eb .. :try_end_13b} :catchall_e8

    goto :goto_127

    .line 567
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v22    # "uidPackageNames":[Ljava/lang/String;
    :cond_13c
    move-object/from16 v4, v22

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_142
    move/from16 v0, v17

    if-ge v13, v0, :cond_189

    aget-object v21, v4, v13

    .line 568
    .local v21, "uidPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v8, Ljava/util/ArrayList;

    .line 569
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v8, :cond_186

    .line 570
    if-nez v7, :cond_161

    .line 571
    new-instance v7, Landroid/util/ArrayMap;

    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 573
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_161
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 574
    .restart local v6    # "callbackCount":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_166
    if-ge v12, v6, :cond_186

    .line 575
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Callback;

    .line 576
    .restart local v5    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 577
    .restart local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v9, :cond_17e

    .line 578
    new-instance v9, Landroid/util/ArraySet;

    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 579
    .restart local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v7, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_17e
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 574
    add-int/lit8 v12, v12, 0x1

    goto :goto_166

    .line 567
    .end local v5    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v6    # "callbackCount":I
    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "i":I
    :cond_186
    add-int/lit8 v13, v13, 0x1

    goto :goto_142

    .line 586
    .end local v21    # "uidPackageName":Ljava/lang/String;
    :cond_189
    if-eqz v7, :cond_4e

    .line 593
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 595
    .local v14, "identity":J
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_190
    :try_start_190
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_1f0

    .line 596
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Callback;

    .line 597
    .restart local v5    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/ArraySet;
    :try_end_1a4
    .catchall {:try_start_190 .. :try_end_1a4} :catchall_1eb

    .line 599
    .local v20, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v20, :cond_1b8

    .line 600
    :try_start_1a6
    iget-object v0, v5, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, p1

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V

    .line 595
    :cond_1b5
    :goto_1b5
    add-int/lit8 v12, v12, 0x1

    goto :goto_190

    .line 602
    :cond_1b8
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->size()I

    move-result v18

    .line 603
    .local v18, "reportedPackageCount":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_1be
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1b5

    .line 604
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 605
    .local v19, "reportedPackageName":Ljava/lang/String;
    iget-object v0, v5, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_1db
    .catch Landroid/os/RemoteException; {:try_start_1a6 .. :try_end_1db} :catch_1de
    .catchall {:try_start_1a6 .. :try_end_1db} :catchall_1eb

    .line 603
    add-int/lit8 v16, v16, 0x1

    goto :goto_1be

    .line 608
    .end local v16    # "j":I
    .end local v18    # "reportedPackageCount":I
    .end local v19    # "reportedPackageName":Ljava/lang/String;
    :catch_1de
    move-exception v11

    .line 609
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_1df
    const-string v24, "AppOps"

    const-string v25, "Error dispatching op op change"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ea
    .catchall {:try_start_1df .. :try_end_1ea} :catchall_1eb

    goto :goto_1b5

    .line 613
    .end local v5    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v20    # "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_1eb
    move-exception v24

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v24

    :cond_1f0
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4e
.end method

.method public setUserRestrictions(Landroid/os/Bundle;I)V
    .registers 8
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1887
    const-string/jumbo v3, "setUserRestrictions"

    invoke-direct {p0, v3}, checkSystemUid(Ljava/lang/String;)V

    .line 1888
    iget-object v3, p0, mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    .line 1889
    .local v1, "opRestrictions":[Z
    if-nez v1, :cond_1a

    .line 1890
    const/16 v3, 0x4b

    new-array v1, v3, [Z

    .line 1891
    iget-object v3, p0, mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1893
    :cond_1a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    array-length v3, v1

    if-ge v0, v3, :cond_30

    .line 1894
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v2

    .line 1895
    .local v2, "restriction":Ljava/lang/String;
    if-eqz v2, :cond_2d

    .line 1896
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v0

    .line 1893
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1898
    :cond_2d
    aput-boolean v4, v1, v0

    goto :goto_2a

    .line 1901
    .end local v2    # "restriction":Ljava/lang/String;
    :cond_30
    return-void
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 394
    const-string v1, "AppOps"

    const-string v2, "Writing app ops before shutdown..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 397
    :try_start_9
    iget-boolean v1, p0, mWriteScheduled:Z

    if-eqz v1, :cond_11

    .line 398
    const/4 v1, 0x0

    iput-boolean v1, p0, mWriteScheduled:Z

    .line 399
    const/4 v0, 0x1

    .line 401
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    .line 402
    if-eqz v0, :cond_17

    .line 403
    invoke-virtual {p0}, writeState()V

    .line 405
    :cond_17
    return-void

    .line 401
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    .registers 22
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1061
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, verifyIncomingUid(I)V

    .line 1062
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, verifyIncomingOp(I)V

    move-object/from16 v5, p1

    .line 1063
    check-cast v5, Lcom/android/server/AppOpsService$ClientState;

    .line 1064
    .local v5, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 1066
    const/16 v14, 0x29

    move/from16 v0, p2

    if-eq v0, v14, :cond_1f

    const/16 v14, 0x2a

    move/from16 v0, p2

    if-ne v0, v14, :cond_41

    :cond_1f
    :try_start_1f
    const-string v14, "com.google.android.gms"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_41

    const-string v14, "android"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_41

    .line 1068
    const-string/jumbo v14, "startOp"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v14}, sendInfoToFLP(IILjava/lang/String;Ljava/lang/String;)V

    .line 1071
    :cond_41
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v14}, getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v8

    .line 1072
    .local v8, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v8, :cond_51

    .line 1075
    const/4 v12, 0x2

    monitor-exit p0

    .line 1146
    :goto_50
    return v12

    .line 1077
    :cond_51
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v1, v14}, getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v7

    .line 1078
    .local v7, "op":Lcom/android/server/AppOpsService$Op;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, isOpRestricted(IILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6e

    .line 1079
    const/4 v12, 0x1

    monitor-exit p0

    goto :goto_50

    .line 1145
    .end local v7    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v8    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_6b
    move-exception v14

    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_1f .. :try_end_6d} :catchall_6b

    throw v14

    .line 1081
    .restart local v7    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v8    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_6e
    :try_start_6e
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v10

    .line 1082
    .local v10, "switchCode":I
    iget-object v13, v8, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1083
    .local v13, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v14, v13, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v14, :cond_88

    .line 1084
    iget-object v14, v13, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    .line 1085
    .local v12, "uidMode":I
    if-eqz v12, :cond_88

    .line 1089
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v7, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1090
    monitor-exit p0

    goto :goto_50

    .line 1093
    .end local v12    # "uidMode":I
    :cond_88
    move/from16 v0, p2

    if-eq v10, v0, :cond_d0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10, v14}, getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v11

    .line 1096
    .local v11, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_93
    iget v14, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v14, :cond_9c

    iget v14, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_bd

    .line 1097
    :cond_9c
    const/16 v14, 0x18

    move/from16 v0, p2

    if-eq v0, v14, :cond_a8

    const/16 v14, 0x2d

    move/from16 v0, p2

    if-ne v0, v14, :cond_bd

    .line 1098
    :cond_a8
    const-string v14, "activity"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService;

    .line 1101
    .local v4, "am":Lcom/android/server/am/ActivityManagerService;
    if-eqz v4, :cond_bd

    iget-object v14, v4, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v14, :cond_bd

    .line 1102
    iget-object v14, v4, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Lcom/android/server/am/MARsPolicyManager;->handelAlertToastWindowStarted(Ljava/lang/String;)V

    .line 1108
    .end local v4    # "am":Lcom/android/server/am/ActivityManagerService;
    :cond_bd
    iget v14, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v14, :cond_d2

    iget v14, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v15, 0x4

    if-eq v14, v15, :cond_d2

    .line 1112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v7, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1113
    iget v12, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto :goto_50

    .end local v11    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_d0
    move-object v11, v7

    .line 1093
    goto :goto_93

    .line 1114
    .restart local v11    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_d2
    iget v14, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    if-nez v14, :cond_fa

    .line 1118
    iget v14, v7, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v14, :cond_e7

    .line 1119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v7, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1120
    const-wide/16 v14, 0x0

    iput-wide v14, v7, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1121
    const/4 v14, -0x1

    iput v14, v7, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1123
    :cond_e7
    iget v14, v7, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v7, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1124
    iget-object v14, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v14, :cond_f6

    .line 1125
    iget-object v14, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    :cond_f6
    const/4 v12, 0x0

    monitor-exit p0

    goto/16 :goto_50

    .line 1130
    :cond_fa
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, mLooper:Landroid/os/Looper;

    if-ne v14, v15, :cond_142

    .line 1131
    const-string v14, "AppOps"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startOperation: This method will deadlock if called from the main thread. (Code: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " uid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " package: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget v12, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto/16 :goto_50

    .line 1140
    :cond_142
    iget v14, v7, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v7, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    .line 1141
    iget-object v6, v5, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    .line 1142
    .local v6, "clientToken":Landroid/os/IBinder;
    iget-object v14, v7, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v11}, askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    move-result-object v9

    .line 1145
    .local v9, "req":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    monitor-exit p0
    :try_end_15c
    .catchall {:try_start_6e .. :try_end_15c} :catchall_6b

    .line 1146
    invoke-virtual {v9}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->get()I

    move-result v12

    goto/16 :goto_50
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 9
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    const/4 v4, -0x1

    .line 818
    monitor-enter p0

    .line 819
    if-eq p1, v4, :cond_8

    :try_start_4
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 820
    :cond_8
    iget-object v2, p0, mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 821
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-nez v0, :cond_24

    .line 822
    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 823
    .restart local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    iget-object v2, p0, mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    :cond_24
    if-eq p1, v4, :cond_3d

    .line 826
    iget-object v2, p0, mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 827
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_3a

    .line 828
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 831
    :cond_3a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_3d
    if-eqz p2, :cond_56

    .line 834
    iget-object v2, p0, mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 835
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_53

    .line 836
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    :cond_53
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_56
    monitor-exit p0

    .line 842
    return-void

    .line 841
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_58
    move-exception v2

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_4 .. :try_end_5a} :catchall_58

    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 7
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    .line 846
    monitor-enter p0

    .line 847
    :try_start_1
    iget-object v3, p0, mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 848
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-eqz v0, :cond_58

    .line 849
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    .line 850
    iget-object v3, p0, mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1a
    if-ltz v2, :cond_35

    .line 851
    iget-object v3, p0, mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 852
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 853
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_32

    .line 854
    iget-object v3, p0, mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 850
    :cond_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 857
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_35
    iget-object v3, p0, mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_3d
    if-ltz v2, :cond_58

    .line 858
    iget-object v3, p0, mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 859
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 860
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_55

    .line 861
    iget-object v3, p0, mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 857
    :cond_55
    add-int/lit8 v2, v2, -0x1

    goto :goto_3d

    .line 865
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v2    # "i":I
    :cond_58
    monitor-exit p0

    .line 866
    return-void

    .line 865
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_5a
    move-exception v3

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5a

    throw v3
.end method

.method public systemReady()V
    .registers 14

    .prologue
    .line 284
    monitor-enter p0

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "changed":Z
    :try_start_2
    iget-object v9, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_a3

    .line 287
    iget-object v9, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$UidState;

    .line 289
    .local v8, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget v9, v8, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v9}, getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, "packageNames":[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 291
    invoke-virtual {v8}, Lcom/android/server/AppOpsService$UidState;->clear()V

    .line 292
    iget-object v9, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 293
    const/4 v0, 0x1

    .line 286
    :cond_29
    :goto_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 297
    :cond_2c
    iget-object v7, v8, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 298
    .local v7, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v7, :cond_29

    .line 302
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 303
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_38
    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_94

    .line 304
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Ops;
    :try_end_44
    .catchall {:try_start_2 .. :try_end_44} :catchall_a0

    .line 305
    .local v5, "ops":Lcom/android/server/AppOpsService$Ops;
    const/4 v1, -0x1

    .line 307
    .local v1, "curUid":I
    :try_start_45
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    const/16 v11, 0x2000

    iget-object v12, v5, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v12, v12, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-interface {v9, v10, v11, v12}, Landroid/content/pm/IPackageManager;->getPackageUidEtc(Ljava/lang/String;II)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_58} :catch_ba
    .catchall {:try_start_45 .. :try_end_58} :catchall_a0

    move-result v1

    .line 312
    :goto_59
    :try_start_59
    iget-object v9, v5, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v9, v9, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v1, v9, :cond_38

    .line 313
    const-string v9, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pruning old package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": new uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 316
    const/4 v0, 0x1

    goto :goto_38

    .line 320
    .end local v1    # "curUid":I
    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_94
    invoke-virtual {v8}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 321
    iget-object v9, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_29

    .line 327
    .end local v2    # "i":I
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .end local v6    # "packageNames":[Ljava/lang/String;
    .end local v7    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v8    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_a0
    move-exception v9

    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_59 .. :try_end_a2} :catchall_a0

    throw v9

    .line 324
    .restart local v2    # "i":I
    :cond_a3
    if-eqz v0, :cond_a8

    .line 325
    :try_start_a5
    invoke-direct {p0}, scheduleFastWriteLocked()V

    .line 327
    :cond_a8
    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_a0

    .line 329
    const-class v9, Landroid/os/storage/MountServiceInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/MountServiceInternal;

    .line 331
    .local v4, "mountServiceInternal":Landroid/os/storage/MountServiceInternal;
    new-instance v9, Lcom/android/server/AppOpsService$2;

    invoke-direct {v9, p0}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v4, v9}, Landroid/os/storage/MountServiceInternal;->addExternalStoragePolicy(Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;)V

    .line 356
    return-void

    .line 310
    .end local v4    # "mountServiceInternal":Landroid/os/storage/MountServiceInternal;
    .restart local v1    # "curUid":I
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v6    # "packageNames":[Ljava/lang/String;
    .restart local v7    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v8    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catch_ba
    move-exception v9

    goto :goto_59
.end method

.method public uidRemoved(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 385
    monitor-enter p0

    .line 386
    :try_start_1
    iget-object v0, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 387
    iget-object v0, p0, mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 388
    invoke-direct {p0}, scheduleFastWriteLocked()V

    .line 390
    :cond_11
    monitor-exit p0

    .line 391
    return-void

    .line 390
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method writeState()V
    .registers 31

    .prologue
    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, mFile:Landroid/util/AtomicFile;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1575
    const/16 v26, 0x0

    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, getPackagesForOps([I)Ljava/util/List;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_32b

    move-result-object v4

    .line 1579
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, mFile:Landroid/util/AtomicFile;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_106
    .catchall {:try_start_11 .. :try_end_1a} :catchall_32b

    move-result-object v20

    .line 1586
    .local v20, "stream":Ljava/io/FileOutputStream;
    :try_start_1b
    new-instance v16, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1587
    .local v16, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v26, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v26 .. v26}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1588
    const/16 v26, 0x0

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1589
    const/16 v26, 0x0

    const-string v28, "app-ops"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, mUidStates:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    move-result v25

    .line 1592
    .local v25, "uidStateCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_58
    move/from16 v0, v25

    if-ge v8, v0, :cond_139

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, mUidStates:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AppOpsService$UidState;

    .line 1594
    .local v24, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v26, v0

    if-eqz v26, :cond_135

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseIntArray;->size()I

    move-result v26

    if-lez v26, :cond_135

    .line 1595
    const/16 v26, 0x0

    const-string/jumbo v28, "uid"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1596
    const/16 v26, 0x0

    const-string/jumbo v28, "n"

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1597
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    .line 1598
    .local v21, "uidOpModes":Landroid/util/SparseIntArray;
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    .line 1599
    .local v13, "opCount":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_b1
    if-ge v9, v13, :cond_127

    .line 1600
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    .line 1601
    .local v12, "op":I
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    .line 1602
    .local v11, "mode":I
    const/16 v26, 0x0

    const-string/jumbo v28, "op"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1603
    const/16 v26, 0x0

    const-string/jumbo v28, "n"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1604
    const/16 v26, 0x0

    const-string/jumbo v28, "m"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1605
    const/16 v26, 0x0

    const-string/jumbo v28, "op"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_103} :catch_30f
    .catchall {:try_start_1b .. :try_end_103} :catchall_32b

    .line 1599
    add-int/lit8 v9, v9, 0x1

    goto :goto_b1

    .line 1580
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v11    # "mode":I
    .end local v12    # "op":I
    .end local v13    # "opCount":I
    .end local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v20    # "stream":Ljava/io/FileOutputStream;
    .end local v21    # "uidOpModes":Landroid/util/SparseIntArray;
    .end local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v25    # "uidStateCount":I
    :catch_106
    move-exception v7

    .line 1581
    .local v7, "e":Ljava/io/IOException;
    :try_start_107
    const-string v26, "AppOps"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Failed to write state: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    monitor-exit v27
    :try_end_126
    .catchall {:try_start_107 .. :try_end_126} :catchall_32b

    .line 1686
    .end local v7    # "e":Ljava/io/IOException;
    :goto_126
    return-void

    .line 1607
    .restart local v8    # "i":I
    .restart local v9    # "j":I
    .restart local v13    # "opCount":I
    .restart local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v20    # "stream":Ljava/io/FileOutputStream;
    .restart local v21    # "uidOpModes":Landroid/util/SparseIntArray;
    .restart local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v25    # "uidStateCount":I
    :cond_127
    const/16 v26, 0x0

    :try_start_129
    const-string/jumbo v28, "uid"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1592
    .end local v9    # "j":I
    .end local v13    # "opCount":I
    .end local v21    # "uidOpModes":Landroid/util/SparseIntArray;
    :cond_135
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_58

    .line 1611
    .end local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_139
    if-eqz v4, :cond_366

    .line 1612
    const/4 v10, 0x0

    .line 1613
    .local v10, "lastPkg":Ljava/lang/String;
    const/4 v8, 0x0

    :goto_13d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v8, v0, :cond_356

    .line 1614
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/AppOpsManager$PackageOps;

    .line 1615
    .local v17, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_187

    .line 1616
    if-eqz v10, :cond_167

    .line 1617
    const/16 v26, 0x0

    const-string/jumbo v28, "pkg"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1619
    :cond_167
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1620
    const/16 v26, 0x0

    const-string/jumbo v28, "pkg"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1621
    const/16 v26, 0x0

    const-string/jumbo v28, "n"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1623
    :cond_187
    const/16 v26, 0x0

    const-string/jumbo v28, "uid"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1624
    const/16 v26, 0x0

    const-string/jumbo v28, "n"

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1625
    monitor-enter p0
    :try_end_1ae
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_1ae} :catch_30f
    .catchall {:try_start_129 .. :try_end_1ae} :catchall_32b

    .line 1626
    :try_start_1ae
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v26

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v14

    .line 1629
    .local v14, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v14, :cond_2f4

    .line 1630
    iget-boolean v0, v14, Lcom/android/server/AppOpsService$Ops;->isPrivilegedCredible:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1e4

    .line 1631
    const/16 v26, 0x0

    const-string/jumbo v28, "p"

    iget-boolean v0, v14, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1636
    :cond_1e4
    :goto_1e4
    monitor-exit p0
    :try_end_1e5
    .catchall {:try_start_1ae .. :try_end_1e5} :catchall_30c

    .line 1637
    :try_start_1e5
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v15

    .line 1638
    .local v15, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_1ea
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v9, v0, :cond_344

    .line 1639
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$OpEntry;

    .line 1640
    .local v12, "op":Landroid/app/AppOpsManager$OpEntry;
    const/16 v26, 0x0

    const-string/jumbo v28, "op"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1641
    const/16 v26, 0x0

    const-string/jumbo v28, "n"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1642
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v26

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v28

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, getDefaultMode(IILjava/lang/String;)I

    move-result v5

    .line 1644
    .local v5, "defaultMode":I
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v26

    move/from16 v0, v26

    if-eq v0, v5, :cond_32e

    .line 1645
    const/16 v26, 0x0

    const-string/jumbo v28, "m"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1649
    :goto_256
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v22

    .line 1650
    .local v22, "time":J
    const-wide/16 v28, 0x0

    cmp-long v26, v22, v28

    if-eqz v26, :cond_274

    .line 1651
    const/16 v26, 0x0

    const-string/jumbo v28, "t"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1653
    :cond_274
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v22

    .line 1654
    const-wide/16 v28, 0x0

    cmp-long v26, v22, v28

    if-eqz v26, :cond_292

    .line 1655
    const/16 v26, 0x0

    const-string/jumbo v28, "r"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1657
    :cond_292
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v6

    .line 1658
    .local v6, "dur":I
    if-eqz v6, :cond_2ac

    .line 1659
    const/16 v26, 0x0

    const-string/jumbo v28, "d"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1661
    :cond_2ac
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid()I

    move-result v19

    .line 1662
    .local v19, "proxyUid":I
    const/16 v26, -0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_2cc

    .line 1663
    const/16 v26, 0x0

    const-string/jumbo v28, "pu"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1665
    :cond_2cc
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName()Ljava/lang/String;

    move-result-object v18

    .line 1666
    .local v18, "proxyPackageName":Ljava/lang/String;
    if-eqz v18, :cond_2e2

    .line 1667
    const/16 v26, 0x0

    const-string/jumbo v28, "pp"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1669
    :cond_2e2
    const/16 v26, 0x0

    const-string/jumbo v28, "op"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2f0
    .catch Ljava/io/IOException; {:try_start_1e5 .. :try_end_2f0} :catch_30f
    .catchall {:try_start_1e5 .. :try_end_2f0} :catchall_32b

    .line 1638
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1ea

    .line 1634
    .end local v5    # "defaultMode":I
    .end local v6    # "dur":I
    .end local v9    # "j":I
    .end local v12    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v15    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v18    # "proxyPackageName":Ljava/lang/String;
    .end local v19    # "proxyUid":I
    .end local v22    # "time":J
    :cond_2f4
    const/16 v26, 0x0

    :try_start_2f6
    const-string/jumbo v28, "p"

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1e4

    .line 1636
    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_30c
    move-exception v26

    monitor-exit p0
    :try_end_30e
    .catchall {:try_start_2f6 .. :try_end_30e} :catchall_30c

    :try_start_30e
    throw v26
    :try_end_30f
    .catch Ljava/io/IOException; {:try_start_30e .. :try_end_30f} :catch_30f
    .catchall {:try_start_30e .. :try_end_30f} :catchall_32b

    .line 1681
    .end local v8    # "i":I
    .end local v10    # "lastPkg":Ljava/lang/String;
    .end local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v25    # "uidStateCount":I
    :catch_30f
    move-exception v7

    .line 1682
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_310
    const-string v26, "AppOps"

    const-string v28, "Failed to write state, restoring backup."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, mFile:Landroid/util/AtomicFile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1685
    .end local v7    # "e":Ljava/io/IOException;
    :goto_328
    monitor-exit v27

    goto/16 :goto_126

    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v20    # "stream":Ljava/io/FileOutputStream;
    :catchall_32b
    move-exception v26

    monitor-exit v27
    :try_end_32d
    .catchall {:try_start_310 .. :try_end_32d} :catchall_32b

    throw v26

    .line 1647
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "defaultMode":I
    .restart local v8    # "i":I
    .restart local v9    # "j":I
    .restart local v10    # "lastPkg":Ljava/lang/String;
    .restart local v12    # "op":Landroid/app/AppOpsManager$OpEntry;
    .restart local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v15    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v20    # "stream":Ljava/io/FileOutputStream;
    .restart local v25    # "uidStateCount":I
    :cond_32e
    const/16 v26, 0x0

    :try_start_330
    const-string/jumbo v28, "dm"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_256

    .line 1671
    .end local v5    # "defaultMode":I
    .end local v12    # "op":Landroid/app/AppOpsManager$OpEntry;
    :cond_344
    const/16 v26, 0x0

    const-string/jumbo v28, "uid"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1613
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_13d

    .line 1673
    .end local v9    # "j":I
    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v15    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_356
    if-eqz v10, :cond_366

    .line 1674
    const/16 v26, 0x0

    const-string/jumbo v28, "pkg"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1678
    .end local v10    # "lastPkg":Ljava/lang/String;
    :cond_366
    const/16 v26, 0x0

    const-string v28, "app-ops"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1679
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, mFile:Landroid/util/AtomicFile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_383
    .catch Ljava/io/IOException; {:try_start_330 .. :try_end_383} :catch_30f
    .catchall {:try_start_330 .. :try_end_383} :catchall_32b

    goto :goto_328
.end method
