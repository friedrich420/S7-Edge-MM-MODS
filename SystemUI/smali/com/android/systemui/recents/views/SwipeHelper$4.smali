.class Lcom/android/systemui/recents/views/SwipeHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/SwipeHelper;->snapChild(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/SwipeHelper;

.field final synthetic val$canAnimViewBeDismissed:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/SwipeHelper;ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/systemui/recents/views/SwipeHelper$4;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    iput-boolean p2, p0, Lcom/android/systemui/recents/views/SwipeHelper$4;->val$canAnimViewBeDismissed:Z

    iput-object p3, p0, Lcom/android/systemui/recents/views/SwipeHelper$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$4;->val$canAnimViewBeDismissed:Z

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$4;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper$4;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    # getter for: Lcom/android/systemui/recents/views/SwipeHelper;->initialAlpha:F
    invoke-static {v1}, Lcom/android/systemui/recents/views/SwipeHelper;->access$000(Lcom/android/systemui/recents/views/SwipeHelper;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$4;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    iget-object v0, v0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper$4;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onSnapBackCompleted(Landroid/view/View;)V

    .line 360
    return-void
.end method
