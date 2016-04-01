.class Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mForDropDownView:Z

.field private mForList:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Landroid/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)V
    .registers 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Landroid/app/ActionBar$Tab;
    .param p4, "forList"    # Z
    .param p5, "forDropDownView"    # Z

    .prologue
    .line 460
    iput-object p1, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 461
    const/4 v0, 0x0

    const v1, 0x10102f3

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 462
    iput-object p3, p0, mTab:Landroid/app/ActionBar$Tab;

    .line 464
    iput-boolean p4, p0, mForList:Z

    .line 465
    iput-boolean p5, p0, mForDropDownView:Z

    .line 468
    if-eqz p4, :cond_17

    .line 469
    const v0, 0x800013

    invoke-virtual {p0, v0}, setGravity(I)V

    .line 472
    :cond_17
    invoke-virtual {p0}, update()V

    .line 473
    return-void
.end method


# virtual methods
.method public bindTab(Landroid/app/ActionBar$Tab;)V
    .registers 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 476
    iput-object p1, p0, mTab:Landroid/app/ActionBar$Tab;

    .line 477
    invoke-virtual {p0}, update()V

    .line 478
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 492
    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTab()Landroid/app/ActionBar$Tab;
    .registers 2

    .prologue
    .line 619
    iget-object v0, p0, mTab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 600
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 601
    .local v3, "screenPos":[I
    invoke-virtual {p0, v3}, getLocationOnScreen([I)V

    .line 603
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    .line 604
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, getWidth()I

    move-result v5

    .line 605
    .local v5, "width":I
    invoke-virtual {p0}, getHeight()I

    move-result v2

    .line 606
    .local v2, "height":I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 608
    .local v4, "screenWidth":I
    iget-object v6, p0, mTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v1, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 611
    .local v0, "cheatSheet":Landroid/widget/Toast;
    const/16 v6, 0x31

    aget v7, v3, v7

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v0, v6, v7, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 614
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 615
    const/4 v6, 0x1

    return v6
.end method

.method public onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 497
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 500
    iget-object v0, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-lez v0, :cond_20

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-le v0, v1, :cond_20

    .line 501
    iget-object v0, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 505
    :cond_20
    iget-object v0, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mMinTabWidth:I
    invoke-static {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$100(Lcom/android/internal/widget/ScrollingTabContainerView;)I

    move-result v0

    if-lez v0, :cond_3f

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mMinTabWidth:I
    invoke-static {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$100(Lcom/android/internal/widget/ScrollingTabContainerView;)I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 506
    iget-object v0, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 510
    :cond_3f
    return-void
.end method

.method public setSelected(Z)V
    .registers 4
    .param p1, "selected"    # Z

    .prologue
    .line 482
    invoke-virtual {p0}, isSelected()Z

    move-result v1

    if-eq v1, p1, :cond_13

    const/4 v0, 0x1

    .line 483
    .local v0, "changed":Z
    :goto_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 484
    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    .line 485
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, sendAccessibilityEvent(I)V

    .line 487
    :cond_12
    return-void

    .line 482
    .end local v0    # "changed":Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public update()V
    .registers 16

    .prologue
    const/16 v14, 0x10

    const/16 v11, 0x8

    const/4 v13, -0x2

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 513
    iget-object v6, p0, mTab:Landroid/app/ActionBar$Tab;

    .line 514
    .local v6, "tab":Landroid/app/ActionBar$Tab;
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 515
    .local v0, "custom":Landroid/view/View;
    if-eqz v0, :cond_39

    .line 516
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 517
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1f

    .line 518
    if-eqz v1, :cond_1c

    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 519
    :cond_1c
    invoke-virtual {p0, v0}, addView(Landroid/view/View;)V

    .line 521
    :cond_1f
    iput-object v0, p0, mCustomView:Landroid/view/View;

    .line 522
    iget-object v9, p0, mTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_2a

    iget-object v9, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    :cond_2a
    iget-object v9, p0, mIconView:Landroid/widget/ImageView;

    if-eqz v9, :cond_38

    .line 524
    iget-object v9, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    iget-object v9, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 597
    :cond_38
    :goto_38
    return-void

    .line 528
    :cond_39
    iget-object v10, p0, mCustomView:Landroid/view/View;

    if-eqz v10, :cond_44

    .line 529
    iget-object v10, p0, mCustomView:Landroid/view/View;

    invoke-virtual {p0, v10}, removeView(Landroid/view/View;)V

    .line 530
    iput-object v12, p0, mCustomView:Landroid/view/View;

    .line 533
    :cond_44
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 534
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 536
    .local v7, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_ec

    .line 537
    iget-object v10, p0, mIconView:Landroid/widget/ImageView;

    if-nez v10, :cond_6a

    .line 538
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 539
    .local v4, "iconView":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 541
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 542
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    invoke-virtual {p0, v4, v9}, addView(Landroid/view/View;I)V

    .line 544
    iput-object v4, p0, mIconView:Landroid/widget/ImageView;

    .line 546
    .end local v4    # "iconView":Landroid/widget/ImageView;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6a
    iget-object v10, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 547
    iget-object v10, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    :cond_74
    :goto_74
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_fc

    const/4 v2, 0x1

    .line 554
    .local v2, "hasText":Z
    :goto_7b
    if-eqz v2, :cond_10c

    .line 555
    iget-object v10, p0, mTextView:Landroid/widget/TextView;

    if-nez v10, :cond_c4

    .line 556
    const/4 v8, 0x0

    .line 558
    .local v8, "textView":Landroid/widget/TextView;
    iget-object v10, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v10}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$200(Lcom/android/internal/widget/ScrollingTabContainerView;)Z

    move-result v10

    if-eqz v10, :cond_ff

    iget-boolean v10, p0, mForList:Z

    if-eqz v10, :cond_ff

    iget-boolean v10, p0, mForDropDownView:Z

    if-eqz v10, :cond_ff

    .line 559
    new-instance v8, Landroid/widget/TextView;

    .end local v8    # "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 560
    .restart local v8    # "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mDropDownResId:I
    invoke-static {v11}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$300(Lcom/android/internal/widget/ScrollingTabContainerView;)I

    move-result v11

    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 568
    :goto_a8
    iget-object v10, p0, this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v10}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$200(Lcom/android/internal/widget/ScrollingTabContainerView;)Z

    move-result v10

    if-nez v10, :cond_b5

    .line 569
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 572
    :cond_b5
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 574
    .restart local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 575
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    invoke-virtual {p0, v8}, addView(Landroid/view/View;)V

    .line 577
    iput-object v8, p0, mTextView:Landroid/widget/TextView;

    .line 579
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_c4
    iget-object v10, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v10, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    :cond_ce
    :goto_ce
    iget-object v10, p0, mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_db

    .line 587
    iget-object v10, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 590
    :cond_db
    if-nez v2, :cond_11b

    invoke-virtual {v6}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_11b

    .line 591
    invoke-virtual {p0, p0}, setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_38

    .line 548
    .end local v2    # "hasText":Z
    :cond_ec
    iget-object v10, p0, mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_74

    .line 549
    iget-object v10, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 550
    iget-object v10, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_74

    :cond_fc
    move v2, v9

    .line 553
    goto/16 :goto_7b

    .line 562
    .restart local v2    # "hasText":Z
    .restart local v8    # "textView":Landroid/widget/TextView;
    :cond_ff
    new-instance v8, Landroid/widget/TextView;

    .end local v8    # "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x10102f5

    invoke-direct {v8, v10, v12, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v8    # "textView":Landroid/widget/TextView;
    goto :goto_a8

    .line 581
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_10c
    iget-object v10, p0, mTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_ce

    .line 582
    iget-object v10, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    iget-object v10, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ce

    .line 593
    :cond_11b
    invoke-virtual {p0, v12}, setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 594
    invoke-virtual {p0, v9}, setLongClickable(Z)V

    goto/16 :goto_38
.end method
