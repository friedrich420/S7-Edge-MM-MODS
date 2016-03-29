.class Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Recents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/Recents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentsOwnerEventProxyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 236
    :goto_1
    return-void

    .line 228
    :sswitch_0
    const-string v3, "action_notify_recents_visibility_change"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "action_screen_pinning_request"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 230
    :pswitch_0
    const-string v0, "recentsVisibility"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/recents/Recents;->visibilityChanged(Z)V

    goto :goto_1

    .line 233
    :pswitch_1
    invoke-static {p1}, Lcom/android/systemui/recents/Recents;->onStartScreenPinning(Landroid/content/Context;)V

    goto :goto_1

    .line 228
    nop

    :sswitch_data_0
    .sparse-switch
        0x9b351e9 -> :sswitch_0
        0x658aba6f -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
