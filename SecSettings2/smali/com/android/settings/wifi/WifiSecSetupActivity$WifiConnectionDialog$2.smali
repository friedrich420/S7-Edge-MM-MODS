.class Lcom/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog$2;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;)V
    .locals 0

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog$2;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1276
    sget-object v0, Lcom/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->isAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1277
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "Wifi Captive Portal Dialog - OKAY BTN pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    invoke-static {}, Lcom/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->forget()V

    .line 1279
    return-void
.end method
