.class Lcom/android/settings/DeviceAdminAdd$4$1;
.super Landroid/os/RemoteCallback;
.source "DeviceAdminAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceAdminAdd$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DeviceAdminAdd$4;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAdd$4;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$4$1;->this$1:Lcom/android/settings/DeviceAdminAdd$4;

    invoke-direct {p0, p2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onResult(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 350
    if-eqz p1, :cond_0

    const-string v1, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 354
    .local v0, "msg":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$4$1;->this$1:Lcom/android/settings/DeviceAdminAdd$4;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAdd$4;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->continueRemoveAction(Ljava/lang/CharSequence;)V

    .line 355
    return-void

    .line 350
    .end local v0    # "msg":Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
