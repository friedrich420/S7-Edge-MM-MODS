.class Lcom/android/settings/wfd/WfdHelpActivity$4;
.super Ljava/lang/Object;
.source "WfdHelpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdHelpActivity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdHelpActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/settings/wfd/WfdHelpActivity$4;->this$0:Lcom/android/settings/wfd/WfdHelpActivity;

    iput-object p2, p0, Lcom/android/settings/wfd/WfdHelpActivity$4;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 128
    const-string v0, "WfdHelpActivity"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity$4;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 130
    iget-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity$4;->this$0:Lcom/android/settings/wfd/WfdHelpActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdHelpActivity;->finish()V

    .line 131
    return-void
.end method
