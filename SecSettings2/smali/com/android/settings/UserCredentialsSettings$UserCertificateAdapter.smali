.class Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserCredentialsSettings.java"

# interfaces
.implements Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserCertificateAdapter"
.end annotation


# instance fields
.field private final mData:Lcom/android/settings/UserCredentialsSettings$AdapterData;

.field final synthetic this$0:Lcom/android/settings/UserCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$Tab;)V
    .locals 2
    .param p2, "tab"    # Lcom/android/settings/UserCredentialsSettings$Tab;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 351
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/settings/UserCredentialsSettings$AdapterData;-><init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$Tab;Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;Lcom/android/settings/UserCredentialsSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;->mData:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;->load()V

    .line 353
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$Tab;Lcom/android/settings/UserCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/UserCredentialsSettings;
    .param p2, "x1"    # Lcom/android/settings/UserCredentialsSettings$Tab;
    .param p3, "x2"    # Lcom/android/settings/UserCredentialsSettings$1;

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;-><init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$Tab;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;->mData:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mCertHolders:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1000(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Ljava/util/List;

    move-result-object v0

    .line 368
    .local v0, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/UserCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 369
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 371
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/settings/UserCredentialsSettings$CertHolder;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;->mData:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mCertHolders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1000(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;->getItem(I)Lcom/android/settings/UserCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 377
    int-to-long v0, p1

    return-wide v0
.end method

.method public getListViewId(Lcom/android/settings/UserCredentialsSettings$Tab;)I
    .locals 1
    .param p1, "tab"    # Lcom/android/settings/UserCredentialsSettings$Tab;

    .prologue
    .line 360
    # getter for: Lcom/android/settings/UserCredentialsSettings$Tab;->mList:I
    invoke-static {p1}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$600(Lcom/android/settings/UserCredentialsSettings$Tab;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;->getItem(I)Lcom/android/settings/UserCredentialsSettings$CertHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;->mData:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1100(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v2

    # invokes: Lcom/android/settings/UserCredentialsSettings;->getViewForCertificate(Lcom/android/settings/UserCredentialsSettings$CertHolder;Lcom/android/settings/UserCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    invoke-static {v0, v1, v2, p2, p3}, Lcom/android/settings/UserCredentialsSettings;->access$1200(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$CertHolder;Lcom/android/settings/UserCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 364
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;

    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;->mData:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;-><init>(Lcom/android/settings/UserCredentialsSettings$AdapterData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 365
    return-void
.end method

.method public remove(Lcom/android/settings/UserCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "certHolder"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;->mData:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    invoke-virtual {v0, p1}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->remove(Lcom/android/settings/UserCredentialsSettings$CertHolder;)V

    .line 357
    return-void
.end method
