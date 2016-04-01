.class final Landroid/view/FocusFinder$SequentialFocusComparator;
.super Ljava/lang/Object;
.source "FocusFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SequentialFocusComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFirstRect:Landroid/graphics/Rect;

.field private mIsLayoutRtl:Z

.field private mRoot:Landroid/view/ViewGroup;

.field private final mSecondRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mFirstRect:Landroid/graphics/Rect;

    .line 608
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mSecondRect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/FocusFinder$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/view/FocusFinder$1;

    .prologue
    .line 606
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method private getRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 657
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 658
    iget-object v0, p0, mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 659
    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .registers 8
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 625
    if-ne p1, p2, :cond_7

    move v1, v2

    .line 652
    :cond_6
    :goto_6
    return v1

    .line 629
    :cond_7
    iget-object v3, p0, mFirstRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v3}, getRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 630
    iget-object v3, p0, mSecondRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v3}, getRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 632
    iget-object v3, p0, mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_6

    .line 634
    iget-object v3, p0, mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_27

    move v1, v0

    .line 635
    goto :goto_6

    .line 636
    :cond_27
    iget-object v3, p0, mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_39

    .line 637
    iget-boolean v2, p0, mIsLayoutRtl:Z

    if-eqz v2, :cond_37

    :goto_35
    move v1, v0

    goto :goto_6

    :cond_37
    move v0, v1

    goto :goto_35

    .line 638
    :cond_39
    iget-object v3, p0, mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-le v3, v4, :cond_49

    .line 639
    iget-boolean v2, p0, mIsLayoutRtl:Z

    if-nez v2, :cond_6

    move v1, v0

    goto :goto_6

    .line 640
    :cond_49
    iget-object v3, p0, mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v4, :cond_6

    .line 642
    iget-object v3, p0, mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_5f

    move v1, v0

    .line 643
    goto :goto_6

    .line 644
    :cond_5f
    iget-object v3, p0, mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-ge v3, v4, :cond_71

    .line 645
    iget-boolean v2, p0, mIsLayoutRtl:Z

    if-eqz v2, :cond_6f

    :goto_6d
    move v1, v0

    goto :goto_6

    :cond_6f
    move v0, v1

    goto :goto_6d

    .line 646
    :cond_71
    iget-object v3, p0, mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_81

    .line 647
    iget-boolean v2, p0, mIsLayoutRtl:Z

    if-nez v2, :cond_6

    move v1, v0

    goto :goto_6

    :cond_81
    move v1, v2

    .line 652
    goto :goto_6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 606
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/view/View;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, mRoot:Landroid/view/ViewGroup;

    .line 614
    return-void
.end method

.method public setIsLayoutRtl(Z)V
    .registers 2
    .param p1, "b"    # Z

    .prologue
    .line 621
    iput-boolean p1, p0, mIsLayoutRtl:Z

    .line 622
    return-void
.end method

.method public setRoot(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 617
    iput-object p1, p0, mRoot:Landroid/view/ViewGroup;

    .line 618
    return-void
.end method
