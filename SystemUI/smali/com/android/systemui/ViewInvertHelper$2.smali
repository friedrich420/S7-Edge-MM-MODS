.class Lcom/android/systemui/ViewInvertHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewInvertHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ViewInvertHelper;

.field final synthetic val$invert:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/ViewInvertHelper;Z)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/ViewInvertHelper$2;->this$0:Lcom/android/systemui/ViewInvertHelper;

    iput-boolean p2, p0, Lcom/android/systemui/ViewInvertHelper$2;->val$invert:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/ViewInvertHelper$2;->val$invert:Z

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/systemui/ViewInvertHelper$2;->this$0:Lcom/android/systemui/ViewInvertHelper;

    # getter for: Lcom/android/systemui/ViewInvertHelper;->mTarget:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/ViewInvertHelper;->access$200(Lcom/android/systemui/ViewInvertHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 65
    :cond_0
    return-void
.end method
