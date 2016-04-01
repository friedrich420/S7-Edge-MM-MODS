.class Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .registers 3

    .prologue
    .line 2457
    iput-object p1, p0, this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2466
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempRect:Landroid/graphics/Rect;

    .line 2468
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, mTempArray:[I

    .line 2470
    const/high16 v0, -0x80000000

    iput v0, p0, mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 14
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 2813
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 2814
    .local v3, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v5, Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2815
    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/NumberPicker;->access$6900(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2816
    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2818
    invoke-direct {p0}, hasVirtualDecrementButton()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 2819
    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2821
    :cond_2d
    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2822
    invoke-direct {p0}, hasVirtualIncrementButton()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2823
    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2826
    :cond_3e
    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2827
    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2828
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2830
    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iget v0, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 2833
    .local v0, "applicationScale":F
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    .line 2834
    .local v1, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2835
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 2836
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2838
    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->isVisibleToUser()Z
    invoke-static {v5}, Landroid/widget/NumberPicker;->access$7000(Landroid/widget/NumberPicker;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2840
    move-object v2, v1

    .line 2841
    .local v2, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v4, p0, mTempArray:[I

    .line 2842
    .local v4, "locationOnScreen":[I
    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v4}, Landroid/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2843
    const/4 v5, 0x0

    aget v5, v4, v5

    aget v6, v4, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2844
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 2845
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2847
    iget v5, p0, mAccessibilityFocusedView:I

    if-eq v5, v8, :cond_98

    .line 2848
    const/16 v5, 0x40

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2850
    :cond_98
    iget v5, p0, mAccessibilityFocusedView:I

    if-ne v5, v8, :cond_a1

    .line 2851
    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2853
    :cond_a1
    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_df

    .line 2854
    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_bf

    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    iget-object v6, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v6

    if-ge v5, v6, :cond_c4

    .line 2855
    :cond_bf
    const/16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2857
    :cond_c4
    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_da

    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    iget-object v6, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v6

    if-le v5, v6, :cond_df

    .line 2858
    :cond_da
    const/16 v5, 0x2000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2862
    :cond_df
    return-object v3
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 13
    .param p1, "virtualViewId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    const/4 v5, 0x1

    .line 2779
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 2780
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v4, Landroid/widget/Button;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2781
    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$6700(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2782
    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2783
    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2784
    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2785
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2786
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2787
    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2788
    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    .line 2789
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2790
    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z
    invoke-static {v4, v0}, Landroid/widget/NumberPicker;->access$6800(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2791
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2792
    move-object v1, v0

    .line 2793
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, mTempArray:[I

    .line 2794
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v3}, Landroid/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2795
    const/4 v4, 0x0

    aget v4, v3, v4

    aget v5, v3, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2796
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2798
    iget v4, p0, mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_64

    .line 2799
    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2801
    :cond_64
    iget v4, p0, mAccessibilityFocusedView:I

    if-ne v4, p1, :cond_6d

    .line 2802
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2804
    :cond_6d
    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 2805
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2808
    :cond_7a
    return-object v2
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v5, 0x2

    .line 2757
    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 2758
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2759
    iget v4, p0, mAccessibilityFocusedView:I

    if-eq v4, v5, :cond_19

    .line 2760
    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2762
    :cond_19
    iget v4, p0, mAccessibilityFocusedView:I

    if-ne v4, v5, :cond_22

    .line 2763
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2765
    :cond_22
    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    .line 2766
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2767
    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z
    invoke-static {v4, v0}, Landroid/widget/NumberPicker;->access$6600(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2768
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2769
    move-object v1, v0

    .line 2770
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, mTempArray:[I

    .line 2771
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v3}, Landroid/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2772
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2773
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2774
    return-object v2
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .registers 8
    .param p1, "searchedLowerCase"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "outResult":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v3, 0x2

    .line 2723
    packed-switch p2, :pswitch_data_94

    .line 2753
    :cond_4
    :goto_4
    return-void

    .line 2725
    :pswitch_5
    invoke-direct {p0}, getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v1

    .line 2726
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2728
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2732
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_26
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2733
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 2735
    invoke-virtual {p0, v3}, createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2738
    :cond_4c
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2739
    .local v0, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2741
    invoke-virtual {p0, v3}, createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2746
    .end local v0    # "contentDesc":Ljava/lang/CharSequence;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :pswitch_72
    invoke-direct {p0}, getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v1

    .line 2747
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2749
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2723
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_72
        :pswitch_26
        :pswitch_5
    .end packed-switch
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2874
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mValue:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$7100(Landroid/widget/NumberPicker;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 2875
    .local v0, "value":I
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$7200(Landroid/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2876
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I
    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->access$7300(Landroid/widget/NumberPicker;I)I

    move-result v0

    .line 2878
    :cond_16
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mMinValue:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$7400(Landroid/widget/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_3e

    .line 2879
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1000(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->access$7500(Landroid/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    .line 2882
    :goto_2c
    return-object v1

    .line 2879
    :cond_2d
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1000(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mMinValue:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$7400(Landroid/widget/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_2c

    .line 2882
    :cond_3e
    const/4 v1, 0x0

    goto :goto_2c
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2886
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mValue:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$7100(Landroid/widget/NumberPicker;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 2887
    .local v0, "value":I
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$7200(Landroid/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2888
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I
    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->access$7300(Landroid/widget/NumberPicker;I)I

    move-result v0

    .line 2890
    :cond_16
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mMaxValue:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1200(Landroid/widget/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_3e

    .line 2891
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1000(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->access$7500(Landroid/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    .line 2894
    :goto_2c
    return-object v1

    .line 2891
    :cond_2d
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1000(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mMinValue:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$7400(Landroid/widget/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_2c

    .line 2894
    :cond_3e
    const/4 v1, 0x0

    goto :goto_2c
.end method

.method private hasVirtualDecrementButton()Z
    .registers 3

    .prologue
    .line 2866
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private hasVirtualIncrementButton()Z
    .registers 3

    .prologue
    .line 2870
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .registers 7
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 2710
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$6400(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2711
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2712
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2713
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$6500(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2714
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2715
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2716
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2717
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2, v0}, Landroid/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2719
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_46
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .registers 5
    .param p1, "eventType"    # I

    .prologue
    .line 2699
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$6300(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2700
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2701
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2702
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2703
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2704
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2, v0}, Landroid/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2706
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_33
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10
    .param p1, "virtualViewId"    # I

    .prologue
    .line 2474
    packed-switch p1, :pswitch_data_fc

    .line 2494
    :pswitch_3
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_7
    return-object v0

    .line 2476
    :pswitch_8
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollX:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$3200(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollY:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$3300(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollX:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$3400(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$3500(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mLeft:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$3600(Landroid/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollY:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$3700(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$3800(Landroid/widget/NumberPicker;)I

    move-result v4

    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mTop:I
    invoke-static {v5}, Landroid/widget/NumberPicker;->access$3900(Landroid/widget/NumberPicker;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_7

    .line 2479
    :pswitch_41
    const/4 v1, 0x3

    invoke-direct {p0}, getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollX:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$4000(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollY:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$4100(Landroid/widget/NumberPicker;)I

    move-result v4

    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollX:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$4200(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v5}, Landroid/widget/NumberPicker;->access$4300(Landroid/widget/NumberPicker;)I

    move-result v5

    iget-object v6, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mLeft:I
    invoke-static {v6}, Landroid/widget/NumberPicker;->access$4400(Landroid/widget/NumberPicker;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$2100(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v6, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mSelectionDividerHeight:I
    invoke-static {v6}, Landroid/widget/NumberPicker;->access$4500(Landroid/widget/NumberPicker;)I

    move-result v6

    add-int/2addr v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_7

    .line 2484
    :pswitch_79
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollX:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$4600(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$2100(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mSelectionDividerHeight:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$4500(Landroid/widget/NumberPicker;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollX:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$4700(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$4800(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mLeft:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$4900(Landroid/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1600(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mSelectionDividerHeight:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$4500(Landroid/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_7

    .line 2489
    :pswitch_b3
    const/4 v1, 0x1

    invoke-direct {p0}, getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollX:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$5000(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1600(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mSelectionDividerHeight:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$4500(Landroid/widget/NumberPicker;)I

    move-result v4

    sub-int v4, v0, v4

    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollX:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$5100(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v5}, Landroid/widget/NumberPicker;->access$5200(Landroid/widget/NumberPicker;)I

    move-result v5

    iget-object v6, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mLeft:I
    invoke-static {v6}, Landroid/widget/NumberPicker;->access$5300(Landroid/widget/NumberPicker;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mScrollY:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$5400(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v6, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v6}, Landroid/widget/NumberPicker;->access$5500(Landroid/widget/NumberPicker;)I

    move-result v6

    iget-object v7, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mTop:I
    invoke-static {v7}, Landroid/widget/NumberPicker;->access$5600(Landroid/widget/NumberPicker;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_7

    .line 2474
    nop

    :pswitch_data_fc
    .packed-switch -0x1
        :pswitch_8
        :pswitch_3
        :pswitch_b3
        :pswitch_79
        :pswitch_41
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .param p1, "searched"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2500
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2523
    :goto_a
    return-object v0

    .line 2503
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2504
    .local v1, "searchedLowerCase":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2505
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    packed-switch p2, :pswitch_data_2e

    .line 2523
    :pswitch_17
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    .line 2507
    :pswitch_1c
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, v0}, findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2509
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2511
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_a

    .line 2518
    :pswitch_29
    invoke-direct {p0, v1, p2, v0}, findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_a

    .line 2505
    nop

    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_1c
        :pswitch_17
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 10
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/high16 v5, 0x10000

    const v4, 0x8000

    const/high16 v3, -0x80000000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2528
    packed-switch p1, :pswitch_data_1c4

    .line 2675
    :goto_c
    :pswitch_c
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    :cond_10
    :goto_10
    return v0

    .line 2530
    :pswitch_11
    sparse-switch p2, :sswitch_data_1d2

    goto :goto_c

    .line 2532
    :sswitch_15
    iget v2, p0, mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_10

    .line 2533
    iput p1, p0, mAccessibilityFocusedView:I

    .line 2534
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->requestAccessibilityFocus()Z

    move v0, v1

    .line 2535
    goto :goto_10

    .line 2539
    :sswitch_22
    iget v2, p0, mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_10

    .line 2540
    iput v3, p0, mAccessibilityFocusedView:I

    .line 2541
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->clearAccessibilityFocus()V

    move v0, v1

    .line 2542
    goto :goto_10

    .line 2547
    :sswitch_2f
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_4d

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v2, v3, :cond_10

    .line 2549
    :cond_4d
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v2, v1}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    move v0, v1

    .line 2550
    goto :goto_10

    .line 2554
    :sswitch_54
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_72

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v3

    if-le v2, v3, :cond_10

    .line 2556
    :cond_72
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v2, v0}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    move v0, v1

    .line 2557
    goto :goto_10

    .line 2563
    :pswitch_79
    sparse-switch p2, :sswitch_data_1e4

    .line 2609
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_10

    .line 2565
    :sswitch_87
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_10

    .line 2566
    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    goto/16 :goto_10

    .line 2570
    :sswitch_a7
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2571
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    move v0, v1

    .line 2572
    goto/16 :goto_10

    .line 2577
    :sswitch_c7
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2578
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->performClick()Z

    move v0, v1

    .line 2579
    goto/16 :goto_10

    .line 2584
    :sswitch_d7
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2585
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->performLongClick()Z

    move v0, v1

    .line 2586
    goto/16 :goto_10

    .line 2591
    :sswitch_e7
    iget v2, p0, mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_10

    .line 2592
    iput p1, p0, mAccessibilityFocusedView:I

    .line 2593
    invoke-virtual {p0, p1, v4}, sendAccessibilityEventForVirtualView(II)V

    .line 2595
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->invalidate()V

    move v0, v1

    .line 2596
    goto/16 :goto_10

    .line 2600
    :sswitch_fc
    iget v2, p0, mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_10

    .line 2601
    iput v3, p0, mAccessibilityFocusedView:I

    .line 2602
    invoke-virtual {p0, p1, v5}, sendAccessibilityEventForVirtualView(II)V

    .line 2604
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->invalidate()V

    move v0, v1

    .line 2605
    goto/16 :goto_10

    .line 2614
    :pswitch_111
    sparse-switch p2, :sswitch_data_1fe

    goto/16 :goto_10

    .line 2616
    :sswitch_116
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2617
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v2, v1}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    .line 2618
    invoke-virtual {p0, p1, v1}, sendAccessibilityEventForVirtualView(II)V

    move v0, v1

    .line 2620
    goto/16 :goto_10

    .line 2624
    :sswitch_129
    iget v2, p0, mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_10

    .line 2625
    iput p1, p0, mAccessibilityFocusedView:I

    .line 2626
    invoke-virtual {p0, p1, v4}, sendAccessibilityEventForVirtualView(II)V

    .line 2628
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    iget-object v3, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1600(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$5700(Landroid/widget/NumberPicker;)I

    move-result v4

    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v5}, Landroid/widget/NumberPicker;->access$5800(Landroid/widget/NumberPicker;)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2629
    goto/16 :goto_10

    .line 2633
    :sswitch_14c
    iget v2, p0, mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_10

    .line 2634
    iput v3, p0, mAccessibilityFocusedView:I

    .line 2635
    invoke-virtual {p0, p1, v5}, sendAccessibilityEventForVirtualView(II)V

    .line 2637
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    iget-object v3, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1600(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$5900(Landroid/widget/NumberPicker;)I

    move-result v4

    iget-object v5, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v5}, Landroid/widget/NumberPicker;->access$6000(Landroid/widget/NumberPicker;)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2638
    goto/16 :goto_10

    .line 2644
    :pswitch_16f
    sparse-switch p2, :sswitch_data_20c

    goto/16 :goto_10

    .line 2646
    :sswitch_174
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2647
    if-ne p1, v1, :cond_17f

    move v0, v1

    .line 2648
    .local v0, "increment":Z
    :cond_17f
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v2, v0}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    .line 2649
    invoke-virtual {p0, p1, v1}, sendAccessibilityEventForVirtualView(II)V

    move v0, v1

    .line 2651
    goto/16 :goto_10

    .line 2655
    .end local v0    # "increment":Z
    :sswitch_18a
    iget v2, p0, mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_10

    .line 2656
    iput p1, p0, mAccessibilityFocusedView:I

    .line 2657
    invoke-virtual {p0, p1, v4}, sendAccessibilityEventForVirtualView(II)V

    .line 2659
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    iget-object v3, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$6100(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$2100(Landroid/widget/NumberPicker;)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2660
    goto/16 :goto_10

    .line 2664
    :sswitch_1a7
    iget v2, p0, mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_10

    .line 2665
    iput v3, p0, mAccessibilityFocusedView:I

    .line 2666
    invoke-virtual {p0, p1, v5}, sendAccessibilityEventForVirtualView(II)V

    .line 2668
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    iget-object v3, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$6200(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$2100(Landroid/widget/NumberPicker;)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2669
    goto/16 :goto_10

    .line 2528
    :pswitch_data_1c4
    .packed-switch -0x1
        :pswitch_11
        :pswitch_c
        :pswitch_111
        :pswitch_79
        :pswitch_16f
    .end packed-switch

    .line 2530
    :sswitch_data_1d2
    .sparse-switch
        0x40 -> :sswitch_15
        0x80 -> :sswitch_22
        0x1000 -> :sswitch_2f
        0x2000 -> :sswitch_54
    .end sparse-switch

    .line 2563
    :sswitch_data_1e4
    .sparse-switch
        0x1 -> :sswitch_87
        0x2 -> :sswitch_a7
        0x10 -> :sswitch_c7
        0x20 -> :sswitch_d7
        0x40 -> :sswitch_e7
        0x80 -> :sswitch_fc
    .end sparse-switch

    .line 2614
    :sswitch_data_1fe
    .sparse-switch
        0x10 -> :sswitch_116
        0x40 -> :sswitch_129
        0x80 -> :sswitch_14c
    .end sparse-switch

    .line 2644
    :sswitch_data_20c
    .sparse-switch
        0x10 -> :sswitch_174
        0x40 -> :sswitch_18a
        0x80 -> :sswitch_1a7
    .end sparse-switch
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .registers 4
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 2679
    packed-switch p1, :pswitch_data_24

    .line 2696
    :cond_3
    :goto_3
    return-void

    .line 2681
    :pswitch_4
    invoke-direct {p0}, hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2682
    invoke-direct {p0}, getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_3

    .line 2687
    :pswitch_12
    invoke-direct {p0, p2}, sendAccessibilityEventForVirtualText(I)V

    goto :goto_3

    .line 2690
    :pswitch_16
    invoke-direct {p0}, hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2691
    invoke-direct {p0}, getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_3

    .line 2679
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_16
        :pswitch_12
        :pswitch_4
    .end packed-switch
.end method
