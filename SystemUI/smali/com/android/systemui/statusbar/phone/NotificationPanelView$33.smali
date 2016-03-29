.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetKeyguardHelpers(Z)V
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
    .line 5376
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBarStatus()I
    .locals 1

    .prologue
    .line 5400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 5410
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getViewMediatorDeviceInteractive()Z

    move-result v0

    return v0
.end method

.method public makeExpandedInvisible()V
    .locals 4

    .prologue
    .line 5389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 5392
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v1, "callback makeExpandedInvisible executed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 5395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchReEnableRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$5200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5396
    return-void
.end method

.method public onAffordanceTap()V
    .locals 1

    .prologue
    .line 5379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->deactivateNotificationRow()V

    .line 5380
    return-void
.end method

.method public setSwipedFraction(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 5405
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$5300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setSwipedFraction(F)V

    .line 5406
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 5384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userActivity()V

    .line 5385
    return-void
.end method
