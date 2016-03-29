.class Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$3;
.super Ljava/lang/Object;
.source "RedactionInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$3;->this$0:Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$3;->this$0:Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;

    # getter for: Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mHideAllButton:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->access$200(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$3;->this$0:Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;

    # getter for: Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mHideAllButton:Landroid/widget/CheckedTextView;
    invoke-static {v0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->access$200(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)Landroid/widget/CheckedTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$3;->this$0:Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;

    invoke-virtual {v1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0476

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setMinimumHeight(I)V

    .line 169
    :cond_0
    return-void
.end method
