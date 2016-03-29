.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;
.super Ljava/lang/Object;
.source "CoverCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->transitOtherViews(Z[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

.field final synthetic val$views:[Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;[Landroid/view/View;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iput-object p2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;->val$views:[Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 447
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 448
    .local v1, "currentAlpha":F
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;->val$views:[Landroid/view/View;

    .local v0, "arr$":[Landroid/view/View;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 449
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    .line 448
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 451
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
