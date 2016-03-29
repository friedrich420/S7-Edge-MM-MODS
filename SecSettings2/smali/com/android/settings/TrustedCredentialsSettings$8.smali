.class Lcom/android/settings/TrustedCredentialsSettings$8;
.super Landroid/content/BroadcastReceiver;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;)V
    .locals 0

    .prologue
    .line 967
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$8;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$8;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mInForeground:Z
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$4100(Lcom/android/settings/TrustedCredentialsSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$8;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # invokes: Lcom/android/settings/TrustedCredentialsSettings;->refreshUI()V
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$4200(Lcom/android/settings/TrustedCredentialsSettings;)V

    .line 979
    :goto_0
    return-void

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$8;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/TrustedCredentialsSettings;->mRefreshUI:Z
    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$4302(Lcom/android/settings/TrustedCredentialsSettings;Z)Z

    goto :goto_0
.end method
