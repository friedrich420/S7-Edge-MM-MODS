.class Landroid/widget/ScrollView$3;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ScrollView;->setupQuickController(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .registers 2

    .prologue
    .line 3097
    iput-object p1, p0, this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 3100
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3101
    .local v0, "value":I
    iget-object v1, p0, this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 3105
    .end local v0    # "value":I
    :goto_13
    return-void

    .line 3103
    :catch_14
    move-exception v1

    goto :goto_13
.end method
