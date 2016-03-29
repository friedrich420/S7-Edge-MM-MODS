.class Lcom/android/settings/wifi/mobileap/WifiApSettings$11;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$11;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$11;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x7

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2300(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V

    .line 1323
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$11;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1102(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    .line 1324
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$11;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2400(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V

    .line 1325
    return-void
.end method
