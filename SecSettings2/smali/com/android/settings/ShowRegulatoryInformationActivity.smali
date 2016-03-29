.class public Lcom/android/settings/ShowRegulatoryInformationActivity;
.super Landroid/app/Activity;
.source "ShowRegulatoryInformationActivity.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const-string v9, "ShowRegulatoryInformationActivity"

    const-string v10, "ShowRegulatoryInformationActivity onCreate"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const v9, 0x7f0401b2

    invoke-virtual {p0, v9}, Lcom/android/settings/ShowRegulatoryInformationActivity;->setContentView(I)V

    .line 32
    iput-object p0, p0, Lcom/android/settings/ShowRegulatoryInformationActivity;->mContext:Landroid/content/Context;

    .line 33
    const v9, 0x7f0e07a0

    invoke-virtual {p0, v9}, Lcom/android/settings/ShowRegulatoryInformationActivity;->setTitle(I)V

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/ShowRegulatoryInformationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 36
    .local v2, "actionBar":Landroid/app/ActionBar;
    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 40
    :cond_0
    const v9, 0x7f0d0454

    invoke-virtual {p0, v9}, Lcom/android/settings/ShowRegulatoryInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 41
    .local v3, "bgImg":Landroid/widget/ImageView;
    const-string v0, "/system/etc/regulatory_info.png"

    .line 43
    .local v0, "RegulatoryFilePath":Ljava/lang/String;
    const-string v9, "ro.product.name"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, "mProductName":Ljava/lang/String;
    const-string v9, "zero"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "SCV31"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "marinelteuc"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "SC-05G"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "SC-04G"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "404SC"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 48
    .local v1, "ZERO_PROJECT":Z
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 49
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/settings/ShowRegulatoryInformationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 50
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "imei":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 52
    const-string v8, "35222107"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "35232307"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "35420707"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "35422107"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 57
    :cond_2
    const-string v8, "ShowRegulatoryInformationActivity"

    const-string v9, "S6 JPN - Regulatory Info / VN"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v0, "/system/etc/regulatory_info_vn.png"

    .line 65
    .end local v5    # "imei":Ljava/lang/String;
    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 66
    .local v4, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    return-void

    .end local v1    # "ZERO_PROJECT":Z
    .end local v4    # "bm":Landroid/graphics/Bitmap;
    :cond_4
    move v1, v8

    .line 44
    goto :goto_0

    .line 60
    .restart local v1    # "ZERO_PROJECT":Z
    .restart local v5    # "imei":Ljava/lang/String;
    .restart local v7    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    const-string v8, "ShowRegulatoryInformationActivity"

    const-string v9, "S6 JPN - Regulatory Info"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 62
    :cond_6
    const-string v8, "ShowRegulatoryInformationActivity"

    const-string v9, "S6 JPN - IMEI is null"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 72
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 77
    return-void
.end method
