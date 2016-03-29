.class Lcom/android/settings/nfc/OtherSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "OtherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/OtherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/OtherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/OtherSettings;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings/nfc/OtherSettings$1;->this$0:Lcom/android/settings/nfc/OtherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/settings/nfc/OtherSettings$1;->this$0:Lcom/android/settings/nfc/OtherSettings;

    invoke-virtual {v1}, Lcom/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string v1, "org.mobilenfcassociation.CardEmulation.action.AID_TABLE_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/settings/nfc/OtherSettings$1;->this$0:Lcom/android/settings/nfc/OtherSettings;

    invoke-virtual {v1}, Lcom/android/settings/nfc/OtherSettings;->refresh()V

    goto :goto_0
.end method
