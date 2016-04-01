.class Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$4;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->makeDnDHelpPopupLegacyLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 2873
    iput-object p1, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iput-object p2, p0, val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2875
    iget-object v0, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v1, p0, val$context:Landroid/content/Context;

    # invokes: Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->startDragMode(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->access$4600(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;Landroid/content/Context;)V

    .line 2876
    return-void
.end method
