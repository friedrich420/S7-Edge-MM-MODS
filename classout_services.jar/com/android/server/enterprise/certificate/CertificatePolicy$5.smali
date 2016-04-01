.class Lcom/android/server/enterprise/certificate/CertificatePolicy$5;
.super Landroid/content/BroadcastReceiver;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V
    .registers 2

    .prologue
    .line 1341
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1344
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1345
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 1346
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1347
    .local v1, "userId":I
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1348
    iget-object v2, p0, this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->onUserSwitched(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 1355
    .end local v1    # "userId":I
    :cond_1a
    :goto_1a
    return-void

    .line 1349
    .restart local v1    # "userId":I
    :cond_1b
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1350
    if-eqz v1, :cond_1a

    .line 1351
    iget-object v2, p0, this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->onUserRemoved(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    goto :goto_1a
.end method
