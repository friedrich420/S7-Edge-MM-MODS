.class public Landroid/view/SurfaceControl;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    }
.end annotation


# static fields
.field public static final BUILT_IN_DISPLAY_ID_EXPANDED:I

.field public static final BUILT_IN_DISPLAY_ID_HDMI:I

.field public static final BUILT_IN_DISPLAY_ID_INPUT_METHOD:I

.field public static final BUILT_IN_DISPLAY_ID_MAIN:I = 0x0

.field public static final BUILT_IN_DISPLAY_ID_SUB:I

.field public static final CURSOR_WINDOW:I = 0x2000

.field public static final FLAG_FIXED_ORIENATION:I = 0x40000000

.field public static final FLAG_INCLUDE_IN_PARTIAL_MIRROR:I = 0x10000000

.field public static final FLAG_TRANSLUCENT_SCREENSHOT:I = 0x20000000

.field public static final FLAG_USAGE_INTERNAL_DISP:I = -0x80000000

.field public static final FX_SURFACE_BLUR:I = 0x80000

.field public static final FX_SURFACE_DIM:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field public static final HIDDEN:I = 0x4

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final NO_REMOTECONTROL:I = 0x8000000

.field public static final OPAQUE:I = 0x400

.field public static final POWER_MODE_DOZE:I = 0x1

.field public static final POWER_MODE_DOZE_SUSPEND:I = 0x3

.field public static final POWER_MODE_NORMAL:I = 0x2

.field public static final POWER_MODE_OFF:I = 0x0

.field public static final PROTECTED_APP:I = 0x800

.field public static final SECURE:I = 0x80

.field private static final SURFACE_DEBUG:Z = false

.field private static final SURFACE_HIDDEN:I = 0x1

.field private static final SURFACE_OPAQUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SurfaceControl"

.field private static final mIsDualDisplay:Z


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mName:Ljava/lang/String;

.field mNativeObject:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 282
    sput v1, BUILT_IN_DISPLAY_ID_SUB:I

    .line 283
    const/4 v0, 0x1

    sput v0, BUILT_IN_DISPLAY_ID_HDMI:I

    .line 284
    sput v1, BUILT_IN_DISPLAY_ID_EXPANDED:I

    .line 285
    sput v1, BUILT_IN_DISPLAY_ID_INPUT_METHOD:I

    .line 287
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .registers 11
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    .line 341
    if-nez p1, :cond_14

    .line 342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_14
    if-nez p2, :cond_1f

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1f
    and-int/lit8 v0, p6, 0x4

    if-nez v0, :cond_40

    .line 349
    const-string v0, "SurfaceControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surfaces should always be created with the HIDDEN flag set to ensure that they are not made visible prematurely before all of the surface\'s properties have been configured.  Set the other properties and make the surface visible within a transaction.  New surface name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    :cond_40
    iput-object p2, p0, mName:Ljava/lang/String;

    .line 358
    invoke-static/range {p1 .. p6}, nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)J

    move-result-wide v0

    iput-wide v0, p0, mNativeObject:J

    .line 361
    iget-wide v0, p0, mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_58

    .line 362
    new-instance v0, Landroid/view/Surface$OutOfResourcesException;

    const-string v1, "Couldn\'t allocate SurfaceControl native object"

    invoke-direct {v0, v1}, Landroid/view/Surface$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_58
    iget-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method private checkNotReleased()V
    .registers 5

    .prologue
    .line 417
    iget-wide v0, p0, mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mNativeObject is null. Have you called release() already?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_11
    return-void
.end method

.method public static clearAnimationFrameStats()Z
    .registers 1

    .prologue
    .line 489
    invoke-static {}, nativeClearAnimationFrameStats()Z

    move-result v0

    return v0
.end method

.method public static closeTransaction()V
    .registers 0

    .prologue
    .line 433
    invoke-static {}, nativeCloseTransaction()V

    .line 434
    return-void
.end method

.method public static createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "secure"    # Z

    .prologue
    .line 712
    if-nez p0, :cond_b

    .line 713
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_b
    invoke-static {p0, p1}, nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static createDisplay(Ljava/lang/String;ZI)Landroid/os/IBinder;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 719
    if-nez p0, :cond_b

    .line 720
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_b
    invoke-static {p0, p1, p2}, nativeCreateDisplayFlags(Ljava/lang/String;ZI)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static destroyDisplay(Landroid/os/IBinder;)V
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .prologue
    .line 726
    if-nez p0, :cond_a

    .line 727
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_a
    invoke-static {p0}, nativeDestroyDisplay(Landroid/os/IBinder;)V

    .line 730
    return-void
