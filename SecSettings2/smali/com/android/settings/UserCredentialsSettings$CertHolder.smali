.class Lcom/android/settings/UserCredentialsSettings$CertHolder;
.super Ljava/lang/Object;
.source "UserCredentialsSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CertHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/UserCredentialsSettings$CertHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;

.field private final mAlias:Ljava/lang/String;

.field private final mSslCert:Landroid/net/http/SslCertificate;

.field private final mSubjectPrimary:Ljava/lang/String;

.field private final mSubjectSecondary:Ljava/lang/String;

.field private final mTab:Lcom/android/settings/UserCredentialsSettings$Tab;

.field private final mX509Cert:Ljava/security/cert/X509Certificate;


# direct methods
.method private constructor <init>(Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;Lcom/android/settings/UserCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "adapter"    # Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;
    .param p2, "tab"    # Lcom/android/settings/UserCredentialsSettings$Tab;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "x509Cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;

    .line 561
    iput-object p2, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;

    .line 562
    iput-object p3, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    .line 563
    iput-object p4, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 565
    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, p4}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v3, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    .line 567
    iget-object v3, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "cn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "o":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, "ou":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 574
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 575
    iput-object v1, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 576
    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    .line 590
    :goto_0
    return-void

    .line 578
    :cond_0
    iput-object v1, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 579
    iput-object v2, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    .line 582
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 583
    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 584
    const-string v3, ""

    iput-object v3, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    .line 586
    :cond_2
    iget-object v3, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 587
    const-string v3, ""

    iput-object v3, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;Lcom/android/settings/UserCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/settings/UserCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;
    .param p2, "x1"    # Lcom/android/settings/UserCredentialsSettings$Tab;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/security/cert/X509Certificate;
    .param p5, "x4"    # Lcom/android/settings/UserCredentialsSettings$1;

    .prologue
    .line 546
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/UserCredentialsSettings$CertHolder;-><init>(Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;Lcom/android/settings/UserCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Ljava/security/cert/X509Certificate;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Lcom/android/settings/UserCredentialsSettings$Tab;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/UserCredentialsSettings$CertHolder;)I
    .locals 3
    .param p1, "o"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 593
    .local v0, "primary":I
    if-eqz v0, :cond_0

    .line 596
    .end local v0    # "primary":I
    :goto_0
    return v0

    .restart local v0    # "primary":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 546
    check-cast p1, Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$CertHolder;->compareTo(Lcom/android/settings/UserCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 599
    instance-of v1, p1, Lcom/android/settings/UserCredentialsSettings$CertHolder;

    if-nez v1, :cond_0

    .line 600
    const/4 v1, 0x0

    .line 603
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 602
    check-cast v0, Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .line 603
    .local v0, "other":Lcom/android/settings/UserCredentialsSettings$CertHolder;
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
