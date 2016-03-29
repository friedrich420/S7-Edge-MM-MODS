.class Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;
.super Ljava/lang/Object;
.source "SimLockStatus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 355
    const-string v0, "persist.sys.kddi_sim_lock"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kddi_sim_lock_test"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 357
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    # getter for: Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mTestDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->access$400(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    # getter for: Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mTestDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->access$400(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    # invokes: Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->startMainSIMLock()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->access$500(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    .line 361
    return-void
.end method
