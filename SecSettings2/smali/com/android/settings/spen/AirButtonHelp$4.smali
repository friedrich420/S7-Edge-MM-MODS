.class Lcom/android/settings/spen/AirButtonHelp$4;
.super Ljava/lang/Object;
.source "AirButtonHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/spen/AirButtonHelp;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/spen/AirButtonHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/spen/AirButtonHelp;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/settings/spen/AirButtonHelp$4;->this$0:Lcom/android/settings/spen/AirButtonHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 237
    iget-object v1, p0, Lcom/android/settings/spen/AirButtonHelp$4;->this$0:Lcom/android/settings/spen/AirButtonHelp;

    invoke-virtual {v1}, Lcom/android/settings/spen/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_button_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 239
    .local v0, "airButtonState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/spen/AirButtonHelp$4;->this$0:Lcom/android/settings/spen/AirButtonHelp;

    # getter for: Lcom/android/settings/spen/AirButtonHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/spen/AirButtonHelp;->access$100(Lcom/android/settings/spen/AirButtonHelp;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 240
    return-void
.end method
