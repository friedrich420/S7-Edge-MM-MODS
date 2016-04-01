.class final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# static fields
.field static final APP_RECEIVE:I = 0x1

.field static final CALL_DONE_RECEIVE:I = 0x3

.field static final CALL_IN_RECEIVE:I = 0x2

.field static final IDLE:I = 0x0

.field static final WAITING_SERVICES:I = 0x4


# instance fields
.field anrCount:I

.field final appOp:I

.field final callerApp:Lcom/android/server/am/ProcessRecord;

.field final callerPackage:Ljava/lang/String;

.field final callingPid:I

.field final callingUid:I

.field curApp:Lcom/android/server/am/ProcessRecord;

.field curComponent:Landroid/content/ComponentName;

.field curFilter:Lcom/android/server/am/BroadcastFilter;

.field curReceiver:Landroid/content/pm/ActivityInfo;

.field deferredreceivers:Ljava/util/List;

.field dispatchClockTime:J

.field dispatchClockTimeDeferred:J

.field dispatchTime:J

.field emptyCount:I

.field enqueueClockTime:J

.field enqueueTime:J

.field finishTime:J

.field final initialSticky:Z

.field final intent:Landroid/content/Intent;

.field nextReceiver:I

.field final options:Landroid/app/BroadcastOptions;

.field final ordered:Z

.field queue:Lcom/android/server/am/BroadcastQueue;

.field receiver:Landroid/os/IBinder;

.field receiverTime:J

.field receivers:Ljava/util/List;

