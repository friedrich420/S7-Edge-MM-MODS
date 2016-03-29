.class public Lcom/android/settings/UserCredentialsSettings;
.super Lcom/android/settings/InstrumentedFragment;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserCredentialsSettings$8;,
        Lcom/android/settings/UserCredentialsSettings$AliasOperation;,
        Lcom/android/settings/UserCredentialsSettings$ViewHolder;,
        Lcom/android/settings/UserCredentialsSettings$CertHolder;,
        Lcom/android/settings/UserCredentialsSettings$AdapterData;,
        Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;,
        Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;,
        Lcom/android/settings/UserCredentialsSettings$Tab;
    }
.end annotation


# static fields
.field private static mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAliasLoaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings/UserCredentialsSettings$Tab;",
            "Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mAliasOperation:Lcom/android/settings/UserCredentialsSettings$AliasOperation;

.field private mCertDialog:Landroid/app/Dialog;

.field protected mEdmRefreshUiReceiver:Landroid/content/BroadcastReceiver;

.field private mInForeground:Z

.field private mRefreshUI:Z

.field private mTabHost:Landroid/widget/TabHost;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/UserCredentialsSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    .line 86
    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    .line 796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/UserCredentialsSettings;->mRefreshUI:Z

    .line 799
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/UserCredentialsSettings$7;-><init>(Lcom/android/settings/UserCredentialsSettings;)V

    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mEdmRefreshUiReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/settings/UserCredentialsSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/settings/UserCredentialsSettings;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    .prologue
    .line 78
    sput-object p0, Lcom/android/settings/UserCredentialsSettings;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$CertHolder;Lcom/android/settings/UserCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings;
    .param p1, "x1"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;
    .param p2, "x2"    # Lcom/android/settings/UserCredentialsSettings$Tab;
    .param p3, "x3"    # Landroid/view/View;
    .param p4, "x4"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/UserCredentialsSettings;->getViewForCertificate(Lcom/android/settings/UserCredentialsSettings$CertHolder;Lcom/android/settings/UserCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/UserCredentialsSettings;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$CertHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings;
    .param p1, "x1"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/UserCredentialsSettings;->showConfirmDialog(Lcom/android/settings/UserCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/settings/UserCredentialsSettings;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$AliasOperation;)Lcom/android/settings/UserCredentialsSettings$AliasOperation;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings;
    .param p1, "x1"    # Lcom/android/settings/UserCredentialsSettings$AliasOperation;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings;->mAliasOperation:Lcom/android/settings/UserCredentialsSettings$AliasOperation;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/settings/UserCredentialsSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings/UserCredentialsSettings;->mInForeground:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/settings/UserCredentialsSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/UserCredentialsSettings;->refreshUI()V

    return-void
.end method

.method static synthetic access$4002(Lcom/android/settings/UserCredentialsSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/UserCredentialsSettings;->mRefreshUI:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$CertHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings;
    .param p1, "x1"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/UserCredentialsSettings;->showCertDialog(Lcom/android/settings/UserCredentialsSettings$CertHolder;)V

    return-void
.end method

.method private addCertDetails(Ljava/security/cert/X509Certificate;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 763
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 764
    .local v0, "sslCert":Landroid/net/http/SslCertificate;
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    return-void
.end method

.method private addTab(Lcom/android/settings/UserCredentialsSettings$Tab;)V
    .locals 6
    .param p1, "tab"    # Lcom/android/settings/UserCredentialsSettings$Tab;

    .prologue
    .line 306
    iget-object v3, p0, Lcom/android/settings/UserCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    # getter for: Lcom/android/settings/UserCredentialsSettings$Tab;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$500(Lcom/android/settings/UserCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    # getter for: Lcom/android/settings/UserCredentialsSettings$Tab;->mLabel:I
    invoke-static {p1}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$400(Lcom/android/settings/UserCredentialsSettings$Tab;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    # getter for: Lcom/android/settings/UserCredentialsSettings$Tab;->mView:I
    invoke-static {p1}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$300(Lcom/android/settings/UserCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 309
    .local v2, "systemSpec":Landroid/widget/TabHost$TabSpec;
    iget-object v3, p0, Lcom/android/settings/UserCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 311
    iget-object v3, p0, Lcom/android/settings/UserCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    # getter for: Lcom/android/settings/UserCredentialsSettings$Tab;->mList:I
    invoke-static {p1}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$600(Lcom/android/settings/UserCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 312
    .local v1, "lv":Landroid/widget/ListView;
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;-><init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$Tab;Lcom/android/settings/UserCredentialsSettings$1;)V

    .line 313
    .local v0, "adapter":Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    new-instance v3, Lcom/android/settings/UserCredentialsSettings$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/UserCredentialsSettings$1;-><init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 320
    return-void
.end method

.method private getViewForCertificate(Lcom/android/settings/UserCredentialsSettings$CertHolder;Lcom/android/settings/UserCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "certHolder"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;
    .param p2, "mTab"    # Lcom/android/settings/UserCredentialsSettings$Tab;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 613
    if-nez p3, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 615
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040214

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 616
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/settings/UserCredentialsSettings$ViewHolder;-><init>(Lcom/android/settings/UserCredentialsSettings$1;)V

    .line 617
    .local v0, "holder":Lcom/android/settings/UserCredentialsSettings$ViewHolder;
    const v2, 0x7f0d04ee

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    # setter for: Lcom/android/settings/UserCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/android/settings/UserCredentialsSettings$ViewHolder;->access$2402(Lcom/android/settings/UserCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 619
    const v2, 0x7f0d04ef

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    # setter for: Lcom/android/settings/UserCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/android/settings/UserCredentialsSettings$ViewHolder;->access$2502(Lcom/android/settings/UserCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 621
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 625
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    # getter for: Lcom/android/settings/UserCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/UserCredentialsSettings$ViewHolder;->access$2400(Lcom/android/settings/UserCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    # getter for: Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/UserCredentialsSettings$CertHolder;->access$2600(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    # getter for: Lcom/android/settings/UserCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/UserCredentialsSettings$ViewHolder;->access$2500(Lcom/android/settings/UserCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    # getter for: Lcom/android/settings/UserCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/UserCredentialsSettings$CertHolder;->access$2700(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    return-object p3

    .line 623
    .end local v0    # "holder":Lcom/android/settings/UserCredentialsSettings$ViewHolder;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$ViewHolder;

    .restart local v0    # "holder":Lcom/android/settings/UserCredentialsSettings$ViewHolder;
    goto :goto_0
.end method

.method private refreshUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 815
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 817
    iput-object v1, p0, Lcom/android/settings/UserCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 821
    iput-object v1, p0, Lcom/android/settings/UserCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    .line 825
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 826
    return-void
.end method

.method private showCertDialog(Lcom/android/settings/UserCredentialsSettings$CertHolder;)V
    .locals 27
    .param p1, "certHolder"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 636
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 637
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    const v23, 0x10404ad

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 639
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v22, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v21, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    # getter for: Lcom/android/settings/UserCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/UserCredentialsSettings$CertHolder;->access$2800(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/UserCredentialsSettings;->addCertDetails(Ljava/security/cert/X509Certificate;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 643
    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const v24, 0x7f0401e7

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-direct {v5, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 646
    .local v5, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v23, 0x1090009

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 647
    new-instance v20, Landroid/widget/Spinner;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 648
    .local v20, "spinner":Landroid/widget/Spinner;
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 650
    .local v16, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c0381

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c00bd

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c00bb

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 653
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 655
    new-instance v23, Lcom/android/settings/UserCredentialsSettings$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/UserCredentialsSettings$2;-><init>(Lcom/android/settings/UserCredentialsSettings;Ljava/util/ArrayList;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 667
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 668
    .local v12, "container":Landroid/widget/LinearLayout;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 669
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 670
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 672
    .local v17, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0c0382

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v19, v0

    .line 673
    .local v19, "sideMargin":I
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v19

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 674
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v14, v0, :cond_1

    .line 675
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 676
    .local v9, "certificateView":Landroid/view/View;
    if-eqz v14, :cond_0

    .line 677
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 679
    :cond_0
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 674
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 682
    .end local v9    # "certificateView":Landroid/view/View;
    :cond_1
    invoke-virtual {v7, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 683
    const v23, 0x104000a

    new-instance v24, Lcom/android/settings/UserCredentialsSettings$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/UserCredentialsSettings$3;-><init>(Lcom/android/settings/UserCredentialsSettings;)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 688
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 690
    .local v8, "certDialog":Landroid/app/Dialog;
    const-string v23, "UserCredentialsSettings"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "showCertDialog() view size : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_5

    .line 692
    const v23, 0x1020457

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 694
    .local v6, "body":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 695
    .local v11, "childCount":I
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v11, :cond_3

    .line 696
    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 697
    .local v10, "child":Landroid/view/View;
    instance-of v0, v10, Landroid/widget/TextView;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 698
    check-cast v10, Landroid/widget/TextView;

    .end local v10    # "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a00ff

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 695
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 703
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    .line 704
    .local v15, "inflater":Landroid/view/LayoutInflater;
    const v23, 0x7f040215

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 712
    .local v18, "removeButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v13

    .line 716
    .local v13, "cp":Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    invoke-virtual {v13}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed()Z

    move-result v23

    if-nez v23, :cond_4

    .line 717
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 721
    :cond_4
    # getter for: Lcom/android/settings/UserCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/UserCredentialsSettings$CertHolder;->access$2900(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    # invokes: Lcom/android/settings/UserCredentialsSettings$Tab;->getButtonLabel(Lcom/android/settings/UserCredentialsSettings$CertHolder;)I
    invoke-static {v0, v1}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$3000(Lcom/android/settings/UserCredentialsSettings$Tab;Lcom/android/settings/UserCredentialsSettings$CertHolder;)I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 722
    new-instance v23, Lcom/android/settings/UserCredentialsSettings$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/UserCredentialsSettings$4;-><init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$CertHolder;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    .end local v6    # "body":Landroid/view/ViewGroup;
    .end local v11    # "childCount":I
    .end local v13    # "cp":Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    .end local v15    # "inflater":Landroid/view/LayoutInflater;
    .end local v18    # "removeButton":Landroid/widget/Button;
    :cond_5
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 732
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/UserCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    .line 734
    return-void
.end method

.method private showConfirmDialog(Lcom/android/settings/UserCredentialsSettings$CertHolder;)V
    .locals 5
    .param p1, "certHolder"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 738
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 739
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    # getter for: Lcom/android/settings/UserCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {p1}, Lcom/android/settings/UserCredentialsSettings$CertHolder;->access$2900(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v3

    # invokes: Lcom/android/settings/UserCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/settings/UserCredentialsSettings$CertHolder;)I
    invoke-static {v3, p1}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$3200(Lcom/android/settings/UserCredentialsSettings$Tab;Lcom/android/settings/UserCredentialsSettings$CertHolder;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 740
    const v3, 0x1040013

    new-instance v4, Lcom/android/settings/UserCredentialsSettings$5;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/UserCredentialsSettings$5;-><init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$CertHolder;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 748
    const v3, 0x1040009

    new-instance v4, Lcom/android/settings/UserCredentialsSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings/UserCredentialsSettings$6;-><init>(Lcom/android/settings/UserCredentialsSettings;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 754
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 755
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 757
    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 759
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x5c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settings/UserCredentialsSettings;->mContext:Landroid/content/Context;

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    .line 266
    sget-object v0, Lcom/android/settings/UserCredentialsSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings;->mEdmRefreshUiReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "edm.intent.action.REFRESH_UI"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.permission.mdm.MDM_REFRESH_CREDENTIAL_UI_INTERNAL"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 269
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 274
    const v0, 0x7f040216

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    .line 275
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 276
    sget-object v0, Lcom/android/settings/UserCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/UserCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings/UserCredentialsSettings;->addTab(Lcom/android/settings/UserCredentialsSettings$Tab;)V

    .line 277
    sget-object v0, Lcom/android/settings/UserCredentialsSettings$Tab;->WIFI:Lcom/android/settings/UserCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings/UserCredentialsSettings;->addTab(Lcom/android/settings/UserCredentialsSettings$Tab;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->setTabViewTts()V

    .line 280
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 294
    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;

    .line 295
    .local v0, "aliasLoader":Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;
    invoke-virtual {v0, v3}, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->cancel(Z)Z

    goto :goto_0

    .line 297
    .end local v0    # "aliasLoader":Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings;->mAliasOperation:Lcom/android/settings/UserCredentialsSettings$AliasOperation;

    if-eqz v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings;->mAliasOperation:Lcom/android/settings/UserCredentialsSettings$AliasOperation;

    invoke-virtual {v2, v3}, Lcom/android/settings/UserCredentialsSettings$AliasOperation;->cancel(Z)Z

    .line 299
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/UserCredentialsSettings;->mAliasOperation:Lcom/android/settings/UserCredentialsSettings$AliasOperation;

    .line 301
    :cond_1
    sget-object v2, Lcom/android/settings/UserCredentialsSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/UserCredentialsSettings;->mEdmRefreshUiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 302
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onDestroy()V

    .line 303
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 840
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 841
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/UserCredentialsSettings;->mInForeground:Z

    .line 842
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 830
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/UserCredentialsSettings;->mInForeground:Z

    .line 833
    iget-boolean v0, p0, Lcom/android/settings/UserCredentialsSettings;->mRefreshUI:Z

    if-eqz v0, :cond_0

    .line 834
    invoke-direct {p0}, Lcom/android/settings/UserCredentialsSettings;->refreshUI()V

    .line 836
    :cond_0
    return-void
.end method

.method public setTabViewTts()V
    .locals 9

    .prologue
    .line 284
    iget-object v4, p0, Lcom/android/settings/UserCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    .line 285
    .local v0, "countTab":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 286
    iget-object v4, p0, Lcom/android/settings/UserCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 287
    .local v3, "tab":Landroid/view/View;
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 288
    .local v2, "label":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0e0ce3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, v1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/UserCredentialsSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v2    # "label":Landroid/widget/TextView;
    .end local v3    # "tab":Landroid/view/View;
    :cond_0
    return-void
.end method
