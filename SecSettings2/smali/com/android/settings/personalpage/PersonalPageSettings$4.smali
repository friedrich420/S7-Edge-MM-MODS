.class Lcom/android/settings/personalpage/PersonalPageSettings$4;
.super Ljava/lang/Object;
.source "PersonalPageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalpage/PersonalPageSettings;->showDisclaimerPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageSettings;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageSettings$4;->this$0:Lcom/android/settings/personalpage/PersonalPageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings$4;->this$0:Lcom/android/settings/personalpage/PersonalPageSettings;

    # getter for: Lcom/android/settings/personalpage/PersonalPageSettings;->mPositiveClick:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->access$100(Lcom/android/settings/personalpage/PersonalPageSettings;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings$4;->this$0:Lcom/android/settings/personalpage/PersonalPageSettings;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->finish()V

    .line 162
    :cond_0
    return-void
.end method
