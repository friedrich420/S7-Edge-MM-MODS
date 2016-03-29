.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;
.super Ljava/lang/Object;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2
    .param p1, "stub"    # Landroid/view/ViewStub;
    .param p2, "inflated"    # Landroid/view/View;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    check-cast p2, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .end local p2    # "inflated":Landroid/view/View;
    # setter for: Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$902(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;)Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    # getter for: Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$900(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    # getter for: Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$800(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setCollapseClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$1000(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 490
    return-void
.end method
