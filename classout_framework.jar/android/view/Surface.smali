.class public Landroid/view/Surface;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$HwuiContext;,
        Landroid/view/Surface$CompatibleCanvas;,
        Landroid/view/Surface$OutOfResourcesException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Surface"


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mCompatibleMatrix:Landroid/graphics/Matrix;

.field private mGenerationId:I

.field private mHwuiContext:Landroid/view/Surface$HwuiContext;

.field final mLock:Ljava/lang/Object;

.field private mLockedObject:J

.field private mName:Ljava/lang/String;

.field mNativeObject:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    new-instance v0, Landroid/view/Surface$1;

    invoke-direct {v0}, Landroid/view/Surface$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, mCanvas:Landroid/graphics/Canvas;

    .line 128
    return-void
.end method

.method private constructor <init>(J)V
    .registers 6
    .param p1, "nativeObject"    # J

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, mCanvas:Landroid/graphics/Canvas;

    .line 154
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_1b
    invoke-direct {p0, p1, p2}, setNativeObjectLocked(J)V

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_20

    throw v0
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .registers 6
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, mCanvas:Landroid/graphics/Canvas;

    .line 142
    if-nez p1, :cond_23

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceTexture must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_23
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_26
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mName:Ljava/lang/String;

    .line 148
    invoke-static {p1}, nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, setNativeObjectLocked(J)V

    .line 149
    monitor-exit v1

    .line 150
    return-void

    .line 149
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_35

    throw v0
.end method

.method static synthetic access$100(Landroid/view/Surface;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "x0"    # Landroid/view/Surface;

    .prologue
    .line 37
    iget-object v0, p0, mCompatibleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$200(JJ)J
    .registers 6
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3}, nHwuiCreate(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(J)V
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 37
    invoke-static {p0, p1}, nHwuiDraw(J)V

    return-void
.end method

.method static synthetic access$400(JJ)V
    .registers 4
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3}, nHwuiSetSurface(JJ)V

    return-void
.end method

.method static synthetic access$500(J)V
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 37
    invoke-static {p0, p1}, nHwuiDestroy(J)V

    return-void
.end method

.method private checkNotReleasedLocked()V
    .registers 5

    .prologue
    .line 475
    iget-wide v0, p0, mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface has already been released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_10
    return-void
.end method

.method private static native nHwuiCreate(JJ)J
.end method

.method private static native nHwuiDestroy(J)V
.end method

.method private static native nHwuiDraw(J)V
.end method

.method private static native nHwuiSetSurface(JJ)V
.end method

.method private static native nativeAllocateBuffers(J)V
.end method

.method private static native nativeCreateFromSurfaceControl(J)J
.end method

.method private static native nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeIsConsumerRunningBehind(J)Z
.end method

.method private static native nativeIsValid(J)Z
.end method

.method private static native nativeLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeSetBufferCount(JI)I
.end method

.method private static native nativeSetDTSFactor(JD)V
.end method

.method private static native nativeUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method public static rotationToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "rotation"    # I

    .prologue
    .line 539
    packed-switch p0, :pswitch_data_28

    .line 553
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :pswitch_1c
    const-string v0, "ROTATION_0"

    .line 550
    :goto_1e
    return-object v0

    .line 544
    :pswitch_1f
    const-string v0, "ROATATION_90"

    goto :goto_1e

    .line 547
    :pswitch_22
    const-string v0, "ROATATION_180"

    goto :goto_1e

    .line 550
    :pswitch_25
    const-string v0, "ROATATION_270"

    goto :goto_1e

    .line 539
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method private setNativeObjectLocked(J)V
    .registers 8
    .param p1, "ptr"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 460
    iget-wide v0, p0, mNativeObject:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_2b

    .line 461
    iget-wide v0, p0, mNativeObject:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    cmp-long v0, p1, v2

    if-eqz v0, :cond_2c

    .line 462
    iget-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 466
    :cond_1a
    :goto_1a
    iput-wide p1, p0, mNativeObject:J

    .line 467
    iget v0, p0, mGenerationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mGenerationId:I

    .line 468
    iget-object v0, p0, mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_2b

    .line 469
    iget-object v0, p0, mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v0}, Landroid/view/Surface$HwuiContext;->updateSurface()V

    .line 472
    :cond_2b
    return-void

    .line 463
    :cond_2c
    iget-wide v0, p0, mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    cmp-long v0, p1, v2

    if-nez v0, :cond_1a

    .line 464
    iget-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_1a
.end method

