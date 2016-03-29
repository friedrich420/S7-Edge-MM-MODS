.class public Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;
.super Landroid/preference/Preference;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentAppPreference"
.end annotation


# instance fields
.field private final appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

.field private isTrusted:Z

.field private final listener:Landroid/view/View$OnClickListener;

.field private final longListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mNfcAdapter"    # Landroid/nfc/NfcAdapter;
    .param p3, "appInfo"    # Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;
    .param p5, "longListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 371
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 372
    const v0, 0x7f04014e

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->setLayoutResource(I)V

    .line 373
    iput-object p3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 374
    iput-object p4, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    .line 375
    iput-object p5, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    .line 376
    const-string v0, "SIM"

    iget-object v1, p3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/nfc/NfcAdapter;->isTrustedPkg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->isTrusted:Z

    .line 377
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 381
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 383
    const v3, 0x1020019

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 384
    .local v1, "radioButton":Landroid/widget/RadioButton;
    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-boolean v3, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 385
    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 387
    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 389
    const v3, 0x7f0d0376

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 390
    .local v0, "banner":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v3, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 393
    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 394
    iget-object v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v3, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 396
    const v3, 0x7f0d0378

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 397
    .local v2, "trusted":Landroid/widget/ImageView;
    iget-boolean v3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->isTrusted:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    return-void

    .line 397
    :cond_0
    const/16 v3, 0x8

    goto :goto_0
.end method
