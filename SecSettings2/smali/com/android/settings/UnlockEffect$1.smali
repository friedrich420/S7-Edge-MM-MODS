.class Lcom/android/settings/UnlockEffect$1;
.super Ljava/lang/Object;
.source "UnlockEffect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/UnlockEffect;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings/UnlockEffect$1;->this$0:Lcom/android/settings/UnlockEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings/UnlockEffect$1;->this$0:Lcom/android/settings/UnlockEffect;

    invoke-virtual {v0}, Lcom/android/settings/UnlockEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_ripple_effect"

    iget-object v2, p0, Lcom/android/settings/UnlockEffect$1;->this$0:Lcom/android/settings/UnlockEffect;

    # getter for: Lcom/android/settings/UnlockEffect;->mDefaultUnlock:I
    invoke-static {v2}, Lcom/android/settings/UnlockEffect;->access$000(Lcom/android/settings/UnlockEffect;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    const-string v0, "UnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockscreen_ripple_effect DB Value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/UnlockEffect$1;->this$0:Lcom/android/settings/UnlockEffect;

    # getter for: Lcom/android/settings/UnlockEffect;->mDefaultUnlock:I
    invoke-static {v2}, Lcom/android/settings/UnlockEffect;->access$000(Lcom/android/settings/UnlockEffect;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/settings/UnlockEffect$1;->this$0:Lcom/android/settings/UnlockEffect;

    invoke-virtual {v0}, Lcom/android/settings/UnlockEffect;->finish()V

    .line 173
    return-void
.end method
