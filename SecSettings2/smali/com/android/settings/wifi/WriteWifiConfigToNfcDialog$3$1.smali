.class Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3$1;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3$1;->this$1:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3$1;->this$1:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;

    iget-object v0, v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;->this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    # getter for: Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->access$400(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3$1;->this$1:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;

    iget-object v0, v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;->this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    # invokes: Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->readyToWriteWifiConfigToNfc()V
    invoke-static {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->access$500(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V

    .line 274
    return-void
.end method