.method private unlockSwCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v4, 0x0

    .line 291
    iget-object v0, p0, mCanvas:Landroid/graphics/Canvas;

    if-eq p1, v0, :cond_e

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "canvas object must be the same instance that was previously returned by lockCanvas"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_e
    iget-wide v0, p0, mNativeObject:J

    iget-wide v2, p0, mLockedObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4a

    .line 296
    const-string v0, "Surface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: Surface\'s mNativeObject (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mNativeObject:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") != mLockedObject (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mLockedObject:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_4a
    iget-wide v0, p0, mLockedObject:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_58

    .line 301
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface was not locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_58
    :try_start_58
    iget-wide v0, p0, mLockedObject:J

    invoke-static {v0, v1, p1}, nativeUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_65

    .line 306
    iget-wide v0, p0, mLockedObject:J

    invoke-static {v0, v1}, nativeRelease(J)V

    .line 307
    iput-wide v4, p0, mLockedObject:J

    .line 309
    return-void

    .line 306
    :catchall_65
    move-exception v0

    iget-wide v2, p0, mLockedObject:J

    invoke-static {v2, v3}, nativeRelease(J)V

    .line 307
    iput-wide v4, p0, mLockedObject:J

    throw v0
.end method


# virtual methods
.method public allocateBuffers()V
    .registers 5

    .prologue
    .line 511
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_3
    invoke-direct {p0}, checkNotReleasedLocked()V

    .line 513
    iget-wide v2, p0, mNativeObject:J

    invoke-static {v2, v3}, nativeAllocateBuffers(J)V

    .line 514
    monitor-exit v1

    .line 515
    return-void

    .line 514
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public copyFrom(Landroid/view/SurfaceControl;)V
    .registers 12
    .param p1, "other"    # Landroid/view/SurfaceControl;

    .prologue
    const-wide/16 v8, 0x0

    .line 371
    if-nez p1, :cond_d

    .line 372
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "other must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 375
    :cond_d
    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 376
    .local v2, "surfaceControlPtr":J
    cmp-long v4, v2, v8

    if-nez v4, :cond_1b

    .line 377
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "SurfaceControl native object is null. Are you using a released SurfaceControl?"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 380
    :cond_1b
    invoke-static {v2, v3}, nativeCreateFromSurfaceControl(J)J

    move-result-wide v0

    .line 382
    .local v0, "newNativeObject":J
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 383
    :try_start_22
    iget-wide v6, p0, mNativeObject:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2d

    .line 384
    iget-wide v6, p0, mNativeObject:J

    invoke-static {v6, v7}, nativeRelease(J)V

    .line 386
    :cond_2d
    invoke-direct {p0, v0, v1}, setNativeObjectLocked(J)V

    .line 387
    monitor-exit v5

    .line 388
    return-void

    .line 387
    :catchall_32
    move-exception v4

    monitor-exit v5
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_32

    throw v4
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 196
    invoke-virtual {p0}, release()V

    .line 197
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 163
    iget-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 165
    :cond_9
    invoke-virtual {p0}, release()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 167
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 169
    return-void

    .line 167
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getGenerationId()I
    .registers 3

    .prologue
    .line 220
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_3
    iget v0, p0, mGenerationId:I

    monitor-exit v1

    return v0

    .line 222
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isConsumerRunningBehind()Z
    .registers 5

    .prologue
    .line 232
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_3
    invoke-direct {p0}, checkNotReleasedLocked()V

    .line 234
    iget-wide v2, p0, mNativeObject:J

    invoke-static {v2, v3}, nativeIsConsumerRunningBehind(J)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 235
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public isValid()Z
    .registers 7

    .prologue
    .line 206
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_3
    iget-wide v2, p0, mNativeObject:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    const/4 v0, 0x0

    monitor-exit v1

    .line 208
    :goto_d
    return v0

    :cond_e
    iget-wide v2, p0, mNativeObject:J

    invoke-static {v2, v3}, nativeIsValid(J)Z

    move-result v0

    monitor-exit v1

    goto :goto_d

    .line 209
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 8
    .param p1, "inOutDirty"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_3
    invoke-direct {p0}, checkNotReleasedLocked()V

    .line 260
    iget-wide v2, p0, mLockedObject:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_19

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface was already locked"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0

    .line 267
    :cond_19
    :try_start_19
    iget-wide v2, p0, mNativeObject:J

    iget-object v0, p0, mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v0, p1}, nativeLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)J

    move-result-wide v2

    iput-wide v2, p0, mLockedObject:J

    .line 268
    iget-object v0, p0, mCanvas:Landroid/graphics/Canvas;

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_16

    return-object v0
.end method

