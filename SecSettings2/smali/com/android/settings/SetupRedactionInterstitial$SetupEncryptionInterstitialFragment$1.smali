.class Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment$1;
.super Ljava/lang/Object;
.source "SetupRedactionInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment$1;->this$0:Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;

    iput-object p2, p0, Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 82
    return-void
.end method
