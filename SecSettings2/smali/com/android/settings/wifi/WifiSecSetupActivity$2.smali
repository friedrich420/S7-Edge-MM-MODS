.class Lcom/android/settings/wifi/WifiSecSetupActivity$2;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSecSetupActivity;->resetAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$2;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$2;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    # getter for: Lcom/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$100(Lcom/android/settings/wifi/WifiSecSetupActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$2;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    # invokes: Lcom/android/settings/wifi/WifiSecSetupActivity;->startAnimation()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$200(Lcom/android/settings/wifi/WifiSecSetupActivity;)V

    .line 328
    const/4 v0, 0x1

    return v0
.end method
