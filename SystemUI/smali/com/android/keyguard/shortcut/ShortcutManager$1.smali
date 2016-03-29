.class Lcom/android/keyguard/shortcut/ShortcutManager$1;
.super Landroid/database/ContentObserver;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/shortcut/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/shortcut/ShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/shortcut/ShortcutManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/keyguard/shortcut/ShortcutManager$1;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 107
    if-eqz p2, :cond_0

    const-string v0, "lock_application_shortcut"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/shortcut/ShortcutManager$1;->this$0:Lcom/android/keyguard/shortcut/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcuts()V

    goto :goto_0
.end method
