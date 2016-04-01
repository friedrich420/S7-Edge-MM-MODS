.class final Lcom/android/server/display/MagnifierSurfaceControl;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MagnifierSurfaceControl$Border;,
        Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;,
        Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    }
.end annotation


# static fields
.field private static final CREATED:I = 0x1

.field private static final DEBUG:Z = true

.field private static final FEATURE_OVERLAYMAGNIFIER:Ljava/lang/String; = "com.sec.feature.overlaymagnifier"

.field private static final HIDDEN:I = 0x3

.field private static final IDLE:I = 0x0

.field private static final SHOWN:I = 0x2

.field private static final STABILIZER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MagnifierSurfaceControl"

.field private static mCurrentDisplayId:I


# instance fields
.field private mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFxSession:Landroid/view/SurfaceSession;

.field private mHandler:Landroid/os/Handler;

.field private mLastOffsetX:F

.field private mLastOffsetY:F

.field private mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

.field private final mLock:Ljava/lang/Object;

.field private mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

.field private mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

.field private mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

.field private mState:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput v0, mCurrentDisplayId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/MagnifierSurfaceControl$Listener;Landroid/os/Handler;Lcom/android/server/display/MagnifierDisplayPolicy;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "policy"    # Lcom/android/server/display/MagnifierDisplayPolicy;
    .param p5, "displayId"    # I

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, mState:I

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 83
    iput v1, p0, mLastOffsetX:F

    .line 84
    iput v1, p0, mLastOffsetY:F

    .line 91
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 92
    iput-object p4, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    .line 93
    iput-object p2, p0, mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    .line 94
    iput-object p3, p0, mHandler:Landroid/os/Handler;

    .line 95
    sput p5, mCurrentDisplayId:I

    .line 97
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 99
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/MagnifierSurfaceControl$1;-><init>(Lcom/android/server/display/MagnifierSurfaceControl;)V

    iput-object v0, p0, mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .line 132
    iget-object v0, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget-object v1, p0, mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->addOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V

    .line 133
    iget-object v0, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/MagnifierSurfaceControl;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 53
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/view/SurfaceControl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 53
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/MagnifierSurfaceControl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 53
    iget v0, p0, mState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/MagnifierSurfaceControl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, mState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 53
    iget-object v0, p0, mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 53
    invoke-direct {p0}, hide()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 53
    invoke-direct {p0}, destroyMainSurface()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 53
    invoke-direct {p0}, createDefaultSurface()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 53
    iget-object v0, p0, mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/view/Surface;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 53
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$Border;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 53
    iget-object v0, p0, mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/display/MagnifierSurfaceControl;Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierSurfaceControl$Border;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;
    .param p1, "x1"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 53
    iput-object p1, p0, mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 53
    iget-object v0, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .prologue
    .line 53
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createDefaultSurface()V
    .registers 12

    .prologue
    .line 269
    iget-object v10, p0, mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 271
    :try_start_3
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, mSurface:Landroid/view/Surface;

    .line 272
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, mFxSession:Landroid/view/SurfaceSession;

    .line 273
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, mFxSession:Landroid/view/SurfaceSession;

    const-string v2, "OverlayMagnifier"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    const v6, -0x7ffffbfc

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    .line 276
    iget-object v0, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 277
    .local v7, "defaultDisplay":Landroid/view/Display;
    iget-object v0, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    .line 278
    .local v8, "defaultDisplayInfo":Landroid/view/DisplayInfo;
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 282
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v7}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 284
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 285
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    iget-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 286
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->allocateBuffers()V

    .line 287
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x1e847e

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_5a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_5a} :catch_5c
    .catchall {:try_start_3 .. :try_end_5a} :catchall_61

    .line 291
    .end local v7    # "defaultDisplay":Landroid/view/Display;
    .end local v8    # "defaultDisplayInfo":Landroid/view/DisplayInfo;
    :goto_5a
    :try_start_5a
    monitor-exit v10

    .line 292
    return-void

    .line 288
    :catch_5c
    move-exception v9

    .line 289
    .local v9, "e":Landroid/view/Surface$OutOfResourcesException;
    invoke-virtual {v9}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V

    goto :goto_5a

    .line 291
    .end local v9    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_61
    move-exception v0

    monitor-exit v10
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_61

    throw v0
.end method

.method private destroyMainSurface()V
    .registers 4

    .prologue
    .line 329
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_3
    const-string v0, "MagnifierSurfaceControl"

    const-string/jumbo v2, "destroyMainSurface"

    invoke-static {v0, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 334
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 335
    iget-object v0, p0, mFxSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0}, Landroid/view/SurfaceSession;->kill()V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, mSurface:Landroid/view/Surface;

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, mFxSession:Landroid/view/SurfaceSession;

    .line 339
    monitor-exit v1

    .line 340
    return-void

    .line 339
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method

