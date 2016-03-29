.class Lcom/android/systemui/BlockSwipeAction$2$1;
.super Ljava/lang/Object;
.source "BlockSwipeAction.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BlockSwipeAction$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/BlockSwipeAction$2;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/BlockSwipeAction$2;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/BlockSwipeAction$2$1;->this$1:Lcom/android/systemui/BlockSwipeAction$2;

    iput-object p2, p0, Lcom/android/systemui/BlockSwipeAction$2$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/BlockSwipeAction$2$1;->this$1:Lcom/android/systemui/BlockSwipeAction$2;

    iget-object v1, v0, Lcom/android/systemui/BlockSwipeAction$2;->this$0:Lcom/android/systemui/BlockSwipeAction;

    iget-object v0, p0, Lcom/android/systemui/BlockSwipeAction$2$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    # invokes: Lcom/android/systemui/BlockSwipeAction;->doBlock(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    invoke-static {v1, v0}, Lcom/android/systemui/BlockSwipeAction;->access$000(Lcom/android/systemui/BlockSwipeAction;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 83
    const/4 v0, 0x0

    return v0
.end method
