.class Lcom/android/server/enterprise/certificate/CertificatePolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;->registerPackageChangeReceiver()V
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
    .line 1143
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1146
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v4, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 1147
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1148
    .local v2, "pkgAction":Ljava/lang/String;
    const-string/jumbo v4, "isMarketInstallation"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1151
    .local v1, "isMarketApp":Z
    if-eqz v3, :cond_39

    :try_start_14
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_39

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_39

    .line 1154
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    if-eqz v1, :cond_39

    .line 1155
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->displayAppSignature(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_39} :catch_3a

    .line 1161
    :cond_39
    :goto_39
    return-void

    .line 1158
    :catch_3a
    move-exception v0

    .line 1159
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method
