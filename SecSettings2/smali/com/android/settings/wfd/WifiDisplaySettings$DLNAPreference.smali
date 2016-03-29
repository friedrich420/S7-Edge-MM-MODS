.class Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLNAPreference"
.end annotation


# instance fields
.field private isSupportMirroring:Z

.field private isSupportTDLS:Z

.field private final mDLNA:Lcom/samsung/android/allshare/Device;

.field public final sDeviceTypeImages:[I

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

.field private wlanMacAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Lcom/samsung/android/allshare/Device;Ljava/lang/String;)V
    .locals 10
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "device"    # Lcom/samsung/android/allshare/Device;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1629
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 1630
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1621
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->wlanMacAddress:Ljava/lang/String;

    .line 1622
    iput-boolean v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->isSupportMirroring:Z

    .line 1623
    iput-boolean v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->isSupportTDLS:Z

    .line 1625
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->sDeviceTypeImages:[I

    .line 1632
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/samsung/android/allshare/Device;

    .line 1634
    if-eqz p4, :cond_0

    const-string v5, ""

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1635
    invoke-direct {p0, p4}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->parseDeviceInfo(Ljava/lang/String;)V

    .line 1638
    :cond_0
    const-string v5, "WifiDisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iconCache size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " device url : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Device id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1641
    sget-object v5, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1642
    .local v3, "retBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    .line 1643
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1644
    .local v0, "drawable_icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1645
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1657
    .end local v0    # "drawable_icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "retBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    const v5, 0x7f040231

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setLayoutResource(I)V

    .line 1659
    instance-of v2, p3, Lcom/samsung/android/allshare/ScreenSharingDevice;

    .line 1660
    .local v2, "isSupportScreenSharing":Z
    if-nez v2, :cond_2

    .line 1661
    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e10e5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1662
    .local v4, "summaryText":Landroid/text/Spannable;
    if-eqz v4, :cond_2

    .line 1663
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0081

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v6

    invoke-interface {v4, v5, v8, v6, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1664
    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1668
    .end local v4    # "summaryText":Landroid/text/Spannable;
    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1670
    invoke-virtual {p0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1671
    return-void

    .line 1648
    .end local v2    # "isSupportScreenSharing":Z
    .restart local v3    # "retBitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->sDeviceTypeImages:[I

    aget v5, v5, v9

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setIcon(I)V

    .line 1649
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;

    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p1, v5, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1650
    .local v1, "icon_downloader":Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;
    new-array v5, v8, [Landroid/os/Handler;

    invoke-virtual {v1, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1654
    .end local v1    # "icon_downloader":Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;
    .end local v3    # "retBitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->sDeviceTypeImages:[I

    aget v5, v5, v9

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setIcon(I)V

    goto :goto_0

    .line 1625
    :array_0
    .array-data 4
        0x7f020223
        0x7f0201d3
    .end array-data
.end method

.method static synthetic access$3400(Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;)Lcom/samsung/android/allshare/Device;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/samsung/android/allshare/Device;

    return-object v0
.end method

.method private parseDeviceInfo(Ljava/lang/String;)V
    .locals 11
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1673
    const-string v7, "WifiDisplaySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseDeviceInfo value : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1677
    .local v6, "set":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v5, v0, v3

    .line 1678
    .local v5, "s":Ljava/lang/String;
    const-string v7, "wlanMacAddress"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1680
    const/16 v7, 0xf

    const/16 v9, 0x20

    :try_start_0
    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->wlanMacAddress:Ljava/lang/String;

    .line 1681
    const-string v7, "WifiDisplaySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wlanMacAddress  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->wlanMacAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1677
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1682
    :catch_0
    move-exception v2

    .line 1683
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "WifiDisplaySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseDeviceInfo exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1685
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v7, "WFDRole"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1687
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1688
    .local v1, "array":[Ljava/lang/String;
    aget-object v7, v1, v8

    const-string v9, "PrimarySink"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, v1, v8

    const-string v9, "Dual"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v7, v8

    :goto_2
    iput-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->isSupportMirroring:Z

    .line 1689
    const-string v7, "WifiDisplaySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isSupportMirroring  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->isSupportMirroring:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1688
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 1690
    .end local v1    # "array":[Ljava/lang/String;
    :cond_4
    const-string v7, "supportTDLS"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1692
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1693
    .restart local v1    # "array":[Ljava/lang/String;
    aget-object v7, v1, v8

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->isSupportTDLS:Z

    .line 1694
    const-string v7, "WifiDisplaySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isSupportTDLS  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->isSupportTDLS:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1698
    .end local v1    # "array":[Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    :cond_5
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const v6, -0xff5f32

    .line 1729
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 1731
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1732
    .local v2, "deviceName":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 1733
    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1736
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v1

    .line 1737
    .local v1, "connectedstate":I
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 1739
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_2

    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    .line 1740
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    .line 1741
    .local v3, "remoteP2pMacAddr":Ljava/lang/String;
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Device;->getScreenSharingP2pMacAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1742
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1743
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z
    invoke-static {v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2700(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WfdPickerDialog;->IsChangeDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1744
    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setEnabled(Z)V

    .line 1753
    .end local v3    # "remoteP2pMacAddr":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1747
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDLNADeviceUid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1748
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1749
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z
    invoke-static {v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2700(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WfdPickerDialog;->IsChangeDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1750
    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 1702
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDLNADeviceUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1703
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    .line 1704
    .local v0, "activeDisplayState":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1705
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->showDisconnectDialog()V
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2100(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    .line 1724
    .end local v0    # "activeDisplayState":I
    :goto_0
    return v5

    .line 1707
    .restart local v0    # "activeDisplayState":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const v2, 0x22070

    const-string v3, ""

    const/4 v4, 0x0

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;ZLjava/lang/String;)V
    invoke-static {v1, v2, v3, v5, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2200(Lcom/android/settings/wfd/WifiDisplaySettings;ILjava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 1709
    .end local v0    # "activeDisplayState":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2300(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, v1, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1710
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$002(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1711
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDevice()V
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2400(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    goto :goto_0

    .line 1713
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1715
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->isSupportTDLS:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->wlanMacAddress:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1716
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start TDLS with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->wlanMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2500(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->wlanMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->startMediaShare(Ljava/lang/String;Z)V

    .line 1720
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/samsung/android/allshare/Device;

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing(Lcom/samsung/android/allshare/Device;)V
    invoke-static {v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2600(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/samsung/android/allshare/Device;)V

    goto :goto_0
.end method
