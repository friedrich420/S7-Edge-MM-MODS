.class public abstract Landroid/view/HardwareRenderer;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HardwareRenderer$HardwareDrawCallbacks;
    }
.end annotation


# static fields
.field private static final CACHE_PATH_SHADERS:Ljava/lang/String; = "com.android.opengl.shaders_cache"

.field public static final DEBUG_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.show_dirty_regions"

.field public static final DEBUG_OVERDRAW_PROPERTY:Ljava/lang/String; = "debug.hwui.overdraw"

.field public static final DEBUG_SHOW_LAYERS_UPDATES_PROPERTY:Ljava/lang/String; = "debug.hwui.show_layers_updates"

.field public static final DEBUG_SHOW_NON_RECTANGULAR_CLIP_PROPERTY:Ljava/lang/String; = "debug.hwui.show_non_rect_clip"

.field static final LOG_TAG:Ljava/lang/String; = "HardwareRenderer"

.field public static final OVERDRAW_PROPERTY_SHOW:Ljava/lang/String; = "show"

.field static final PRINT_CONFIG_PROPERTY:Ljava/lang/String; = "debug.hwui.print_config"

.field static final PROFILE_MAXFRAMES_PROPERTY:Ljava/lang/String; = "debug.hwui.profile.maxframes"

.field public static final PROFILE_PROPERTY:Ljava/lang/String; = "debug.hwui.profile"

.field public static final PROFILE_PROPERTY_VISUALIZE_BARS:Ljava/lang/String; = "visual_bars"

.field static final RENDER_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.render_dirty_regions"

.field public static sRendererDisabled:Z

.field public static sSystemRendererDisabled:Z

.field public static sTrimForeground:Z


# instance fields
.field private mEnabled:Z

.field private mRequested:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 164
    sput-boolean v0, sRendererDisabled:Z

    .line 171
    sput-boolean v0, sSystemRendererDisabled:Z

    .line 188
    sput-boolean v0, sTrimForeground:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, mRequested:Z

    .line 347
    return-void
.end method

.method static create(Landroid/content/Context;Z)Landroid/view/HardwareRenderer;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "translucent"    # Z

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, create(Landroid/content/Context;ZZ)Landroid/view/HardwareRenderer;

    move-result-object v0

    return-object v0
.end method

.method static create(Landroid/content/Context;ZZ)Landroid/view/HardwareRenderer;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "translucent"    # Z
    .param p2, "demoted"    # Z

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "renderer":Landroid/view/HardwareRenderer;
    invoke-static {}, Landroid/view/DisplayListCanvas;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 467
    new-instance v0, Landroid/view/ThreadedRenderer;

    .end local v0    # "renderer":Landroid/view/HardwareRenderer;
    invoke-direct {v0, p0, p1, p2}, Landroid/view/ThreadedRenderer;-><init>(Landroid/content/Context;ZZ)V

    .line 469
    .restart local v0    # "renderer":Landroid/view/HardwareRenderer;
    :cond_c
    return-object v0
.end method

.method public static disable(Z)V
    .registers 2
    .param p0, "system"    # Z

    .prologue
    const/4 v0, 0x1

    .line 182
    sput-boolean v0, sRendererDisabled:Z

    .line 183
    if-eqz p0, :cond_7

    .line 184
    sput-boolean v0, sSystemRendererDisabled:Z

    .line 186
    :cond_7
    return-void
.end method

.method public static enableForegroundTrimming()V
    .registers 1

    .prologue
    .line 197
    const/4 v0, 0x1

    sput-boolean v0, sTrimForeground:Z

    .line 198
    return-void
.end method

.method public static isAvailable()Z
    .registers 1

    .prologue
    .line 208
    invoke-static {}, Landroid/view/DisplayListCanvas;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static setLibDir(Ljava/lang/String;)V
    .registers 1
    .param p0, "libDir"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-static {p0}, Landroid/view/ThreadedRenderer;->setupVulkanLayerPath(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .registers 3
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 314
    new-instance v0, Ljava/io/File;

    const-string v1, "com.android.opengl.shaders_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ThreadedRenderer;->setupShadersDiskCache(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method static trimMemory(I)V
    .registers 1
    .param p0, "level"    # I

    .prologue
    .line 482
    invoke-static {p0}, Landroid/view/ThreadedRenderer;->trimMemory(I)V

    .line 483
    return-void
.end method


# virtual methods
.method abstract buildLayer(Landroid/view/RenderNode;)V
.end method

.method abstract copyLayerInto(Landroid/view/HardwareLayer;Landroid/graphics/Bitmap;)Z
.end method

.method abstract createTextureLayer()Landroid/view/HardwareLayer;
.end method

.method abstract destroy()V
.end method

.method abstract destroyHardwareResources(Landroid/view/View;)V
.end method

.method abstract detachSurfaceTexture(J)V
.end method

.method abstract draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V
.end method

.method abstract dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
.end method

.method abstract fence()V
.end method

.method abstract getHeight()I
.end method

.method abstract getWidth()I
.end method

.method abstract initialize(Landroid/view/Surface;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method abstract initialize(Landroid/view/Surface;ZID)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p4, "surface"    # Landroid/view/Surface;
    .param p5, "surfaceInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p0}, isRequested()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 413
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 414
    invoke-virtual {p0, p4}, initialize(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 415
    invoke-virtual {p0, p1, p2, p3, p5}, setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    .line 416
    const/4 v0, 0x1

    .line 420
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method abstract invalidate(Landroid/view/Surface;)V
.end method

.method abstract invalidateRoot()V
.end method

.method isEnabled()Z
    .registers 2

    .prologue
    .line 491
    iget-boolean v0, p0, mEnabled:Z

    return v0
.end method

.method isRequested()Z
    .registers 2

    .prologue
    .line 510
    iget-boolean v0, p0, mRequested:Z

    return v0
.end method

.method abstract loadSystemProperties()Z
.end method

.method abstract notifyFramePending()V
.end method

.method abstract onLayerDestroyed(Landroid/view/HardwareLayer;)V
.end method

.method abstract pauseSurface(Landroid/view/Surface;)Z
.end method

.method abstract pushLayerUpdate(Landroid/view/HardwareLayer;)V
.end method

.method abstract registerAnimatingRenderNode(Landroid/view/RenderNode;)V
.end method

.method setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 500
    iput-boolean p1, p0, mEnabled:Z

    .line 501
    return-void
.end method

.method abstract setLightCenter(Landroid/view/View$AttachInfo;)V
.end method

.method abstract setName(Ljava/lang/String;)V
.end method

.method abstract setOpaque(Z)V
.end method

.method setRequested(Z)V
    .registers 2
    .param p1, "requested"    # Z

    .prologue
    .line 520
    iput-boolean p1, p0, mRequested:Z

    .line 521
    return-void
.end method

.method abstract setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V
.end method

.method abstract stopDrawing()V
.end method

.method abstract updateSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method
