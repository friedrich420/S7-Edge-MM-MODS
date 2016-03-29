.class Lcom/android/settings/LGTRoamingEnv$8;
.super Ljava/lang/Object;
.source "LGTRoamingEnv.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LGTRoamingEnv;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LGTRoamingEnv;


# direct methods
.method constructor <init>(Lcom/android/settings/LGTRoamingEnv;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/settings/LGTRoamingEnv$8;->this$0:Lcom/android/settings/LGTRoamingEnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 303
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 304
    .local v0, "value":Ljava/lang/Boolean;
    const-string v1, "LGTRoamingEnv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange: LTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv$8;->this$0:Lcom/android/settings/LGTRoamingEnv;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    # invokes: Lcom/android/settings/LGTRoamingEnv;->toggleLteRoaming(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/LGTRoamingEnv;->access$1000(Lcom/android/settings/LGTRoamingEnv;Z)V

    .line 306
    const/4 v1, 0x1

    return v1
.end method
