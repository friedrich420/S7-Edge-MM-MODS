.class Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$1;
.super Ljava/lang/Object;
.source "NotificationTemplateViewWrapper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->fadeIconColorFilter(Landroid/widget/ImageView;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;

.field final synthetic val$target:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$1;->val$target:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$1;->val$target:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # invokes: Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateIconColorFilter(Landroid/widget/ImageView;F)V
    invoke-static {v1, v2, v0}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->access$000(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;Landroid/widget/ImageView;F)V

    .line 173
    return-void
.end method
