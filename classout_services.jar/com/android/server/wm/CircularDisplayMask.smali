.class Lcom/android/server/wm/CircularDisplayMask;
.super Ljava/lang/Object;
.source "CircularDisplayMask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircularDisplayMask"


# instance fields
.field private mDimensionsUnequal:Z

.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private mMaskThickness:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRotation:I

.field private mScreenOffset:I

.field private mScreenSize:Landroid/graphics/Point;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;III)V
    .registers 15
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "session"    # Landroid/view/SurfaceSession;
    .param p3, "zOrder"    # I
    .param p4, "screenOffset"    # I
    .param p5, "maskThickness"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v2, p0, mScreenOffset:I

    .line 45
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, mSurface:Landroid/view/Surface;

    .line 52
    iput-boolean v2, p0, mDimensionsUnequal:Z

    .line 57
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, mScreenSize:Landroid/graphics/Point;

    .line 58
    iget-object v1, p0, mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 59
    iget-object v1, p0, mScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-eq v1, v2, :cond_4a

    .line 60
    const-string v1, "CircularDisplayMask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen dimensions of displayId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "are not equal, circularMask will not be drawn."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-boolean v8, p0, mDimensionsUnequal:Z

    .line 65
    :cond_4a
    const/4 v7, 0x0

    .line 67
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_4b
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v1, :cond_99

    .line 68
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    const-string v2, "CircularDisplayMask"

    iget-object v1, p0, mScreenSize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, mScreenSize:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->y:I

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_61
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4b .. :try_end_61} :catch_ac

    .line 75
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :goto_61
    :try_start_61
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 76
    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 77
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 78
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 79
    iget-object v1, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_78
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_61 .. :try_end_78} :catch_af

    .line 82
    :goto_78
    iput-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    .line 83
    iput-boolean v8, p0, mDrawNeeded:Z

    .line 84
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, mPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v1, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v1, p0, mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 87
    iput p4, p0, mScreenOffset:I

    .line 88
    iput p5, p0, mMaskThickness:I

    .line 89
    return-void

    .line 72
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :cond_99
    :try_start_99
    new-instance v0, Landroid/view/SurfaceControl;

    const-string v2, "CircularDisplayMask"

    iget-object v1, p0, mScreenSize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, mScreenSize:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->y:I

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_ab
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_99 .. :try_end_ab} :catch_ac

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_61

    .line 80
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :catch_ac
    move-exception v1

    move-object v0, v7

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_78

    :catch_af
    move-exception v1

    goto :goto_78
.end method

.method private drawIfNeeded()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 92
    iget-boolean v3, p0, mDrawNeeded:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, mVisible:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, mDimensionsUnequal:Z

    if-eqz v3, :cond_f

    .line 129
    :cond_e
    :goto_e
    return-void

    .line 95
    :cond_f
    iput-boolean v6, p0, mDrawNeeded:Z

    .line 97
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, mScreenSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    .local v2, "dirty":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 100
    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_1f
    iget-object v3, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_24} :catch_65
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1f .. :try_end_24} :catch_63

    move-result-object v0

    .line 104
    :goto_25
    if-eqz v0, :cond_e

    .line 107
    iget v3, p0, mRotation:I

    packed-switch v3, :pswitch_data_68

    .line 123
    :goto_2c
    iget-object v3, p0, mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v3, 0x2

    .line 124
    .local v1, "circleRadius":I
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 127
    int-to-float v3, v1

    int-to-float v4, v1

    iget v5, p0, mMaskThickness:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    iget-object v6, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 128
    iget-object v3, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_e

    .line 111
    .end local v1    # "circleRadius":I
    :pswitch_49
    iget-object v3, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v5, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_2c

    .line 115
    :pswitch_4f
    iget-object v3, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, mScreenOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_2c

    .line 119
    :pswitch_59
    iget-object v3, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, mScreenOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_2c

    .line 102
    :catch_63
    move-exception v3

    goto :goto_25

    .line 101
    :catch_65
    move-exception v3

    goto :goto_25

    .line 107
    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_49
        :pswitch_49
        :pswitch_4f
        :pswitch_59
    .end packed-switch
.end method


# virtual methods
.method positionSurface(III)V
    .registers 5
    .param p1, "dw"    # I
    .param p2, "dh"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 147
    iget v0, p0, mLastDW:I

    if-ne v0, p1, :cond_d

    iget v0, p0, mLastDH:I

    if-ne v0, p2, :cond_d

    iget v0, p0, mRotation:I

    if-ne v0, p3, :cond_d

    .line 155
    :goto_c
    return-void

    .line 150
    :cond_d
    iput p1, p0, mLastDW:I

    .line 151
    iput p2, p0, mLastDH:I

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, mDrawNeeded:Z

    .line 153
    iput p3, p0, mRotation:I

    .line 154
    invoke-direct {p0}, drawIfNeeded()V

    goto :goto_c
.end method

.method public setVisibility(Z)V
    .registers 3
    .param p1, "on"    # Z

    .prologue
    .line 134
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 144
    :goto_4
    return-void

    .line 137
    :cond_5
    iput-boolean p1, p0, mVisible:Z

    .line 138
    invoke-direct {p0}, drawIfNeeded()V

    .line 139
    if-eqz p1, :cond_12

    .line 140
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_4

    .line 142
    :cond_12
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_4
.end method
