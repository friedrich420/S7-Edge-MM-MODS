.class Lcom/android/settings/UserCredentialsSettings$AdapterData;
.super Ljava/lang/Object;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;

.field private final mCertHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/UserCredentialsSettings$CertHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTab:Lcom/android/settings/UserCredentialsSettings$Tab;

.field final synthetic this$0:Lcom/android/settings/UserCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$Tab;Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;)V
    .locals 1
    .param p2, "tab"    # Lcom/android/settings/UserCredentialsSettings$Tab;
    .param p3, "adapter"    # Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData;->mCertHolders:Ljava/util/List;

    .line 390
    iput-object p3, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData;->mAdapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;

    .line 391
    iput-object p2, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;

    .line 392
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$Tab;Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;Lcom/android/settings/UserCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/UserCredentialsSettings;
    .param p2, "x1"    # Lcom/android/settings/UserCredentialsSettings$Tab;
    .param p3, "x2"    # Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;
    .param p4, "x3"    # Lcom/android/settings/UserCredentialsSettings$1;

    .prologue
    .line 384
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/UserCredentialsSettings$AdapterData;-><init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$Tab;Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$AdapterData;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData;->mCertHolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$Tab;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$AdapterData;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$AdapterData;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData;->mAdapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;

    return-object v0
.end method


# virtual methods
.method public remove(Lcom/android/settings/UserCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "certHolder"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData;->mCertHolders:Ljava/util/List;

    .line 540
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/UserCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 541
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 543
    :cond_0
    return-void
.end method
