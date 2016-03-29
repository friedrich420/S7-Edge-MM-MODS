.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;
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
    .line 506
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2
    .param p1, "stub"    # Landroid/view/ViewStub;
    .param p2, "inflated"    # Landroid/view/View;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    # setter for: Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSwipeRightGroup:Landroid/view/View;
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$1402(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)Landroid/view/View;

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v1

    # invokes: Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSwipeRightActualHeight(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$1500(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSwipeRightGroupStub:Landroid/view/ViewStub;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$1602(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/ViewStub;)Landroid/view/ViewStub;

    .line 512
    return-void
.end method
