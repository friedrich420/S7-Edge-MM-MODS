.class Lcom/android/settings/DataSlotChoice$1;
.super Ljava/lang/Object;
.source "DataSlotChoice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataSlotChoice;->onRoamingDisplayMobileDataOnAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataSlotChoice;


# direct methods
.method constructor <init>(Lcom/android/settings/DataSlotChoice;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/settings/DataSlotChoice$1;->this$0:Lcom/android/settings/DataSlotChoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 459
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 460
    const-string v0, "DataSlotChoice"

    const-string v1, " onRoamingDisplayMobileDataOnAlert onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method
