.class public Lcom/android/systemui/tuner/StatusBarSwitch;
.super Landroid/preference/SwitchPreference;
.source "StatusBarSwitch.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method private setList(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "blacklist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/systemui/tuner/StatusBarSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "icon_blacklist"

    const-string v2, ","

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 71
    return-void
.end method


# virtual methods
.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/StatusBarSwitch;->mBlacklist:Ljava/util/Set;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/tuner/StatusBarSwitch;->mBlacklist:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/StatusBarSwitch;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/StatusBarSwitch;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected persistBoolean(Z)Z
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 51
    if-nez p1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/android/systemui/tuner/StatusBarSwitch;->mBlacklist:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/StatusBarSwitch;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/tuner/StatusBarSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xea

    invoke-virtual {p0}, Lcom/android/systemui/tuner/StatusBarSwitch;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/tuner/StatusBarSwitch;->mBlacklist:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/StatusBarSwitch;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/android/systemui/tuner/StatusBarSwitch;->mBlacklist:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/StatusBarSwitch;->setList(Ljava/util/Set;)V

    .line 64
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/tuner/StatusBarSwitch;->mBlacklist:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/StatusBarSwitch;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/tuner/StatusBarSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe9

    invoke-virtual {p0}, Lcom/android/systemui/tuner/StatusBarSwitch;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/tuner/StatusBarSwitch;->mBlacklist:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/StatusBarSwitch;->setList(Ljava/util/Set;)V

    goto :goto_0
.end method
