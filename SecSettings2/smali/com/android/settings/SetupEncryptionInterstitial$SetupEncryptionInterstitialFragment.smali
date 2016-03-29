.class public Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;
.super Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;
.source "SetupEncryptionInterstitial.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetupEncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupEncryptionInterstitialFragment"
.end annotation


# instance fields
.field private mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;)Lcom/android/setupwizardlib/SetupWizardLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    const v2, 0x7f0401d9

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/setupwizardlib/SetupWizardLayout;

    iput-object v2, p0, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 80
    .local v0, "hander":Landroid/os/Handler;
    new-instance v1, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment$1;-><init>(Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;)V

    .line 86
    .local v1, "runnalbe":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    iget-object v2, p0, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    return-object v2
.end method

.method public onNavigateBack()V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 113
    :cond_0
    return-void
.end method

.method public onNavigateNext()V
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SetupEncryptionInterstitial;

    .line 119
    .local v0, "activity":Lcom/android/settings/SetupEncryptionInterstitial;
    if-eqz v0, :cond_0

    .line 120
    const/4 v1, -0x1

    invoke-virtual {v0}, Lcom/android/settings/SetupEncryptionInterstitial;->getResultIntentData()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SetupEncryptionInterstitial;->setResult(ILandroid/content/Intent;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->finish()V

    .line 123
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    const v3, 0x7f0d029f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/SetupWizardLayout;

    .line 97
    .local v1, "layout":Lcom/android/setupwizardlib/SetupWizardLayout;
    invoke-virtual {v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v2

    .line 98
    .local v2, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    invoke-virtual {v2, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 101
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 102
    const v3, 0x7f0e0ea8

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 103
    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 105
    :cond_0
    return-void
.end method
