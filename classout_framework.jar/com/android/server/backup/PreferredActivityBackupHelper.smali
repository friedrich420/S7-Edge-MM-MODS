.class public Lcom/android/server/backup/PreferredActivityBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "PreferredActivityBackupHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final KEY_INTENT_VERIFICATION:Ljava/lang/String; = "intent-verification"

.field private static final KEY_PREFERRED:Ljava/lang/String; = "preferred-activity"

.field private static final STATE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PreferredBackup"


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 42
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "preferred-activity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "default-apps"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "intent-verification"

    aput-object v2, v0, v1

    invoke-direct {p0, v3, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 78
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const/4 v3, -0x1

    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_72

    :cond_d
    move v2, v3

    :goto_e
    packed-switch v2, :pswitch_data_80

    .line 89
    const-string v2, "PreferredBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected restore key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_29
    return-void

    .line 78
    :sswitch_2a
    const-string/jumbo v4, "preferred-activity"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_e

    :sswitch_34
    const-string v2, "default-apps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :sswitch_3e
    const-string v2, "intent-verification"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x2

    goto :goto_e

    .line 80
    :pswitch_48
    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restorePreferredActivities([BI)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4c} :catch_4d

    goto :goto_29

    .line 91
    :catch_4d
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PreferredBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to restore key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_67
    const/4 v2, 0x0

    :try_start_68
    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restoreDefaultApps([BI)V

    goto :goto_29

    .line 86
    :pswitch_6c
    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restoreIntentFilterVerification([BI)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_70} :catch_4d

    goto :goto_29

    .line 78
    nop

    :sswitch_data_72
    .sparse-switch
        -0x298b2982 -> :sswitch_34
        -0x19949e54 -> :sswitch_3e
        0x4fa3eadb -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_48
        :pswitch_67
        :pswitch_6c
    .end packed-switch
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 55
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const/4 v3, -0x1

    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_76

    :cond_d
    move v2, v3

    :goto_e
    packed-switch v2, :pswitch_data_84

    .line 63
    const-string v2, "PreferredBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected backup key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_29
    const/4 v2, 0x0

    :goto_2a
    return-object v2

    .line 55
    :sswitch_2b
    const-string/jumbo v4, "preferred-activity"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_e

    :sswitch_35
    const-string v2, "default-apps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :sswitch_3f
    const-string v2, "intent-verification"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x2

    goto :goto_e

    .line 57
    :pswitch_49
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getPreferredActivityBackup(I)[B

    move-result-object v2

    goto :goto_2a

    .line 59
    :pswitch_4f
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getDefaultAppsBackup(I)[B

    move-result-object v2

    goto :goto_2a

    .line 61
    :pswitch_55
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getIntentFilterVerificationBackup(I)[B
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_59} :catch_5b

    move-result-object v2

    goto :goto_2a

    .line 65
    :catch_5b
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PreferredBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to store payload "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 55
    nop

    :sswitch_data_76
    .sparse-switch
        -0x298b2982 -> :sswitch_35
        -0x19949e54 -> :sswitch_3f
        0x4fa3eadb -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_49
        :pswitch_4f
        :pswitch_55
    .end packed-switch
.end method
