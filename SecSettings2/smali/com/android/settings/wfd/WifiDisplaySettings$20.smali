.class Lcom/android/settings/wfd/WifiDisplaySettings$20;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->createDongleRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 2015
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$20;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$20;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$3302(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 2018
    return-void
.end method
