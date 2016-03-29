.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$QuickConnectSoundPathViewObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickConnectSoundPathViewObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    .prologue
    .line 6521
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$QuickConnectSoundPathViewObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 6522
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6523
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 6526
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 6528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$QuickConnectSoundPathViewObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQuickConnectShowingChanged()V

    .line 6529
    return-void
.end method
