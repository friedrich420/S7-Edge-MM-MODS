.class Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$7;
.super Ljava/lang/Object;
.source "ConfirmLockUniversal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->attachListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$7;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$7;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # invokes: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->checkForCorrectPassword()V
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1400(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    .line 577
    return-void
.end method
