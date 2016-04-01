.class final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$Key;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field canceled:Z

.field final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field lastTag:Ljava/lang/String;

.field lastTagPrefix:Ljava/lang/String;

.field final owner:Lcom/android/server/am/ActivityManagerService;

.field final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field sent:Z

.field stringName:Ljava/lang/String;

.field final uid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, DEBUG:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .registers 5
    .param p1, "_owner"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_k"    # Lcom/android/server/am/PendingIntentRecord$Key;
    .param p3, "_u"    # I

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 51
    iput-boolean v0, p0, sent:Z

    .line 52
    iput-boolean v0, p0, canceled:Z

    .line 217
    iput-object p1, p0, owner:Lcom/android/server/am/ActivityManagerService;

    .line 218
    iput-object p2, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 219
    iput p3, p0, uid:I

    .line 220
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, ref:Ljava/lang/ref/WeakReference;

    .line 221
    return-void
.end method


# virtual methods
.method public completeFinalize()V
    .registers 5

    .prologue
    .line 378
    iget-object v2, p0, owner:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 379
    :try_start_3
    iget-object v1, p0, owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 381
    .local v0, "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v1, p0, ref:Ljava/lang/ref/WeakReference;

    if-ne v0, v1, :cond_1c

    .line 382
    iget-object v1, p0, owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_1c
    monitor-exit v2

    .line 385
    return-void

    .line 384
    .end local v0    # "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 388
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 389
    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_45

    iget-object v0, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_60

    .line 393
    :cond_45
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 394
    const-string v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    :cond_60
    iget-object v0, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v0, :cond_6c

    iget-object v0, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_88

    .line 397
    :cond_6c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 398
    const-string v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    :cond_88
    iget-object v0, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a3

    .line 401
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    :cond_a3
    iget-boolean v0, p0, sent:Z

    if-nez v0, :cond_ab

    iget-boolean v0, p0, canceled:Z

    if-eqz v0, :cond_c3

    .line 405
    :cond_ab
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 406
    const-string v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 409
    :cond_c3
    iget-object v0, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-wide v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->grabTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_dd

    .line 410
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "grabTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-wide v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->grabTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 413
    :cond_dd
    return-void
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 368
    :try_start_0
    iget-boolean v0, p0, canceled:Z

    if-nez v0, :cond_15

    .line 369
    iget-object v0, p0, owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_19

    .line 373
    :cond_15
    invoke-super {p0}, Landroid/content/IIntentSender$Stub;->finalize()V

    .line 375
    return-void

    .line 373
    :catchall_19
    move-exception v0

    invoke-super {p0}, Landroid/content/IIntentSender$Stub;->finalize()V

    throw v0
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 20
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v0 .. v12}, sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I

    move-result v0

    return v0
.end method

.method sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I
    .registers 27
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "flagsMask"    # I
    .param p10, "flagsValues"    # I
    .param p11, "options"    # Landroid/os/Bundle;
    .param p12, "container"    # Landroid/app/IActivityContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v13}, sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;Landroid/app/IApplicationThread;)I

    move-result v0

    return v0
.end method

