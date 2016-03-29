.class Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$41;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showFirstTimePoup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    .prologue
    .line 2000
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$41;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x1

    .line 2002
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$41;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$2000(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2003
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$41;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$41;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dontshowmemhsfirsttime"

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$2100(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2005
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$41;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    .line 2006
    return-void
.end method
