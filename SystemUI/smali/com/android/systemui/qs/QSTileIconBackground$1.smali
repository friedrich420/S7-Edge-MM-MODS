.class Lcom/android/systemui/qs/QSTileIconBackground$1;
.super Ljava/lang/Object;
.source "QSTileIconBackground.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSTileIconBackground;->startBackgroundAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileIconBackground;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSTileIconBackground;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileIconBackground$1;->this$0:Lcom/android/systemui/qs/QSTileIconBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileIconBackground$1;->this$0:Lcom/android/systemui/qs/QSTileIconBackground;

    # getter for: Lcom/android/systemui/qs/QSTileIconBackground;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/systemui/qs/QSTileIconBackground;->access$000(Lcom/android/systemui/qs/QSTileIconBackground;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 100
    return-void
.end method
