.class final Lcom/android/server/power/ShutdownThread$1;
.super Landroid/app/Dialog;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->createMConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field buttonView:Landroid/view/View;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$description:I

.field final synthetic val$titleText:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/content/Context;II)V
    .registers 6
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I

    .prologue
    .line 442
    iput-object p3, p0, val$ctx:Landroid/content/Context;

    iput p4, p0, val$titleText:I

    iput p5, p0, val$description:I

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownThread$1;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread$1;

    .prologue
    .line 442
    invoke-direct {p0}, animateDismiss()V

    return-void
.end method

.method private animateDismiss()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x12c

    .line 613
    iget-object v0, p0, buttonView:Landroid/view/View;

    if-eqz v0, :cond_26

    .line 614
    iget-object v0, p0, buttonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 615
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/power/ShutdownThread$1$3;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$1$3;-><init>(Lcom/android/server/power/ShutdownThread$1;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 624
    :goto_25
    return-void

    .line 622
    :cond_26
    const-string v0, "ShutdownThread"

    const-string v1, "ButtonView is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 602
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    .line 603
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 609
    :cond_d
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_11
    return v0

    .line 605
    :pswitch_12
    invoke-direct {p0}, animateDismiss()V

    .line 606
    const/4 v0, 0x1

    goto :goto_11

    .line 603
    nop

    :pswitch_data_18
    .packed-switch 0x3
        :pswitch_12
    .end packed-switch
.end method

.method public init()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 445
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 446
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x80180

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 449
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 450
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 451
    const/16 v1, 0x7d9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 452
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 453
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 454
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 28
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 459
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 461
    new-instance v20, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 462
    .local v20, "rootView":Landroid/widget/RelativeLayout;
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 465
    .local v19, "rootParam":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    new-instance v4, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 468
    .local v4, "bgView":Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 470
    .local v5, "bgViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    const/high16 v23, -0x1000000

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 472
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 473
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v23

    const v24, 0x3f333333    # 0.7f

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v23

    const-wide/16 v24, 0x12c

    invoke-virtual/range {v23 .. v25}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 475
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 476
    .local v21, "wrapperRoot":Landroid/widget/LinearLayout;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    invoke-direct/range {v22 .. v24}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 479
    .local v22, "wrapperRootParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 480
    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    const/high16 v23, 0x41200000    # 10.0f

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 482
    const/16 v23, 0x11

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 484
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 485
    .local v7, "buttonWrapper":Landroid/widget/LinearLayout;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 486
    const/16 v23, 0x11

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 487
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/high16 v25, 0x41100000    # 9.0f

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v8, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 489
    .local v8, "buttonWrapperParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    const/4 v11, 0x2

    .line 493
    .local v11, "coverType":I
    new-instance v9, Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p0

    iget-object v0, v0, val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 494
    .local v9, "coverManager":Lcom/samsung/android/cover/CoverManager;
    if-eqz v9, :cond_f6

    .line 495
    # getter for: Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$000()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 496
    invoke-virtual {v9}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v10

    .line 497
    .local v10, "coverState":Lcom/samsung/android/cover/CoverState;
    # invokes: Lcom/android/server/power/ShutdownThread;->checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z
    invoke-static {v10}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/samsung/android/cover/CoverState;)Z

    move-result v23

    # setter for: Lcom/android/server/power/ShutdownThread;->coverOpen:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/power/ShutdownThread;->access$102(Z)Z

    .line 498
    if-eqz v10, :cond_f6

    .line 499
    invoke-virtual {v10}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v11

    .line 502
    .end local v10    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    .line 503
    .local v16, "inflater":Landroid/view/LayoutInflater;
    # getter for: Lcom/android/server/power/ShutdownThread;->coverOpen:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Z

    move-result v23

    if-nez v23, :cond_10c

    const/16 v23, 0x8

    move/from16 v0, v23

    if-ne v11, v0, :cond_278

    .line 504
    :cond_10c
    const v23, 0x109006b

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, buttonView:Landroid/view/View;

    .line 508
    :goto_121
    move-object/from16 v0, p0

    iget-object v0, v0, buttonView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 509
    .local v6, "buttonParam":Landroid/view/ViewGroup$LayoutParams;
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    .local v18, "newButtonParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v23, 0x11

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, buttonView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, buttonView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x1020006

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 514
    .local v15, "icon":Landroid/widget/ImageView;
    # getter for: Lcom/android/server/power/ShutdownThread;->mReboot:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Z

    move-result v23

    if-eqz v23, :cond_28f

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x1080960

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 520
    :goto_16e
    move-object/from16 v0, p0

    iget-object v0, v0, buttonView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x102000b

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 521
    .local v17, "messageView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, val$titleText:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    # getter for: Lcom/android/server/power/ShutdownThread;->coverOpen:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Z

    move-result v23

    if-nez v23, :cond_1a0

    const/16 v23, 0x8

    move/from16 v0, v23

    if-ne v11, v0, :cond_2a3

    .line 527
    :cond_1a0
    :goto_1a0
    move-object/from16 v0, p0

    iget-object v0, v0, buttonView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x10203ad

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 528
    .local v12, "descriptionView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, val$description:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 530
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 531
    # getter for: Lcom/android/server/power/ShutdownThread;->coverOpen:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Z

    move-result v23

    if-nez v23, :cond_1de

    const/16 v23, 0x8

    move/from16 v0, v23

    if-ne v11, v0, :cond_2b2

    .line 535
    :cond_1de
    :goto_1de
    const v23, 0x3f553f7d    # 0.833f

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 536
    const v23, 0x3f553f7d    # 0.833f

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setScaleY(F)V

    .line 538
    new-instance v13, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 539
    .local v13, "fadeoutView":Landroid/widget/RelativeLayout;
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 541
    .local v14, "fadeoutViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 543
    const/high16 v23, -0x1000000

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, buttonView:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/server/power/ShutdownThread$1$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/server/power/ShutdownThread$1$1;-><init>(Lcom/android/server/power/ShutdownThread$1;Landroid/widget/RelativeLayout;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    new-instance v23, Lcom/android/server/power/ShutdownThread$1$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$1$2;-><init>(Lcom/android/server/power/ShutdownThread$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, buttonView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x3fa66666    # 1.3f

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setScaleX(F)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, buttonView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x3fa66666    # 1.3f

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setScaleY(F)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, buttonView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 575
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 577
    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 578
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 579
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, setContentView(Landroid/view/View;)V

    .line 580
    return-void

    .line 506
    .end local v6    # "buttonParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v12    # "descriptionView":Landroid/widget/TextView;
    .end local v13    # "fadeoutView":Landroid/widget/RelativeLayout;
    .end local v14    # "fadeoutViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "icon":Landroid/widget/ImageView;
    .end local v17    # "messageView":Landroid/widget/TextView;
    .end local v18    # "newButtonParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_278
    const v23, 0x109006d

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, buttonView:Landroid/view/View;

    goto/16 :goto_121

    .line 517
    .restart local v6    # "buttonParam":Landroid/view/ViewGroup$LayoutParams;
    .restart local v15    # "icon":Landroid/widget/ImageView;
    .restart local v18    # "newButtonParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_28f
    move-object/from16 v0, p0

    iget-object v0, v0, val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x108095e

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_16e

    .line 524
    .restart local v17    # "messageView":Landroid/widget/TextView;
    :cond_2a3
    const-string v23, "#FF000000"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1a0

    .line 533
    .restart local v12    # "descriptionView":Landroid/widget/TextView;
    :cond_2b2
    const-string v23, "#FF000000"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1de
.end method

.method public onStart()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 584
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 585
    const-string v1, "ShutdownThread"

    const-string/jumbo v2, "onStart"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 587
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 588
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 589
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 590
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 591
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 592
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 594
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 596
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 597
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 598
    return-void
.end method
