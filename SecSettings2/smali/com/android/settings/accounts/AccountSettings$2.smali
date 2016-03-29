.class Lcom/android/settings/accounts/AccountSettings$2;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSettings;->addAABAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 333
    const/4 v1, 0x0

    .line 334
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v3}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 335
    .local v2, "tempCtx":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "AAB_ENABLED_FLAG"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    # invokes: Lcom/android/settings/accounts/AccountSettings;->checkIfSameSimUsed(Landroid/content/Context;)Z
    invoke-static {v3, v2}, Lcom/android/settings/accounts/AccountSettings;->access$300(Lcom/android/settings/accounts/AccountSettings;Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 337
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "samsung.intent.action.START_DS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .restart local v1    # "intent":Landroid/content/Intent;
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 339
    const-string v3, "CALLER"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 352
    :goto_0
    return v6

    .line 342
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "samsung.intent.action.start.SubscriberActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .restart local v1    # "intent":Landroid/content/Intent;
    const v3, 0x10808000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 345
    const-string v3, "CALLER"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
