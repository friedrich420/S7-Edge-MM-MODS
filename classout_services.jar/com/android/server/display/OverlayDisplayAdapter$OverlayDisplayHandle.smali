.class final Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/OverlayDisplayWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayDisplayHandle"
.end annotation


# static fields
.field private static final DEFAULT_MODE_INDEX:I


# instance fields
.field private mActiveMode:I

.field private mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private final mGravity:I

.field private final mModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mNumber:I

.field private final mResizeRunnable:Ljava/lang/Runnable;

.field private final mSecure:Z

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private mWindow:Lcom/android/server/display/OverlayDisplayWindow;

.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;IZI)V
    .registers 8
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "gravity"    # I
    .param p5, "secure"    # Z
    .param p6, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p3, "modes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    iput-object p1, p0, this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object v0, p0, mShowRunnable:Ljava/lang/Runnable;

    .line 470
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$3;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object v0, p0, mDismissRunnable:Ljava/lang/Runnable;

    .line 486
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object v0, p0, mResizeRunnable:Ljava/lang/Runnable;

    .line 368
    iput-object p2, p0, mName:Ljava/lang/String;

    .line 369
    iput-object p3, p0, mModes:Ljava/util/List;

    .line 370
    iput p4, p0, mGravity:I

    .line 371
    iput-boolean p5, p0, mSecure:Z

    .line 372
    iput p6, p0, mNumber:I

    .line 374
    const/4 v0, 0x0

    iput v0, p0, mActiveMode:I

    .line 376
    invoke-direct {p0}, showLocked()V

    .line 377
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    .param p1, "x1"    # I

    .prologue
    .line 353
    invoke-direct {p0, p1}, onActiveModeChangedLocked(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 353
    iget v0, p0, mActiveMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 353
    iget-object v0, p0, mModes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 353
    iget-object v0, p0, mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 353
    iget v0, p0, mGravity:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 353
    iget-boolean v0, p0, mSecure:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/OverlayDisplayWindow;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .prologue
    .line 353
    iget-object v0, p0, mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    .param p1, "x1"    # Lcom/android/server/display/OverlayDisplayWindow;

    .prologue
    .line 353
    iput-object p1, p0, mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    return-object p1
.end method

.method private onActiveModeChangedLocked(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 389
    iget-object v0, p0, this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, mResizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    iput p1, p0, mActiveMode:I

    .line 391
    iget-object v0, p0, mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    if-eqz v0, :cond_1c

    .line 392
    iget-object v0, p0, this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, mResizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    :cond_1c
    return-void
.end method

.method private showLocked()V
    .registers 3

    .prologue
    .line 380
    iget-object v0, p0, this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    return-void
.end method


# virtual methods
.method public dismissLocked()V
    .registers 3

    .prologue
    .line 384
    iget-object v0, p0, this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 385
    iget-object v0, p0, this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mModes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mActiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mActiveMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mGravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mGravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSecure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    if-eqz v0, :cond_bb

    .line 447
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "    "

    invoke-direct {v2, p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 448
    .local v2, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 449
    iget-object v0, p0, this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    const-string v3, ""

    const-wide/16 v4, 0xc8

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 451
    .end local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_bb
    return-void
.end method

.method public onStateChanged(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 429
    iget-object v0, p0, this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 430
    :try_start_7
    iget-object v0, p0, mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    if-eqz v0, :cond_18

    .line 431
    iget-object v0, p0, mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    invoke-virtual {v0, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->setStateLocked(I)V

    .line 432
    iget-object v0, p0, this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v2, p0, mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 434
    :cond_18
    monitor-exit v1

    .line 435
    return-void

    .line 434
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public onWindowCreated(Landroid/graphics/SurfaceTexture;FJI)V
    .registers 21
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "refreshRate"    # F
    .param p3, "presentationDeadlineNanos"    # J
    .param p5, "state"    # I

    .prologue
    .line 400
    iget-object v0, p0, this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v14

    monitor-enter v14

    .line 401
    :try_start_7
    iget-object v0, p0, mName:Ljava/lang/String;

    iget-boolean v1, p0, mSecure:Z

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    .line 402
    .local v2, "displayToken":Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;

    iget-object v3, p0, mName:Ljava/lang/String;

    iget-object v4, p0, mModes:Ljava/util/List;

    iget v5, p0, mActiveMode:I

    const/4 v6, 0x0

    iget-boolean v10, p0, mSecure:Z

    iget v13, p0, mNumber:I

    move-object v1, p0

    move/from16 v7, p2

    move-wide/from16 v8, p3

    move/from16 v11, p5

    move-object/from16 v12, p1

    invoke-direct/range {v0 .. v13}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IIFJZILandroid/graphics/SurfaceTexture;I)V

    iput-object v0, p0, mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    .line 411
    iget-object v0, p0, this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, p0, mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 412
    monitor-exit v14

    .line 413
    return-void

    .line 412
    .end local v2    # "displayToken":Landroid/os/IBinder;
    :catchall_34
    move-exception v0

    monitor-exit v14
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public onWindowDestroyed()V
    .registers 5

    .prologue
    .line 418
    iget-object v0, p0, this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 419
    :try_start_7
    iget-object v0, p0, mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    if-eqz v0, :cond_18

    .line 420
    iget-object v0, p0, mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->destroyLocked()V

    .line 421
    iget-object v0, p0, this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v2, p0, mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 423
    :cond_18
    monitor-exit v1

    .line 424
    return-void

    .line 423
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method
