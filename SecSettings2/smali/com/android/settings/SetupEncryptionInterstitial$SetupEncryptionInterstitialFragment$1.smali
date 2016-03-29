.class Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment$1;
.super Ljava/lang/Object;
.source "SetupEncryptionInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment$1;->this$0:Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment$1;->this$0:Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;

    # getter for: Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;
    invoke-static {v0}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->access$000(Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;)Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->requestLayout()V

    .line 84
    return-void
.end method
