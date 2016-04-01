.class Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;
.super Ljava/lang/Object;
.source "MultiWindowTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenFreezeSurface"
.end annotation


# static fields
.field static final BACKGROUND_LAYER:I = 0x2af7

.field static final FREEZE_LAYER:I = 0x1e8481


# instance fields
.field mBGSurface:Landroid/view/SurfaceControl;

.field mRect:Landroid/graphics/Rect;

.field mRotation:I

.field mSurface:Landroid/view/SurfaceControl;

.field mTmpFloats:[F

.field mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;IIIIIIZII)V
    .registers 23
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "layerStack"    # I
    .param p7, "rotation"    # I
    .param p8, "needBG"    # Z
    .param p9, "minLayer"    # I
    .param p10, "maxLayer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 637
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, <init>(Landroid/view/SurfaceSession;IIIIIIZIII)V

    .line 638
    return-void
.end method

.method constructor <init>(Landroid/view/SurfaceSession;IIIIIIZIII)V
    .registers 29
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "layerStack"    # I
    .param p7, "rotation"    # I
    .param p8, "needBG"    # Z
    .param p9, "minLayer"    # I
    .param p10, "maxLayer"    # I
    .param p11, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 642
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 626
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, mRect:Landroid/graphics/Rect;

    .line 627
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mSurface:Landroid/view/SurfaceControl;

    .line 628
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mBGSurface:Landroid/view/SurfaceControl;

    .line 630
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, mTmpMatrix:Landroid/graphics/Matrix;

    .line 631
    const/16 v4, 0x9

    new-array v4, v4, [F

    move-object/from16 v0, p0

    iput-object v4, v0, mTmpFloats:[F

    .line 644
    sub-int v7, p4, p2

    .line 645
    .local v7, "w":I
    sub-int v8, p5, p3

    .line 647
    .local v8, "h":I
    move-object/from16 v0, p0

    iget-object v4, v0, mRect:Landroid/graphics/Rect;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 648
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mRotation:I

    .line 650
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v4, :cond_131

    .line 651
    new-instance v4, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScreenFreezeSurface("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, -0x1

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, mSurface:Landroid/view/SurfaceControl;

    .line 659
    :goto_78
    if-eqz p8, :cond_b2

    .line 660
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v4, :cond_142

    .line 661
    new-instance v4, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScreenFreezeBGSurface("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, -0x1

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, mBGSurface:Landroid/view/SurfaceControl;

    .line 671
    :cond_b2
    :goto_b2
    move-object/from16 v0, p0

    iget-object v4, v0, mSurface:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_f3

    .line 672
    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    .line 673
    .local v10, "sur":Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-object v4, v0, mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 678
    invoke-static/range {p11 .. p11}, Lcom/android/server/wm/MultiWindowTransition;->convertDisplayIdToBuiltInDisplayId(I)I

    move-result v4

    invoke-static {v4}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-static/range {v9 .. v15}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    .line 680
    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    .line 682
    move-object/from16 v0, p0

    iget-object v4, v0, mSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 683
    move-object/from16 v0, p0

    iget-object v4, v0, mSurface:Landroid/view/SurfaceControl;

    const v5, 0x1e8481

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 685
    move-object/from16 v0, p0

    iget v4, v0, mRotation:I

    packed-switch v4, :pswitch_data_212

    .line 705
    .end local v10    # "sur":Landroid/view/Surface;
    :cond_f3
    :goto_f3
    move-object/from16 v0, p0

    iget-object v4, v0, mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_130

    .line 706
    new-instance v16, Landroid/view/Surface;

    invoke-direct/range {v16 .. v16}, Landroid/view/Surface;-><init>()V

    .line 707
    .local v16, "bgSur":Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-object v4, v0, mBGSurface:Landroid/view/SurfaceControl;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 711
    invoke-static/range {p11 .. p11}, Lcom/android/server/wm/MultiWindowTransition;->convertDisplayIdToBuiltInDisplayId(I)I

    move-result v4

    invoke-static {v4}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 713
    invoke-virtual/range {v16 .. v16}, Landroid/view/Surface;->destroy()V

    .line 715
    move-object/from16 v0, p0

    iget-object v4, v0, mBGSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 716
    move-object/from16 v0, p0

    iget-object v4, v0, mBGSurface:Landroid/view/SurfaceControl;

    const/16 v5, 0x2af7

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 718
    move-object/from16 v0, p0

    iget v4, v0, mRotation:I

    packed-switch v4, :pswitch_data_21e

    .line 737
    .end local v16    # "bgSur":Landroid/view/Surface;
    :cond_130
    :goto_130
    return-void

    .line 655
    :cond_131
    new-instance v4, Landroid/view/SurfaceControl;

    const-string v6, "ScreenFreezeSurface"

    const/4 v9, 0x4

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, mSurface:Landroid/view/SurfaceControl;

    goto/16 :goto_78

    .line 665
    :cond_142
    new-instance v4, Landroid/view/SurfaceControl;

    const-string v6, "ScreenFreezeBGSurface"

    const/4 v9, 0x4

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, mBGSurface:Landroid/view/SurfaceControl;

    goto/16 :goto_b2

    .line 687
    .restart local v10    # "sur":Landroid/view/Surface;
    :pswitch_153
    move-object/from16 v0, p0

    iget-object v4, v0, mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 688
    move-object/from16 v0, p0

    iget-object v4, v0, mSurface:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_f3

    .line 691
    :pswitch_16a
    move-object/from16 v0, p0

    iget-object v4, v0, mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    int-to-float v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 692
    move-object/from16 v0, p0

    iget-object v4, v0, mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_f3

    .line 695
    :pswitch_182
    move-object/from16 v0, p0

    iget-object v4, v0, mSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v7

    int-to-float v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 696
    move-object/from16 v0, p0

    iget-object v4, v0, mSurface:Landroid/view/SurfaceControl;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_f3

    .line 699
    :pswitch_19a
    move-object/from16 v0, p0

    iget-object v4, v0, mSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 700
    move-object/from16 v0, p0

    iget-object v4, v0, mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_f3

    .line 720
    .end local v10    # "sur":Landroid/view/Surface;
    .restart local v16    # "bgSur":Landroid/view/Surface;
    :pswitch_1b2
    move-object/from16 v0, p0

    iget-object v4, v0, mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 721
    move-object/from16 v0, p0

    iget-object v4, v0, mBGSurface:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_130

    .line 724
    :pswitch_1ca
    move-object/from16 v0, p0

    iget-object v4, v0, mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    int-to-float v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 725
    move-object/from16 v0, p0

    iget-object v4, v0, mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_130

    .line 728
    :pswitch_1e2
    move-object/from16 v0, p0

    iget-object v4, v0, mBGSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v7

    int-to-float v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 729
    move-object/from16 v0, p0

    iget-object v4, v0, mBGSurface:Landroid/view/SurfaceControl;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_130

    .line 732
    :pswitch_1fa
    move-object/from16 v0, p0

    iget-object v4, v0, mBGSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 733
    move-object/from16 v0, p0

    iget-object v4, v0, mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_130

    .line 685
    :pswitch_data_212
    .packed-switch 0x0
        :pswitch_153
        :pswitch_16a
        :pswitch_182
        :pswitch_19a
    .end packed-switch

    .line 718
    :pswitch_data_21e
    .packed-switch 0x0
        :pswitch_1b2
        :pswitch_1ca
        :pswitch_1e2
        :pswitch_1fa
    .end packed-switch
.end method


# virtual methods
.method hideBG()V
    .registers 2

    .prologue
    .line 797
    iget-object v0, p0, mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    .line 798
    iget-object v0, p0, mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 800
    :cond_9
    return-void
.end method

.method kill()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 785
    iget-object v0, p0, mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    .line 786
    iget-object v0, p0, mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 787
    iput-object v1, p0, mSurface:Landroid/view/SurfaceControl;

    .line 790
    :cond_c
    iget-object v0, p0, mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_17

    .line 791
    iget-object v0, p0, mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 792
    iput-object v1, p0, mBGSurface:Landroid/view/SurfaceControl;

    .line 794
    :cond_17
    return-void
.end method

.method setAnimationTransform(Landroid/view/animation/Transformation;)V
    .registers 12
    .param p1, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 740
    iget-object v4, p0, mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 741
    iget-object v4, p0, mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v4

    .line 742
    .local v1, "left":F
    iget-object v4, p0, mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v4

    .line 743
    .local v2, "top":F
    iget-object v4, p0, mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v3, v4

    .line 744
    .local v3, "width":F
    iget-object v4, p0, mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v0, v4

    .line 747
    .local v0, "height":F
    iget v4, p0, mRotation:I

    packed-switch v4, :pswitch_data_94

    .line 765
    :goto_26
    iget-object v4, p0, mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, mTmpFloats:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 766
    iget-object v4, p0, mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, mTmpFloats:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, mTmpFloats:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 768
    iget-object v4, p0, mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, mTmpFloats:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, mTmpFloats:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    iget-object v7, p0, mTmpFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, mTmpFloats:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 771
    iget-object v4, p0, mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 773
    return-void

    .line 749
    :pswitch_5f
    iget-object v4, p0, mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    .line 752
    :pswitch_65
    iget-object v4, p0, mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 753
    iget-object v4, p0, mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v2

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    .line 756
    :pswitch_74
    iget-object v4, p0, mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 757
    iget-object v4, p0, mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v1

    sub-float v6, v0, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    .line 760
    :pswitch_85
    iget-object v4, p0, mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 761
    iget-object v4, p0, mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v0, v1

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    .line 747
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_65
        :pswitch_74
        :pswitch_85
    .end packed-switch
.end method

.method setLayerForSurface(I)V
    .registers 3
    .param p1, "maxLayer"    # I

    .prologue
    .line 803
    iget-object v0, p0, mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    .line 804
    iget-object v0, p0, mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 806
    :cond_9
    return-void
.end method

.method show()V
    .registers 2

    .prologue
    .line 776
    iget-object v0, p0, mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    .line 777
    iget-object v0, p0, mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 779
    :cond_9
    iget-object v0, p0, mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_12

    .line 780
    iget-object v0, p0, mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 782
    :cond_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 810
    iget-object v0, p0, mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
