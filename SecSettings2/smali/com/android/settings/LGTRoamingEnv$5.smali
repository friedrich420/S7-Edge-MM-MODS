.class Lcom/android/settings/LGTRoamingEnv$5;
.super Landroid/database/ContentObserver;
.source "LGTRoamingEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LGTRoamingEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LGTRoamingEnv;


# direct methods
.method constructor <init>(Lcom/android/settings/LGTRoamingEnv;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/settings/LGTRoamingEnv$5;->this$0:Lcom/android/settings/LGTRoamingEnv;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv$5;->this$0:Lcom/android/settings/LGTRoamingEnv;

    # getter for: Lcom/android/settings/LGTRoamingEnv;->mLteRoamingSettings:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/LGTRoamingEnv;->access$900(Lcom/android/settings/LGTRoamingEnv;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/LGTRoamingEnv$5;->this$0:Lcom/android/settings/LGTRoamingEnv;

    invoke-virtual {v3}, Lcom/android/settings/LGTRoamingEnv;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lte_roaming_mode_on"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_1
    return-void

    .line 234
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method
