.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .prologue
    .line 5433
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 3
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    const/4 v1, 0x0

    .line 5451
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 5452
    .local v0, "showingDetail":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setQsDetailShowing(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    .line 5454
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$5400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_2

    .line 5455
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSummaryView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$5500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5459
    :goto_1
    return-void

    .end local v0    # "showingDetail":Z
    :cond_1
    move v0, v1

    .line 5451
    goto :goto_0

    .line 5457
    .restart local v0    # "showingDetail":Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSummaryView:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$5500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onScanStateChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 5448
    return-void
.end method

.method public onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 0
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 5442
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;->handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    .line 5443
    return-void
.end method

.method public onToggleStateChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 5438
    return-void
.end method
