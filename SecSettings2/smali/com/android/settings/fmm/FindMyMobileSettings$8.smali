.class Lcom/android/settings/fmm/FindMyMobileSettings$8;
.super Ljava/lang/Object;
.source "FindMyMobileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/FindMyMobileSettings;->showReactivationLockDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/FindMyMobileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$8;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings$8;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    # invokes: Lcom/android/settings/fmm/FindMyMobileSettings;->onCancelPressed()V
    invoke-static {v0}, Lcom/android/settings/fmm/FindMyMobileSettings;->access$500(Lcom/android/settings/fmm/FindMyMobileSettings;)V

    .line 516
    return-void
.end method
