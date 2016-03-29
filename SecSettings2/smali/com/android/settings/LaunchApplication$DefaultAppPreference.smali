.class Lcom/android/settings/LaunchApplication$DefaultAppPreference;
.super Landroid/preference/Preference;
.source "LaunchApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LaunchApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultAppPreference"
.end annotation


# instance fields
.field packageName:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/settings/LaunchApplication;


# direct methods
.method public constructor <init>(Lcom/android/settings/LaunchApplication;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->this$0:Lcom/android/settings/LaunchApplication;

    .line 272
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 273
    const v0, 0x7f04011b

    invoke-virtual {p0, v0}, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->setLayoutResource(I)V

    .line 274
    invoke-virtual {p0, p3}, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 275
    invoke-virtual {p0, p4}, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 276
    iput-object p5, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->packageName:Ljava/lang/CharSequence;

    .line 277
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 281
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 282
    const v8, 0x7f0d0319

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 283
    .local v1, "clearButton":Landroid/widget/Button;
    iget-object v8, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->this$0:Lcom/android/settings/LaunchApplication;

    iget-object v8, v8, Lcom/android/settings/LaunchApplication;->mClearClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v8, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 288
    iget-object v8, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->this$0:Lcom/android/settings/LaunchApplication;

    invoke-virtual {v8}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "content://com.sec.knox.provider2/KioskMode"

    const-string v10, "isKioskModeEnabled"

    invoke-static {v8, v9, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 292
    .local v4, "kioskModeEnabled":I
    if-ne v4, v6, :cond_0

    .line 293
    iget-object v8, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->this$0:Lcom/android/settings/LaunchApplication;

    invoke-virtual {v8}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "content://com.sec.knox.provider2/KioskMode"

    const-string v10, "getKioskHomePackage"

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "kioskHomePackage":Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v8, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 299
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 303
    .end local v3    # "kioskHomePackage":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v10, "isApplicationSetToDefault"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v8, v9, v10, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 313
    .local v0, "appSetDefault":I
    if-ne v0, v6, :cond_2

    move v2, v6

    .line 314
    .local v2, "isAppSetDefault":Z
    :goto_0
    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 315
    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 320
    :cond_1
    const v6, 0x7f0d02f6

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 321
    .local v5, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->this$0:Lcom/android/settings/LaunchApplication;

    iget-object v6, v6, Lcom/android/settings/LaunchApplication;->mApplicationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v6, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 323
    return-void

    .end local v2    # "isAppSetDefault":Z
    .end local v5    # "v":Landroid/view/View;
    :cond_2
    move v2, v7

    .line 313
    goto :goto_0

    .restart local v2    # "isAppSetDefault":Z
    :cond_3
    move v6, v7

    .line 315
    goto :goto_1
.end method