.method public lockHardwareCanvas()Landroid/graphics/Canvas;
    .registers 7

    .prologue
    .line 330
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_3
    invoke-direct {p0}, checkNotReleasedLocked()V

    .line 332
    iget-object v0, p0, mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-nez v0, :cond_11

    .line 333
    new-instance v0, Landroid/view/Surface$HwuiContext;

    invoke-direct {v0, p0}, Landroid/view/Surface$HwuiContext;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, mHwuiContext:Landroid/view/Surface$HwuiContext;

    .line 335
    :cond_11
    iget-object v0, p0, mHwuiContext:Landroid/view/Surface$HwuiContext;

    iget-wide v2, p0, mNativeObject:J

    invoke-static {v2, v3}, nativeGetWidth(J)I

    move-result v2

    iget-wide v4, p0, mNativeObject:J

    invoke-static {v4, v5}, nativeGetHeight(J)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/Surface$HwuiContext;->lockCanvas(II)Landroid/graphics/Canvas;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 338
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 423
    if-nez p1, :cond_b

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_b
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mName:Ljava/lang/String;

    .line 433
    iget-wide v2, p0, mNativeObject:J

    invoke-static {v2, v3, p1}, nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, setNativeObjectLocked(J)V

    .line 434
    monitor-exit v1

    .line 435
    return-void

    .line 434
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public release()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 177
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_5
    iget-wide v2, p0, mNativeObject:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_15

    .line 179
    iget-wide v2, p0, mNativeObject:J

    invoke-static {v2, v3}, nativeRelease(J)V

    .line 180
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, setNativeObjectLocked(J)V

    .line 182
    :cond_15
    iget-object v0, p0, mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_21

    .line 183
    iget-object v0, p0, mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v0}, Landroid/view/Surface$HwuiContext;->destroy()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, mHwuiContext:Landroid/view/Surface$HwuiContext;

    .line 186
    :cond_21
    monitor-exit v1

    .line 187
    return-void

    .line 186
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public setBufferCount(I)V
    .registers 6
    .param p1, "count"    # I

    .prologue
    .line 486
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_3
    invoke-direct {p0}, checkNotReleasedLocked()V

    .line 488
    iget-wide v2, p0, mNativeObject:J

    invoke-static {v2, v3, p1}, nativeSetBufferCount(JI)I

    .line 489
    monitor-exit v1

    .line 490
    return-void

    .line 489
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V
    .registers 4
    .param p1, "translator"    # Landroid/content/res/CompatibilityInfo$Translator;

    .prologue
    .line 354
    if-eqz p1, :cond_10

    .line 355
    iget v0, p1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 356
    .local v0, "appScale":F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, mCompatibleMatrix:Landroid/graphics/Matrix;

    .line 357
    iget-object v1, p0, mCompatibleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 359
    .end local v0    # "appScale":F
    :cond_10
    return-void
.end method

.method public setDTSFactor(D)V
    .registers 8
    .param p1, "dtsFactor"    # D

    .prologue
    .line 499
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 500
    :try_start_3
    invoke-direct {p0}, checkNotReleasedLocked()V

    .line 501
    iget-wide v2, p0, mNativeObject:J

    invoke-static {v2, v3, p1, p2}, nativeSetDTSFactor(JD)V

    .line 502
    monitor-exit v1

    .line 503
    return-void

    .line 502
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 453
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface(name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")/@0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 456
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public transferFrom(Landroid/view/Surface;)V
    .registers 10
    .param p1, "other"    # Landroid/view/Surface;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 398
    if-nez p1, :cond_d

    .line 399
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "other must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 401
    :cond_d
    if-eq p1, p0, :cond_2c

    .line 403
    iget-object v3, p1, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 404
    :try_start_12
    iget-wide v0, p1, mNativeObject:J

    .line 405
    .local v0, "newPtr":J
    const-wide/16 v4, 0x0

    invoke-direct {p1, v4, v5}, setNativeObjectLocked(J)V

    .line 406
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_2d

    .line 408
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 409
    :try_start_1d
    iget-wide v4, p0, mNativeObject:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_28

    .line 410
    iget-wide v4, p0, mNativeObject:J

    invoke-static {v4, v5}, nativeRelease(J)V

    .line 412
    :cond_28
    invoke-direct {p0, v0, v1}, setNativeObjectLocked(J)V

    .line 413
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_30

    .line 415
    .end local v0    # "newPtr":J
    :cond_2c
    return-void

    .line 406
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2

    .line 413
    .restart local v0    # "newPtr":J
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2
.end method

.method public unlockCanvas(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 346
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 279
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_3
    invoke-direct {p0}, checkNotReleasedLocked()V

    .line 282
    iget-object v0, p0, mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_11

    .line 283
    iget-object v0, p0, mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v0, p1}, Landroid/view/Surface$HwuiContext;->unlockAndPost(Landroid/graphics/Canvas;)V

    .line 287
    :goto_f
    monitor-exit v1

    .line 288
    return-void

    .line 285
    :cond_11
    invoke-direct {p0, p1}, unlockSwCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_f

    .line 287
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 439
    if-nez p1, :cond_a

    .line 440
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_a
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_d
    iget-object v0, p0, mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 444
    iget-wide v2, p0, mNativeObject:J

    invoke-static {v2, v3, p1}, nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 445
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_20

    .line 446
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1f

    .line 447
    invoke-virtual {p0}, release()V

    .line 449
    :cond_1f
    return-void

    .line 445
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method
