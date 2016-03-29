.class public Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;
.super Landroid/preference/Preference;
.source "OtherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/OtherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OtherAppPreference"
.end annotation


# instance fields
.field private final appInfo:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

.field private isTrusted:Z

.field private final listener:Landroid/view/View$OnClickListener;

.field private final longListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mNfcAdapter"    # Landroid/nfc/NfcAdapter;
    .param p3, "appInfo"    # Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;
    .param p5, "longListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 288
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 289
    const v0, 0x7f04014c

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->setLayoutResource(I)V

    .line 290
    iput-object p3, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    .line 291
    iput-object p4, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->listener:Landroid/view/View$OnClickListener;

    .line 292
    iput-object p5, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    .line 293
    const-string v0, "SIM"

    iget-object v1, p3, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/nfc/NfcAdapter;->isTrustedPkg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->isTrusted:Z

    .line 294
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 298
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 300
    const v7, 0x1020001

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 301
    .local v1, "checkbox":Landroid/widget/CheckBox;
    if-eqz v1, :cond_0

    .line 302
    iget-object v7, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v7, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-boolean v7, v7, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 304
    iget-object v7, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 307
    :cond_0
    iget-object v7, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v7, v7, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    .line 308
    const v7, 0x7f0d0376

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 309
    .local v0, "banner":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 310
    iget-object v7, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v7, v7, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    iget-object v7, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v7, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 313
    iget-object v7, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v7, v7, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 314
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    .end local v0    # "banner":Landroid/widget/ImageView;
    :cond_1
    :goto_0
    const v7, 0x7f0d0378

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 332
    .local v5, "trusted":Landroid/widget/ImageView;
    if-eqz v5, :cond_2

    .line 333
    iget-boolean v7, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->isTrusted:Z

    if-eqz v7, :cond_4

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    :cond_2
    return-void

    .line 317
    .end local v5    # "trusted":Landroid/widget/ImageView;
    :cond_3
    const v7, 0x7f0d0377

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 318
    .local v4, "no_banner_view":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 319
    const v7, 0x7f0d0373

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 320
    .local v2, "no_banner_icon":Landroid/widget/ImageView;
    const v7, 0x7f0d0374

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 321
    .local v3, "no_banner_title":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v7, v7, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    iget-object v7, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v7, v7, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v7, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v7, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v4, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 325
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/16 v8, 0xcc

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 326
    iget-object v7, p0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v7, v7, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 333
    .end local v2    # "no_banner_icon":Landroid/widget/ImageView;
    .end local v3    # "no_banner_title":Landroid/widget/TextView;
    .end local v4    # "no_banner_view":Landroid/view/View;
    .restart local v5    # "trusted":Landroid/widget/ImageView;
    :cond_4
    const/16 v6, 0x8

    goto :goto_1
.end method
