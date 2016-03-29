.class Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$1;
.super Ljava/lang/Object;
.source "PersonalPageLockTypeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->finish()V

    .line 399
    return-void
.end method
