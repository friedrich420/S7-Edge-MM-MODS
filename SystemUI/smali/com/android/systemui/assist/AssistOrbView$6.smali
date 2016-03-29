.class Lcom/android/systemui/assist/AssistOrbView$6;
.super Ljava/lang/Object;
.source "AssistOrbView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistOrbView;->startEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistOrbView;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistOrbView;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 268
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    # getter for: Lcom/android/systemui/assist/AssistOrbView;->mCircleMinSize:I
    invoke-static {v1}, Lcom/android/systemui/assist/AssistOrbView;->access$900(Lcom/android/systemui/assist/AssistOrbView;)I

    move-result v1

    int-to-float v1, v1

    const-wide/16 v2, 0x12c

    iget-object v6, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    # getter for: Lcom/android/systemui/assist/AssistOrbView;->mOvershootInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v6}, Lcom/android/systemui/assist/AssistOrbView;->access$1000(Lcom/android/systemui/assist/AssistOrbView;)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/assist/AssistOrbView;->animateCircleSize(FJJLandroid/view/animation/Interpolator;)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    # getter for: Lcom/android/systemui/assist/AssistOrbView;->mStaticOffset:I
    invoke-static {v1}, Lcom/android/systemui/assist/AssistOrbView;->access$1100(Lcom/android/systemui/assist/AssistOrbView;)I

    move-result v1

    int-to-float v1, v1

    const-wide/16 v2, 0x190

    iget-object v6, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    # getter for: Lcom/android/systemui/assist/AssistOrbView;->mAppearInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v6}, Lcom/android/systemui/assist/AssistOrbView;->access$1200(Lcom/android/systemui/assist/AssistOrbView;)Landroid/view/animation/Interpolator;

    move-result-object v6

    # invokes: Lcom/android/systemui/assist/AssistOrbView;->animateOffset(FJJLandroid/view/animation/Interpolator;)V
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/assist/AssistOrbView;->access$1300(Lcom/android/systemui/assist/AssistOrbView;FJJLandroid/view/animation/Interpolator;)V

    .line 270
    return-void
.end method
