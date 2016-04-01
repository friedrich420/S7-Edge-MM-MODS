.class public Lcom/android/server/wm/DimLayer;
.super Ljava/lang/Object;
.source "DimLayer.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DimLayer"


# instance fields
.field mAlpha:F

.field mBounds:Landroid/graphics/Rect;

.field mDimSurface:Landroid/view/SurfaceControl;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDuration:J

.field mEffectType:I

.field mLastBounds:Landroid/graphics/Rect;

.field mLayer:I

.field mService:Lcom/android/server/wm/WindowManagerService;

.field private mShowing:Z

.field final mStack:Lcom/android/server/wm/TaskStack;

.field mStartAlpha:F

.field mStartTime:J

.field mStringNameCache:Ljava/lang/String;

.field mTargetAlpha:F

.field mType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V
    .registers 14
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v1, p0, mAlpha:F

    .line 51
    iput v0, p0, mLayer:I

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mBounds:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mLastBounds:Landroid/graphics/Rect;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, mShowing:Z

    .line 63
    iput v1, p0, mStartAlpha:F

    .line 66
    iput v1, p0, mTargetAlpha:F

    .line 79
    const/high16 v0, 0x20000

    iput v0, p0, mEffectType:I

    .line 86
    iput-object p1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    .line 87
    iput-object p4, p0, mType:Ljava/lang/String;

    .line 89
    iput-object p2, p0, mStack:Lcom/android/server/wm/TaskStack;

    .line 90
    iput-object p3, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 91
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    .line 93
    .local v7, "displayId":I
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 95
    :try_start_33
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v0, :cond_6b

    .line 96
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DimSurface("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    iget v6, p0, mEffectType:I

    or-int/lit8 v6, v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, mDimSurface:Landroid/view/SurfaceControl;

    .line 108
    :goto_62
    iget-object v0, p0, mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl;->setLayerStack(I)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_67} :catch_97
    .catchall {:try_start_33 .. :try_end_67} :catchall_a3

    .line 112
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 114
    :goto_6a
    return-void

    .line 101
    :cond_6b
    :try_start_6b
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DimLayer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    iget v6, p0, mEffectType:I

    or-int/lit8 v6, v6, 0x4

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, mDimSurface:Landroid/view/SurfaceControl;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_96} :catch_97
    .catchall {:try_start_6b .. :try_end_96} :catchall_a3

    goto :goto_62

    .line 109
    :catch_97
    move-exception v8

    .line 110
    .local v8, "e":Ljava/lang/Exception;
    :try_start_98
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9f
    .catchall {:try_start_98 .. :try_end_9f} :catchall_a3

    .line 112
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_6a

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_a3
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private adjustBounds()V
    .registers 11

    .prologue
    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    .line 170
    const/4 v3, 0x0

    .line 172
    .local v3, "spec":Landroid/view/MagnificationSpec;
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v3

    .line 176
    iget-object v6, p0, mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_21

    if-eqz v3, :cond_49

    iget v6, v3, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_49

    .line 177
    :cond_21
    iget-object v6, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 178
    .local v1, "dw":I
    iget-object v6, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 179
    .local v0, "dh":I
    iget-object v6, p0, mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v4, v6

    .line 180
    .local v4, "xPos":F
    iget-object v6, p0, mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v5, v6

    .line 193
    .local v5, "yPos":F
    :goto_37
    iget-object v6, p0, mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 194
    iget-object v6, p0, mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v1, v0}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 196
    iget-object v6, p0, mLastBounds:Landroid/graphics/Rect;

    iget-object v7, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 197
    return-void

    .line 183
    .end local v0    # "dh":I
    .end local v1    # "dw":I
    .end local v4    # "xPos":F
    .end local v5    # "yPos":F
    :cond_49
    iget-object v6, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 186
    .local v2, "info":Landroid/view/DisplayInfo;
    iget v6, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 187
    .restart local v1    # "dw":I
    iget v6, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-double v6, v6

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 189
    .restart local v0    # "dh":I
    mul-int/lit8 v6, v1, -0x1

    div-int/lit8 v6, v6, 0x6

    int-to-float v4, v6

    .line 190
    .restart local v4    # "xPos":F
    mul-int/lit8 v6, v0, -0x1

    div-int/lit8 v6, v6, 0x6

    int-to-float v5, v6

    .restart local v5    # "yPos":F
    goto :goto_37
.end method

