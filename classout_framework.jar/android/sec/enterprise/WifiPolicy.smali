.class public Landroid/sec/enterprise/WifiPolicy;
.super Ljava/lang/Object;
.source "WifiPolicy.java"


# static fields
.field public static final ACTION_ENABLE_NETWORK:Ljava/lang/String; = "edm.intent.action.enable"

.field public static final ENGINE_ID_SECPKCS11:Ljava/lang/String; = "secpkcs11"

.field public static final ENGINE_ID_UCMENGINE:Ljava/lang/String; = "ucsengine"

.field public static final SECURITY_LEVEL_EAP_AKA:I = 0x19

.field public static final SECURITY_LEVEL_EAP_AKA_CCKM:I = 0x1b

.field public static final SECURITY_LEVEL_EAP_AKA_FT:I = 0x1a

.field public static final SECURITY_LEVEL_EAP_AKA_PRIME:I = 0x1c

.field public static final SECURITY_LEVEL_EAP_AKA_PRIME_CCKM:I = 0x1e

.field public static final SECURITY_LEVEL_EAP_AKA_PRIME_FT:I = 0x1d

.field public static final SECURITY_LEVEL_EAP_FAST:I = 0x4

.field public static final SECURITY_LEVEL_EAP_FAST_CCKM:I = 0x12

.field public static final SECURITY_LEVEL_EAP_FAST_FT:I = 0x11

.field public static final SECURITY_LEVEL_EAP_LEAP:I = 0x3

.field public static final SECURITY_LEVEL_EAP_LEAP_CCKM:I = 0x10

.field public static final SECURITY_LEVEL_EAP_LEAP_FT:I = 0xf

.field public static final SECURITY_LEVEL_EAP_PEAP:I = 0x5

.field public static final SECURITY_LEVEL_EAP_PEAP_CCKM:I = 0xa

.field public static final SECURITY_LEVEL_EAP_PEAP_FT:I = 0x9

.field public static final SECURITY_LEVEL_EAP_PWD:I = 0x13

.field public static final SECURITY_LEVEL_EAP_PWD_CCKM:I = 0x15

.field public static final SECURITY_LEVEL_EAP_PWD_FT:I = 0x14

.field public static final SECURITY_LEVEL_EAP_SIM:I = 0x16

.field public static final SECURITY_LEVEL_EAP_SIM_CCKM:I = 0x18

.field public static final SECURITY_LEVEL_EAP_SIM_FT:I = 0x17

.field public static final SECURITY_LEVEL_EAP_TLS:I = 0x7

.field public static final SECURITY_LEVEL_EAP_TLS_CCKM:I = 0xe

.field public static final SECURITY_LEVEL_EAP_TLS_FT:I = 0xd

.field public static final SECURITY_LEVEL_EAP_TTLS:I = 0x6

.field public static final SECURITY_LEVEL_EAP_TTLS_CCKM:I = 0xc

.field public static final SECURITY_LEVEL_EAP_TTLS_FT:I = 0xb

.field public static final SECURITY_LEVEL_FT_PSK:I = 0x8

.field public static final SECURITY_LEVEL_HIGHEST:I = 0x1e

.field public static final SECURITY_LEVEL_OPEN:I = 0x0

.field public static final SECURITY_LEVEL_UNKNOWN:I = -0x1

.field public static final SECURITY_LEVEL_WEP:I = 0x1

