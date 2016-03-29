.class Lcom/android/settings/wifi/WifiAuthFailWarningDialog$3;
.super Ljava/lang/Object;
.source "WifiAuthFailWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiAuthFailWarningDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiAuthFailWarningDialog;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$3;->this$0:Lcom/android/settings/wifi/WifiAuthFailWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$3;->this$0:Lcom/android/settings/wifi/WifiAuthFailWarningDialog;

    # getter for: Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->mAuthFailDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->access$000(Lcom/android/settings/wifi/WifiAuthFailWarningDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAuthFailWarningDialog$3;->this$0:Lcom/android/settings/wifi/WifiAuthFailWarningDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiAuthFailWarningDialog;->finish()V

    .line 130
    return-void
.end method
