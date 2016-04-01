.class final Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "VirtualDisplayAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VirtualDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VirtualDisplayDevice"
.end annotation


# static fields
.field private static final PENDING_RESIZE:I = 0x2

.field private static final PENDING_SURFACE_CHANGE:I = 0x1

.field private static final REFRESH_RATE:F = 60.0f


# instance fields
.field private final mAppToken:Landroid/os/IBinder;

.field private final mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

.field private mDensityDpi:I

.field private mDisplayState:I

.field private mFixedOrientation:I

.field private final mFlags:I

.field private mHeight:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mMirroringDisplay:I

.field private mMode:Landroid/view/Display$Mode;

.field final mName:Ljava/lang/String;

.field final mOwnerPackageName:Ljava/lang/String;

.field private final mOwnerUid:I

.field private mPendingChanges:I

.field private mStopped:Z

.field private mSurface:Landroid/view/Surface;

.field private mUniqueIndex:I

.field private mWidth:I

.field final synthetic this$0:Lcom/android/server/display/VirtualDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILcom/android/server/display/VirtualDisplayAdapter$Callback;Ljava/lang/String;I)V
    .registers 16
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "appToken"    # Landroid/os/IBinder;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPackageName"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "densityDpi"    # I
    .param p10, "surface"    # Landroid/view/Surface;
    .param p11, "flags"    # I
    .param p12, "callback"    # Lcom/android/server/display/VirtualDisplayAdapter$Callback;
    .param p13, "uniqueId"    # Ljava/lang/String;
    .param p14, "uniqueIndex"    # I

    .prologue
    .line 215
    iput-object p1, p0, this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 216
    invoke-direct {p0, p1, p2, p13}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 217
    iput-object p3, p0, mAppToken:Landroid/os/IBinder;

    .line 218
    iput p4, p0, mOwnerUid:I

    .line 219
    iput-object p5, p0, mOwnerPackageName:Ljava/lang/String;

    .line 220
    iput-object p6, p0, mName:Ljava/lang/String;

    .line 221
    iput p7, p0, mWidth:I

    .line 222
    iput p8, p0, mHeight:I

    .line 223
    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p7, p8, v0}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object v0

    iput-object v0, p0, mMode:Landroid/view/Display$Mode;

    .line 224
    iput p9, p0, mDensityDpi:I

    .line 225
    iput-object p10, p0, mSurface:Landroid/view/Surface;

    .line 226
    iput p11, p0, mFlags:I

    .line 227
    iput-object p12, p0, mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    .line 228
    const/4 v0, 0x0

    iput v0, p0, mDisplayState:I

    .line 229
    iget v0, p0, mPendingChanges:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, mPendingChanges:I

    .line 230
    iput p14, p0, mUniqueIndex:I

    .line 232
    const/4 v0, -0x1

    iput v0, p0, mMirroringDisplay:I

    .line 234
    const/4 v0, -0x1

    iput v0, p0, mFixedOrientation:I

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .prologue
    .line 184
    iget v0, p0, mUniqueIndex:I

    return v0
.end method