.method sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;Landroid/app/IApplicationThread;)I
    .registers 53
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "flagsMask"    # I
    .param p10, "flagsValues"    # I
    .param p11, "options"    # Landroid/os/Bundle;
    .param p12, "container"    # Landroid/app/IActivityContainer;
    .param p13, "caller"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    monitor-enter v38

    .line 245
    :try_start_7
    move-object/from16 v0, p12

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object/from16 v29, v0

    .line 246
    .local v29, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v29, :cond_22

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_22

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_22

    .line 250
    const/4 v2, -0x6

    monitor-exit v38

    .line 362
    :goto_21
    return v2

    .line 252
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v2, v0, canceled:Z

    if-nez v2, :cond_26f

    .line 253
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, sent:Z

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_47

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, owner:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 256
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, canceled:Z

    .line 259
    :cond_47
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v2, :cond_e1

    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 262
    .local v13, "finalIntent":Landroid/content/Intent;
    :goto_5a
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_e8

    const/16 v32, 0x1

    .line 263
    .local v32, "immutable":Z
    :goto_67
    if-nez v32, :cond_f5

    .line 264
    if-eqz p2, :cond_ec

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v30

    .line 266
    .local v30, "changes":I
    and-int/lit8 v2, v30, 0x2

    if-nez v2, :cond_83

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    move-object/from16 p3, v0

    .line 272
    .end local v30    # "changes":I
    :cond_83
    :goto_83
    move/from16 v0, p9

    and-int/lit16 v0, v0, -0xc4

    move/from16 p9, v0

    .line 273
    and-int p10, p10, p9

    .line 274
    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    move-result v2

    xor-int/lit8 v3, p9, -0x1

    and-int/2addr v2, v3

    or-int v2, v2, p10

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 279
    :goto_97
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    .line 281
    .local v34, "origId":J
    if-eqz p4, :cond_fe

    const/16 v36, 0x1

    .line 282
    .local v36, "sendFinish":Z
    :goto_9f
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v9, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 283
    .local v9, "userId":I
    const/4 v2, -0x2

    if-ne v9, v2, :cond_b0

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v9

    .line 286
    :cond_b0
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_b6
    .catchall {:try_start_7 .. :try_end_b6} :catchall_de

    packed-switch v2, :pswitch_data_276

    .line 349
    :cond_b9
    :goto_b9
    if-eqz v36, :cond_d7

    .line 351
    :try_start_bb
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v13}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    move/from16 v21, v0

    move-object/from16 v14, p4

    invoke-interface/range {v14 .. v21}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_bb .. :try_end_d7} :catch_273
    .catchall {:try_start_bb .. :try_end_d7} :catchall_de

    .line 357
    :cond_d7
    :goto_d7
    :try_start_d7
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    const/4 v2, 0x0

    monitor-exit v38

    goto/16 :goto_21

    .line 361
    .end local v9    # "userId":I
    .end local v13    # "finalIntent":Landroid/content/Intent;
    .end local v29    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v32    # "immutable":Z
    .end local v34    # "origId":J
    .end local v36    # "sendFinish":Z
    :catchall_de
    move-exception v2

    monitor-exit v38
    :try_end_e0
    .catchall {:try_start_d7 .. :try_end_e0} :catchall_de

    throw v2

    .line 259
    .restart local v29    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_e1
    :try_start_e1
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    goto/16 :goto_5a

    .line 262
    .restart local v13    # "finalIntent":Landroid/content/Intent;
    :cond_e8
    const/16 v32, 0x0

    goto/16 :goto_67

    .line 270
    .restart local v32    # "immutable":Z
    :cond_ec
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    move-object/from16 p3, v0

    goto :goto_83

    .line 276
    :cond_f5
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    move-object/from16 p3, v0

    goto :goto_97

    .line 281
    .restart local v34    # "origId":J
    :cond_fe
    const/16 v36, 0x0

    goto :goto_9f

    .line 288
    .restart local v9    # "userId":I
    .restart local v36    # "sendFinish":Z
    :pswitch_101
    if-nez p11, :cond_188

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    move-object/from16 p11, v0
    :try_end_10b
    .catchall {:try_start_e1 .. :try_end_10b} :catchall_de

    .line 296
    :cond_10b
    :goto_10b
    :try_start_10b
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v2, :cond_1a8

    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1a8

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v2, v2

    new-array v5, v2, [Landroid/content/Intent;

    .line 298
    .local v5, "allIntents":[Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v2, v2

    new-array v6, v2, [Ljava/lang/String;

    .line 299
    .local v6, "allResolvedTypes":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v7, v7

    invoke-static {v2, v3, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v2, :cond_15b

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v2, v3, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    :cond_15b
    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    aput-object v13, v5, v2

    .line 306
    array-length v2, v6

    add-int/lit8 v2, v2, -0x1

    aput-object p3, v6, v2

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v3, v0, uid:I

    move-object/from16 v0, p0

    iget-object v4, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    move-object/from16 v7, p6

    move-object/from16 v8, p11

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    :try_end_17a
    .catch Ljava/lang/RuntimeException; {:try_start_10b .. :try_end_17a} :catch_17c
    .catchall {:try_start_10b .. :try_end_17a} :catchall_de

    goto/16 :goto_b9

    .line 314
    .end local v5    # "allIntents":[Landroid/content/Intent;
    .end local v6    # "allResolvedTypes":[Ljava/lang/String;
    :catch_17c
    move-exception v31

    .line 315
    .local v31, "e":Ljava/lang/RuntimeException;
    :try_start_17d
    const-string v2, "ActivityManager"

    const-string v3, "Unable to send startActivity intent"

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b9

    .line 290
    .end local v31    # "e":Ljava/lang/RuntimeException;
    :cond_188
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    if-eqz v2, :cond_10b

    .line 291
    new-instance v33, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    move-object/from16 v0, v33

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 292
    .local v33, "opts":Landroid/os/Bundle;
    move-object/from16 v0, v33

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_1a4
    .catchall {:try_start_17d .. :try_end_1a4} :catchall_de

    .line 293
    move-object/from16 p11, v33

    goto/16 :goto_10b

    .line 310
    .end local v33    # "opts":Landroid/os/Bundle;
    :cond_1a8
    :try_start_1a8
    move-object/from16 v0, p0

    iget-object v10, v0, owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v11, v0, uid:I

    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v12, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v22, 0x0

    move-object/from16 v14, p3

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move/from16 v17, p8

    move-object/from16 v19, p11

    move/from16 v20, v9

    move-object/from16 v21, p12

    invoke-virtual/range {v10 .. v22}, Lcom/android/server/am/ActivityManagerService;->startActivityInPackage(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_1cb
    .catch Ljava/lang/RuntimeException; {:try_start_1a8 .. :try_end_1cb} :catch_17c
    .catchall {:try_start_1a8 .. :try_end_1cb} :catchall_de

    goto/16 :goto_b9

    .line 319
    :pswitch_1cd
    :try_start_1cd
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_b9

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move/from16 v18, v0

    move/from16 v19, p1

    move-object/from16 v20, v13

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_203
    .catchall {:try_start_1cd .. :try_end_203} :catchall_de

    goto/16 :goto_b9

    .line 328
    :pswitch_205
    :try_start_205
    move-object/from16 v0, p0

    iget-object v14, v0, owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, uid:I

    move/from16 v17, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    if-eqz p4, :cond_23b

    const/16 v26, 0x1

    :goto_21f
    const/16 v27, 0x0

    move-object/from16 v15, p13

    move-object/from16 v18, v13

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move/from16 v21, p1

    move-object/from16 v24, p5

    move-object/from16 v25, p11

    move/from16 v28, v9

    invoke-virtual/range {v14 .. v28}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Landroid/app/IApplicationThread;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZI)I
    :try_end_234
    .catch Ljava/lang/RuntimeException; {:try_start_205 .. :try_end_234} :catch_23e
    .catchall {:try_start_205 .. :try_end_234} :catchall_de

    move-result v37

    .line 332
    .local v37, "sent":I
    if-nez v37, :cond_b9

    .line 333
    const/16 v36, 0x0

    goto/16 :goto_b9

    .line 328
    .end local v37    # "sent":I
    :cond_23b
    const/16 v26, 0x0

    goto :goto_21f

    .line 335
    :catch_23e
    move-exception v31

    .line 336
    .restart local v31    # "e":Ljava/lang/RuntimeException;
    :try_start_23f
    const-string v2, "ActivityManager"

    const-string v3, "Unable to send startActivity intent"

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_248
    .catchall {:try_start_23f .. :try_end_248} :catchall_de

    goto/16 :goto_b9

    .line 341
    .end local v31    # "e":Ljava/lang/RuntimeException;
    :pswitch_24a
    :try_start_24a
    move-object/from16 v0, p0

    iget-object v10, v0, owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v12, v0, uid:I

    move-object/from16 v0, p0

    iget-object v2, v0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v15, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    move-object/from16 v11, p13

    move-object/from16 v14, p3

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/am/ActivityManagerService;->startServiceInPackage(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    :try_end_261
    .catch Ljava/lang/RuntimeException; {:try_start_24a .. :try_end_261} :catch_263
    .catchall {:try_start_24a .. :try_end_261} :catchall_de

    goto/16 :goto_b9

    .line 343
    :catch_263
    move-exception v31

    .line 344
    .restart local v31    # "e":Ljava/lang/RuntimeException;
    :try_start_264
    const-string v2, "ActivityManager"

    const-string v3, "Unable to send startService intent"

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b9

    .line 361
    .end local v9    # "userId":I
    .end local v13    # "finalIntent":Landroid/content/Intent;
    .end local v31    # "e":Ljava/lang/RuntimeException;
    .end local v32    # "immutable":Z
    .end local v34    # "origId":J
    .end local v36    # "sendFinish":Z
    :cond_26f
    monitor-exit v38
    :try_end_270
    .catchall {:try_start_264 .. :try_end_270} :catchall_de

    .line 362
    const/4 v2, -0x6

    goto/16 :goto_21

    .line 353
    .restart local v9    # "userId":I
    .restart local v13    # "finalIntent":Landroid/content/Intent;
    .restart local v32    # "immutable":Z
    .restart local v34    # "origId":J
    .restart local v36    # "sendFinish":Z
    :catch_273
    move-exception v2

    goto/16 :goto_d7

    .line 286
    :pswitch_data_276
    .packed-switch 0x1
        :pswitch_205
        :pswitch_101
        :pswitch_1cd
        :pswitch_24a
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x20

    .line 416
    iget-object v1, p0, stringName:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 417
    iget-object v1, p0, stringName:Ljava/lang/String;

    .line 435
    :goto_8
    return-object v1

    .line 419
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 420
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_48

    .line 424
    iget-object v1, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :goto_30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_50

    .line 430
    iget-object v1, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 434
    :goto_3c
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, stringName:Ljava/lang/String;

    goto :goto_8

    .line 426
    :cond_48
    iget-object v1, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 432
    :cond_50
    iget-object v1, p0, key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c
.end method
