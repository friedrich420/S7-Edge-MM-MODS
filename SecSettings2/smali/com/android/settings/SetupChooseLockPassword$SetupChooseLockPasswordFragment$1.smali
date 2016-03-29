.class Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment$1;
.super Ljava/lang/Object;
.source "SetupChooseLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    # getter for: Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;
    invoke-static {v0}, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->access$000(Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;)Lcom/android/setupwizardlib/SetupWizardLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->requestLayout()V

    .line 105
    return-void
.end method
