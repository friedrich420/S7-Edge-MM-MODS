.class Lcom/android/settings/nfc/AndroidBeam$1;
.super Landroid/content/BroadcastReceiver;
.source "AndroidBeam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/AndroidBeam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/AndroidBeam;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/AndroidBeam;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/android/settings/nfc/AndroidBeam;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const-string v1, "com.felicanetworks.nfc.extra.ADAPTER_RW_P2P_STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/android/settings/nfc/AndroidBeam;

    # getter for: Lcom/android/settings/nfc/AndroidBeam;->activity:Lcom/android/settings/SettingsActivity;
    invoke-static {v1}, Lcom/android/settings/nfc/AndroidBeam;->access$000(Lcom/android/settings/nfc/AndroidBeam;)Lcom/android/settings/SettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/android/settings/nfc/AndroidBeam;

    # getter for: Lcom/android/settings/nfc/AndroidBeam;->activity:Lcom/android/settings/SettingsActivity;
    invoke-static {v1}, Lcom/android/settings/nfc/AndroidBeam;->access$000(Lcom/android/settings/nfc/AndroidBeam;)Lcom/android/settings/SettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    goto :goto_0

    .line 99
    :cond_2
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/android/settings/nfc/AndroidBeam;

    # getter for: Lcom/android/settings/nfc/AndroidBeam;->activity:Lcom/android/settings/SettingsActivity;
    invoke-static {v1}, Lcom/android/settings/nfc/AndroidBeam;->access$000(Lcom/android/settings/nfc/AndroidBeam;)Lcom/android/settings/SettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    goto :goto_0
.end method
