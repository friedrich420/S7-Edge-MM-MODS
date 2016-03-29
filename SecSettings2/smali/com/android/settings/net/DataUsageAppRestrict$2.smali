.class Lcom/android/settings/net/DataUsageAppRestrict$2;
.super Ljava/lang/Object;
.source "DataUsageAppRestrict.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/net/DataUsageAppRestrict;->setRestrictBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/net/DataUsageAppRestrict;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mRestrictBackground:Z


# direct methods
.method constructor <init>(Lcom/android/settings/net/DataUsageAppRestrict;ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/settings/net/DataUsageAppRestrict$2;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    iput-boolean p2, p0, Lcom/android/settings/net/DataUsageAppRestrict$2;->val$mRestrictBackground:Z

    iput-object p3, p0, Lcom/android/settings/net/DataUsageAppRestrict$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$2;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v1}, Lcom/android/settings/net/DataUsageAppRestrict;->access$000(Lcom/android/settings/net/DataUsageAppRestrict;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$2;->val$mRestrictBackground:Z

    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 371
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$2;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->handler_loading:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/net/DataUsageAppRestrict;->access$300(Lcom/android/settings/net/DataUsageAppRestrict;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 374
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 375
    return-void
.end method
