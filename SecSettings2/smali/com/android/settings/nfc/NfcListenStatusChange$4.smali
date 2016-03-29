.class Lcom/android/settings/nfc/NfcListenStatusChange$4;
.super Ljava/lang/Object;
.source "NfcListenStatusChange.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcListenStatusChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcListenStatusChange;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcListenStatusChange;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 294
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    :goto_0
    return v2

    .line 298
    :cond_0
    iget-object v4, p0, Lcom/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeABF:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$300(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 300
    iget-object v4, p0, Lcom/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-static {v4}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$000(Lcom/android/settings/nfc/NfcListenStatusChange;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setNfcTypeSettings(I)Z

    move-result v1

    .line 301
    .local v1, "setret":Z
    if-eqz v1, :cond_1

    .line 302
    const-string v2, "00001,0"

    invoke-static {v2}, Lcom/android/settings/nfc/NfcOsaifuConfigAccess;->setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z

    move-result v0

    .line 303
    .local v0, "ret":Z
    if-ne v0, v3, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    const-string v4, "00001,0"

    # setter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$602(Lcom/android/settings/nfc/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .end local v0    # "ret":Z
    .end local v1    # "setret":Z
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # invokes: Lcom/android/settings/nfc/NfcListenStatusChange;->startHandler()V
    invoke-static {v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$700(Lcom/android/settings/nfc/NfcListenStatusChange;)V

    .line 336
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->finish()V

    move v2, v3

    .line 337
    goto :goto_0

    .line 307
    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeAF:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$400(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 309
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$000(Lcom/android/settings/nfc/NfcListenStatusChange;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setNfcTypeSettings(I)Z

    move-result v1

    .line 310
    .restart local v1    # "setret":Z
    if-eqz v1, :cond_1

    .line 311
    const-string v2, "00001,1"

    invoke-static {v2}, Lcom/android/settings/nfc/NfcOsaifuConfigAccess;->setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z

    move-result v0

    .line 312
    .restart local v0    # "ret":Z
    if-ne v0, v3, :cond_1

    .line 313
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    const-string v4, "00001,1"

    # setter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$602(Lcom/android/settings/nfc/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 316
    .end local v0    # "ret":Z
    .end local v1    # "setret":Z
    :cond_3
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeBF:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$500(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$800(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 319
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$000(Lcom/android/settings/nfc/NfcListenStatusChange;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setNfcTypeSettings(I)Z

    move-result v1

    .line 320
    .restart local v1    # "setret":Z
    if-eqz v1, :cond_1

    .line 321
    const-string v2, "00001,2"

    invoke-static {v2}, Lcom/android/settings/nfc/NfcOsaifuConfigAccess;->setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z

    move-result v0

    .line 322
    .restart local v0    # "ret":Z
    if-ne v0, v3, :cond_1

    .line 323
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    const-string v4, "00001,2"

    # setter for: Lcom/android/settings/nfc/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$602(Lcom/android/settings/nfc/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 327
    .end local v0    # "ret":Z
    .end local v1    # "setret":Z
    :cond_4
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # invokes: Lcom/android/settings/nfc/NfcListenStatusChange;->startHandlerBF()V
    invoke-static {v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$900(Lcom/android/settings/nfc/NfcListenStatusChange;)V

    .line 328
    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$1000(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v2, v3

    .line 329
    goto/16 :goto_0
.end method
