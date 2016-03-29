.class Lcom/android/settings/UnlockEffect$3;
.super Ljava/lang/Object;
.source "UnlockEffect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UnlockEffect;->createDialogforTablet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UnlockEffect;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/UnlockEffect;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/settings/UnlockEffect$3;->this$0:Lcom/android/settings/UnlockEffect;

    iput-object p2, p0, Lcom/android/settings/UnlockEffect$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/UnlockEffect$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 186
    iget-object v0, p0, Lcom/android/settings/UnlockEffect$3;->this$0:Lcom/android/settings/UnlockEffect;

    invoke-virtual {v0}, Lcom/android/settings/UnlockEffect;->finish()V

    .line 187
    return-void
.end method
