.class Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 831
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;->val$link:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 833
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;->val$link:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 834
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 835
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 836
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAttentionDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$1100(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAttentionDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$1100(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 839
    :cond_0
    return-void
.end method
