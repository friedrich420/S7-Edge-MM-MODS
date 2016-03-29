.class Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardUsimTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCarrierInfo()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "KeyguardUsimTextView"

    const-string v1, "onRefreshCarrierInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    # invokes: Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->updateText()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)V

    .line 70
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 63
    const-string v0, "KeyguardUsimTextView"

    const-string v1, "onSimStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    # invokes: Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->updateText()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)V

    .line 65
    return-void
.end method

.method public onSystemSettingsChanged(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 74
    const-string v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    # invokes: Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->changeTextColorOnWhiteWallpaper()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    # invokes: Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->updateText()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)V

    .line 78
    return-void
.end method
