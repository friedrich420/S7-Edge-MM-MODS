.class Lcom/android/settings/activekey/ActiveKeySettingDialog$2;
.super Ljava/lang/Object;
.source "ActiveKeySettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 58
    iput-object p1, p0, Lcom/android/settings/activekey/ActiveKeySettingDialog$2;->this$0:Lcom/android/settings/activekey/ActiveKeySettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/activekey/ActiveKeySettingDialog$2;->this$0:Lcom/android/settings/activekey/ActiveKeySettingDialog;

    invoke-virtual {v0}, Lcom/android/settings/activekey/ActiveKeySettingDialog;->finish()V

    .line 62
    return-void
.end method
