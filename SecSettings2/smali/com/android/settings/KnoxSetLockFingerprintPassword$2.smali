.class Lcom/android/settings/KnoxSetLockFingerprintPassword$2;
.super Ljava/lang/Object;
.source "KnoxSetLockFingerprintPassword.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 227
    iput-object p1, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$2;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$2;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    # getter for: Lcom/android/settings/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z
    invoke-static {v0}, Lcom/android/settings/KnoxSetLockFingerprintPassword;->access$000(Lcom/android/settings/KnoxSetLockFingerprintPassword;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$2;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    # invokes: Lcom/android/settings/KnoxSetLockFingerprintPassword;->handleNext()V
    invoke-static {v0}, Lcom/android/settings/KnoxSetLockFingerprintPassword;->access$300(Lcom/android/settings/KnoxSetLockFingerprintPassword;)V

    .line 235
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
