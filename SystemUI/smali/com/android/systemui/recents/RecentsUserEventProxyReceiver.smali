.class public Lcom/android/systemui/recents/RecentsUserEventProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecentsUserEventProxyReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 40
    invoke-static {p1, v5}, Lcom/android/systemui/recents/Recents;->getInstanceAndStartIfNeeded(Landroid/content/Context;I)Lcom/android/systemui/recents/Recents;

    move-result-object v0

    .line 42
    .local v0, "recents":Lcom/android/systemui/recents/Recents;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const/4 v3, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 67
    :goto_1
    return-void

    .line 42
    :sswitch_0
    const-string v5, "com.android.systemui.recents.action.SHOW_RECENTS_FOR_USER"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string v5, "com.android.systemui.recents.action.HIDE_RECENTS_FOR_USER"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v7, "com.android.systemui.recents.action.TOGGLE_RECENTS_FOR_USER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    goto :goto_0

    :sswitch_3
    const-string v5, "com.android.systemui.recents.action.PRELOAD_RECENTS_FOR_USER"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v5, "com.android.systemui.recents.action.CONFIG_CHANGED_FOR_USER"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    .line 44
    :pswitch_0
    const-string v3, "triggeredFromAltTab"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 46
    .local v1, "triggeredFromAltTab":Z
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/Recents;->showRecentsInternal(Z)V

    goto :goto_1

    .line 50
    .end local v1    # "triggeredFromAltTab":Z
    :pswitch_1
    const-string v3, "triggeredFromAltTab"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 52
    .restart local v1    # "triggeredFromAltTab":Z
    const-string v3, "triggeredFromHomeKey"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 54
    .local v2, "triggeredFromHome":Z
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/Recents;->hideRecentsInternal(ZZ)V

    goto :goto_1

    .line 58
    .end local v1    # "triggeredFromAltTab":Z
    .end local v2    # "triggeredFromHome":Z
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents;->toggleRecentsInternal()V

    goto :goto_1

    .line 61
    :pswitch_3
    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents;->preloadRecentsInternal()V

    goto :goto_1

    .line 64
    :pswitch_4
    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents;->configurationChanged()V

    goto :goto_1

    .line 42
    :sswitch_data_0
    .sparse-switch
        -0x74dce9f0 -> :sswitch_2
        -0x14449bff -> :sswitch_3
        -0x92de2de -> :sswitch_1
        0x4256ecc7 -> :sswitch_0
        0x63dfae26 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
