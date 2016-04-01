.class Lcom/android/internal/app/ResolverActivity$ResolverPageChangeListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolverPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .registers 2

    .prologue
    .line 2847
    iput-object p1, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "x1"    # Lcom/android/internal/app/ResolverActivity$1;

    .prologue
    .line 2847
    invoke-direct {p0, p1}, <init>(Lcom/android/internal/app/ResolverActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 2852
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 2857
    return-void
.end method

.method public onPageSelected(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 2864
    iget-object v2, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # setter for: Lcom/android/internal/app/ResolverActivity;->mCurrentPageIdx:I
    invoke-static {v2, p1}, Lcom/android/internal/app/ResolverActivity;->access$2702(Lcom/android/internal/app/ResolverActivity;I)I

    .line 2865
    iget-object v2, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mViewPagerNavi:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$2900(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mViewPagerNaviPrevPage:I
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$2800(Lcom/android/internal/app/ResolverActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2866
    .local v1, "prevIcon":Landroid/widget/ImageView;
    const v2, 0x10809c9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2868
    iget-object v2, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mViewPagerNavi:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$2900(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2869
    .local v0, "curIcon":Landroid/widget/ImageView;
    const v2, 0x10809c8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2871
    iget-object v2, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # setter for: Lcom/android/internal/app/ResolverActivity;->mViewPagerNaviPrevPage:I
    invoke-static {v2, p1}, Lcom/android/internal/app/ResolverActivity;->access$2802(Lcom/android/internal/app/ResolverActivity;I)I

    .line 2872
    return-void
.end method
