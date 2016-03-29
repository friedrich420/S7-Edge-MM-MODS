.class Lcom/android/settings/KnoxSetLockFingerprintPassword$3;
.super Ljava/lang/Object;
.source "KnoxSetLockFingerprintPassword.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KnoxSetLockFingerprintPassword;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/KnoxSetLockFingerprintPassword;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$3;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$3;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    # getter for: Lcom/android/settings/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z
    invoke-static {v0}, Lcom/android/settings/KnoxSetLockFingerprintPassword;->access$000(Lcom/android/settings/KnoxSetLockFingerprintPassword;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$3;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    # getter for: Lcom/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/KnoxSetLockFingerprintPassword;->access$100(Lcom/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e149c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
