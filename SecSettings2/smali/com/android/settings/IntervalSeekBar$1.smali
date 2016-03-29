.class Lcom/android/settings/IntervalSeekBar$1;
.super Ljava/lang/Object;
.source "IntervalSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IntervalSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IntervalSeekBar;


# direct methods
.method constructor <init>(Lcom/android/settings/IntervalSeekBar;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/IntervalSeekBar$1;->this$0:Lcom/android/settings/IntervalSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 99
    .local v0, "Value":Ljava/lang/Float;
    iget-object v1, p0, Lcom/android/settings/IntervalSeekBar$1;->this$0:Lcom/android/settings/IntervalSeekBar;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    # invokes: Lcom/android/settings/IntervalSeekBar;->animateMarkers(F)V
    invoke-static {v1, v2}, Lcom/android/settings/IntervalSeekBar;->access$000(Lcom/android/settings/IntervalSeekBar;F)V

    .line 100
    iget-object v1, p0, Lcom/android/settings/IntervalSeekBar$1;->this$0:Lcom/android/settings/IntervalSeekBar;

    invoke-virtual {v1}, Lcom/android/settings/IntervalSeekBar;->invalidate()V

    .line 101
    return-void
.end method