.end method

.method public static getActiveConfig(Landroid/os/IBinder;)I
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .prologue
    .line 650
    if-nez p0, :cond_a

    .line 651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_a
    invoke-static {p0}, nativeGetActiveConfig(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public static getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    .registers 2
    .param p0, "outStats"    # Landroid/view/WindowAnimationFrameStats;

    .prologue
    .line 493
    invoke-static {p0}, nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z

    move-result v0

    return v0
.end method

.method public static getBuiltInDisplay(I)Landroid/os/IBinder;
    .registers 2
    .param p0, "builtInDisplayId"    # I

    .prologue
    .line 733
    invoke-static {p0}, nativeGetBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .prologue
    .line 643
    if-nez p0, :cond_a

    .line 644
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_a
    invoke-static {p0}, nativeGetDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeClearAnimationFrameStats()Z
.end method

.method private static native nativeClearContentFrameStats(J)Z
.end method

.method private static native nativeCloseTransaction()V
.end method

.method private static native nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
.end method

.method private static native nativeCreateDisplayFlags(Ljava/lang/String;ZI)Landroid/os/IBinder;
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeDestroyDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeGetActiveConfig(Landroid/os/IBinder;)I
.end method

.method private static native nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
.end method

.method private static native nativeGetBuiltInDisplay(I)Landroid/os/IBinder;
.end method

.method private static native nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z
.end method

.method private static native nativeGetDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
.end method

.method private static native nativeOpenTransaction()V
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V
.end method

.method private static native nativeSetActiveConfig(Landroid/os/IBinder;I)Z
.end method

.method private static native nativeSetAlpha(JF)V
.end method

.method private static native nativeSetAnimationTransaction()V
.end method

.method private static native nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayProjection(Landroid/os/IBinder;IIIIIIIII)V
.end method

.method private static native nativeSetDisplaySize(Landroid/os/IBinder;II)V
.end method

.method private static native nativeSetDisplaySurface(Landroid/os/IBinder;J)V
.end method

.method private static native nativeSetFlags(JII)V
.end method

.method private static native nativeSetLayer(JI)V
.end method

.method private static native nativeSetLayerStack(JI)V
.end method

.method private static native nativeSetMatrix(JFFFF)V
.end method

.method private static native nativeSetPosition(JFF)V
.end method

.method private static native nativeSetSize(JII)V
.end method

.method private static native nativeSetTransparentRegionHint(JLandroid/graphics/Region;)V
.end method

.method private static native nativeSetWindowCrop(JIIII)V
.end method

.method public static openTransaction()V
    .registers 0

    .prologue
    .line 428
    invoke-static {}, nativeOpenTransaction()V

    .line 429
    return-void
.end method

.method public static screenshot(II)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 864
    invoke-static {v4}, getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 866
    .local v0, "displayToken":Landroid/os/IBinder;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x1

    move v2, p0

    move v3, p1

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-static/range {v0 .. v8}, nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    .registers 15
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minLayer"    # I
    .param p4, "maxLayer"    # I
    .param p5, "useIdentityTransform"    # Z
    .param p6, "rotation"    # I

    .prologue
    .line 819
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, screenshot(Landroid/graphics/Rect;IIIIZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static screenshot(Landroid/graphics/Rect;IIIIZII)Landroid/graphics/Bitmap;
    .registers 17
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minLayer"    # I
    .param p4, "maxLayer"    # I
    .param p5, "useIdentityTransform"    # Z
    .param p6, "rotation"    # I
    .param p7, "displayId"    # I

    .prologue
    .line 830
    const/4 v0, 0x0

    .line 843
    .local v0, "displayToken":Landroid/os/IBinder;
    const/4 v1, 0x0

    invoke-static {v1}, getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 846
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 11
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;

    .prologue
    const/4 v3, 0x0

    .line 782
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    move v6, v3

    move v8, v3

    invoke-static/range {v0 .. v8}, screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 783
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;II)V
    .registers 13
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 772
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v6, v5

    move v8, v5

    invoke-static/range {v0 .. v8}, screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 773
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V
    .registers 16
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "minLayer"    # I
    .param p5, "maxLayer"    # I
    .param p6, "useIdentityTransform"    # Z

    .prologue
    .line 756
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 758
    return-void
.end method

.method private static screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V
    .registers 11
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "sourceCrop"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "minLayer"    # I
    .param p6, "maxLayer"    # I
    .param p7, "allLayers"    # Z
    .param p8, "useIdentityTransform"    # Z

    .prologue
    .line 873
    if-nez p0, :cond_a

    .line 874
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_a
    if-nez p1, :cond_14

    .line 877
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "consumer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 879
    :cond_14
    invoke-static/range {p0 .. p8}, nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 881
    return-void
.end method

.method public static setActiveConfig(Landroid/os/IBinder;I)Z
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "id"    # I

    .prologue
    .line 657
    if-nez p0, :cond_a

    .line 658
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_a
    invoke-static {p0, p1}, nativeSetActiveConfig(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method public static setAnimationTransaction()V
    .registers 0

    .prologue
    .line 438
    invoke-static {}, nativeSetAnimationTransaction()V

    .line 439
    return-void
.end method

.method public static setDisplayLayerStack(Landroid/os/IBinder;I)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "layerStack"    # I

    .prologue
    .line 680
    if-nez p0, :cond_a

    .line 681
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_a
    invoke-static {p0, p1}, nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V

    .line 684
    return-void
.end method

.method public static setDisplayPowerMode(Landroid/os/IBinder;I)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "mode"    # I

    .prologue
    .line 636
    if-nez p0, :cond_a

    .line 637
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_a
    invoke-static {p0, p1}, nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 640
    return-void
.end method

.method public static setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 14
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "orientation"    # I
    .param p2, "layerStackRect"    # Landroid/graphics/Rect;
    .param p3, "displayRect"    # Landroid/graphics/Rect;

    .prologue
    .line 665
    if-nez p0, :cond_a

    .line 666
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_a
    if-nez p2, :cond_14

    .line 669
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layerStackRect must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_14
    if-nez p3, :cond_1e

    .line 672
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayRect must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_1e
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v9}, nativeSetDisplayProjection(Landroid/os/IBinder;IIIIIIIII)V

    .line 677
    return-void
.end method

.method public static setDisplaySize(Landroid/os/IBinder;II)V
    .registers 5
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 701
    if-nez p0, :cond_a

    .line 702
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_a
    if-lez p1, :cond_e

    if-gtz p2, :cond_17

    .line 705
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_17
    invoke-static {p0, p1, p2}, nativeSetDisplaySize(Landroid/os/IBinder;II)V

    .line 709
    return-void
.end method

.method public static setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 6
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 687
    if-nez p0, :cond_a

    .line 688
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_a
    if-eqz p1, :cond_19

    .line 692
    iget-object v1, p1, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 693
    :try_start_f
    iget-wide v2, p1, Landroid/view/Surface;->mNativeObject:J

    invoke-static {p0, v2, v3}, nativeSetDisplaySurface(Landroid/os/IBinder;J)V

    .line 694
    monitor-exit v1

    .line 698
    :goto_15
    return-void

    .line 694
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v0

    .line 696
    :cond_19
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, nativeSetDisplaySurface(Landroid/os/IBinder;J)V

    goto :goto_15
.end method


# virtual methods
.method public clearContentFrameStats()Z
    .registers 3

    .prologue
    .line 479
    invoke-direct {p0}, checkNotReleased()V

    .line 480
    iget-wide v0, p0, mNativeObject:J

    invoke-static {v0, v1}, nativeClearContentFrameStats(J)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 409
    iget-wide v0, p0, mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 410
    iget-wide v0, p0, mNativeObject:J

    invoke-static {v0, v1}, nativeDestroy(J)V

    .line 411
    iput-wide v2, p0, mNativeObject:J

    .line 413
    :cond_f
    iget-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 414
    return-void
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 372
    :try_start_0
    iget-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 373
    iget-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 375
    :cond_9
    iget-wide v0, p0, mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 376
    iget-wide v0, p0, mNativeObject:J

    invoke-static {v0, v1}, nativeRelease(J)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_1a

    .line 379
    :cond_16
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 381
    return-void

    .line 379
    :catchall_1a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .registers 4
    .param p1, "outStats"    # Landroid/view/WindowContentFrameStats;

    .prologue
    .line 484
    invoke-direct {p0}, checkNotReleased()V

    .line 485
    iget-wide v0, p0, mNativeObject:J

    invoke-static {v0, v1, p1}, nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method public hide()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 462
    invoke-direct {p0}, checkNotReleased()V

    .line 464
    iget-wide v0, p0, mNativeObject:J

    invoke-static {v0, v1, v2, v2}, nativeSetFlags(JII)V

    .line 465
    return-void
.end method

.method public release()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 394
    iget-wide v0, p0, mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 396
    iget-wide v0, p0, mNativeObject:J

    invoke-static {v0, v1}, nativeRelease(J)V

    .line 397
    iput-wide v2, p0, mNativeObject:J

    .line 399
    :cond_f
    iget-object v0, p0, mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 400
    return-void
.end method

.method public setAlpha(F)V
    .registers 4
    .param p1, "alpha"    # F

    .prologue
    .line 502
    invoke-direct {p0}, checkNotReleased()V

    .line 503
    iget-wide v0, p0, mNativeObject:J

    invoke-static {v0, v1, p1}, nativeSetAlpha(JF)V

    .line 504
    return-void
.end method

.method public setLayer(I)V
    .registers 4
    .param p1, "zorder"    # I

    .prologue
    .line 442
    invoke-direct {p0}, checkNotReleased()V

    .line 444
    iget-wide v0, p0, mNativeObject:J

    invoke-static {v0, v1, p1}, nativeSetLayer(JI)V

    .line 445
    return-void
.end method

.method public setLayerStack(I)V
    .registers 4
    .param p1, "layerStack"    # I

    .prologue
    .line 529
    invoke-direct {p0}, checkNotReleased()V

    .line 530
    iget-wide v0, p0, mNativeObject:J

    invoke-static {v0, v1, p1}, nativeSetLayerStack(JI)V

    .line 531
    return-void
.end method

.method public setMatrix(FFFF)V
    .registers 11
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    .line 512
    invoke-direct {p0}, checkNotReleased()V

    .line 513
    iget-wide v0, p0, mNativeObject:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, nativeSetMatrix(JFFFF)V

    .line 514
    return-void
.end method

.method public setOpaque(Z)V
    .registers 6
    .param p1, "isOpaque"    # Z

    .prologue
    const/4 v3, 0x2

    .line 538
    invoke-direct {p0}, checkNotReleased()V

    .line 540
    if-eqz p1, :cond_c

    .line 541
    iget-wide v0, p0, mNativeObject:J

    invoke-static {v0, v1, v3, v3}, nativeSetFlags(JII)V

    .line 545
    :goto_b
    return-void

    .line 543
    :cond_c
    iget-wide v0, p0, mNativeObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, nativeSetFlags(JII)V

    goto :goto_b
.end method

.method public setPosition(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 450
    invoke-direct {p0}, checkNotReleased()V

    .line 451
    iget-wide v0, p0, mNativeObject:J

    invoke-static {v0, v1, p1, p2}, nativeSetPosition(JFF)V

    .line 452
    return-void
.end method

.method public setSecure(Z)V
    .registers 6
    .param p1, "isSecure"    # Z

    .prologue
    const/16 v3, 0x80

    .line 552
    invoke-direct {p0}, checkNotReleased()V

    .line 553
    if-eqz p1, :cond_d

    .line 554
    iget-wide v0, p0, mNativeObject:J

    invoke-static {v0, v1, v3, v3}, nativeSetFlags(JII)V

    .line 558
    :goto_c
    return-void

    .line 556
    :cond_d
    iget-wide v0, p0, mNativeObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, nativeSetFlags(JII)V

    goto :goto_c
.end method

.method public setSize(II)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 456
    if-ltz p1, :cond_4

    if-gez p2, :cond_33

    :cond_4
    const-string v0, "SurfaceControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSize by illegal argument (w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_33
    invoke-direct {p0}, checkNotReleased()V

    .line 458
    iget-wide v0, p0, mNativeObject:J

    invoke-static {v0, v1, p1, p2}, nativeSetSize(JII)V

    .line 459
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .registers 4
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 474
    invoke-direct {p0}, checkNotReleased()V

    .line 475
    iget-wide v0, p0, mNativeObject:J

    invoke-static {v0, v1, p1}, nativeSetTransparentRegionHint(JLandroid/graphics/Region;)V

    .line 476
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 518
    invoke-direct {p0}, checkNotReleased()V

    .line 519
    if-eqz p1, :cond_14

    .line 520
    iget-wide v0, p0, mNativeObject:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, nativeSetWindowCrop(JIIII)V

    .line 525
    :goto_13
    return-void

    .line 523
    :cond_14
    iget-wide v0, p0, mNativeObject:J

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, nativeSetWindowCrop(JIIII)V

    goto :goto_13
.end method

.method public show()V
    .registers 5

    .prologue
    .line 468
    invoke-direct {p0}, checkNotReleased()V

    .line 470
    iget-wide v0, p0, mNativeObject:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, nativeSetFlags(JII)V

    .line 471
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
