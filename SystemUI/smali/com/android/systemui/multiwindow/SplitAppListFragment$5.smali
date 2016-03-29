.class Lcom/android/systemui/multiwindow/SplitAppListFragment$5;
.super Ljava/lang/Object;
.source "SplitAppListFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/SplitAppListFragment;->scrollAnimation(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$5;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 8
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 449
    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$5;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mDensity:I
    invoke-static {v6}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$900(Lcom/android/systemui/multiwindow/SplitAppListFragment;)I

    move-result v6

    const/16 v7, 0x1e0

    if-ge v6, v7, :cond_1

    .line 450
    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$5;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v6}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$100(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 451
    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$5;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v6}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$100(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 452
    .local v2, "gridChild":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_0

    .line 453
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 455
    .local v1, "convertView":Landroid/view/View;
    const v6, 0x7f0e007a

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 456
    .local v0, "capture":Landroid/widget/ImageView;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 457
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    const v6, 0x7f0e007b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 460
    .local v5, "tv":Landroid/widget/TextView;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$5;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # invokes: Lcom/android/systemui/multiwindow/SplitAppListFragment;->applyTextEffect(Landroid/widget/TextView;)V
    invoke-static {v6, v5}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$400(Lcom/android/systemui/multiwindow/SplitAppListFragment;Landroid/widget/TextView;)V

    .line 452
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 450
    .end local v0    # "capture":Landroid/widget/ImageView;
    .end local v1    # "convertView":Landroid/view/View;
    .end local v5    # "tv":Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 465
    .end local v2    # "gridChild":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 446
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 443
    return-void
.end method