.method private durationEndsEarlier(J)Z
    .registers 10
    .param p1, "duration"    # J

    .prologue
    .line 224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, mStartTime:J

    iget-wide v4, p0, mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private setAlpha(F)V
    .registers 5
    .param p1, "alpha"    # F

    .prologue
    const/4 v2, 0x0

    .line 142
    iget v1, p0, mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1e

    .line 145
    :try_start_7
    iget-object v1, p0, mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 146
    cmpl-float v1, p1, v2

    if-nez v1, :cond_1f

    iget-boolean v1, p0, mShowing:Z

    if-eqz v1, :cond_1f

    .line 148
    iget-object v1, p0, mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    .line 149
    const/4 v1, 0x0

    iput-boolean v1, p0, mShowing:Z
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1c} :catch_30

    .line 158
    :cond_1c
    :goto_1c
    iput p1, p0, mAlpha:F

    .line 160
    :cond_1e
    return-void

    .line 150
    :cond_1f
    cmpl-float v1, p1, v2

    if-lez v1, :cond_1c

    :try_start_23
    iget-boolean v1, p0, mShowing:Z

    if-nez v1, :cond_1c

    .line 152
    iget-object v1, p0, mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, mShowing:Z
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_2f} :catch_30

    goto :goto_1c

    .line 155
    :catch_30
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DimLayer"

    const-string v2, "Failure setting alpha immediately"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method


# virtual methods
.method destroySurface()V
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    .line 336
    iget-object v0, p0, mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, mDimSurface:Landroid/view/SurfaceControl;

    .line 339
    :cond_c
    iget-object v0, p0, mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 340
    const/4 v0, -0x1

    iput v0, p0, mLayer:I

    .line 341
    return-void
.end method

.method getLayer()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, mLayer:I

    return v0
.end method

.method getTargetAlpha()F
    .registers 2

    .prologue
    .line 127
    iget v0, p0, mTargetAlpha:F

    return v0
.end method

.method hide()V
    .registers 3

    .prologue
    .line 280
    iget-boolean v0, p0, mShowing:Z

    if-eqz v0, :cond_9

    .line 282
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, hide(J)V

    .line 284
    :cond_9
    return-void
.end method

.method hide(J)V
    .registers 6
    .param p1, "duration"    # J

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-boolean v0, p0, mShowing:Z

    if-eqz v0, :cond_1e

    iget v0, p0, mTargetAlpha:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_11

    invoke-direct {p0, p1, p2}, durationEndsEarlier(J)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 295
    :cond_11
    iget v0, p0, mEffectType:I

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_19

    .line 296
    const-wide/16 p1, 0x0

    .line 298
    :cond_19
    iget v0, p0, mLayer:I

    invoke-virtual {p0, v0, v2, p1, p2}, show(IFJ)V

    .line 300
    :cond_1e
    return-void
.end method

.method isAnimating()Z
    .registers 3

    .prologue
    .line 123
    iget v0, p0, mTargetAlpha:F

    iget v1, p0, mAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isDimming()Z
    .registers 3

    .prologue
    .line 118
    iget v0, p0, mTargetAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 344
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDimSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 345
    const-string v0, " mLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 346
    const-string v0, " mAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 347
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    const-string v0, " mBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Last animation: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    const-string v0, " mDuration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, mDuration:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 351
    const-string v0, " mStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, mStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 352
    const-string v0, " curTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 353
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mStartAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mStartAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 354
    const-string v0, " mTargetAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 355
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 206
    iget-object v1, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 207
    invoke-virtual {p0}, isDimming()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 209
    :try_start_13
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 210
    invoke-direct {p0}, adjustBounds()V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_19} :catch_1d
    .catchall {:try_start_13 .. :try_end_19} :catchall_29

    .line 214
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 217
    :cond_1c
    :goto_1c
    return-void

    .line 211
    :catch_1d
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1e
    const-string v1, "DimLayer"

    const-string v2, "Failure setting size"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_29

    .line 214
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_1c

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_29
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1
.end method

.method public setEffectType(I)V
    .registers 9
    .param p1, "effectType"    # I

    .prologue
    const/4 v5, -0x1

    const/16 v3, 0x10

    .line 367
    iget v0, p0, mEffectType:I

    if-eq p1, v0, :cond_5e

    .line 368
    iput p1, p0, mEffectType:I

    .line 369
    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_5f

    const-string v2, "DimSurface"

    .line 370
    .local v2, "surfaceName":Ljava/lang/String;
    :goto_f
    invoke-virtual {p0}, hide()V

    .line 371
    invoke-virtual {p0}, destroySurface()V

    .line 372
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v0, :cond_62

    .line 373
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    or-int/lit8 v6, p1, 0x4

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, mDimSurface:Landroid/view/SurfaceControl;

    .line 386
    :goto_27
    iget-object v0, p0, mDimSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 387
    iget v0, p0, mLayer:I

    iget v1, p0, mTargetAlpha:F

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v0, v1, v4, v5}, show(IFJ)V

    .line 388
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_5e

    .line 389
    const-string v0, "DimLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEffectType("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v2    # "surfaceName":Ljava/lang/String;
    :cond_5e
    return-void

    .line 369
    :cond_5f
    const-string v2, "BlurSurface"

    goto :goto_f

    .line 378
    .restart local v2    # "surfaceName":Ljava/lang/String;
    :cond_62
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    or-int/lit8 v6, p1, 0x4

    move v4, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, mDimSurface:Landroid/view/SurfaceControl;

    goto :goto_27
