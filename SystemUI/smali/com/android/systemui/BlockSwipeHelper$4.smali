.class Lcom/android/systemui/BlockSwipeHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BlockSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BlockSwipeHelper;->moveContentView(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BlockSwipeHelper;

.field final synthetic val$contentView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/BlockSwipeHelper;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/systemui/BlockSwipeHelper$4;->this$0:Lcom/android/systemui/BlockSwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/BlockSwipeHelper$4;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/BlockSwipeHelper$4;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/systemui/BlockSwipeHelper$4;->this$0:Lcom/android/systemui/BlockSwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/BlockSwipeHelper$4;->val$view:Landroid/view/View;

    # invokes: Lcom/android/systemui/BlockSwipeHelper;->updateSidesSwipeProgressFromOffset(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/systemui/BlockSwipeHelper;->access$000(Lcom/android/systemui/BlockSwipeHelper;Landroid/view/View;)V

    .line 636
    iget-object v0, p0, Lcom/android/systemui/BlockSwipeHelper$4;->val$contentView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 637
    return-void
.end method
