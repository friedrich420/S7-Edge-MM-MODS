.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isShortcutDrag:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    .prologue
    .line 6801
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->isShortcutDrag:Z

    return-void
.end method


# virtual methods
.method public isCoverShorcutDragged()Z
    .locals 1

    .prologue
    .line 6806
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->isShortcutDrag:Z

    return v0
.end method

.method public startShortcutApp(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 6810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->isShortcutDrag:Z

    .line 6811
    if-nez p1, :cond_0

    .line 6812
    const-string v0, "PhoneStatusBar"

    const-string v1, "startShortcutApp, null intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6817
    :goto_0
    return-void

    .line 6815
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSviewShortcutIntent:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 6816
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public startShortcutDragAnimation()V
    .locals 1

    .prologue
    .line 6820
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_0

    .line 6821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->isShortcutDrag:Z

    .line 6822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->startHideHelpTextAnimation()V

    .line 6824
    :cond_0
    return-void
.end method

.method public stopShortcutDragAnimation()V
    .locals 1

    .prologue
    .line 6827
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_0

    .line 6828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->isShortcutDrag:Z

    .line 6829
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->startShowHelpTextAnimationWithoutDelay()V

    .line 6831
    :cond_0
    return-void
.end method
