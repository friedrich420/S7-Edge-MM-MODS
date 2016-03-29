.class Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 444
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    # getter for: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KNOX Mode Preference Refresh"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    # getter for: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;
    invoke-static {v4}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$300(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 447
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews(Landroid/content/Context;)V
    invoke-static {v4, v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$400(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/content/Context;)V

    .line 449
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    const-string v5, "textservices"

    # invokes: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$500(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/TextServicesManager;

    .line 450
    .local v3, "tsm":Landroid/view/textservice/TextServicesManager;
    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 451
    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 452
    .local v0, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v0, :cond_0

    .line 453
    const-string v4, "com.sec.android.inputmethod"

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 454
    .local v1, "skipSetSummary":Z
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    const-string v5, "spellcheckers_settings"

    invoke-virtual {v4, v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 455
    .local v2, "spellCheckerInKnox":Landroid/preference/Preference;
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 456
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    # invokes: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$600(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 461
    .end local v0    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v1    # "skipSetSummary":Z
    .end local v2    # "spellCheckerInKnox":Landroid/preference/Preference;
    .end local v3    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_0
    return-void
.end method
