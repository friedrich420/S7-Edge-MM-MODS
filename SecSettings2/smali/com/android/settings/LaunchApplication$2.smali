.class Lcom/android/settings/LaunchApplication$2;
.super Ljava/lang/Object;
.source "LaunchApplication.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LaunchApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LaunchApplication;


# direct methods
.method constructor <init>(Lcom/android/settings/LaunchApplication;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/LaunchApplication$2;->this$0:Lcom/android/settings/LaunchApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/LaunchApplication$2;->this$0:Lcom/android/settings/LaunchApplication;

    # getter for: Lcom/android/settings/LaunchApplication;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/settings/LaunchApplication;->access$000(Lcom/android/settings/LaunchApplication;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/LaunchApplication$2;->this$0:Lcom/android/settings/LaunchApplication;

    # getter for: Lcom/android/settings/LaunchApplication;->mUsbManager:Landroid/hardware/usb/IUsbManager;
    invoke-static {v2}, Lcom/android/settings/LaunchApplication;->access$100(Lcom/android/settings/LaunchApplication;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/android/settings/LaunchApplication$2;->this$0:Lcom/android/settings/LaunchApplication;

    # invokes: Lcom/android/settings/LaunchApplication;->removeDefaultApplicationList(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/settings/LaunchApplication;->access$200(Lcom/android/settings/LaunchApplication;Ljava/lang/String;)V

    .line 119
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LaunchApplication"

    const-string v3, "mUsbManager.clearDefaults"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
