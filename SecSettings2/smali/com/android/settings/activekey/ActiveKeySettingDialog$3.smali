.class Lcom/android/settings/activekey/ActiveKeySettingDialog$3;
.super Ljava/lang/Object;
.source "ActiveKeySettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/activekey/ActiveKeySettingDialog;->showProceedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/activekey/ActiveKeySettingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/activekey/ActiveKeySettingDialog;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/activekey/ActiveKeySettingDialog$3;->this$0:Lcom/android/settings/activekey/ActiveKeySettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/activekey/ActiveKeySettingDialog$3;->this$0:Lcom/android/settings/activekey/ActiveKeySettingDialog;

    invoke-virtual {v0}, Lcom/android/settings/activekey/ActiveKeySettingDialog;->finish()V

    .line 68
    return-void
.end method
