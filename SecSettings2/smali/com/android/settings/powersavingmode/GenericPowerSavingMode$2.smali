.class Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;
.super Landroid/preference/Preference;
.source "GenericPowerSavingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 134
    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    # getter for: Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->access$300(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    # getter for: Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->access$300(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    const v3, 0x7f0e12e5

    invoke-virtual {v2, v3}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "mDescription":Ljava/lang/String;
    :goto_0
    const v2, 0x7f0d03bd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 141
    .local v1, "mDescriptionTextView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void

    .line 138
    .end local v0    # "mDescription":Ljava/lang/String;
    .end local v1    # "mDescriptionTextView":Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    const v3, 0x7f0e12e6

    invoke-virtual {v2, v3}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mDescription":Ljava/lang/String;
    goto :goto_0
.end method