.method private hide()V
    .registers 5

    .prologue
    .line 161
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 163
    :try_start_3
    const-string v1, "MagnifierSurfaceControl"

    const-string/jumbo v3, "hide"

    invoke-static {v1, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_18

    .line 166
    const-string v1, "MagnifierSurfaceControl"

    const-string v3, "SurfaceControl is null, return"

    invoke-static {v1, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    monitor-exit v2

    .line 188
    :goto_17
    return-void

    .line 170
    :cond_18
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, mLastOffsetX:F

    .line 171
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, mLastOffsetY:F

    .line 173
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 174
    iget-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 175
    iget-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    .line 176
    iget-object v1, p0, mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->hide()V

    .line 177
    iget-object v1, p0, mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    if-eqz v1, :cond_41

    .line 178
    iget-object v1, p0, mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->hide()V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_49

    .line 180
    const/4 v1, 0x1

    const/4 v3, -0x1

    :try_start_3e
    invoke-static {v1, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_4c
    .catchall {:try_start_3e .. :try_end_41} :catchall_49

    .line 185
    :cond_41
    :goto_41
    :try_start_41
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 186
    const/4 v1, 0x3

    iput v1, p0, mState:I

    .line 187
    monitor-exit v2

    goto :goto_17

    :catchall_49
    move-exception v1

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_49

    throw v1

    .line 181
    :catch_4c
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4d
    const-string v1, "MagnifierSurfaceControl"

    const-string/jumbo v3, "failed to set hovering spen icon"

    invoke-static {v1, v3}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_49

    goto :goto_41
.end method

.method private show(Landroid/view/MagnificationSpec;)V
    .registers 13
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    const/4 v10, 0x2

    .line 191
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 195
    :try_start_4
    iget v4, p0, mState:I

    if-nez v4, :cond_23

    .line 196
    const-string v4, "MagnifierSurfaceControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mState is wrong:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    monitor-exit v5

    .line 239
    :goto_22
    return-void

    .line 199
    :cond_23
    iget-object v4, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v4, :cond_33

    .line 200
    const-string v4, "MagnifierSurfaceControl"

    const-string v6, "SurfaceControl is null, return"

    invoke-static {v4, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    monitor-exit v5

    goto :goto_22

    .line 238
    :catchall_30
    move-exception v4

    monitor-exit v5
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v4

    .line 204
    :cond_33
    :try_start_33
    iget v4, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iput v4, p0, mLastOffsetX:F

    .line 205
    iget v4, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iput v4, p0, mLastOffsetY:F

    .line 207
    iget-object v4, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v4, p1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDisplayInfo(Landroid/view/MagnificationSpec;)Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v1

    .line 209
    .local v1, "displayInfo":Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceOffset()Landroid/graphics/Point;

    move-result-object v3

    .line 210
    .local v3, "pt":Landroid/graphics/Point;
    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 211
    .local v0, "cropRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_4c
    .catchall {:try_start_33 .. :try_end_4c} :catchall_30

    .line 213
    :try_start_4c
    iget-object v4, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 214
    iget-object v4, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 215
    iget-object v4, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    iget v6, p1, Landroid/view/MagnificationSpec;->scale:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p1, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 216
    iget-object v4, p0, mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getAbsOffset()Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->setPosition(Landroid/graphics/Point;)V

    .line 217
    iget-object v4, p0, mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    if-eqz v4, :cond_7d

    .line 218
    iget-object v4, p0, mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getPointOffset()Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->setPosition(Landroid/graphics/Point;)V

    .line 220
    :cond_7d
    iget v4, p0, mState:I

    if-eq v4, v10, :cond_bd

    .line 221
    const-string v4, "MagnifierSurfaceControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v4, 0x2

    iput v4, p0, mState:I

    .line 223
    iget-object v4, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 224
    iget-object v4, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->show()V

    .line 225
    iget-object v4, p0, mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v4}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->show()V

    .line 226
    iget-object v4, p0, mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    if-eqz v4, :cond_bd

    .line 227
    iget-object v4, p0, mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    invoke-virtual {v4}, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->show()V
    :try_end_b7
    .catchall {:try_start_4c .. :try_end_b7} :catchall_cd

    .line 229
    const/16 v4, 0x13

    const/4 v6, -0x1

    :try_start_ba
    invoke-static {v4, v6}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_bd} :catch_c3
    .catchall {:try_start_ba .. :try_end_bd} :catchall_cd

    .line 236
    :cond_bd
    :goto_bd
    :try_start_bd
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 238
    monitor-exit v5
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_30

    goto/16 :goto_22

    .line 230
    :catch_c3
    move-exception v2

    .line 231
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_c4
    const-string v4, "MagnifierSurfaceControl"

    const-string/jumbo v6, "failed to set hovering spen icon"

    invoke-static {v4, v6}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catchall {:try_start_c4 .. :try_end_cc} :catchall_cd

    goto :goto_bd

    .line 236
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_cd
    move-exception v4

    :try_start_ce
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v4
    :try_end_d2
    .catchall {:try_start_ce .. :try_end_d2} :catchall_30
.end method


# virtual methods
.method public create()V
    .registers 8

    .prologue
    .line 243
    const-string v2, "MagnifierSurfaceControl"

    const-string/jumbo v3, "create"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0}, createDefaultSurface()V

    .line 246
    iget-object v2, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 247
    iget-object v2, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 248
    .local v0, "defaultDisplay":Landroid/view/Display;
    iget-object v2, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 252
    .local v1, "defaultDisplayInfo":Landroid/view/DisplayInfo;
    new-instance v2, Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v4

    iget-object v5, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/display/MagnifierDisplayPolicy;->getWidth()I

    move-result v5

    iget-object v6, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v6}, Lcom/android/server/display/MagnifierDisplayPolicy;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/display/MagnifierSurfaceControl$Border;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .line 254
    iget-object v2, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierDisplayPolicy;->isHoverZoom()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 258
    new-instance v2, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v4

    iget-object v5, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/display/MagnifierDisplayPolicy;->getPointerSize()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    .line 261
    :cond_52
    iget-object v2, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget-object v3, p0, mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->getPadding()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPadding(Landroid/graphics/Rect;)V

    .line 262
    const/4 v2, 0x1

    iput v2, p0, mState:I

    .line 263
    iget-object v2, p0, mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    if-eqz v2, :cond_6f

    .line 264
    iget-object v2, p0, mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    iget-object v3, p0, mSurface:Landroid/view/Surface;

    iget v4, v1, Landroid/view/DisplayInfo;->defaultModeId:I

    sget v5, mCurrentDisplayId:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/display/MagnifierSurfaceControl$Listener;->onCreateSurface(Landroid/view/Surface;II)V

    .line 266
    :cond_6f
    return-void
