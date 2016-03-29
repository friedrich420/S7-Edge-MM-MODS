.class public Lcom/android/systemui/qs/QSTile$AnimationIcon;
.super Lcom/android/systemui/qs/QSTile$ResourceIcon;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimationIcon"
.end annotation


# instance fields
.field private mAllowAnimation:Z

.field private mEndState:I

.field private mStartState:I

.field final synthetic this$0:Lcom/android/systemui/qs/QSTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile;I)V
    .locals 1
    .param p2, "resId"    # I

    .prologue
    .line 479
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->this$0:Lcom/android/systemui/qs/QSTile;

    .line 480
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;-><init>(ILcom/android/systemui/qs/QSTile$1;)V

    .line 481
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile;III)V
    .locals 1
    .param p2, "resId"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 471
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->this$0:Lcom/android/systemui/qs/QSTile;

    .line 472
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;-><init>(ILcom/android/systemui/qs/QSTile$1;)V

    .line 474
    iput p3, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mStartState:I

    .line 475
    iput p4, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mEndState:I

    .line 476
    return-void
.end method

.method private setIconTintColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 527
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->this$0:Lcom/android/systemui/qs/QSTile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;

    move/from16 v26, v0

    if-nez v26, :cond_1

    .line 569
    :cond_0
    return-void

    .line 529
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->this$0:Lcom/android/systemui/qs/QSTile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/systemui/qs/QSTile$MultiState;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    move/from16 v25, v0

    .line 530
    .local v25, "value":I
    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 532
    :cond_2
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->this$0:Lcom/android/systemui/qs/QSTile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .local v13, "res":Landroid/content/res/Resources;
    move-object/from16 v2, p2

    .line 535
    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 536
    .local v2, "d":Landroid/graphics/drawable/AnimationDrawable;
    const v26, 0x7f0a0062

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 537
    .local v12, "onTint":I
    const v26, 0x7f0a0063

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 539
    .local v11, "offTint":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mStartState:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    move/from16 v18, v11

    .line 540
    .local v18, "startTint":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mEndState:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    move v7, v11

    .line 542
    .local v7, "endTint":I
    :goto_1
    shr-int/lit8 v26, v18, 0x18

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mStartState:I

    move/from16 v26, v0

    const/16 v28, 0x3

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    const v26, 0x7f0c0262

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v26

    :goto_2
    mul-float v14, v27, v26

    .line 543
    .local v14, "startA":F
    shr-int/lit8 v26, v18, 0x10

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v17, v0

    .line 544
    .local v17, "startR":F
    shr-int/lit8 v26, v18, 0x8

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v16, v0

    .line 545
    .local v16, "startG":F
    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v15, v0

    .line 547
    .local v15, "startB":F
    shr-int/lit8 v26, v7, 0x18

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mEndState:I

    move/from16 v26, v0

    const/16 v28, 0x3

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    const v26, 0x7f0c0262

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v26

    :goto_3
    mul-float v3, v27, v26

    .line 548
    .local v3, "endA":F
    shr-int/lit8 v26, v7, 0x10

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v6, v0

    .line 549
    .local v6, "endR":F
    shr-int/lit8 v26, v7, 0x8

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v5, v0

    .line 550
    .local v5, "endG":F
    and-int/lit16 v0, v7, 0xff

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v4, v0

    .line 552
    .local v4, "endB":F
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v10

    .line 553
    .local v10, "numFrame":I
    add-int/lit8 v23, v10, -0x1

    .line 554
    .local v23, "steps":I
    sub-float v26, v3, v14

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v19, v26, v27

    .line 555
    .local v19, "stepA":F
    sub-float v26, v6, v17

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v22, v26, v27

    .line 556
    .local v22, "stepR":F
    sub-float v26, v5, v16

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v21, v26, v27

    .line 557
    .local v21, "stepG":F
    sub-float v26, v4, v15

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v20, v26, v27

    .line 560
    .local v20, "stepB":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    if-ge v9, v10, :cond_0

    .line 561
    invoke-virtual {v2, v9}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 562
    .local v8, "frame":Landroid/graphics/drawable/Drawable;
    int-to-float v0, v9

    move/from16 v26, v0

    mul-float v26, v26, v22

    add-float v26, v26, v17

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v26

    shl-int/lit8 v26, v26, 0x10

    int-to-float v0, v9

    move/from16 v27, v0

    mul-float v27, v27, v21

    add-float v27, v27, v16

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v27

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    int-to-float v0, v9

    move/from16 v27, v0

    mul-float v27, v27, v20

    add-float v27, v27, v15

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v27

    or-int v26, v26, v27

    const v27, 0xffffff

    and-int v24, v26, v27

    .line 563
    .local v24, "tintColor":I
    const/high16 v26, -0x1000000

    or-int v24, v24, v26

    .line 564
    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 566
    int-to-float v0, v9

    move/from16 v26, v0

    mul-float v26, v26, v19

    add-float v26, v26, v14

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 560
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .end local v3    # "endA":F
    .end local v4    # "endB":F
    .end local v5    # "endG":F
    .end local v6    # "endR":F
    .end local v7    # "endTint":I
    .end local v8    # "frame":Landroid/graphics/drawable/Drawable;
    .end local v9    # "i":I
    .end local v10    # "numFrame":I
    .end local v14    # "startA":F
    .end local v15    # "startB":F
    .end local v16    # "startG":F
    .end local v17    # "startR":F
    .end local v18    # "startTint":I
    .end local v19    # "stepA":F
    .end local v20    # "stepB":F
    .end local v21    # "stepG":F
    .end local v22    # "stepR":F
    .end local v23    # "steps":I
    .end local v24    # "tintColor":I
    :cond_3
    move/from16 v18, v12

    .line 539
    goto/16 :goto_0

    .restart local v18    # "startTint":I
    :cond_4
    move v7, v12

    .line 540
    goto/16 :goto_1

    .line 542
    .restart local v7    # "endTint":I
    :cond_5
    const/high16 v26, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 547
    .restart local v14    # "startA":F
    .restart local v15    # "startB":F
    .restart local v16    # "startG":F
    .restart local v17    # "startR":F
    :cond_6
    const/high16 v26, 0x3f800000    # 1.0f

    goto/16 :goto_3
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 490
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    iget v2, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mResId:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 494
    .local v0, "d":Landroid/graphics/drawable/Animatable;
    instance-of v2, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 495
    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setIconTintColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 498
    :cond_0
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 499
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    if-eqz v2, :cond_2

    .line 500
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    .line 509
    :cond_1
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .end local v0    # "d":Landroid/graphics/drawable/Animatable;
    :goto_0
    return-object v0

    .line 502
    .restart local v0    # "d":Landroid/graphics/drawable/Animatable;
    :cond_2
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 504
    instance-of v2, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 505
    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 506
    .local v1, "lastFrame":I
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Animatable;
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setAllowAnimation(Z)V
    .locals 0
    .param p1, "allowAnimation"    # Z

    .prologue
    .line 484
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    .line 485
    return-void
.end method
