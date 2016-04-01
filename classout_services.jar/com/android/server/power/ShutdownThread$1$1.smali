.class Lcom/android/server/power/ShutdownThread$1$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread$1;

.field final synthetic val$fadeoutView:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$1;Landroid/widget/RelativeLayout;)V
    .registers 3

    .prologue
    .line 546
    iput-object p1, p0, this$0:Lcom/android/server/power/ShutdownThread$1;

    iput-object p2, p0, val$fadeoutView:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, 0x12c

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3e2e147b    # 0.17f

    .line 549
    const/16 v1, 0x12c

    .line 550
    .local v1, "duration":I
    iget-object v2, p0, val$fadeoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 551
    iget-object v2, p0, val$fadeoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_48

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 552
    .local v0, "backgroundalpha":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v5, v5, v4, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 553
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 554
    new-instance v2, Lcom/android/server/power/ShutdownThread$1$1$1;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$1$1$1;-><init>(Lcom/android/server/power/ShutdownThread$1$1;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 564
    return-void

    .line 551
    nop

    :array_48
    .array-data 4
        0x99
        0xff
    .end array-data
.end method