.end method

.method public dismiss()V
    .registers 5

    .prologue
    .line 343
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 344
    :try_start_3
    iget-object v1, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 345
    invoke-direct {p0}, destroyMainSurface()V

    .line 346
    const/4 v1, 0x0

    iput v1, p0, mState:I

    .line 347
    iget-object v1, p0, mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->dismiss()V

    .line 348
    const/4 v1, 0x0

    iput-object v1, p0, mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .line 349
    iget-object v1, p0, mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    if-eqz v1, :cond_27

    .line 350
    iget-object v1, p0, mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->dismiss()V

    .line 351
    const/4 v1, 0x0

    iput-object v1, p0, mPoint:Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_3d

    .line 353
    const/4 v1, 0x1

    const/4 v3, -0x1

    :try_start_24
    invoke-static {v1, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_33
    .catchall {:try_start_24 .. :try_end_27} :catchall_3d

    .line 358
    :cond_27
    :goto_27
    :try_start_27
    iget-object v1, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget-object v3, p0, mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    invoke-virtual {v1, v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->removeOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V

    .line 359
    const/4 v1, 0x0

    iput-object v1, p0, mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .line 360
    monitor-exit v2

    .line 361
    return-void

    .line 354
    :catch_33
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MagnifierSurfaceControl"

    const-string/jumbo v3, "failed to set hovering spen icon"

    invoke-static {v1, v3}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 360
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_3d
    move-exception v1

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/MagnifierDisplayPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 305
    iget-object v1, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 306
    .local v0, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_25

    .line 307
    const-string v1, "MagnifierSurfaceControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayAdded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_25
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 326
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 314
    iget-object v1, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 315
    .local v0, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_28

    .line 317
    const-string v1, "MagnifierSurfaceControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayRemoved:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, dismiss()V

    .line 321
    :cond_28
    return-void
.end method

.method public updateMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 5
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    const/4 v1, 0x0

    .line 149
    if-eqz p1, :cond_37

    .line 150
    iget-object v0, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->isHoverZoom()Z

    move-result v0

    if-eqz v0, :cond_33

    iget v0, p0, mLastOffsetX:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_33

    iget v0, p0, mLastOffsetY:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_33

    iget v0, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v1, p0, mLastOffsetX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_33

    iget v0, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iget v1, p0, mLastOffsetY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_36

    .line 153
    :cond_33
    invoke-direct {p0, p1}, show(Landroid/view/MagnificationSpec;)V

    .line 158
    :cond_36
    :goto_36
    return-void

    .line 156
    :cond_37
    invoke-direct {p0}, hide()V

    goto :goto_36
.end method
