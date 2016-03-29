.class Lcom/android/settings/wifi/SetupWizardWifiScreen$14;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$14;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 516
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 517
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$14;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->setResult(I)V

    .line 518
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$14;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-virtual {v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->finish()V

    .line 519
    return-void
.end method
