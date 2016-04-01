.class Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory$1;
.super Ljava/lang/Object;
.source "DcmNextiPlayReadyService.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;-><init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;

.field final synthetic val$this$0:Lcom/android/server/DcmNextiPlayReadyService;


# direct methods
.method constructor <init>(Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;Lcom/android/server/DcmNextiPlayReadyService;)V
    .registers 3

    .prologue
    .line 383
    iput-object p1, p0, this$1:Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;

    iput-object p2, p0, val$this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 385
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 388
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 391
    const/4 v0, 0x0

    return-object v0
.end method
