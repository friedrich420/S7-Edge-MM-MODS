.class final Lcom/android/server/power/ShutdownThread$4;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->createBeforeMConfirmDialog(Landroid/content/Context;IILcom/android/server/power/ShutdownThread$CloseDialogReceiver;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 688
    iput-object p1, p0, val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 691
    iget-object v0, p0, val$ctx:Landroid/content/Context;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->access$400(Landroid/content/Context;Z)V

    .line 692
    return-void
.end method
