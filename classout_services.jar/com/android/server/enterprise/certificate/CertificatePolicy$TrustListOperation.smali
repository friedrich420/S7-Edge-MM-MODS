.class Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;
.super Ljava/lang/Object;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustListOperation"
.end annotation


# static fields
.field private static final AUDIT_ADD_TRUSTED:Ljava/lang/String; = "Admin %d has added a certificate to the trusted DB. Subject : %s, Issuer : %s"

.field private static final AUDIT_ADD_UNTRUSTED:Ljava/lang/String; = "Admin %d has added a certificate to the untrusted DB. Subject : %s, Issuer : %s"

.field private static final AUDIT_REMOVE_TRUSTED:Ljava/lang/String; = "Admin %d has removed a certificate from the trusted DB. Subject : %s, Issuer : %s"

.field private static final AUDIT_REMOVE_UNTRUSTED:Ljava/lang/String; = "Admin %d has removed a certificate from the untrusted DB. Subject : %s, Issuer : %s"


# instance fields
.field private mAction:I

.field private mAuditMessageFormat:Ljava/lang/String;

.field private mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

.field private mDbColumn:Ljava/lang/String;

.field private mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .registers 4
    .param p2, "action"    # I

    .prologue
    .line 2318
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2319
    iput p2, p0, mAction:I

    .line 2320
    packed-switch p2, :pswitch_data_64

    .line 2348
    :goto_a
    return-void

    .line 2323
    :pswitch_b
    const-string v0, "Admin %d has added a certificate to the trusted DB. Subject : %s, Issuer : %s"

    iput-object v0, p0, mAuditMessageFormat:Ljava/lang/String;

    .line 2324
    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 2325
    const-string/jumbo v0, "trustedCaList"

    iput-object v0, p0, mDbColumn:Ljava/lang/String;

    .line 2326
    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v0

    iput-object v0, p0, mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    goto :goto_a

    .line 2329
    :pswitch_21
    const-string v0, "Admin %d has removed a certificate from the trusted DB. Subject : %s, Issuer : %s"

    iput-object v0, p0, mAuditMessageFormat:Ljava/lang/String;

    .line 2330
    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 2331
    const-string/jumbo v0, "trustedCaList"

    iput-object v0, p0, mDbColumn:Ljava/lang/String;

    .line 2332
    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v0

    iput-object v0, p0, mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    goto :goto_a

    .line 2336
    :pswitch_37
    const-string v0, "Admin %d has added a certificate to the untrusted DB. Subject : %s, Issuer : %s"

    iput-object v0, p0, mAuditMessageFormat:Ljava/lang/String;

    .line 2337
    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 2338
    const-string/jumbo v0, "untrustedCertsList"

    iput-object v0, p0, mDbColumn:Ljava/lang/String;

    .line 2339
    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v0

    iput-object v0, p0, mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    goto :goto_a

    .line 2342
    :pswitch_4d
    const-string v0, "Admin %d has removed a certificate from the untrusted DB. Subject : %s, Issuer : %s"

    iput-object v0, p0, mAuditMessageFormat:Ljava/lang/String;

    .line 2343
    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 2344
    const-string/jumbo v0, "untrustedCertsList"

    iput-object v0, p0, mDbColumn:Ljava/lang/String;

    .line 2345
    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v0

    iput-object v0, p0, mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    goto :goto_a

    .line 2320
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_b
        :pswitch_37
        :pswitch_21
        :pswitch_4d
        :pswitch_b
        :pswitch_37
    .end packed-switch
.end method


# virtual methods
.method public getAction()I
    .registers 2

    .prologue
    .line 2363
    iget v0, p0, mAction:I

    return v0
.end method

.method public getAuditMessageFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2367
    iget-object v0, p0, mAuditMessageFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getCache()Lcom/android/server/enterprise/certificate/CertificateCache;
    .registers 2

    .prologue
    .line 2351
    iget-object v0, p0, mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    return-object v0
.end method

.method public getDbColumn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2355
    iget-object v0, p0, mDbColumn:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .registers 2

    .prologue
    .line 2359
    iget-object v0, p0, mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-object v0
.end method
