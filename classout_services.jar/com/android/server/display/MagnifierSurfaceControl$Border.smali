.class Lcom/android/server/display/MagnifierSurfaceControl$Border;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Border"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Magnifier.Border"


# instance fields
.field private final DEBUG:Z

.field private fingerMagnifierState:I

.field private mBorderFxSession:Landroid/view/SurfaceSession;

.field final mBorderLock:Ljava/lang/Object;

.field private mBorderSurface:Landroid/view/Surface;

.field private mBorderSurfaceControl:Landroid/view/SurfaceControl;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableClose:Landroid/graphics/drawable/Drawable;

.field private mDrawableCloseMarginRight:I

.field private mDrawableCloseMarginTop:I

.field private mDrawableCloseSize:I

.field private mDrawableHandlerSize:I

.field private mDrawableScreenChange:Landroid/graphics/drawable/Drawable;

.field private mDrawableScreenChangeMarginRight:I

.field private mDrawableScreenChangeMarginTop:I

.field private mDrawableScreenChangeSize:I

.field private mPadding:Landroid/graphics/Rect;

.field private mShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layerStack"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-boolean v3, p0, DEBUG:Z

    .line 455
    iput-boolean v8, p0, mShowing:Z

    .line 459
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mPadding:Landroid/graphics/Rect;

    .line 460
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mBorderLock:Ljava/lang/Object;

    .line 472
    iput v8, p0, fingerMagnifierState:I

    .line 475
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, mBorderSurface:Landroid/view/Surface;

    .line 476
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, mBorderFxSession:Landroid/view/SurfaceSession;

    .line 477
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 479
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mDrawableCloseMarginTop:I

    .line 480
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mDrawableCloseMarginRight:I

    .line 481
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mDrawableCloseSize:I

    .line 482
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mDrawableHandlerSize:I

    .line 485
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, fingerMagnifierState:I

    .line 488
    if-lt p3, v3, :cond_6f

    if-ge p4, v3, :cond_9d

    .line 489
    :cond_6f
    :try_start_6f
    const-string v0, "Magnifier.Border"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    if-ge p3, v3, :cond_9a

    const/4 p3, 0x1

    .line 491
    :cond_9a
    if-ge p4, v3, :cond_9d

    const/4 p4, 0x1

    .line 493
    :cond_9d
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, mBorderFxSession:Landroid/view/SurfaceSession;

    const-string v2, "OverlayMagnifierBorder"

    iget v3, p0, mDrawableHandlerSize:I

    div-int/lit8 v3, v3, 0x2

    add-int v4, p4, v3

    const/4 v5, -0x2

    const v6, -0x7ffffffc

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, mBorderSurfaceControl:Landroid/view/SurfaceControl;

    .line 496
    iget-object v0, p0, mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 497
    iget-object v0, p0, mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 498
    iget-object v0, p0, mBorderSurface:Landroid/view/Surface;

    iget-object v1, p0, mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 499
    iget-object v0, p0, mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x1e847f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_ce
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_6f .. :try_end_ce} :catch_116
    .catchall {:try_start_6f .. :try_end_ce} :catchall_11e

    .line 503
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 507
    :goto_d1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108056f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 508
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 509
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8, v8, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 511
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mDrawableClose:Landroid/graphics/drawable/Drawable;

    .line 512
    iget-object v0, p0, mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 513
    iget-object v0, p0, mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget v1, p0, mDrawableCloseSize:I

    iget v2, p0, mDrawableCloseMarginRight:I

    add-int/2addr v1, v2

    sub-int v1, p3, v1

    iget v2, p0, mDrawableCloseMarginTop:I

    iget v3, p0, mDrawableCloseMarginRight:I

    sub-int v3, p3, v3

    iget v4, p0, mDrawableCloseMarginTop:I

    iget v5, p0, mDrawableCloseSize:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 528
    return-void

    .line 500
    :catch_116
    move-exception v7

    .line 501
    .local v7, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_117
    invoke-virtual {v7}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V
    :try_end_11a
    .catchall {:try_start_117 .. :try_end_11a} :catchall_11e

    .line 503
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_d1

    .end local v7    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_11e
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .prologue
    .line 603
    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v1, p0, mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 606
    :try_start_b
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_28

    .line 608
    :try_start_e
    iget-object v0, p0, mBorderSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, mBorderSurface:Landroid/view/Surface;

    .line 610
    iget-object v0, p0, mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, mBorderSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_23

    .line 613
    :try_start_1e
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 615
    monitor-exit v1

    .line 616
    return-void

    .line 613
    :catchall_23
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 615
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, mPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hide()V
    .registers 4

    .prologue
    .line 587
    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v1, p0, mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 590
    const/4 v0, 0x0

    :try_start_c
    iput-boolean v0, p0, mShowing:Z

    .line 591
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_26

    .line 593
    :try_start_11
    iget-object v0, p0, mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 594
    iget-object v0, p0, mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_21

    .line 596
    :try_start_1c
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 598
    monitor-exit v1

    .line 599
    return-void

    .line 596
    :catchall_21
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 598
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_26

    throw v0
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .registers 6
    .param p1, "pt"    # Landroid/graphics/Point;

    .prologue
    .line 535
    iget-object v1, p0, mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 536
    :try_start_3
    iget-object v0, p0, mBorderSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 537
    monitor-exit v1

    .line 538
    return-void

    .line 537
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public setSize(II)V
    .registers 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 542
    const-string v0, "Magnifier.Border"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSize :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v1, p0, mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    :try_start_27
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_63

    .line 547
    :try_start_2a
    iget-object v0, p0, mBorderSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, mDrawableHandlerSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 548
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 549
    iget-object v0, p0, mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget v2, p0, mDrawableCloseSize:I

    iget v3, p0, mDrawableCloseMarginRight:I

    add-int/2addr v2, v3

    sub-int v2, p1, v2

    iget v3, p0, mDrawableCloseMarginTop:I

    iget v4, p0, mDrawableCloseMarginRight:I

    sub-int v4, p1, v4

    iget v5, p0, mDrawableCloseMarginTop:I

    iget v6, p0, mDrawableCloseSize:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_52
    .catchall {:try_start_2a .. :try_end_52} :catchall_5e

    .line 552
    :try_start_52
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 554
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_63

    .line 555
    iget-boolean v0, p0, mShowing:Z

    if-eqz v0, :cond_5d

    .line 556
    invoke-virtual {p0}, show()V

    .line 557
    :cond_5d
    return-void

    .line 552
    :catchall_5e
    move-exception v0

    :try_start_5f
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 554
    :catchall_63
    move-exception v0

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_63

    throw v0
.end method

.method public show()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 561
    const-string v1, "Magnifier.Border"

    const-string/jumbo v2, "show"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v2, p0, mBorderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 564
    const/4 v1, 0x1

    :try_start_d
    iput-boolean v1, p0, mShowing:Z

    .line 565
    iget-object v1, p0, mBorderSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 566
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v1, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 567
    iget v1, p0, fingerMagnifierState:I

    if-ne v1, v4, :cond_24

    .line 568
    iget-object v1, p0, mDrawableClose:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 574
    :cond_24
    iget-object v1, p0, mBorderSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 575
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_42

    .line 577
    :try_start_2c
    iget-object v1, p0, mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 578
    iget-object v1, p0, mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_3d

    .line 580
    :try_start_38
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 582
    monitor-exit v2

    .line 583
    return-void

    .line 580
    :catchall_3d
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1

    .line 582
    .end local v0    # "c":Landroid/graphics/Canvas;
    :catchall_42
    move-exception v1

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_42

    throw v1
.end method
