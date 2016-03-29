.class Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 5
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    if-nez v3, :cond_2

    .line 109
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->isLeftShortcutForLiveIcon()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcutsIcon(I)V

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->isRightShortcutForLiveIcon()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcutsIcon(I)V

    .line 115
    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tap_to_icon"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    move v0, v1

    .line 117
    .local v0, "trayMode":Z
    :goto_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mTraySquicleMode:Z
    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->access$300(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Z

    move-result v3

    if-eq v0, v3, :cond_2

    .line 118
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mTraySquicleMode:Z
    invoke-static {v3, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->access$302(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;Z)Z

    .line 119
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcutsIcon(I)V

    .line 120
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcutsIcon(I)V

    .line 123
    .end local v0    # "trayMode":Z
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 115
    goto :goto_0
.end method

.method public onOpenThemeChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcuts()V

    .line 106
    return-void
.end method
