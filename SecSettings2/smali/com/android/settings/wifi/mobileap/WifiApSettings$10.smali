.class Lcom/android/settings/wifi/mobileap/WifiApSettings$10;
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
    .line 1310
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 1313
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x7

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2100(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V

    .line 1314
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1002(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    .line 1315
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z
    invoke-static {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1102(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    .line 1316
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V
    invoke-static {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2200(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V

    .line 1317
    return-void
.end method