.field receiversDispatchTime:[J

.field receiversDispatchTimeDeferred:[J

.field receiversFinishTime:[J

.field receiversFinishTimeDeferred:[J

.field final requiredPermissions:[Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultAbort:Z

.field resultCode:I

.field resultData:Ljava/lang/String;

.field resultExtras:Landroid/os/Bundle;

.field resultTo:Landroid/content/IIntentReceiver;

.field splitCheck:Z

.field state:I

.field final sticky:Z

.field final targetComp:Landroid/content/ComponentName;

.field final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZI)V
    .registers 24
    .param p1, "_queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "_intent"    # Landroid/content/Intent;
    .param p3, "_callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "_callerPackage"    # Ljava/lang/String;
    .param p5, "_callingPid"    # I
    .param p6, "_callingUid"    # I
    .param p7, "_resolvedType"    # Ljava/lang/String;
    .param p8, "_requiredPermissions"    # [Ljava/lang/String;
    .param p9, "_appOp"    # I
    .param p10, "_options"    # Landroid/app/BroadcastOptions;
    .param p11, "_receivers"    # Ljava/util/List;
    .param p12, "_resultTo"    # Landroid/content/IIntentReceiver;
    .param p13, "_resultCode"    # I
    .param p14, "_resultData"    # Ljava/lang/String;
    .param p15, "_resultExtras"    # Landroid/os/Bundle;
    .param p16, "_serialized"    # Z
    .param p17, "_sticky"    # Z
    .param p18, "_initialSticky"    # Z
    .param p19, "_userId"    # I

    .prologue
    .line 287
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 85
    const/4 v2, 0x0

    iput-object v2, p0, receiversDispatchTime:[J

    .line 86
    const/4 v2, 0x0

    iput-object v2, p0, receiversFinishTime:[J

    .line 88
    const/4 v2, 0x0

    iput-object v2, p0, receiversDispatchTimeDeferred:[J

    .line 89
    const/4 v2, 0x0

    iput-object v2, p0, receiversFinishTimeDeferred:[J

    .line 288
    iput-object p1, p0, queue:Lcom/android/server/am/BroadcastQueue;

    .line 289
    iput-object p2, p0, intent:Landroid/content/Intent;

    .line 290
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, targetComp:Landroid/content/ComponentName;

    .line 291
    iput-object p3, p0, callerApp:Lcom/android/server/am/ProcessRecord;

    .line 292
    iput-object p4, p0, callerPackage:Ljava/lang/String;

    .line 293
    iput p5, p0, callingPid:I

    .line 294
    iput p6, p0, callingUid:I

    .line 295
    iput-object p7, p0, resolvedType:Ljava/lang/String;

    .line 296
    iput-object p8, p0, requiredPermissions:[Ljava/lang/String;

    .line 297
    iput p9, p0, appOp:I

    .line 298
    iput-object p10, p0, options:Landroid/app/BroadcastOptions;

    .line 299
    iput-object p11, p0, receivers:Ljava/util/List;

    .line 300
    move-object/from16 v0, p12

    iput-object v0, p0, resultTo:Landroid/content/IIntentReceiver;

    .line 301
    move/from16 v0, p13

    iput v0, p0, resultCode:I

    .line 302
    move-object/from16 v0, p14

    iput-object v0, p0, resultData:Ljava/lang/String;

    .line 303
    move-object/from16 v0, p15

    iput-object v0, p0, resultExtras:Landroid/os/Bundle;

    .line 304
    move/from16 v0, p16

    iput-boolean v0, p0, ordered:Z

    .line 305
    move/from16 v0, p17

    iput-boolean v0, p0, sticky:Z

    .line 306
    move/from16 v0, p18

    iput-boolean v0, p0, initialSticky:Z

    .line 307
    move/from16 v0, p19

    iput v0, p0, userId:I

    .line 308
    const/4 v2, 0x0

    iput v2, p0, nextReceiver:I

    .line 309
    const/4 v2, 0x0

    iput v2, p0, state:I

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, enqueueClockTime:J

    .line 314
    if-eqz p11, :cond_69

    .line 315
    invoke-interface {p11}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, p0, receiversDispatchTime:[J

    .line 316
    invoke-interface {p11}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, p0, receiversFinishTime:[J

    .line 321
    :cond_69
    const/4 v2, 0x1

    iput-boolean v2, p0, splitCheck:Z

    .line 322
    return-void
.end method


# virtual methods
.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 326
    const/4 v7, -0x1

    if-eq p3, v7, :cond_9

    iget v7, p0, userId:I

    if-ne v7, p3, :cond_d

    :cond_9
    iget-object v7, p0, receivers:Ljava/util/List;

    if-nez v7, :cond_f

    :cond_d
    move v0, v6

    .line 355
    :goto_e
    return v0

    .line 330
    :cond_f
    const/4 v0, 0x0

    .line 332
    .local v0, "didSomething":Z
    iget-object v7, p0, receivers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_18
    if-ltz v1, :cond_5b

    .line 333
    iget-object v7, p0, receivers:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 334
    .local v3, "o":Ljava/lang/Object;
    instance-of v7, v3, Landroid/content/pm/ResolveInfo;

    if-nez v7, :cond_27

    .line 332
    .end local v3    # "o":Ljava/lang/Object;
    :cond_24
    :goto_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 337
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_27
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .end local v3    # "o":Ljava/lang/Object;
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 339
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    if-eqz p1, :cond_41

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    if-eqz p2, :cond_41

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    :cond_41
    move v4, v5

    .line 342
    .local v4, "sameComponent":Z
    :goto_42
    if-eqz v4, :cond_24

    .line 343
    if-nez p4, :cond_4a

    move v0, v5

    .line 344
    goto :goto_e

    .end local v4    # "sameComponent":Z
    :cond_48
    move v4, v6

    .line 339
    goto :goto_42

    .line 346
    .restart local v4    # "sameComponent":Z
    :cond_4a
    const/4 v0, 0x1

    .line 347
    iget-object v7, p0, receivers:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 348
    iget v7, p0, nextReceiver:I

    if-ge v1, v7, :cond_24

    .line 349
    iget v7, p0, nextReceiver:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, nextReceiver:I

    goto :goto_24

    .line 353
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "sameComponent":Z
    :cond_5b
    iget v5, p0, nextReceiver:I

    iget-object v6, p0, receivers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, nextReceiver:I

    goto :goto_e
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .registers 32
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 117
    .local v12, "now":J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v21, " to user "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, userId:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 118
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, targetComp:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    if-eqz v21, :cond_73

    move-object/from16 v0, p0

    iget-object v0, v0, targetComp:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, intent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_73

    .line 120
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v21, "  targetComp: "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, targetComp:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 123
    .local v5, "bundle":Landroid/os/Bundle;
    if-eqz v5, :cond_96

    .line 124
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v21, "  extras: "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    :cond_96
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v21, "caller="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, callerPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v21, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, callerApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_60d

    move-object/from16 v0, p0

    iget-object v0, v0, callerApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v21

    :goto_ca
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    const-string v21, " pid="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, callingPid:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 129
    const-string v21, " uid="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, callingUid:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, requiredPermissions:[Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_112

    move-object/from16 v0, p0

    iget-object v0, v0, requiredPermissions:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-gtz v21, :cond_120

    :cond_112
    move-object/from16 v0, p0

    iget v0, v0, appOp:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_154

    .line 132
    :cond_120
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, "requiredPermissions="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, requiredPermissions:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    const-string v21, "  appOp="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, appOp:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 136
    :cond_154
    move-object/from16 v0, p0

    iget-object v0, v0, options:Landroid/app/BroadcastOptions;

    move-object/from16 v21, v0

    if-eqz v21, :cond_17a

    .line 137
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, "options="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, options:Landroid/app/BroadcastOptions;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 139
    :cond_17a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, "enqueueClockTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    new-instance v21, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, enqueueClockTime:J

    move-wide/from16 v22, v0

    invoke-direct/range {v21 .. v23}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    const-string v21, " dispatchClockTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    new-instance v21, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, dispatchClockTime:J

    move-wide/from16 v22, v0

    invoke-direct/range {v21 .. v23}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, "dispatchTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    iget-wide v0, v0, dispatchTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    invoke-static {v0, v1, v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 145
    const-string v21, " ("

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, p0

    iget-wide v0, v0, dispatchClockTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, enqueueClockTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 147
    const-string v21, " since enq)"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    iget-wide v0, v0, finishTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_656

    .line 149
    const-string v21, " finishTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, finishTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    invoke-static {v0, v1, v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 150
    const-string v21, " ("

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p0

    iget-wide v0, v0, finishTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, dispatchTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 152
    const-string v21, " since disp)"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-wide v0, v0, dispatchTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_612

    .line 156
    const-string v21, " ,dur=%d ms"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, finishTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, dispatchTime:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    :goto_285
    const-string v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget v0, v0, anrCount:I

    move/from16 v21, v0

    if-eqz v21, :cond_2af

    .line 172
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v21, "anrCount="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, anrCount:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 176
    :cond_2af
    const-string v21, "    splitCheck="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, splitCheck:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v21, v0

    if-nez v21, :cond_2e3

    move-object/from16 v0, p0

    iget v0, v0, resultCode:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2e3

    move-object/from16 v0, p0

    iget-object v0, v0, resultData:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_329

    .line 179
    :cond_2e3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, "resultTo="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 180
    const-string v21, " resultCode="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, resultCode:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 181
    const-string v21, " resultData="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, resultData:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    :cond_329
    move-object/from16 v0, p0

    iget-object v0, v0, resultExtras:Landroid/os/Bundle;

    move-object/from16 v21, v0

    if-eqz v21, :cond_34b

    .line 184
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, "resultExtras="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, resultExtras:Landroid/os/Bundle;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 186
    :cond_34b
    move-object/from16 v0, p0

    iget-boolean v0, v0, resultAbort:Z

    move/from16 v21, v0

    if-nez v21, :cond_36b

    move-object/from16 v0, p0

    iget-boolean v0, v0, ordered:Z

    move/from16 v21, v0

    if-nez v21, :cond_36b

    move-object/from16 v0, p0

    iget-boolean v0, v0, sticky:Z

    move/from16 v21, v0

    if-nez v21, :cond_36b

    move-object/from16 v0, p0

    iget-boolean v0, v0, initialSticky:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3c7

    .line 187
    :cond_36b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, "resultAbort="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, resultAbort:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 188
    const-string v21, " ordered="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, ordered:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 189
    const-string v21, " sticky="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, sticky:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 190
    const-string v21, " initialSticky="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, initialSticky:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 192
    :cond_3c7
    move-object/from16 v0, p0

    iget v0, v0, nextReceiver:I

    move/from16 v21, v0

    if-nez v21, :cond_3d7

    move-object/from16 v0, p0

    iget-object v0, v0, receiver:Landroid/os/IBinder;

    move-object/from16 v21, v0

    if-eqz v21, :cond_407

    .line 193
    :cond_3d7
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, "nextReceiver="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, nextReceiver:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 194
    const-string v21, " receiver="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, receiver:Landroid/os/IBinder;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 196
    :cond_407
    move-object/from16 v0, p0

    iget-object v0, v0, curFilter:Lcom/android/server/am/BroadcastFilter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_429

    .line 197
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, "curFilter="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, curFilter:Lcom/android/server/am/BroadcastFilter;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 199
    :cond_429
    move-object/from16 v0, p0

    iget-object v0, v0, curReceiver:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_44b

    .line 200
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, "curReceiver="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, curReceiver:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 202
    :cond_44b
    move-object/from16 v0, p0

    iget-object v0, v0, curApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4cf

    .line 203
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, "curApp="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, curApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 204
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, "curComponent="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, curComponent:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    if-eqz v21, :cond_677

    move-object/from16 v0, p0

    iget-object v0, v0, curComponent:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v21

    :goto_48c
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, curReceiver:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4cf

    move-object/from16 v0, p0

    iget-object v0, v0, curReceiver:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4cf

    .line 207
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, "curSourceDir="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, curReceiver:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    :cond_4cf
    move-object/from16 v0, p0

    iget v0, v0, state:I

    move/from16 v21, v0

    if-eqz v21, :cond_503

    .line 212
    const-string v20, " (?)"

    .line 213
    .local v20, "stateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, state:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_6f6

    .line 220
    :goto_4e2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, "state="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, state:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .end local v20    # "stateStr":Ljava/lang/String;
    :cond_503
    move-object/from16 v0, p0

    iget-object v0, v0, receivers:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_68f

    move-object/from16 v0, p0

    iget-object v0, v0, receivers:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    .line 223
    .local v4, "N":I
    :goto_515
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 224
    .local v14, "p2":Ljava/lang/String;
    new-instance v15, Landroid/util/PrintWriterPrinter;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 227
    .local v15, "printer":Landroid/util/PrintWriterPrinter;
    const-wide/16 v16, 0x0

    .line 228
    .local v16, "receiverDispatchTime":J
    const-wide/16 v18, 0x0

    .line 230
    .local v18, "receiverFinishTime":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_538
    if-ge v8, v4, :cond_6f4

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, receivers:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 232
    .local v11, "o":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v21, "Receiver #"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, deferredreceivers:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_692

    move-object/from16 v0, p0

    iget-object v0, v0, deferredreceivers:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_692

    const/4 v6, 0x1

    .line 235
    .local v6, "deferred":Z
    :goto_56e
    const-string v21, " : deferred="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 240
    const-string v21, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 243
    if-eqz v6, :cond_695

    .line 244
    :try_start_58c
    move-object/from16 v0, p0

    iget-object v0, v0, deferredreceivers:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 245
    .local v9, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, receiversDispatchTimeDeferred:[J

    move-object/from16 v21, v0

    aget-wide v16, v21, v9

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, receiversFinishTimeDeferred:[J

    move-object/from16 v21, v0

    aget-wide v18, v21, v9

    .line 253
    .end local v9    # "index":I
    :goto_5a8
    const-string v21, ", [dispatchTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    invoke-static {v0, v1, v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 255
    const-string v21, ", finishTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 257
    const-wide/16 v22, 0x0

    cmp-long v21, v16, v22

    if-lez v21, :cond_6a7

    const-wide/16 v22, 0x0

    cmp-long v21, v18, v22

    if-lez v21, :cond_6a7

    .line 258
    const-string v21, " ,dur=%d ms"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sub-long v24, v18, v16

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    :goto_5f3
    const-string v21, "]"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5fc
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_58c .. :try_end_5fc} :catch_6b2
    .catch Ljava/lang/Exception; {:try_start_58c .. :try_end_5fc} :catch_6d9

    .line 274
    :goto_5fc
    instance-of v0, v11, Lcom/android/server/am/BroadcastFilter;

    move/from16 v21, v0

    if-eqz v21, :cond_6e7

    .line 275
    check-cast v11, Lcom/android/server/am/BroadcastFilter;

    .end local v11    # "o":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v14}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 230
    :cond_609
    :goto_609
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_538

    .line 127
    .end local v4    # "N":I
    .end local v6    # "deferred":Z
    .end local v8    # "i":I
    .end local v14    # "p2":Ljava/lang/String;
    .end local v15    # "printer":Landroid/util/PrintWriterPrinter;
    .end local v16    # "receiverDispatchTime":J
    .end local v18    # "receiverFinishTime":J
    :cond_60d
    const-string/jumbo v21, "null"

    goto/16 :goto_ca

    .line 157
    :cond_612
    move-object/from16 v0, p0

    iget-wide v0, v0, receiverTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_64b

    .line 158
    const-string v21, " ,dur=%d ms"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, finishTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, receiverTime:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_285

    .line 160
    :cond_64b
    const-string v21, " ,dur=-- ms"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_285

    .line 164
    :cond_656
    const-string v21, " receiverTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, receiverTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    invoke-static {v0, v1, v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 167
    const-string v21, " ,dur=-- ms"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_285

    .line 205
    :cond_677
    const-string v21, "--"

    goto/16 :goto_48c

    .line 214
    .restart local v20    # "stateStr":Ljava/lang/String;
    :pswitch_67b
    const-string v20, " (IDLE)"

    goto/16 :goto_4e2

    .line 215
    :pswitch_67f
    const-string v20, " (APP_RECEIVE)"

    goto/16 :goto_4e2

    .line 216
    :pswitch_683
    const-string v20, " (CALL_IN_RECEIVE)"

    goto/16 :goto_4e2

    .line 217
    :pswitch_687
    const-string v20, " (CALL_DONE_RECEIVE)"

    goto/16 :goto_4e2

    .line 218
    :pswitch_68b
    const-string v20, " (WAITING_SERVICES)"

    goto/16 :goto_4e2

    .line 222
    .end local v20    # "stateStr":Ljava/lang/String;
    :cond_68f
    const/4 v4, 0x0

    goto/16 :goto_515

    .line 234
    .restart local v4    # "N":I
    .restart local v8    # "i":I
    .restart local v11    # "o":Ljava/lang/Object;
    .restart local v14    # "p2":Ljava/lang/String;
    .restart local v15    # "printer":Landroid/util/PrintWriterPrinter;
    .restart local v16    # "receiverDispatchTime":J
    .restart local v18    # "receiverFinishTime":J
    :cond_692
    const/4 v6, 0x0

    goto/16 :goto_56e

    .line 248
    .restart local v6    # "deferred":Z
    :cond_695
    :try_start_695
    move-object/from16 v0, p0

    iget-object v0, v0, receiversDispatchTime:[J

    move-object/from16 v21, v0

    aget-wide v16, v21, v8

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, receiversFinishTime:[J

    move-object/from16 v21, v0

    aget-wide v18, v21, v8

    goto/16 :goto_5a8

    .line 260
    :cond_6a7
    const-string v21, " ,dur=-- ms"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_6b0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_695 .. :try_end_6b0} :catch_6b2
    .catch Ljava/lang/Exception; {:try_start_695 .. :try_end_6b0} :catch_6d9

    goto/16 :goto_5f3

    .line 263
    :catch_6b2
    move-exception v10

    .line 266
    .local v10, "indexOutOfBoundException":Ljava/lang/IndexOutOfBoundsException;
    const-string v21, "[dispatchTime=--"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    const-string v21, ", finishTime=--"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    const-string v21, " ,dur=-- ms"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    const-string v21, "]"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5fc

    .line 270
    .end local v10    # "indexOutOfBoundException":Ljava/lang/IndexOutOfBoundsException;
    :catch_6d9
    move-exception v7

    .line 271
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5fc

    .line 276
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_6e7
    instance-of v0, v11, Landroid/content/pm/ResolveInfo;

    move/from16 v21, v0

    if-eqz v21, :cond_609

    .line 277
    check-cast v11, Landroid/content/pm/ResolveInfo;

    .end local v11    # "o":Ljava/lang/Object;
    invoke-virtual {v11, v15, v14}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto/16 :goto_609

    .line 279
    .end local v6    # "deferred":Z
    :cond_6f4
    return-void

    .line 213
    nop

    :pswitch_data_6f6
    .packed-switch 0x0
        :pswitch_67b
        :pswitch_67f
        :pswitch_683
        :pswitch_687
        :pswitch_68b
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 359
    const-string v0, " (?)"

    .line 360
    .local v0, "stateStr":Ljava/lang/String;
    iget v1, p0, state:I

    packed-switch v1, :pswitch_data_68

    .line 368
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BroadcastRecord{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " qIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, queue:Lcom/android/server/am/BroadcastQueue;

    iget v2, v2, Lcom/android/server/am/BroadcastQueue;->mQueueIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 361
    :pswitch_58
    const-string v0, " (IDLE)"

    goto :goto_7

    .line 362
    :pswitch_5b
    const-string v0, " (APP_RECEIVE)"

    goto :goto_7

    .line 363
    :pswitch_5e
    const-string v0, " (CALL_IN_RECEIVE)"

    goto :goto_7

    .line 364
    :pswitch_61
    const-string v0, " (CALL_DONE_RECEIVE)"

    goto :goto_7

    .line 365
    :pswitch_64
    const-string v0, " (WAITING_SERVICES)"

    goto :goto_7

    .line 360
    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_58
        :pswitch_5b
        :pswitch_5e
        :pswitch_61
        :pswitch_64
    .end packed-switch
.end method
