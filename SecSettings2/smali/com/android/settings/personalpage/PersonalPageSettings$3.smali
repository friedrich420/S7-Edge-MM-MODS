.class Lcom/android/settings/personalpage/PersonalPageSettings$3;
.super Ljava/lang/Object;
.source "PersonalPageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 165
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageSettings$3;->this$0:Lcom/android/settings/personalpage/PersonalPageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x1

    .line 168
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings$3;->this$0:Lcom/android/settings/personalpage/PersonalPageSettings;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/android/settings/personalpage/PersonalPageSettings;->mPositiveClick:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings/personalpage/PersonalPageSettings;->access$102(Lcom/android/settings/personalpage/PersonalPageSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 169
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings$3;->this$0:Lcom/android/settings/personalpage/PersonalPageSettings;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "do_not_show_disclaimer"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 170
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings$3;->this$0:Lcom/android/settings/personalpage/PersonalPageSettings;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method
