.class final Lcom/android/settings/WirelessSettings$6;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 739
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v11, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v14, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 742
    .local v13, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 743
    .local v8, "myUserId":I
    if-eqz v8, :cond_13

    const/4 v4, 0x1

    .line 746
    .local v4, "isSecondaryUser":Z
    :goto_0
    const-string v14, "com.ipsec.vpnclient"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 748
    .local v3, "hasAdvVpn":Z
    if-eqz v3, :cond_14

    .line 749
    const-string v14, "vpn_settings"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    :goto_1
    if-nez v4, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "no_config_vpn"

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 755
    :cond_0
    const-string v14, "vpn_settings"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    const-string v14, "vpn_settings_for_att"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_1
    const-string v14, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 760
    .local v6, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 761
    .local v7, "msg":Landroid/os/Message;
    const/16 v14, 0x15

    iput v14, v7, Landroid/os/Message;->what:I

    .line 762
    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v14

    # setter for: Lcom/android/settings/WirelessSettings;->mTetheredDataML:I
    invoke-static {v14}, Lcom/android/settings/WirelessSettings;->access$402(I)I

    .line 763
    const-string v14, "WirelessSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getNonIndexableKeys() mTetheredDataML : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    # getter for: Lcom/android/settings/WirelessSettings;->mTetheredDataML:I
    invoke-static {}, Lcom/android/settings/WirelessSettings;->access$400()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const-string v14, "wifi_ap_settings"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    const-string v14, "MTR"

    # getter for: Lcom/android/settings/WirelessSettings;->sSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/WirelessSettings;->access$500()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 767
    const-string v14, "vpn_settings"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    :cond_2
    if-nez v4, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 771
    :cond_3
    const-string v14, "mobile_network_settings"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    .line 774
    .local v12, "sSalesCode":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v14, "VZW"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 775
    :cond_5
    const-string v14, "mobile_network_settings"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    :cond_6
    const-string v14, "VZW"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 779
    const-string v14, "nearby_setting_vzw"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    const-string v14, "media_share_category_vzw"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 786
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const-string v14, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 788
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-nez v4, :cond_8

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "SBM"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 791
    :cond_8
    const-string v14, "tether_settings"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    const-string v14, "wifi_ap_settings"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    :cond_9
    const-string v14, "ethernet_settings"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    const-string v14, "com.samsung.rcs"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_15

    .line 800
    const-string v14, "rcs_settings"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    const-string v14, "rcs_settings_partial_branded"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 814
    .local v5, "isSupportMirrorLink":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "com.samsung.android.app.mirrorlink"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    if-eqz v5, :cond_a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    # getter for: Lcom/android/settings/WirelessSettings;->mTetheredDataML:I
    invoke-static {}, Lcom/android/settings/WirelessSettings;->access$400()I

    move-result v14

    const/4 v15, 0x3

    if-ge v14, v15, :cond_b

    .line 822
    :cond_a
    const-string v14, "mirror_link_settings"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_b
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSmartBonding()Z

    move-result v14

    if-nez v14, :cond_c

    .line 827
    const-string v14, "smart_bonding_settings"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_c
    invoke-static/range {p1 .. p1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 832
    const-string v14, "vpn_settings"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    const-string v14, "vpn_settings_for_att"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_d
    const-string v14, "network_reset"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v14

    if-nez v14, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v14

    if-eqz v14, :cond_f

    :cond_e
    if-eqz v4, :cond_10

    .line 841
    :cond_f
    const-string v14, "multi_path"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 845
    const-string v14, "wifi_calling_settings"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    :cond_11
    if-eqz v4, :cond_12

    .line 849
    const-string v14, "nearby_scanning_setting_category"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_12
    return-object v11

    .line 743
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "hasAdvVpn":Z
    .end local v4    # "isSecondaryUser":Z
    .end local v5    # "isSupportMirrorLink":Z
    .end local v6    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v7    # "msg":Landroid/os/Message;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "sSalesCode":Ljava/lang/String;
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 751
    .restart local v3    # "hasAdvVpn":Z
    .restart local v4    # "isSecondaryUser":Z
    :cond_14
    const-string v14, "vpn_settings_for_att"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 803
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v6    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .restart local v7    # "msg":Landroid/os/Message;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "sSalesCode":Ljava/lang/String;
    :cond_15
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 804
    .local v10, "rcsCscFeatures":Ljava/lang/String;
    if-eqz v10, :cond_16

    const-string v14, "PARTIAL_BRANDED"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 805
    const-string v14, "rcs_settings"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 807
    :cond_16
    const-string v14, "rcs_settings_partial_branded"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 815
    .end local v10    # "rcsCscFeatures":Ljava/lang/String;
    .restart local v5    # "isSupportMirrorLink":Z
    :catch_0
    move-exception v2

    .line 816
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    .line 818
    if-eqz v5, :cond_17

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    # getter for: Lcom/android/settings/WirelessSettings;->mTetheredDataML:I
    invoke-static {}, Lcom/android/settings/WirelessSettings;->access$400()I

    move-result v14

    const/4 v15, 0x3

    if-ge v14, v15, :cond_b

    .line 822
    :cond_17
    const-string v14, "mirror_link_settings"

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 818
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v14

    if-eqz v5, :cond_18

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_19

    # getter for: Lcom/android/settings/WirelessSettings;->mTetheredDataML:I
    invoke-static {}, Lcom/android/settings/WirelessSettings;->access$400()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ge v15, v0, :cond_19

    .line 822
    :cond_18
    const-string v15, "mirror_link_settings"

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    throw v14
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 722
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 725
    .local v0, "raw":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 727
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 728
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "raw":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 729
    .restart local v0    # "raw":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v3, "multi_path"

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 730
    const v3, 0x7f0e0ff7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 731
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_0
    return-object v2
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 713
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const-class v1, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 714
    const v1, 0x7f0800ea

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 715
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