.method private updateDeviceInfoLocked()V
    .registers 3

    .prologue
    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 278
    iget-object v0, p0, this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 279
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 239
    iget-object v0, p0, this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 240
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object v2, p0, mAppToken:Landroid/os/IBinder;

    # invokes: Lcom/android/server/display/VirtualDisplayAdapter;->handleBinderDiedLocked(Landroid/os/IBinder;)V
    invoke-static {v0, v2}, Lcom/android/server/display/VirtualDisplayAdapter;->access$100(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    .line 241
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public destroyLocked(Z)V
    .registers 3
    .param p1, "binderAlive"    # Z

    .prologue
    .line 245
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c

    .line 246
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, mSurface:Landroid/view/Surface;

    .line 249
    :cond_c
    invoke-virtual {p0}, getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    .line 250
    if-eqz p1, :cond_1a

    .line 251
    iget-object v0, p0, mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->dispatchDisplayStopped()V

    .line 253
    :cond_1a
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDisplayState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 354
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v1, :cond_104

    .line 355
    new-instance v1, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v1}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 356
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, mName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 357
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, getUniqueId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 358
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, mWidth:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 359
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, mHeight:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 360
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, mMode:Landroid/view/Display$Mode;

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 361
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, mMode:Landroid/view/Display$Mode;

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 362
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    new-array v2, v0, [Landroid/view/Display$Mode;

    iget-object v3, p0, mMode:Landroid/view/Display$Mode;

    aput-object v3, v2, v4

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 363
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, mDensityDpi:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 364
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, mDensityDpi:I

    int-to-float v2, v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 365
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, mDensityDpi:I

    int-to-float v2, v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 366
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const-wide/32 v2, 0xfe502a

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 367
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 368
    iget v1, p0, mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_72

    .line 369
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v2, v2, 0x30

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 372
    :cond_72
    iget v1, p0, mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_107

    .line 373
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, -0x21

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 378
    :goto_80
    iget v1, p0, mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_9c

    .line 379
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 380
    iget v1, p0, mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_9c

    .line 383
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 387
    :cond_9c
    iget v1, p0, mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c5

    .line 388
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 390
    iget v1, p0, mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c5

    .line 393
    const-string/jumbo v1, "portrait"

    const-string/jumbo v2, "persist.demo.remoterotation"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 395
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 399
    :cond_c5
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v2, 0x5

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 400
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 401
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_d5

    const/4 v0, 0x2

    :cond_d5
    iput v0, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 404
    iget v0, p0, mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_ec

    .line 405
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 406
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, mDisplayState:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 410
    :cond_ec
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, mOwnerUid:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    .line 411
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, mOwnerPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    .line 413
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, mMirroringDisplay:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayToMirror:I

    .line 415
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, mFixedOrientation:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->fixedOrientation:I

    .line 417
    :cond_104
    iget-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0

    .line 375
    :cond_107
    iget-object v1, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto/16 :goto_80
.end method

.method public performTraversalInTransactionLocked()V
    .registers 4

    .prologue
    .line 284
    iget v0, p0, mPendingChanges:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    .line 285
    invoke-virtual {p0}, getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    iget v1, p0, mWidth:I

    iget v2, p0, mHeight:I

    invoke-static {v0, v1, v2}, Landroid/view/SurfaceControl;->setDisplaySize(Landroid/os/IBinder;II)V

    .line 287
    :cond_11
    iget v0, p0, mPendingChanges:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1c

    .line 288
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    .line 290
    :cond_1c
    const/4 v0, 0x0

    iput v0, p0, mPendingChanges:I

    .line 291
    return-void
.end method

.method public requestDisplayStateLocked(II)Ljava/lang/Runnable;
    .registers 4
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    .prologue
    .line 257
    iget v0, p0, mDisplayState:I

    if-eq p1, v0, :cond_17

    .line 258
    iput p1, p0, mDisplayState:I

    .line 261
    iget v0, p0, mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_f

    .line 262
    invoke-direct {p0}, updateDeviceInfoLocked()V

    .line 266
    :cond_f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_19

    .line 267
    iget-object v0, p0, mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->dispatchDisplayPaused()V

    .line 272
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return-object v0

    .line 269
    :cond_19
    iget-object v0, p0, mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->dispatchDisplayResumed()V

    goto :goto_17
.end method

.method public resizeLocked(III)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "densityDpi"    # I

    .prologue
    .line 326
    iget v0, p0, mWidth:I

    if-ne v0, p1, :cond_c

    iget v0, p0, mHeight:I

    if-ne v0, p2, :cond_c

    iget v0, p0, mDensityDpi:I

    if-eq v0, p3, :cond_2e

    .line 327
    :cond_c
    iget-object v0, p0, this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 328
    iget-object v0, p0, this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->sendTraversalRequestLocked()V

    .line 329
    iput p1, p0, mWidth:I

    .line 330
    iput p2, p0, mHeight:I

    .line 331
    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p1, p2, v0}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object v0

    iput-object v0, p0, mMode:Landroid/view/Display$Mode;

    .line 332
    iput p3, p0, mDensityDpi:I

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 334
    iget v0, p0, mPendingChanges:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, mPendingChanges:I

    .line 336
    :cond_2e
    return-void
.end method

.method public setFixedOrientationLocked(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    .line 317
    if-ltz p1, :cond_15

    const/4 v0, 0x3

    if-gt p1, v0, :cond_15

    .line 318
    iget-object v0, p0, this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 319
    iget-object v0, p0, this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->sendTraversalRequestLocked()V

    .line 320
    iput p1, p0, mFixedOrientation:I

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 323
    :cond_15
    return-void
.end method

.method public setMirroringDisplayLocked(I)V
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 307
    iget v0, p0, mMirroringDisplay:I

    if-eq v0, p1, :cond_14

    .line 308
    iget-object v0, p0, this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 309
    iget-object v0, p0, this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->sendTraversalRequestLocked()V

    .line 310
    iput p1, p0, mMirroringDisplay:I

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 313
    :cond_14
    return-void
.end method

.method public setSurfaceLocked(Landroid/view/Surface;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    iget-boolean v2, p0, mStopped:Z

    if-nez v2, :cond_29

    iget-object v2, p0, mSurface:Landroid/view/Surface;

    if-eq v2, p1, :cond_29

    .line 295
    iget-object v2, p0, mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_2a

    move v2, v0

    :goto_f
    if-eqz p1, :cond_2c

    :goto_11
    if-eq v2, v0, :cond_19

    .line 296
    iget-object v0, p0, this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 298
    :cond_19
    iget-object v0, p0, this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->sendTraversalRequestLocked()V

    .line 299
    iput-object p1, p0, mSurface:Landroid/view/Surface;

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 301
    iget v0, p0, mPendingChanges:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, mPendingChanges:I

    .line 303
    :cond_29
    return-void

    :cond_2a
    move v2, v1

    .line 295
    goto :goto_f

    :cond_2c
    move v0, v1

    goto :goto_11
.end method

.method public stopLocked()V
    .registers 2

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setSurfaceLocked(Landroid/view/Surface;)V

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, mStopped:Z

    .line 341
    return-void
.end method
