.class Landroid/widget/MultiSelectPopupWindow$PositionListener;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field private final MAXIMUM_NUMBER_OF_LISTENERS:I

.field private mCanMove:[Z

.field private mNewRect:[I

.field private mNumberOfListeners:I

.field private mPositionHasChanged:Z

.field private mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

.field private mPositionX:I

.field private mPositionY:I

.field private mRect:[I

.field private mScrollHasChanged:Z

.field private mTempContentsViewCoords:[I

.field final mTempCoords:[I

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/MultiSelectPopupWindow;)V
    .registers 5

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 754
    iput-object p1, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput v2, p0, MAXIMUM_NUMBER_OF_LISTENERS:I

    .line 757
    new-array v0, v2, [Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    iput-object v0, p0, mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    .line 758
    new-array v0, v2, [Z

    iput-object v0, p0, mCanMove:[Z

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, mPositionHasChanged:Z

    .line 765
    new-array v0, v1, [I

    iput-object v0, p0, mRect:[I

    .line 766
    new-array v0, v1, [I

    iput-object v0, p0, mNewRect:[I

    .line 767
    new-array v0, v1, [I

    iput-object v0, p0, mTempCoords:[I

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, mTempContentsViewCoords:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/MultiSelectPopupWindow;
    .param p2, "x1"    # Landroid/widget/MultiSelectPopupWindow$1;

    .prologue
    .line 754
    invoke-direct {p0, p1}, <init>(Landroid/widget/MultiSelectPopupWindow;)V

    return-void
.end method

.method private updatePosition()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 852
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, mTempCoords:[I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 853
    iget-object v0, p0, mNewRect:[I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    aput v3, v0, v1

    .line 854
    iget-object v0, p0, mNewRect:[I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    aput v3, v0, v2

    .line 856
    iget-object v0, p0, mTempCoords:[I

    aget v0, v0, v1

    iget v3, p0, mPositionX:I

    if-ne v0, v3, :cond_47

    iget-object v0, p0, mTempCoords:[I

    aget v0, v0, v2

    iget v3, p0, mPositionY:I

    if-ne v0, v3, :cond_47

    iget-object v0, p0, mRect:[I

    aget v0, v0, v1

    iget-object v3, p0, mNewRect:[I

    aget v3, v3, v1

    if-ne v0, v3, :cond_47

    iget-object v0, p0, mRect:[I

    aget v0, v0, v2

    iget-object v3, p0, mNewRect:[I

    aget v3, v3, v2

    if-eq v0, v3, :cond_67

    :cond_47
    move v0, v2

    :goto_48
    iput-boolean v0, p0, mPositionHasChanged:Z

    .line 857
    iget-object v0, p0, mTempCoords:[I

    aget v0, v0, v1

    iput v0, p0, mPositionX:I

    .line 858
    iget-object v0, p0, mTempCoords:[I

    aget v0, v0, v2

    iput v0, p0, mPositionY:I

    .line 859
    iget-object v0, p0, mRect:[I

    iget-object v3, p0, mNewRect:[I

    aget v3, v3, v1

    aput v3, v0, v1

    .line 860
    iget-object v0, p0, mRect:[I

    iget-object v1, p0, mNewRect:[I

    aget v1, v1, v2

    aput v1, v0, v2

    .line 861
    return-void

    :cond_67
    move v0, v1

    .line 856
    goto :goto_48
.end method


# virtual methods
.method public addSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;Z)V
    .registers 8
    .param p1, "positionListener"    # Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    .param p2, "canMove"    # Z

    .prologue
    .line 771
    iget v4, p0, mNumberOfListeners:I

    if-nez v4, :cond_12

    .line 772
    invoke-direct {p0}, updatePosition()V

    .line 773
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 774
    .local v3, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 777
    .end local v3    # "vto":Landroid/view/ViewTreeObserver;
    :cond_12
    const/4 v0, -0x1

    .line 778
    .local v0, "emptySlotIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    const/4 v4, 0x3

    if-ge v1, v4, :cond_26

    .line 779
    iget-object v4, p0, mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aget-object v2, v4, v1

    .line 780
    .local v2, "listener":Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    if-ne v2, p1, :cond_1e

    .line 790
    .end local v2    # "listener":Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    :goto_1d
    return-void

    .line 782
    .restart local v2    # "listener":Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    :cond_1e
    if-gez v0, :cond_23

    if-nez v2, :cond_23

    .line 783
    move v0, v1

    .line 778
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 787
    .end local v2    # "listener":Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    :cond_26
    iget-object v4, p0, mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aput-object p1, v4, v0

    .line 788
    iget-object v4, p0, mCanMove:[Z

    aput-boolean p2, v4, v0

    .line 789
    iget v4, p0, mNumberOfListeners:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mNumberOfListeners:I

    goto :goto_1d
.end method

.method public getPositionX()I
    .registers 2

    .prologue
    .line 808
    iget v0, p0, mPositionX:I

    return v0
.end method

.method public getPositionY()I
    .registers 2

    .prologue
    .line 812
    iget v0, p0, mPositionY:I

    return v0
.end method

.method public onPreDraw()Z
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 817
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_14

    .line 818
    const/4 v0, 0x0

    .local v0, "i":I
    if-ge v0, v8, :cond_11

    .line 819
    iget-object v2, p0, mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 822
    :cond_11
    iput v7, p0, mNumberOfListeners:I

    .line 848
    .end local v0    # "i":I
    :goto_13
    return v6

    .line 826
    :cond_14
    invoke-direct {p0}, updatePosition()V

    .line 828
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 829
    iput-boolean v6, p0, mScrollHasChanged:Z

    .line 830
    iget-object v2, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v2}, Landroid/widget/MultiSelectPopupWindow;->initMultiSelectControllerPosition()V

    .line 833
    :cond_28
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->checkValidMultiSelectionForPreDraw()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 834
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->clearMultiSelection()Z

    goto :goto_13

    .line 838
    :cond_3a
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3b
    if-ge v0, v8, :cond_5f

    .line 839
    iget-boolean v2, p0, mPositionHasChanged:Z

    if-nez v2, :cond_4b

    iget-boolean v2, p0, mScrollHasChanged:Z

    if-nez v2, :cond_4b

    iget-object v2, p0, mCanMove:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_5c

    .line 840
    :cond_4b
    iget-object v2, p0, mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aget-object v1, v2, v0

    .line 841
    .local v1, "positionListener":Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    if-eqz v1, :cond_5c

    .line 842
    iget v2, p0, mPositionX:I

    iget v3, p0, mPositionY:I

    iget-boolean v4, p0, mPositionHasChanged:Z

    iget-boolean v5, p0, mScrollHasChanged:Z

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;->updatePosition(IIZZ)V

    .line 838
    .end local v1    # "positionListener":Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 847
    :cond_5f
    iput-boolean v7, p0, mScrollHasChanged:Z

    goto :goto_13
.end method

.method public onScrollChanged()V
    .registers 2

    .prologue
    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, mScrollHasChanged:Z

    .line 865
    return-void
.end method

.method public removeSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V
    .registers 6
    .param p1, "positionListener"    # Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    .prologue
    .line 793
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_15

    .line 794
    iget-object v2, p0, mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_25

    .line 795
    iget-object v2, p0, mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 796
    iget v2, p0, mNumberOfListeners:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mNumberOfListeners:I

    .line 801
    :cond_15
    iget v2, p0, mNumberOfListeners:I

    if-nez v2, :cond_24

    .line 802
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 803
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 805
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_24
    return-void

    .line 793
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
