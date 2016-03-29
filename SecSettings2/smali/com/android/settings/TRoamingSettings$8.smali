.class Lcom/android/settings/TRoamingSettings$8;
.super Ljava/lang/Object;
.source "TRoamingSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TRoamingSettings;->setRestrictBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TRoamingSettings;

.field final synthetic val$mRestrictBackground:Z


# direct methods
.method constructor <init>(Lcom/android/settings/TRoamingSettings;Z)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/android/settings/TRoamingSettings$8;->this$0:Lcom/android/settings/TRoamingSettings;

    iput-boolean p2, p0, Lcom/android/settings/TRoamingSettings$8;->val$mRestrictBackground:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$8;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v1}, Lcom/android/settings/TRoamingSettings;->access$200(Lcom/android/settings/TRoamingSettings;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/TRoamingSettings$8;->val$mRestrictBackground:Z

    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 816
    iget-object v1, p0, Lcom/android/settings/TRoamingSettings$8;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->handler_loading:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/TRoamingSettings;->access$1200(Lcom/android/settings/TRoamingSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 817
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 819
    # getter for: Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/TRoamingSettings;->access$1100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 820
    return-void
.end method
