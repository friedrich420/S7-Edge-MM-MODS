.class Lcom/android/server/wm/EmulatorDisplayOverlay;
.super Ljava/lang/Object;
.source "EmulatorDisplayOverlay.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmulatorDisplayOverlay"


# instance fields
.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mRotation:I

.field private mScreenSize:Landroid/graphics/Point;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceSession;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "zOrder"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, mSurface:Landroid/view/Surface;

    .line 51
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, mScreenSize:Landroid/graphics/Point;

    .line 52
    iget-object v1, p0, mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 54
    const/4 v7, 0x0

    .line 56
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_17
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v1, :cond_53

    .line 57
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    const-string v2, "EmulatorDisplayOverlay"

    iget-object v1, p0, mScreenSize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, mScreenSize:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->y:I

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_2d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_17 .. :try_end_2d} :catch_66

    .line 64
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :goto_2d
    :try_start_2d
    invoke-virtual {p2}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 65
    invoke-virtual {v0, p4}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 67
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 68
    iget-object v1, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_44
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2d .. :try_end_44} :catch_69

    .line 71
    :goto_44
    iput-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, mDrawNeeded:Z

    .line 73
    const v1, 0x108031d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mOverlay:Landroid/graphics/drawable/Drawable;

    .line 75
    return-void

    .line 61
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :cond_53
    :try_start_53
    new-instance v0, Landroid/view/SurfaceControl;

    const-string v2, "EmulatorDisplayOverlay"

    iget-object v1, p0, mScreenSize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, mScreenSize:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->y:I

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_65
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_53 .. :try_end_65} :catch_66

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_2d

    .line 69
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :catch_66
    move-exception v1

    move-object v0, v7

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_44

    :catch_69
    move-exception v1

    goto :goto_44
.end method

.method private drawIfNeeded()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 78
    iget-boolean v3, p0, mDrawNeeded:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, mVisible:Z

    if-nez v3, :cond_b

    .line 100
    :cond_a
    :goto_a
    return-void

    .line 81
    :cond_b
    iput-boolean v5, p0, mDrawNeeded:Z

    .line 83
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, mScreenSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 84
    .local v1, "dirty":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 86
    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_1b
    iget-object v3, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_20} :catch_4b
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1b .. :try_end_20} :catch_49

    move-result-object v0

    .line 90
    :goto_21
    if-eqz v0, :cond_a

    .line 93
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 94
    iget-object v3, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v6, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 96
    iget-object v3, p0, mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, mScreenSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 97
    .local v2, "size":I
    iget-object v3, p0, mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5, v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    iget-object v3, p0, mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    iget-object v3, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_a

    .line 88
    .end local v2    # "size":I
    :catch_49
    move-exception v3

    goto :goto_21

    .line 87
    :catch_4b
    move-exception v3

    goto :goto_21
.end method


# virtual methods
.method positionSurface(III)V
    .registers 5
    .param p1, "dw"    # I
    .param p2, "dh"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 118
    iget v0, p0, mLastDW:I

    if-ne v0, p1, :cond_d

    iget v0, p0, mLastDH:I

    if-ne v0, p2, :cond_d

    iget v0, p0, mRotation:I

    if-ne v0, p3, :cond_d

    .line 126
    :goto_c
    return-void

    .line 121
    :cond_d
    iput p1, p0, mLastDW:I

    .line 122
    iput p2, p0, mLastDH:I

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, mDrawNeeded:Z

    .line 124
    iput p3, p0, mRotation:I

    .line 125
    invoke-direct {p0}, drawIfNeeded()V

    goto :goto_c
.end method

.method public setVisibility(Z)V
    .registers 3
    .param p1, "on"    # Z

    .prologue
    .line 105
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 115
    :goto_4
    return-void

    .line 108
    :cond_5
    iput-boolean p1, p0, mVisible:Z

    .line 109
    invoke-direct {p0}, drawIfNeeded()V

    .line 110
    if-eqz p1, :cond_12

    .line 111
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_4

    .line 113
    :cond_12
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_4
.end method
