.class Lcom/android/settings/applications/UninstallMultipleScreen$1;
.super Ljava/lang/Object;
.source "UninstallMultipleScreen.java"

# interfaces
.implements Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/UninstallMultipleScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/UninstallMultipleScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$1;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickDoneBtn()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$1;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # invokes: Lcom/android/settings/applications/UninstallMultipleScreen;->showConfirmationDialog()V
    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)V

    .line 87
    return-void
.end method

.method public destroyActionMode()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$1;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-virtual {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 82
    return-void
.end method
