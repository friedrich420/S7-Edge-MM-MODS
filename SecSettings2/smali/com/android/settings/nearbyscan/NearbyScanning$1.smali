.class Lcom/android/settings/nearbyscan/NearbyScanning$1;
.super Landroid/content/BroadcastReceiver;
.source "NearbyScanning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearbyscan/NearbyScanning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearbyscan/NearbyScanning;


# direct methods
.method constructor <init>(Lcom/android/settings/nearbyscan/NearbyScanning;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/android/settings/nearbyscan/NearbyScanning;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    if-nez p2, :cond_1

    .line 104
    const-string v0, "NearbyScanning"

    const-string v1, "Intent is Null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const-string v0, "com.samsung.android.nearbyscanning"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/android/settings/nearbyscan/NearbyScanning;

    # invokes: Lcom/android/settings/nearbyscan/NearbyScanning;->updateSwitch()V
    invoke-static {v0}, Lcom/android/settings/nearbyscan/NearbyScanning;->access$000(Lcom/android/settings/nearbyscan/NearbyScanning;)V

    goto :goto_0
.end method
