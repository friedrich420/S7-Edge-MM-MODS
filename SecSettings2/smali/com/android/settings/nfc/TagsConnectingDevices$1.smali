.class Lcom/android/settings/nfc/TagsConnectingDevices$1;
.super Landroid/content/BroadcastReceiver;
.source "TagsConnectingDevices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/TagsConnectingDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/TagsConnectingDevices;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/nfc/TagsConnectingDevices$1;->this$0:Lcom/android/settings/nfc/TagsConnectingDevices;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices$1;->this$0:Lcom/android/settings/nfc/TagsConnectingDevices;

    # getter for: Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/nfc/TagsConnectingDevices;->access$000(Lcom/android/settings/nfc/TagsConnectingDevices;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices$1;->this$0:Lcom/android/settings/nfc/TagsConnectingDevices;

    # invokes: Lcom/android/settings/nfc/TagsConnectingDevices;->setSwitchStatus(ZZ)V
    invoke-static {v1, v3, v3}, Lcom/android/settings/nfc/TagsConnectingDevices;->access$100(Lcom/android/settings/nfc/TagsConnectingDevices;ZZ)V

    goto :goto_0
.end method
