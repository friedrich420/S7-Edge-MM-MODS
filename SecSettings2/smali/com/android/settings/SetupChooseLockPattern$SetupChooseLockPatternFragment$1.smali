.class Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment$1;
.super Ljava/lang/Object;
.source "SetupChooseLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

.field final synthetic val$layout:Lcom/android/setupwizardlib/SetupWizardLayout;


# direct methods
.method constructor <init>(Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;Lcom/android/setupwizardlib/SetupWizardLayout;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment$1;->this$0:Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    iput-object p2, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment$1;->val$layout:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment$1;->val$layout:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->requestLayout()V

    .line 98
    return-void
.end method
