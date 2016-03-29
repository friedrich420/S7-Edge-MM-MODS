.class public Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;
.super Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;
.source "SetupRedactionInterstitial.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetupRedactionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupEncryptionInterstitialFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    const v3, 0x7f0401db

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 77
    .local v2, "view":Landroid/view/View;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 78
    .local v0, "hander":Landroid/os/Handler;
    new-instance v1, Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment$1;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment$1;-><init>(Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;Landroid/view/View;)V

    .line 85
    .local v1, "runnalbe":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-object v2
.end method

.method public onNavigateBack()V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 104
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 107
    :cond_0
    return-void
.end method

.method public onNavigateNext()V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SetupRedactionInterstitial;

    .line 112
    .local v0, "activity":Lcom/android/settings/SetupRedactionInterstitial;
    if-eqz v0, :cond_0

    .line 113
    const/4 v1, -0x1

    invoke-virtual {v0}, Lcom/android/settings/SetupRedactionInterstitial;->getResultIntentData()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SetupRedactionInterstitial;->setResult(ILandroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->finish()V

    .line 116
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    const v2, 0x7f0d029f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardLayout;

    .line 95
    .local v0, "layout":Lcom/android/setupwizardlib/SetupWizardLayout;
    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    .line 96
    .local v1, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    invoke-virtual {v1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 97
    invoke-virtual {v1}, Lcom/android/setupwizardlib/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 99
    return-void
.end method
