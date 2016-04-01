.class Lcom/android/server/VibratorService$Vibration;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vibration"
.end annotation


# instance fields
.field private mMagnitude:I

.field private final mOpPkg:Ljava/lang/String;

.field private final mPattern:[J

.field private final mRepeat:I

.field private final mStartTime:J

.field private final mTimeout:J

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field private final mUsageHint:I

.field private mUseMagnitude:Z

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;)V
    .registers 19
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "millis"    # J
    .param p5, "usageHint"    # I
    .param p6, "uid"    # I
    .param p7, "opPkg"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;)V

    .line 191
    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;I)V
    .registers 24
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "millis"    # J
    .param p5, "usageHint"    # I
    .param p6, "uid"    # I
    .param p7, "opPkg"    # Ljava/lang/String;
    .param p8, "magnitude"    # I

    .prologue
    .line 195
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {v3 .. v13}, <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;I)V

    .line 196
    move/from16 v0, p8

    iput v0, p0, mMagnitude:I

    .line 197
    const/4 v2, 0x1

    iput-boolean v2, p0, mUseMagnitude:Z

    .line 198
    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;)V
    .registers 13
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "millis"    # J
    .param p5, "pattern"    # [J
    .param p6, "repeat"    # I
    .param p7, "usageHint"    # I
    .param p8, "uid"    # I
    .param p9, "opPkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 213
    iput-object p1, p0, this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v0, p0, mMagnitude:I

    .line 187
    iput-boolean v0, p0, mUseMagnitude:Z

    .line 214
    iput-object p2, p0, mToken:Landroid/os/IBinder;

    .line 215
    iput-wide p3, p0, mTimeout:J

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mStartTime:J

    .line 217
    iput-object p5, p0, mPattern:[J

    .line 218
    iput p6, p0, mRepeat:I

    .line 219
    iput p7, p0, mUsageHint:I

    .line 220
    iput p8, p0, mUid:I

    .line 221
    iput-object p9, p0, mOpPkg:Ljava/lang/String;

    .line 222
    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;I)V
    .registers 14
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "millis"    # J
    .param p5, "pattern"    # [J
    .param p6, "repeat"    # I
    .param p7, "usageHint"    # I
    .param p8, "uid"    # I
    .param p9, "opPkg"    # Ljava/lang/String;
    .param p10, "magnitude"    # I

    .prologue
    const/4 v0, 0x0

    .line 226
    iput-object p1, p0, this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v0, p0, mMagnitude:I

    .line 187
    iput-boolean v0, p0, mUseMagnitude:Z

    .line 227
    iput-object p2, p0, mToken:Landroid/os/IBinder;

    .line 228
    iput-wide p3, p0, mTimeout:J

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mStartTime:J

    .line 230
    iput-object p5, p0, mPattern:[J

    .line 231
    iput p6, p0, mRepeat:I

    .line 232
    iput p7, p0, mUsageHint:I

    .line 233
    iput p8, p0, mUid:I

    .line 234
    iput-object p9, p0, mOpPkg:Ljava/lang/String;

    .line 235
    iput p10, p0, mMagnitude:I

    .line 236
    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;)V
    .registers 19
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "uid"    # I
    .param p7, "opPkg"    # Ljava/lang/String;

    .prologue
    .line 202
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;)V

    .line 203
    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;I)V
    .registers 22
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "uid"    # I
    .param p7, "opPkg"    # Ljava/lang/String;
    .param p8, "magnitude"    # I

    .prologue
    .line 207
    const-wide/16 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v3 .. v12}, <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;)V

    .line 208
    move/from16 v0, p8

    iput v0, p0, mMagnitude:I

    .line 209
    const/4 v2, 0x1

    iput-boolean v2, p0, mUseMagnitude:Z

    .line 210
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 177
    iget v0, p0, mUsageHint:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 177
    iget v0, p0, mUid:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 177
    iget-object v0, p0, mOpPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/VibratorService$Vibration;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 177
    iget-boolean v0, p0, mUseMagnitude:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 177
    iget v0, p0, mMagnitude:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 177
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/VibratorService$Vibration;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 177
    iget-wide v0, p0, mTimeout:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/VibratorService$Vibration;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 177
    iget-wide v0, p0, mStartTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/VibratorService$Vibration;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 177
    iget-object v0, p0, mPattern:[J

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 177
    iget v0, p0, mRepeat:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 239
    iget-object v0, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 240
    :try_start_7
    # getter for: Lcom/android/server/VibratorService;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/server/VibratorService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "VibratorService"

    const-string v2, "binderDied()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_14
    iget-object v0, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v0

    if-ne p0, v0, :cond_2f

    .line 243
    iget-object v0, p0, this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 244
    iget-object v0, p0, this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$400(Lcom/android/server/VibratorService;)V

    .line 246
    :cond_2f
    monitor-exit v1

    .line 247
    return-void

    .line 246
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, mOpPkg:Ljava/lang/String;

    return-object v0
.end method

.method public hasLongerTimeout(J)Z
    .registers 10
    .param p1, "millis"    # J

    .prologue
    const/4 v0, 0x0

    .line 250
    iget-wide v2, p0, mTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_a

    .line 261
    :cond_9
    :goto_9
    return v0

    .line 255
    :cond_a
    iget-wide v2, p0, mStartTime:J

    iget-wide v4, p0, mTimeout:J

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_9

    .line 261
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isSystemHapticFeedback()Z
    .registers 3

    .prologue
    .line 265
    iget v0, p0, mUid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_14

    iget v0, p0, mUid:I

    if-eqz v0, :cond_14

    const-string v0, "com.android.systemui"

    iget-object v1, p0, mOpPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_14
    iget v0, p0, mRepeat:I

    if-gez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public printInfo()V
    .registers 7

    .prologue
    .line 275
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Token : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mOpPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mTimeout:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mStartTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Repeat : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mRepeat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v2, p0, mPattern:[J

    if-eqz v2, :cond_f8

    .line 282
    const-string v2, "VibratorService"

    const-string v3, "Pattern info : "

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pattern.length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPattern:[J

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v2, p0, mPattern:[J

    array-length v2, v2

    if-eqz v2, :cond_f8

    .line 285
    iget-object v2, p0, mPattern:[J

    array-length v0, v2

    .line 286
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_cc
    if-ge v1, v0, :cond_f8

    .line 287
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pattern["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPattern:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_cc

    .line 291
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_f8
    return-void
.end method