.field public static final SECURITY_LEVEL_WPA:I = 0x2

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-string v0, "WifiPolicy"

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .registers 11
    .param p0, "enterpriseNetwork"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v7, 0x3

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 387
    if-eqz p0, :cond_f4

    .line 388
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 389
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 464
    :goto_1a
    return v3

    .line 392
    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a

    .line 393
    :cond_1d
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_27

    move v3, v4

    .line 394
    goto :goto_1a

    .line 395
    :cond_27
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_31

    move v3, v5

    .line 396
    goto :goto_1a

    .line 397
    :cond_31
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 399
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .line 400
    .local v0, "eap":I
    if-nez v0, :cond_43

    .line 401
    const/4 v3, 0x5

    goto :goto_1a

    .line 402
    :cond_43
    if-ne v0, v4, :cond_47

    .line 403
    const/4 v3, 0x6

    goto :goto_1a

    .line 404
    :cond_47
    if-ne v0, v3, :cond_4b

    move v3, v6

    .line 405
    goto :goto_1a

    .line 406
    :cond_4b
    if-ne v0, v5, :cond_4f

    move v3, v7

    .line 407
    goto :goto_1a

    .line 408
    :cond_4f
    if-ne v0, v6, :cond_53

    .line 409
    const/4 v3, 0x4

    goto :goto_1a

    .line 410
    :cond_53
    if-ne v0, v7, :cond_58

    .line 411
    const/16 v3, 0x13

    goto :goto_1a

    .line 412
    :cond_58
    const/4 v3, 0x5

    if-ne v0, v3, :cond_5e

    .line 413
    const/16 v3, 0x19

    goto :goto_1a

    .line 414
    :cond_5e
    const/4 v3, 0x6

    if-ne v0, v3, :cond_64

    .line 415
    const/16 v3, 0x1c

    goto :goto_1a

    .line 416
    :cond_64
    const/4 v3, 0x4

    if-ne v0, v3, :cond_f4

    .line 417
    const/16 v3, 0x16

    goto :goto_1a

    .line 419
    .end local v0    # "eap":I
    :cond_6a
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_ad

    .line 420
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    .line 421
    .local v2, "eapType":I
    if-nez v2, :cond_7f

    .line 422
    const/16 v3, 0x9

    goto :goto_1a

    .line 423
    :cond_7f
    if-ne v2, v4, :cond_84

    .line 424
    const/16 v3, 0xb

    goto :goto_1a

    .line 425
    :cond_84
    if-ne v2, v3, :cond_89

    .line 426
    const/16 v3, 0xd

    goto :goto_1a

    .line 427
    :cond_89
    if-ne v2, v5, :cond_8e

    .line 428
    const/16 v3, 0xf

    goto :goto_1a

    .line 429
    :cond_8e
    if-ne v2, v6, :cond_93

    .line 430
    const/16 v3, 0x11

    goto :goto_1a

    .line 431
    :cond_93
    if-ne v2, v7, :cond_98

    .line 432
    const/16 v3, 0x14

    goto :goto_1a

    .line 433
    :cond_98
    const/4 v3, 0x5

    if-ne v2, v3, :cond_9f

    .line 434
    const/16 v3, 0x1a

    goto/16 :goto_1a

    .line 435
    :cond_9f
    const/4 v3, 0x6

    if-ne v2, v3, :cond_a6

    .line 436
    const/16 v3, 0x1d

    goto/16 :goto_1a

    .line 437
    :cond_a6
    const/4 v3, 0x4

    if-ne v2, v3, :cond_f4

    .line 438
    const/16 v3, 0x17

    goto/16 :goto_1a

    .line 440
    .end local v2    # "eapType":I
    :cond_ad
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_f4

    .line 441
    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    .line 442
    .local v1, "eapMethod":I
    if-nez v1, :cond_c1

    .line 443
    const/16 v3, 0xa

    goto/16 :goto_1a

    .line 444
    :cond_c1
    if-ne v1, v4, :cond_c7

    .line 445
    const/16 v3, 0xc

    goto/16 :goto_1a

    .line 446
    :cond_c7
    if-ne v1, v3, :cond_cd

    .line 447
    const/16 v3, 0xe

    goto/16 :goto_1a

    .line 448
    :cond_cd
    if-ne v1, v5, :cond_d3

    .line 449
    const/16 v3, 0x10

    goto/16 :goto_1a

    .line 450
    :cond_d3
    if-ne v1, v6, :cond_d9

    .line 451
    const/16 v3, 0x12

    goto/16 :goto_1a

    .line 452
    :cond_d9
    if-ne v1, v7, :cond_df

    .line 453
    const/16 v3, 0x15

    goto/16 :goto_1a

    .line 454
    :cond_df
    const/4 v3, 0x5

    if-ne v1, v3, :cond_e6

    .line 455
    const/16 v3, 0x1b

    goto/16 :goto_1a

    .line 456
    :cond_e6
    const/4 v3, 0x6

    if-ne v1, v3, :cond_ed

    .line 457
    const/16 v3, 0x1e

    goto/16 :goto_1a

    .line 458
    :cond_ed
    const/4 v3, 0x4

    if-ne v1, v3, :cond_f4

    .line 459
    const/16 v3, 0x18

    goto/16 :goto_1a

    .line 464
    .end local v1    # "eapMethod":I
    :cond_f4
    const/4 v3, -0x1

    goto/16 :goto_1a
