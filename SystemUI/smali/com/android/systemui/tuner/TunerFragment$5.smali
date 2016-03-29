.class Lcom/android/systemui/tuner/TunerFragment$5;
.super Ljava/lang/Object;
.source "TunerFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/TunerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/TunerFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/TunerFragment;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerFragment$5;->this$0:Lcom/android/systemui/tuner/TunerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 195
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 196
    .local v0, "v":Z
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerFragment$5;->this$0:Lcom/android/systemui/tuner/TunerFragment;

    invoke-virtual {v1}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0xed

    invoke-static {v1, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 197
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerFragment$5;->this$0:Lcom/android/systemui/tuner/TunerFragment;

    invoke-virtual {v1}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_bar_show_battery_percent"

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    return v2

    .line 197
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
