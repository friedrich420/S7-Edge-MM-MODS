.class Lcom/android/server/policy/PhoneWindowManager$25$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager$25;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$25;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$25;)V
    .registers 2

    .prologue
    .line 9656
    iput-object p1, p0, this$1:Lcom/android/server/policy/PhoneWindowManager$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 9659
    iget-object v0, p0, this$1:Lcom/android/server/policy/PhoneWindowManager$25;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$25;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "SystemUI is replaced"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 9660
    return-void
.end method