.end method

.method setLayer(I)V
    .registers 3
    .param p1, "layer"    # I

    .prologue
    .line 131
    iget v0, p0, mLayer:I

    if-eq v0, p1, :cond_b

    .line 132
    iput p1, p0, mLayer:I

    .line 133
    iget-object v0, p0, mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 135
    :cond_b
    return-void
.end method

.method show()V
    .registers 5

    .prologue
    .line 230
    invoke-virtual {p0}, isAnimating()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 232
    iget v0, p0, mLayer:I

    iget v1, p0, mTargetAlpha:F

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, show(IFJ)V

    .line 234
    :cond_f
    return-void
.end method

.method show(IFJ)V
    .registers 12
    .param p1, "layer"    # I
    .param p2, "alpha"    # F
    .param p3, "duration"    # J

    .prologue
    .line 247
    iget-object v1, p0, mDimSurface:Landroid/view/SurfaceControl;

    if-nez v1, :cond_12

    .line 248
    const-string v1, "DimLayer"

    const-string/jumbo v4, "show: no Surface"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v1, 0x0

    iput v1, p0, mAlpha:F

    iput v1, p0, mTargetAlpha:F

    .line 275
    :goto_11
    return-void

    .line 254
    :cond_12
    iget-object v1, p0, mLastBounds:Landroid/graphics/Rect;

    iget-object v4, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 255
    invoke-direct {p0}, adjustBounds()V

    .line 257
    :cond_1f
    invoke-virtual {p0, p1}, setLayer(I)V

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 260
    .local v2, "curTime":J
    invoke-virtual {p0}, isAnimating()Z

    move-result v0

    .line 261
    .local v0, "animating":Z
    if-eqz v0, :cond_38

    iget v1, p0, mTargetAlpha:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_40

    invoke-direct {p0, p3, p4}, durationEndsEarlier(J)Z

    move-result v1

    if-nez v1, :cond_40

    :cond_38
    if-nez v0, :cond_49

    iget v1, p0, mAlpha:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_49

    .line 263
    :cond_40
    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-gtz v1, :cond_4c

    .line 265
    invoke-direct {p0, p2}, setAlpha(F)V

    .line 274
    :cond_49
    :goto_49
    iput p2, p0, mTargetAlpha:F

    goto :goto_11

    .line 268
    :cond_4c
    iget v1, p0, mAlpha:F

    iput v1, p0, mStartAlpha:F

    .line 269
    iput-wide v2, p0, mStartTime:J

    .line 270
    iput-wide p3, p0, mDuration:J

    goto :goto_49
.end method

.method stepAnimation()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 309
    iget-object v4, p0, mDimSurface:Landroid/view/SurfaceControl;

    if-nez v4, :cond_13

    .line 310
    const-string v4, "DimLayer"

    const-string/jumbo v5, "stepAnimation: null Surface"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iput v8, p0, mAlpha:F

    iput v8, p0, mTargetAlpha:F

    .line 313
    const/4 v4, 0x0

    .line 329
    :goto_12
    return v4

    .line 316
    :cond_13
    invoke-virtual {p0}, isAnimating()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 318
    .local v2, "curTime":J
    iget v4, p0, mTargetAlpha:F

    iget v5, p0, mStartAlpha:F

    sub-float v1, v4, v5

    .line 319
    .local v1, "alphaDelta":F
    iget v4, p0, mStartAlpha:F

    iget-wide v6, p0, mStartTime:J

    sub-long v6, v2, v6

    long-to-float v5, v6

    mul-float/2addr v5, v1

    iget-wide v6, p0, mDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    add-float v0, v4, v5

    .line 320
    .local v0, "alpha":F
    cmpl-float v4, v1, v8

    if-lez v4, :cond_3b

    iget v4, p0, mTargetAlpha:F

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_45

    :cond_3b
    cmpg-float v4, v1, v8

    if-gez v4, :cond_47

    iget v4, p0, mTargetAlpha:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_47

    .line 323
    :cond_45
    iget v0, p0, mTargetAlpha:F

    .line 326
    :cond_47
    invoke-direct {p0, v0}, setAlpha(F)V

    .line 329
    .end local v0    # "alpha":F
    .end local v1    # "alphaDelta":F
    .end local v2    # "curTime":J
    :cond_4a
    invoke-virtual {p0}, isAnimating()Z

    move-result v4

    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 360
    iget-object v0, p0, mStringNameCache:Ljava/lang/String;

    if-nez v0, :cond_35

    iget-object v0, p0, mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_35

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / stack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mStringNameCache:Ljava/lang/String;

    .line 363
    :cond_35
    iget-object v0, p0, mStringNameCache:Ljava/lang/String;

    return-object v0
.end method
