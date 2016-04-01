.class Lcom/android/server/am/MARsTrigger$3;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .registers 2

    .prologue
    .line 358
    iput-object p1, p0, this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 361
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 365
    .local v2, "isReInstall":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 366
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_1c

    .line 367
    iget-object v3, p0, this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->handlePackageStatusChange(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 369
    :cond_1c
    return-void
.end method