.end method

.method public static getSecurityLevel(I)I
    .registers 2
    .param p0, "security"    # I

    .prologue
    .line 478
    packed-switch p0, :pswitch_data_12

    .line 523
    const/4 v0, 0x1

    .line 525
    .local v0, "securityLevel":I
    :goto_4
    return v0

    .line 480
    .end local v0    # "securityLevel":I
    :pswitch_5
    const/4 v0, 0x1

    .line 481
    .restart local v0    # "securityLevel":I
    goto :goto_4

    .line 483
    .end local v0    # "securityLevel":I
    :pswitch_7
    const/4 v0, 0x2

    .line 484
    .restart local v0    # "securityLevel":I
    goto :goto_4

    .line 487
    .end local v0    # "securityLevel":I
    :pswitch_9
    const/4 v0, 0x3

    .line 488
    .restart local v0    # "securityLevel":I
    goto :goto_4

    .line 495
    .end local v0    # "securityLevel":I
    :pswitch_b
    const/4 v0, 0x4

    .line 496
    .restart local v0    # "securityLevel":I
    goto :goto_4

    .line 503
    .end local v0    # "securityLevel":I
    :pswitch_d
    const/4 v0, 0x5

    .line 504
    .restart local v0    # "securityLevel":I
    goto :goto_4

    .line 520
    .end local v0    # "securityLevel":I
    :pswitch_f
    const/4 v0, 0x6

    .line 521
    .restart local v0    # "securityLevel":I
    goto :goto_4

    .line 478
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_f
        :pswitch_f
        :pswitch_9
        :pswitch_d
        :pswitch_d
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netSSID"    # Ljava/lang/String;

    .prologue
    .line 300
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 301
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_9

    .line 302
    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 307
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_9
    :goto_9
    return-void

    .line 304
    :catch_a
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-edmAddOrUpdate returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public getAllowUserPolicyChanges()Z
    .registers 5

    .prologue
    .line 220
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 221
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 222
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getAllowUserPolicyChanges()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 227
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 224
    :catch_b
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-getAllowUserPolicyChanges returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public getAllowUserProfiles(ZI)Z
    .registers 7
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 239
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 240
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 241
    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->getAllowUserProfiles(ZI)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 246
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 243
    :catch_b
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-getAllowUserProfiles returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public getAutomaticConnectionToWifi()Z
    .registers 5

    .prologue
    .line 359
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 360
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 361
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getAutomaticConnectionToWifi()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 366
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 363
    :catch_b
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-getAutomaticConnectionToWifi returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public getBlockedNetworks()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 203
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 204
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getBlockedNetworks()Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 209
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return-object v2

    .line 206
    :catch_b
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-getBlockedNetworks returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_a
.end method

.method public getMinimumRequiredSecurity()I
    .registers 5

    .prologue
    .line 284
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 285
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 286
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getMinimumRequiredSecurity()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 291
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 288
    :catch_b
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-getMinimumRequiredSecurity returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public getNetworkSSIDList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 186
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 187
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getNetworkSSIDList()Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 192
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return-object v2

    .line 189
    :catch_b
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-getNetworkSSID returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_a
.end method

.method public getPromptCredentialsEnabled()Z
    .registers 5

    .prologue
    .line 257
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 258
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 259
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getPromptCredentialsEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 264
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 261
    :catch_b
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-getPromptCredentialsEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public getWifiSsidRestrictionList(I)Ljava/util/List;
    .registers 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 377
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 378
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getWifiSsidRestrictionList(I)Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 383
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return-object v2

    .line 380
    :catch_b
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-getWifiSsidRestrictionList returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_a
.end method

.method public isWifiStateChangeAllowed()Z
    .registers 5

    .prologue
    .line 341
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 342
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 343
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isWifiStateChangeAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 348
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 345
    :catch_b
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-isWifiStateChangeAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .registers 6
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 325
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 326
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 327
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->removeNetworkConfiguration(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 332
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 329
    :catch_b
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "PXY-removeNetworkConfiguration returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method
